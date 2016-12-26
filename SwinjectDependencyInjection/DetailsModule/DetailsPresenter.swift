//
//  DetailsPresenter.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/24/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import Foundation

class DetailsPresenter: DetailsViewOutput {
    weak var view: DetailsViewInput?
    var router: DetailsRouterInput?
}