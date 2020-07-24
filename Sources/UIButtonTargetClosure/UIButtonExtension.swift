import UIKit

public typealias UIButtonTargetClosure = (UIButton) -> Void

private class ClosureWrapper: NSObject {
    let closure: UIButtonTargetClosure

    init(_ closure: @escaping UIButtonTargetClosure) {
        self.closure = closure
    }
}

public extension UIButton {
    private enum AssociatedKeys {
        static var targetClosure = "targetClosure"
    }

    private var targetClosure: UIButtonTargetClosure? {
        get {
            guard let closureWrapper = objc_getAssociatedObject(self, &AssociatedKeys.targetClosure) as? ClosureWrapper else { return nil }
            return closureWrapper.closure
        }
        set {
            guard let newValue = newValue else { return }
            objc_setAssociatedObject(self, &AssociatedKeys.targetClosure, ClosureWrapper(newValue), objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    func addTargetClosure(_ closure: @escaping UIButtonTargetClosure) {
        targetClosure = closure
        addTarget(self, action: #selector(UIButton.closureAction), for: .touchUpInside)
    }

    @objc private func closureAction() {
        guard let targetClosure = targetClosure else { return }
        targetClosure(self)
    }
}
