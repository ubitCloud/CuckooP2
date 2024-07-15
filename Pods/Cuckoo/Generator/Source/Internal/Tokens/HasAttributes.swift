import Foundation

public protocol HasAttributes {
    var attributes: [Attribute] { get }
}

extension HasAttributes {
    private var unavailablePlatforms: [String] {
        return attributes.lazy.compactMap { $0.unavailablePlatform }
    }

    var hasUnavailablePlatforms: Bool {
        return !unavailablePlatforms.isEmpty
    }

    var unavailablePlatformsCheck: String {
        return hasUnavailablePlatforms ? "#if !os(\(unavailablePlatforms.joined(separator: ") && !os(")))" : ""
    }
}
