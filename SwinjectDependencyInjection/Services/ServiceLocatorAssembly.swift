//
//  ServiceLocatorAssembly.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/26/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import Swinject


class ServiceLocatorAssembly: Assembly {
    static public let KEY = "root"
    
    func assemble(container: Container) {
        container.register(Assembler.self, name: ServiceLocatorAssembly.KEY) { _ in
            Assembler()
        }
        
        container.register(FilesDownloaderInterface.self) { _ in
            FilesDownloader()
        }
    }
}
