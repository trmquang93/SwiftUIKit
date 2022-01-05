//
//  ViewObject.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

public protocol ViewObject {
    var viewObject: UIView { get }
}

extension UIView: ViewObject {
    public var viewObject: UIView { return self }
}

extension With: ViewObject where T: UIView {
    public var viewObject: UIView {
        return object
    }
    
}
