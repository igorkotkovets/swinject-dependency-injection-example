//
//  MasterRouter.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/24/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import UIKit

class MasterRouter: MasterRouterInput {
    weak var view: UIViewController?
    var detailsAssembler: DetailsAssemblerInput?
    
    func openDetails() {
        view?.present((detailsAssembler?.detailsView())!, animated: true, completion: nil)
    }
}
