import Foundation
import UIKit

public extension UIView {

    @objc public func removeAllSubViews() {
        for v in self.subviews {
            v.removeFromSuperview()
        }
    }

    @objc public func has(view: UIView) -> Bool {
        return !self.isDescendant(of: view)
    }

    @objc public func isSubview(of view: UIView) -> Bool {
        return self.isDescendant(of: view)
    }

    @objc public func set(point: CGPoint) {
        var r : CGRect = self.frame
        r.origin = point
        self.frame = r
    }

    @objc public func set(x: CGFloat) {
        var r : CGRect = self.frame
        r.origin.x = x
        self.frame = r
    }

    @objc public func set(y: CGFloat) {
        var r : CGRect = self.frame
        r.origin.y = y
        self.frame = r
    }

    @objc public func set(size: CGSize) {
        var r : CGRect = self.frame
        r.size = size
        self.frame = r
    }

    @objc public func set(width: CGFloat) {
        var r : CGRect = self.frame
        r.size.width = width
        self.frame = r
    }

    @objc public func set(height: CGFloat) {
        var r : CGRect = self.frame
        r.size.height = height
        self.frame = r
    }
}
