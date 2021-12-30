//
//  Layout+Builders.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

@resultBuilder public struct BodyBuilder {
    public static func buildBlock(_ content: Any...) -> [Any] {
        return content
    }
}

public typealias BodyBuildBlock = () -> [Any]
