import Foundation
import SVGInverterLibrary

let svgFileName = "sato.svg"
let fileText = FileUtility.readFileContentsToString(for: svgFileName)
print(fileText)
let invertedFileText = Inverter.convertBlackFillToWhite(in: fileText)
print(invertedFileText)
