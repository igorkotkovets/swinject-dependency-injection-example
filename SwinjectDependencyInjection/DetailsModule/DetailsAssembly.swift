//
//  DetailsAssembly.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/24/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import Swinject

class DetailsAssembly: Assembly {
    func assemble(container: Container) {
        container.register(DetailsViewInput.self) { r in
            let controller = DetailsViewController(nibName: "DetailsViewController", bundle: nil)
            controller.output = r.resolve(DetailsViewOutput.self)
            return controller
        }
        
        container.register(DetailsViewOutput.self) { r in DetailsPresenter() }
            .initCompleted { r, i in
                let presenter = i as! DetailsPresenter
                presenter.view = r.resolve(DetailsViewInput.self)
                presenter.router = r.resolve(DetailsRouterInput.self)
        }
        
        container.register(DetailsRouterInput.self) { r in DetailsRouter() }
            .initCompleted { r, i in
                let router = i as! DetailsRouter
                router.view = r.resolve(DetailsViewInput.self) as! UIViewController?
        }
    }
}
