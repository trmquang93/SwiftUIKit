//
//  UIButton+Ext.swift
//  Video Saver
//
//  Created by QuangTran on 30/12/2021.
//

import UIKit

extension View where T: UIButton {
    public func title(_ title: String?, for state: UIControl.State) -> Self {
        view.setTitle(title, for: state)
        return self
    }
    
    public func attributedTitle(_ title: NSAttributedString?, for state: UIControl.State) -> Self {
        view.setAttributedTitle(title, for: state)
        return self
    }
    
    public func font(_ font: UIFont?, for state: UIControl.State) -> Self {
        let title = view.currentAttributedTitle ?? view.currentTitle.map({NSAttributedString(string: $0)})
        let newTitle = title.map({NSMutableAttributedString(attributedString: $0)})
        newTitle?.setAttributes([.font: font as Any], range: NSRange(location: 0, length: title?.length ?? 0))
        view.setAttributedTitle(newTitle, for: state)
        return self
    }
    
    public func titleColor(_ color: UIColor?, for state: UIControl.State) -> Self {
        view.setTitleColor(color, for: state)
        return self
    }// default is nil. use opaque white
    
    public func titleShadowColor(_ color: UIColor?, for state: UIControl.State) -> Self {
        view.setTitleShadowColor(color, for: state)
        return self
    }// default is nil. use 50% black
    
    public func image(_ image: UIImage?, for state: UIControl.State) -> Self {
        view.setImage(image, for: state)
        return self
    }// default is nil. should be same size if different for different states
    
    public func backgroundImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        view.setBackgroundImage(image, for: state)
        return self
    }
    
    public func backgroundColor(_ color: UIColor, for state: UIControl.State) -> Self {
        view.setBackgroundColor(color, for: state)
        return self
    }
}

public extension UIButton {
    func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        let ciImage = CIImage(color: CIColor(color: color)).cropped(to: CGRect(x: 0, y: 0, width: 1, height: 1))
        let colorImage = UIImage(ciImage: ciImage)
        setBackgroundImage(colorImage, for: state)
    }
    
}

