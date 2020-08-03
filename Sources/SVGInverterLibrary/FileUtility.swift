//
//  FileUtility.swift
//  
//
//  Created by Scott Enriquez on 8/3/20.
//

import Foundation

public struct FileUtility {
    public static func readFileContentsToString(for fileName: String) -> String {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let fileURL = dir.appendingPathComponent(fileName)
            do {
                let fileText = try String(contentsOf: fileURL, encoding: .utf8)
                return fileText
            }
            catch {
                print(error)
            }
        }
        return ""
    }
}
