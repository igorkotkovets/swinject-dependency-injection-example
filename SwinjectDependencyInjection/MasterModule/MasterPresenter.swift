//
//  MasterPresenter.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/24/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import Foundation

class MasterPresenter: MasterViewOutput {
    weak var view: MasterViewInput?
    var router: MasterRouterInput?
    
    func didTapOpenDetails() {
        router?.openDetails()
    }
}
