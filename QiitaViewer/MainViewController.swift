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

    @IBAction func toggle(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
            case 0: label.text = "ON"
            case 1: label.text = "OFF"
            default:
                break
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "ON"
    }

}
