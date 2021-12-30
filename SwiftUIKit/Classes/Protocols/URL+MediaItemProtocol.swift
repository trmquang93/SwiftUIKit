//
//  URL+MediaItemProtocol.swift
//  VideoSaverNew
//
//  Created by QuangTran on 20/12/2021.
//

import Foundation
import RxSwift
import RxCocoa
import AVFoundation

extension URL: MediaItemProtocol {
    var size: Int64 {
        return Int64(fileSize)
    }
    
    var fileName: String {
        return VSFileManager.shared.name(for: self.path)
    }
    
    var playURL: Single<URL> {
        return .just(self)
    }
    
    var isVideo: Bool {
        let fileExtension = self.pathExtension.lowercased()
        return "mp4m4vmov".contains(fileExtension)
    }
    
    var name: String {
        return deletingPathExtension().lastPathComponent
    }
    
    var duration: Single<CMTime> {
        return AVAsset.durationOfMedia(at: self)
    }
}
