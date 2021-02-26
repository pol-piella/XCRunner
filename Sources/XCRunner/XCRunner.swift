import Foundation

public enum XCRunner {
    public static func execute(_ command: SimctlCommand) -> String? {
        Process().run(command)
    }
}
