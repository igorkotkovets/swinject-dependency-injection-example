//
//  ServiceLocatorAssembler.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/28/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import Swinject

class ServiceLocatorAssembler {
    public private(set) var assemlber: Assembler!
    
    static let sharedInstance: ServiceLocatorAssembler = {
        let instance = ServiceLocatorAssembler()
        return instance
    }()
    
    private init() {
        assemlber = try! Assembler(assemblies: [ServiceLocatorAssembly()])
    }
}
