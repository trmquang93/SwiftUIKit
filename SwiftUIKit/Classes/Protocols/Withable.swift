//
//  Withable.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

public protocol Withable {
    
    associatedtype T
    
    @discardableResult func with(_ closure: (_ instance: T) -> Void) -> T
}

public extension Withable {
    
    @discardableResult func with(_ closure: (_ instance: Self) -> Void) -> Self {
        closure(self)
        return self
    }
}

public extension Withable where Self: UIView {
    init(_ closure: (_ instance: Self) -> Void) {
        self.init()
        self.with(closure)
    }
    
    
    var with: View<Self> {
        return View(self)
    }
}
extension NSObject: Withable { }
