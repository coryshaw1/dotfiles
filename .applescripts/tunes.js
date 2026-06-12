let output = "";
if (Application("Music").running()) {
    const track = Application("Music").currentTrack;
    const artist = track.artist();
    const title = track.name();
    let totalOutput = `${artist} - ${title}`;
    output = totalOutput.substr(0, 50);

    if (totalOutput.length > 50)
        output += "...";
} else if (Application("Spotify").running()) {
    const sp = Application("Spotify");
    const track = sp.currentTrack;
    const artist = track.artist();
    const title = track.name();
    let totalOutput = `${artist} - ${title}`;
    output = totalOutput.substr(0, 50);

    if (totalOutput.length > 50)
        output += "...";

    if (sp.playerState() === "playing") {
        const elapsed = Math.floor(sp.playerPosition());
        const total = Math.floor(track.duration() / 1000);
        const fmt = s => `${Math.floor(s / 60)}:${String(s % 60).padStart(2, "0")}`;
        output += ` [${fmt(elapsed)} / ${fmt(total)}]`;
    }
}

output;
