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
    case list(booted: Bool)
    case boot(device: String)
    case shutdown(device: String)
    case erase(device: String)
    
    var stringified: String {
        switch self {
        case let .push(device, identifier, filePath): return "push \(device) \(identifier) \(filePath)"
        case let .openURL(device, url): return "openURL \(device) \(url)"
        case let .list(booted): return "list" + (booted ? "| grep \"(Booted)\" | grep -E -o -i \"([0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12})\"" : "")
        case let .boot(device): return "boot \(device)"
        case let .shutdown(device): return "shutdown \(device)"
        case let .erase(device): return "erase \(device)"
        }
    }
    
    var executable: String { "xcrun simctl \(stringified)" }
}
