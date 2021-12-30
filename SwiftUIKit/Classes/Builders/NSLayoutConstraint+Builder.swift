//
//  NSLayoutConstraint+Builder.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

extension NSLayoutConstraint {
    
    public static func activate(@BodyBuilder content: () -> [Any]) {
        let objects = content()
        var constraints: [NSLayoutConstraint] = []
        
        for object in objects {
            if let sv = object as? NSLayoutConstraint {
                constraints.append(sv)
            } else if let svs = object as? [NSLayoutConstraint] {
                constraints.append(contentsOf: svs)
            }
        }
        activate(constraints)
    }
}
