//
//  Inverter.swift
//  
//
//  Created by Scott Enriquez on 8/3/20.
//

import Foundation

public struct Inverter {
    
    enum Hexadecimal: String {
        case black = "#000000"
        case white = "#FFFFFF"
    }
    
    public static func convertBlackFillToWhite(in svgFileContents: String) -> String {
        return svgFileContents.replacingOccurrences(of: Hexadecimal.black.rawValue, with: Hexadecimal.white.rawValue)
    }
    
}
