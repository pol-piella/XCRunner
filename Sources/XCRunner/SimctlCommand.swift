//
//  SimctlCommand.swift
//  
//
//  Created by Pol Piella Abadia on 26/02/2021.
//

public enum SimctlCommand {
    // TODO:- Map the rest of commands from `simctl` API
    case push(device: String, identifier: String, filePath: String)
    case openURL(device: String, url: String)
    
    var stringified: String {
        switch self {
        case let .push(device, identifier, filePath): return "push \(device) \(identifier) \(filePath)"
        case let .openURL(device, url): return "openURL \(device) \(url)"
        }
    }
    
    var executable: String { "xcrun simctl \(stringified)" }
}
