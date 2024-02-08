const fs = require('fs');

function parseLine(line) {
    let key = line.split(':')[0];
    let values = line.split(':')[1];
    if (values) {
        values = values.split(',');
        for (let i = 0; i < values.length; i++) {
            values[i] = values[i].trim();
        }
    }
    if (values == undefined) {
        return [{"key": key}]
    }
    return values.map((value) => {
        return {"key": key, "value": value}
    });
}

fs.readFile('taglist.txt', 'utf8', (err, data) => {
    if (err) {
        console.error(err);
        return;
    }

    data = data.split('\n');
    var tags = [];
    for (let i = 0; i < data.length; i++) {
        tags.push(...parseLine(data[i]));
    }
    // console.log(tags);
    let output = {
        "data_format": 1,
        "data_updated": new Date().toISOString().substring(0, 19).replaceAll("-", "").replaceAll(":", "") + "Z",
        "project": {
         "name" : "Tracestrack Topo Universal",
         "description" : "A universal topo map for hikers, climbers, and mountaineers.",
         "icon_url" : "https://www.tracestrack.com/img/logo_white.png",
         "project_url": "https://github.com/tracestrack/tracestrack-maps",
         "contact_name" : "Tracestrack",
         "contact_email" : "info@tracestrack.com"
        },
        "tags" : tags
    }
    fs.writeFile('taginfo.json', JSON.stringify(output), (err) => {
        if (err) {
            console.error(err);
            return;
        }
        console.log('File has been created');
    });

});