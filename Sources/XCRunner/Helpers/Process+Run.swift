//
//  Process+Run.swift
//  
//
//  Created by Pol Piella Abadia on 26/02/2021.
//

import Foundation

extension Process {
    func run(_ command: SimctlCommand) -> String? {
        launchPath = "/bin/bash"
        arguments = ["-c", command.executable]

        let pipe = Pipe()
        standardOutput = pipe
        launch()

        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        return String(data: data, encoding: .utf8)
    }
}
