//
//  ViewController.swift
//  CodeViewBasics
//
//  Created by Bruno Lopes on 22/07/19.
//  Copyright © 2019 Bruno Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let screen = ViewControllerScreen()
    
    override func loadView() {
        super.loadView()

        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

