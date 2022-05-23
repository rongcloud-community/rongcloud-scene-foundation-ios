
import UIKit

public extension UIApplication {
    func topmostController() -> UIViewController? {
        return keyWindow()?
            .rootViewController?
            .topmostController()
    }
    
    func keyWindow() -> UIWindow? {
        return windows.first { $0.isKeyWindow }
    }
}

