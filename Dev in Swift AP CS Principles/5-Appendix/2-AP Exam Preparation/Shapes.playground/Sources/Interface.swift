import PlaygroundSupport
import Cocoa

private let vc = ViewController()
public let scene = vc.shapeScene!

public func start() {
    start(withWidth: 417, height: 820) // Dimensions of safe area of iPhone 11 Pro Max, the default simulated iOS device
}

public func start(withWidth width: Int, height: Int) {
    vc.preferredContentSize = NSSize(width: width, height: height)
    PlaygroundPage.current.liveView = vc
}
