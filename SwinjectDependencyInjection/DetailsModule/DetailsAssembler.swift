//
//  DetailsAssembler.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/24/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import Swinject

class DetailsAssembler: DetailsAssemblerInput {
    private let assembler: Assembler
    
    init() {
        assembler = try! Assembler(assemblies: [DetailsAssembly()])
    }
    
    func detailsView() -> UIViewController {
        return assembler.resolver.resolve(DetailsViewInput.self)! as! UIViewController
    }
}
