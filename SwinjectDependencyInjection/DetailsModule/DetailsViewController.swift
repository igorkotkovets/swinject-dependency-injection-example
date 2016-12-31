//
//  DetailsViewController.swift
//  SwinjectDependencyInjection
//
//  Created by Igor Kotkovets on 12/24/16.
//  Copyright © 2016 Igor Kotkovets. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, DetailsViewInput {
    var output: DetailsViewOutput?
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        output?.didTriggerViewDidLoad()
    }
    
    func displayProgress(_ progress: String) {
        progressLabel.text = progress
    }
    
    @IBAction func onCloseTap(sender: AnyObject) {
        output?.didTapClose()
    }
}
