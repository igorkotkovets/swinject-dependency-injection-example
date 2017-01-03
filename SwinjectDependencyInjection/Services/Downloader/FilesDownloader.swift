//
//  FilesDownloader.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/27/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import UIKit

class FilesDownloader: FilesDownloaderInterface {
    private var timer: Timer?
    private weak var delegate: FilesDownloaderDelegate?
    private(set) var progress: CGFloat = 0.0
    
    deinit {
        print("deinig FilesDownloader")
    }
    
    func setDelegate(_ delegate: FilesDownloaderDelegate) {
        self.delegate = delegate
    }
    
    func startDownloading() {
        if (timer?.isValid) != nil { return }
        
        progress = 0.0
        
        print("start downloading...")
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(timerFire(timer:)), userInfo: nil, repeats: true)
    }
    
    func stopDownloading() {
        timer?.invalidate()
        print("...stop downloading")
    }
    
    @objc func timerFire(timer: Timer) {
        progress += 1.1
        delegate?.didDownloadWith(progress)
        
        if (progress >= 100.0) {
            stopDownloading()
        }
    }
}
