//
//  DetailsInteractorInput.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/28/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import UIKit

protocol DetailsInteractorInput {
    func trackDownloadingProgress()
}

protocol DetailsInteractorOutput {
    func downloadingFilesWith(progress: CGFloat)
}
