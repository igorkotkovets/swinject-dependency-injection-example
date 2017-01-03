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
            DetailsViewController(nibName: "DetailsViewController", bundle: nil)
        }
        .initCompleted { r, i in
            let controller = i as! DetailsViewController
            controller.output = r.resolve(DetailsViewOutput.self)
        }
        
        container.register(DetailsViewOutput.self) { r in DetailsPresenter() }
        .initCompleted { r, i in
            let presenter = i as! DetailsPresenter
            presenter.view = r.resolve(DetailsViewInput.self)
            presenter.router = r.resolve(DetailsRouterInput.self)
            presenter.interactor = r.resolve(DetailsInteractorInput.self)
        }
        
        container.register(DetailsRouterInput.self) { r in DetailsRouter() }
        .initCompleted { r, i in
            let router = i as! DetailsRouter
            router.view = r.resolve(DetailsViewInput.self) as! UIViewController?
        }
        
        container.register(DetailsInteractorInput.self) { r in DetailsInteractor() }
        .initCompleted { r, i in
            let interactor = i as! DetailsInteractor
            interactor.output = r.resolve(DetailsViewOutput.self) as? DetailsInteractorOutput
            interactor.downloader = r.resolve(FilesDownloaderInterface.self)
        }
    }
}
