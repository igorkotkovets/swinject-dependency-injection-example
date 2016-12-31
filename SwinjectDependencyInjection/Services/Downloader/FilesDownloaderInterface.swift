//
//  FilesDownloaderInterface.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/27/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import UIKit

protocol FilesDownloaderInterface {
    func setDelegate(_ delegate: FilesDownloaderDelegate)
    func startDownloading()
    func stopDownloading()
}

protocol FilesDownloaderDelegate: class {
    func didDownloadWith(_ progress: CGFloat)
}
