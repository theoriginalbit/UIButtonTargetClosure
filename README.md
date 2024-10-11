> [!TIP]
> iOS 14 added the ability to use `UIAction` on any `UIControl` with the [`addAction(_:for:)`](https://developer.apple.com/documentation/uikit/uicontrol/3600490-addaction) function.
> Using the actions API you no longer need to use the Objective-C target API and can instead use closures. An equivalent of this library would be:
>
> ```swift
> let hapticGenerator = UISelectionFeedbackGenerator()
> let hapticAction = UIAction { _ in
>    hapticGenerator.selectionChanged()
> }
> button.addAction(hapticAction, for: .touchUpInside)
> button.addAction(hapticAction, for: .touchDown)
> ```

# UIButton Target Closure

Code from ['A functional way to add Target in UIButton using closures' by Jacky Wang](https://medium.com/@jackywangdeveloper/swift-the-right-way-to-add-target-in-uibutton-in-using-closures-877557ed9455) and turned into a Swift Package
