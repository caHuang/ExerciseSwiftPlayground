let defaultColorName = "red"
var userDefinedColorName: String?

var colorNameToUse = userDefinedColorName ?? defaultColorName


userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName
