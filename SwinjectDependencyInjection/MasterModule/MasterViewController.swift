//
//  MasterViewController.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/24/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController, MasterViewInput {
    var output: MasterViewOutput?
    

    // MARK: Button Action
    @IBAction func openDetailsTapped(_ button: UIButton) {
        output?.didTapOpenDetails()
    }
}
