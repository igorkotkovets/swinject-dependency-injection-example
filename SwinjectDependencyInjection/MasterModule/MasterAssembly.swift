//
//  MasterAssembly.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/24/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import Swinject

class MasterAssembly: Assembly {
    static public let KEY = "master"
    
    func assemble(container: Container) {
        container.register(MasterViewInput.self) { r in MasterViewController(nibName: "MasterViewController", bundle: nil) }
        .initCompleted { r, i in
            let controller = i as! MasterViewController
            controller.output = r.resolve(MasterViewOutput.self)
        }
        
        container.register(MasterViewOutput.self) { r in MasterPresenter() }
            .initCompleted { r, i in
                let presenter = i as! MasterPresenter
                presenter.view = r.resolve(MasterViewInput.self)
                presenter.router = r.resolve(MasterRouterInput.self)
        }
        
        container.register(MasterRouterInput.self) { r in MasterRouter() }
            .initCompleted { r, i in
                let router = i as! MasterRouter
                router.view = r.resolve(MasterViewInput.self) as! UIViewController?
                router.detailsAssembler = r.resolve(DetailsAssemblerInput.self)
        }
        
        container.register(ServiceLocatorAssembler.self) { r in
            ServiceLocatorAssembler.sharedInstance
        }
        
        container.register(DetailsAssemblerInput.self) { r in DetailsAssembler(parentAssembler: r.resolve(ServiceLocatorAssembler.self)!.assemlber) }
    }
}
