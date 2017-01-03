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
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
    
    deinit {
        print("deinit DetailsViewController")
    }
}
