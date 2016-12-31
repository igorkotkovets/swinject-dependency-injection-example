//
//  DetailsInteractor.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/28/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import UIKit

class DetailsInteractor: DetailsInteractorInput, FilesDownloaderDelegate {
    var downloader: FilesDownloaderInterface?
    var output: DetailsInteractorOutput?
    
    func trackDownloadingProgress() {
        downloader?.setDelegate(self)
        downloader?.startDownloading()
    }
    
    func didDownloadWith(_ progress: CGFloat) {
        output?.downloadingFilesWith(progress: progress)
    }
}
