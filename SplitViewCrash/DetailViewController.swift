//
//  DetailViewController.swift
//  SplitViewCrash
//
//  Created by Frank Cipolla on 2/13/18.
//  Copyright © 2018 Frank Cipolla. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: Properties
    
    var pizzaMessage: String? { // add this to work around weak binding of IBOutlets
        didSet {
            self.configureView()
        }
    }
    

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var anotherLabel: UILabel!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
        }
        if let message: String = pizzaMessage { // add this to bind label property so ARC does not kill it
            if let label = anotherLabel {
                label.text = message
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

