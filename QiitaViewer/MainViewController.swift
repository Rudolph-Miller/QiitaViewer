//
//  MainViewController.swift
//  QiitaViewer
//
//  Created by Rudolph Miller on 2016/03/06.
//  Copyright © 2016年 rudolph-miller. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var toggleButton: UISegmentedControl!

    @IBAction func toggle(sender: UISegmentedControl) {
        label.text = "OFF"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "ON"
    }

}
