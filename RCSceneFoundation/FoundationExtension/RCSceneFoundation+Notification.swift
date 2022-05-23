
/// 转换事件目标：NotificationCenter default -> Name

import Foundation

public extension Notification.Name {
    func addObserver(_ observer: Any,
                     selector aSelector: Selector,
                     object anObject: Any? = nil) {
        NotificationCenter.default.addObserver(observer,
                                               selector: aSelector,
                                               name: self,
                                               object: anObject)
    }
    
    func post(_ object: Any? = nil) {
        NotificationCenter.default.post(name: self, object: object)
    }
}
