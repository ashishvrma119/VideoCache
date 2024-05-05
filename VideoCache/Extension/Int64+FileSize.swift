
import Foundation

extension Int {
    
    var KB: Int { return self * 1024 }
    var MB: Int { return self * 1024 * 1024 }
    var GB: Int { return self * 1024 * 1024 * 1024 }
}

public extension Int64 {
    
    var KB: Int64 { return self * 1024 }
    var MB: Int64 { return self * 1024 * 1024 }
    var GB: Int64 { return self * 1024 * 1024 * 1024 }
}
