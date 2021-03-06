function initiateCreateOptionList(parent) {
    var component = Qt.createComponent("OptionListEntry.qml");
    if (component.status == Component.Ready) {
        createOptionList(parent, component);
    }
    else {
        component.statusChanged.connect(function () {createOptionList(parent, component)})
    }
}

function createOptionListEntry(parent, component, number, text) {
    var optionListEntry = component.createObject(parent, {"number": number, "text": text, "width": Qt.binding(function() {return parent.width}), "height": 40, "y": parent.y_cursor});
    parent.y_cursor += 50
    console.log("creating component")
}

function createOptionList(parent, component) {
    var argument = Qt.application.arguments[1]

    // slice of the "answer" instruction
    var lines = argument.split("\n").slice(0, -2)
    var question = ""
    lines.forEach(function (line) {
        var match = line.match(/^    ([0-9]+)\) (.*)$/)
        if (match) {
            createOptionListEntry(parent, component, match[1], match[2])
        }
        else {
            question = question + "\n" + line
        }
    })
    questiontext.text = question
}
