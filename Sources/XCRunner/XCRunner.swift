import Foundation

public enum XCRunner {
    @discardableResult public static func execute(_ command: SimctlCommand) -> String? {
        Process().run(command)
    }
}
