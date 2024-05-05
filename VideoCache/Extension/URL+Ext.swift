
import Foundation
import MobileCoreServices

extension URL {
    
    static let VideoCacheScheme = "VideoCache:"
    
    var isCacheScheme: Bool {
        return absoluteString.hasPrefix(URL.VideoCacheScheme)
    }
    
    var originUrl: URL {
        return URL(string: absoluteString.replacingOccurrences(of: URL.VideoCacheScheme, with: "")) ?? self
    }
    
    var contentType: String? {
        return UTTypeCreatePreferredIdentifierForTag(kUTTagClassMIMEType, pathExtension as CFString, nil)?.takeRetainedValue() as String?
    }
}
