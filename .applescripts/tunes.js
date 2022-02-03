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
    const track = Application("Spotify").currentTrack;
    const artist = track.artist();
    const title = track.name();
    let totalOutput = `${artist} - ${title}`;
    output = totalOutput.substr(0, 50);

    if (totalOutput.length > 50)
        output += "...";
}

output;
