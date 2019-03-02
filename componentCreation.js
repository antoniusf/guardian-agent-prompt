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

    if (optionListEntry == null) {
        console.log("Couldn't create new option list entry")
    }
    else {
        console.log("option list entry created!")
    }
}

function createOptionList(parent, component) {
    var argument = Qt.application.arguments[1]
    var lines = argument.split("\\n")
    lines.forEach(function (line) {
        var match = line.match(/^    ([0-9]+)\) (.*)$/)
        if (match) {
            createOptionListEntry(parent, component, match[1], match[2])
        }
    })
}
