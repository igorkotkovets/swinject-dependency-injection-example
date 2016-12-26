//
//  MasterAssembler.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/24/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import Swinject

class MasterAssembler: MasterAssemblerInput {
    private let assembler: Assembler
    
    init(parentAssembler: Assembler) {
        assembler = try! Assembler(assemblies: [MasterAssembly()], parentAssembler: parentAssembler)
    }
    
    func masterView() -> UIViewController {
        return assembler.resolver.resolve(MasterViewInput.self)! as! UIViewController
    }
}
