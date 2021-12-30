//
//  LayoutObject.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit


public protocol LayoutObject {
    
    var leadingAnchor: NSLayoutXAxisAnchor { get }
    
    var trailingAnchor: NSLayoutXAxisAnchor { get }
    
    var leftAnchor: NSLayoutXAxisAnchor { get }
    
    var rightAnchor: NSLayoutXAxisAnchor { get }
    
    var topAnchor: NSLayoutYAxisAnchor { get }
    
    var bottomAnchor: NSLayoutYAxisAnchor { get }
    
    var widthAnchor: NSLayoutDimension { get }
    
    var heightAnchor: NSLayoutDimension { get }
    
    var centerXAnchor: NSLayoutXAxisAnchor { get }
    
    var centerYAnchor: NSLayoutYAxisAnchor { get }
}


extension UIView: LayoutObject {
}

extension UILayoutGuide: LayoutObject { }


public extension LayoutObject {
    func constraints(_ attributes: [LayoutAttribute], to layoutGuide: LayoutObject) -> [NSLayoutConstraint] {
        var constraints: [NSLayoutConstraint] = []
        for attribute in attributes {
            switch attribute {
            case .leadingAnchor:
                constraints.append(self.leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor))
            case .trailingAnchor:
                constraints.append(self.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor))
            case .leftAnchor:
                constraints.append(self.leftAnchor.constraint(equalTo: layoutGuide.leftAnchor))
            case .rightAnchor:
                constraints.append(self.rightAnchor.constraint(equalTo: layoutGuide.rightAnchor))
            case .topAnchor:
                constraints.append(self.topAnchor.constraint(equalTo: layoutGuide.topAnchor))
            case .bottomAnchor:
                constraints.append(self.bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor))
            case .widthAnchor:
                constraints.append(self.widthAnchor.constraint(equalTo: layoutGuide.widthAnchor))
            case .heightAnchor:
                constraints.append(self.heightAnchor.constraint(equalTo: layoutGuide.heightAnchor))
            case .centerXAnchor:
                constraints.append(self.centerXAnchor.constraint(equalTo: layoutGuide.centerXAnchor))
            case .centerYAnchor:
                constraints.append(self.centerYAnchor.constraint(equalTo: layoutGuide.centerYAnchor))
            }
        }
        
        return constraints
    }
}
