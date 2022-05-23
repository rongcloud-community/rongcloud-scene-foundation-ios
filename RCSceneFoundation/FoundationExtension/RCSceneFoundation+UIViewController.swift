
/// UIViewController 事件扩展

import UIKit

public extension UIViewController {
    
    /// 当前屏幕可视的最上层的 View Controller
    func topmostController() -> UIViewController {
        /// 上层还有 presented 的 controller，继续传递直到最上层
        if let controller = presentedViewController {
            return controller.topmostController()
        }
        /// 如果是 Navigation，返回可视窗口，继续传递
        if let navigation = self as? UINavigationController {
            if let controller = navigation.visibleViewController {
                return controller.topmostController()
            }
            return navigation
        }
        /// 如果是 Tab，返回选中窗口，继续传递
        if let tab = self as? UITabBarController {
            if let selectedTab = tab.selectedViewController {
                return selectedTab.topmostController()
            }
            return tab
        }
        /// 如果是 View Controller，返回结果
        return self
    }
    
    /// 智能返回事件，只适合可视的一级返回
    func backTrigger(_ animated: Bool = true, force: Bool = true) {
        if force { backForceTrigger(presentedViewController) }
        if let controller = navigationController {
            controller.popViewController(animated: animated)
        } else {
            dismiss(animated: animated)
        }
    }
    
    /// 辅助智能返回事件，从上往下，递归逐级 dismiss
    private func backForceTrigger(_ controller: UIViewController?) {
        guard let controller = controller else { return }
        backForceTrigger(controller.presentedViewController)
        controller.dismiss(animated: false)
    }
}

/// MUST: UIViewController.UIView
public extension UIViewController {
    func enableClickingDismiss(_ index: Int = 0) {
        let tapView = UIView(frame: view.bounds)
        tapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.insertSubview(tapView, at: index)
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onClickingDismissTap))
        tapView.addGestureRecognizer(gesture)
    }
    
    func enableClickingDismiss(above view: UIView) {
        let tapView = UIView(frame: self.view.bounds)
        tapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.insertSubview(tapView, aboveSubview: view)
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onClickingDismissTap))
        tapView.addGestureRecognizer(gesture)
    }
    
    func enableClickingDismiss(below view: UIView) {
        let tapView = UIView(frame: self.view.bounds)
        tapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.insertSubview(tapView, belowSubview: view)
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onClickingDismissTap))
        tapView.addGestureRecognizer(gesture)
    }
    
    @objc private func onClickingDismissTap() {
        dismiss(animated: true)
    }
}
