return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "theHamsta/nvim-dap-virtual-text",
    },
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"

      -- Gutter Icons
      vim.cmd "hi DapBreakpointColor          guifg=#fa4848"
      vim.cmd "hi DapBreakpointConditionColor guifg=#f5a623"
      vim.cmd "hi DapLogPointColor            guifg=#61afef"
      vim.cmd "hi DapStoppedColor             guifg=#98c379"
      vim.cmd "hi DapBreakpointRejectedColor  guifg=#6b737c"

      vim.fn.sign_define("DapBreakpoint", {
        text = "",
        texthl = "DapBreakpointColor",
        linehl = "",
        numhl = "",
      })
      vim.fn.sign_define(
        "DapBreakpointCondition",
        { text = "", texthl = "DapBreakpointConditionColor", linehl = "", numhl = "" }
      )
      vim.fn.sign_define("DapLogPoint", {
        text = "󰆤",
        texthl = "DapLogPointColor",
        linehl = "",
        numhl = "",
      })
      vim.fn.sign_define(
        "DapStopped",
        { text = "󰁕", texthl = "DapStoppedColor", linehl = "DapStoppedColor", numhl = "" }
      )
      vim.fn.sign_define(
        "DapBreakpointRejected",
        { text = "", texthl = "DapBreakpointRejectedColor", linehl = "", numhl = "" }
      )

      -- ── UI ───────────────────────────────────────────────────────────────
      dapui.setup {
        layouts = {
          {
            elements = {
              { id = "scopes", size = 0.40 },
              { id = "breakpoints", size = 0.15 },
              { id = "stacks", size = 0.30 },
              { id = "watches", size = 0.15 },
            },
            size = 45,
            position = "left",
          },
          {
            elements = {
              { id = "repl", size = 0.5 },
              { id = "console", size = 0.5 },
            },
            size = 12,
            position = "bottom",
          },
        },
      }

      -- Auto-open/close UI with debug sessions
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      require("nvim-dap-virtual-text").setup {}

      -- ── Keymaps ──────────────────────────────────────────────────────────
      local map = function(keys, func, desc)
        vim.keymap.set("n", keys, func, { desc = "DAP: " .. desc })
      end

      map("<F5>", dap.continue, "Continue / Start")
      map("<F10>", dap.step_over, "Step Over")
      map("<F11>", dap.step_into, "Step Into")
      map("<F12>", dap.step_out, "Step Out")
      map("<leader>dc", dap.continue, "Continue")
      map("<leader>dn", dap.step_over, "Next")
      map("<leader>dj", dap.step_over, "Step Over")
      map("<leader>dl", dap.step_into, "Step Into")
      map("<leader>dh", dap.step_out, "Step Out")
      map("<leader>dk", dap.run_last, "Run Last")
      map("<leader>db", dap.toggle_breakpoint, "Toggle Breakpoint")
      map("<leader>dB", function()
        dap.set_breakpoint(vim.fn.input "Breakpoint condition: ")
      end, "Conditional Breakpoint")
      map("<leader>dw", function()
        dapui.elements.watches.add(vim.fn.input "Watch expression: ")
      end, "Add Watch")
      map("<leader>de", function()
        local widgets = require "dap.ui.widgets"
        local hover = widgets.hover()
        vim.keymap.set("n", "q", function()
          hover.close()
        end, { buffer = hover.buf, nowait = true })
      end, "Eval hover")
      map("<leader>ds", function()
        dapui.float_element("scopes", { enter = true })
      end, "Float Scopes")
      map("<leader>dL", function()
        dapui.float_element("scopes", { enter = true })
      end, "Float Locals")
      map("<leader>dS", function()
        dapui.float_element("stacks", { enter = true })
      end, "Float Stacks")
      map("<leader>dW", function()
        dapui.float_element("watches", { enter = true })
      end, "Float Watches")
      map("<leader>dC", function()
        dapui.float_element("console", { enter = true })
      end, "Float Console")
      map("<leader>dd", dapui.toggle, "Toggle UI")
      map("<leader>dR", function()
        dapui.close()
        dapui.open()
      end, "Reset UI")
      map("<leader>dp", dap.pause, "Pause")
      map("<leader>dx", function()
        dap.terminate()
        dapui.close()
      end, "Terminate")
    end,
  },
}
