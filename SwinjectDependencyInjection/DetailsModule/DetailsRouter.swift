//
//  DetailsRouter.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/24/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import UIKit

class DetailsRouter: DetailsRouterInput {
    weak var view: UIViewController?
    
    func close() {
        view?.dismiss(animated: true, completion: nil)
    }
}
