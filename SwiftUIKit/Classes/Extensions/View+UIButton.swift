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
    
    public func setBackgroundImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        view.setBackgroundImage(image, for: state)
        return self
    }
    
    public func backgroundColor(_ color: UIColor, for state: UIControl.State) -> Self {
        view.setBackgroundColor(color, for: state)
        return self
    }
}
