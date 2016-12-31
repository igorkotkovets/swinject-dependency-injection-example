//
//  DetailsPresenter.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/24/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import UIKit

class DetailsPresenter: DetailsViewOutput, DetailsInteractorOutput {
    weak var view: DetailsViewInput?
    var router: DetailsRouterInput?
    var interactor: DetailsInteractorInput?
    
    func didTriggerViewDidLoad() {
        interactor?.trackDownloadingProgress()
    }
    
    func downloadingFilesWith(progress: CGFloat) {
        view?.displayProgress(String(format:  "%0.1f%", progress))
    }
    
    func didTapClose() {
        router?.close()
    }
}
