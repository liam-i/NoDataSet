//
//  Delegate.swift
//  BlankSlate <https://github.com/liam-i/BlankSlate>
//
//  Created by Liam on 2021/7/9.
//

import UIKit

/// The object that acts as the delegate of the empty datasets.
/// - Note: The delegate can adopt the `BlankSlateDelegate` protocol. The delegate is not retained. All delegate methods are optional.
/// - Note: All delegate methods are optional. Use this delegate for receiving action callbacks.
public protocol BlankSlateDelegate: AnyObject {
    /// Asks the delegate to know if the empty dataset should still be displayed when the amount of items is more than 0. `Default to false`
    func blankSlateShouldBeForcedToDisplay(_ view: UIView) -> Bool

    /// Asks the delegate to know if the empty dataset should be rendered and displayed. `Default to true`
    func blankSlateShouldDisplay(_ view: UIView) -> Bool

    /// Asks the delegate to know insert levels when subviews.count > 1.
    /// - Note: `-1`, addSubview(BlankSlate); `0`, insertSubview(BlankSlate, at: 0). `Default to 0`
    func blankSlateShouldBeInsertAtIndex(_ view: UIView) -> Int

    /// Asks the delegate for touch permission. `Default to true`
    func blankSlateShouldAllowTouch(_ view: UIView) -> Bool

    /// Asks the delegate for scroll permission. `Default to false`
    func blankSlateShouldAllowScroll(_ scrollView: UIScrollView) -> Bool

    /// Asks the delegate whether scrolling is allowed when the empty data set has disappeared. `Default to true`
    func shouldAllowScrollAfterBlankSlateDisappear(_ scrollView: UIScrollView) -> Bool

    /// Tells the delegate that the empty dataset view was tapped.
    /// Use this method either to resignFirstResponder of a textfield or searchBar.
    /// - Parameter view: the view tapped by the user
    func blankSlate(_ view: UIView, didTapView sender: UIView)

    /// Tells the delegate that the action button was tapped.
    /// - Parameter button: the button tapped by the user
    func blankSlate(_ view: UIView, didTapButton sender: UIButton)

    /// Tells the delegate that the empty data set will appear.
    func blankSlateWillAppear(_ view: UIView)

    /// Tells the delegate that the empty data set did appear.
    func blankSlateDidAppear(_ view: UIView)

    /// Tells the delegate that the empty data set will disappear.
    func blankSlateWillDisappear(_ view: UIView)

    /// Tells the delegate that the empty data set did disappear.
    func blankSlateDidDisappear(_ view: UIView)
}

extension BlankSlateDelegate {
    public func blankSlateShouldBeForcedToDisplay(_ view: UIView) -> Bool { false }

    public func blankSlateShouldDisplay(_ view: UIView) -> Bool { true }

    public func blankSlateShouldBeInsertAtIndex(_ view: UIView) -> Int { 0 }

    public func blankSlateShouldAllowTouch(_ view: UIView) -> Bool { true }

    public func blankSlateShouldAllowScroll(_ scrollView: UIScrollView) -> Bool { false }

    public func shouldAllowScrollAfterBlankSlateDisappear(_ scrollView: UIScrollView) -> Bool { true }

    public func blankSlate(_ view: UIView, didTapView sender: UIView) { }

    public func blankSlate(_ view: UIView, didTapButton sender: UIButton) { }

    public func blankSlateWillAppear(_ view: UIView) { }

    public func blankSlateDidAppear(_ view: UIView) { }

    public func blankSlateWillDisappear(_ view: UIView) { }

    public func blankSlateDidDisappear(_ view: UIView) { }
}
