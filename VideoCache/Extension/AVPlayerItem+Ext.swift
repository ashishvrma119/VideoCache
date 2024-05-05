
import AVFoundation

extension AVPlayerItem {
    
    private static var loaderDelegateKey = arc4random()
    var resourceLoaderDelegate: VideoResourceLoaderDelegate? {
        get { return objc_getAssociatedObject(self, &AVPlayerItem.loaderDelegateKey) as? VideoResourceLoaderDelegate }
        set { objc_setAssociatedObject(self, &AVPlayerItem.loaderDelegateKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)}
    }
}
