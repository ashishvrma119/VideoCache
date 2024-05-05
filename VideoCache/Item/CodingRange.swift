

import Foundation

public typealias VideoRangeBounds = Int64
public typealias VideoRange = ClosedRange<VideoRangeBounds>

class CodingRange: NSObject, NSCoding {
    
    var lowerBound: VideoRangeBounds
    var upperBound: VideoRangeBounds
    
    init(lowerBound: VideoRangeBounds, upperBound: VideoRangeBounds) {
        self.lowerBound = lowerBound
        self.upperBound = upperBound
    }
    
    required init?(coder aDecoder: NSCoder) {
        lowerBound = aDecoder.decodeInt64(forKey: "lowerBound")
        upperBound = aDecoder.decodeInt64(forKey: "upperBound")
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(lowerBound, forKey: "lowerBound")
        aCoder.encode(upperBound, forKey: "upperBound")
    }
    
    override var description: String {
        return "(\(lowerBound)...\(upperBound))"
    }
}
