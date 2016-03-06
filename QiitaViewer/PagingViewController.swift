//
//  PagingViewController.swift
//  QiitaViewer
//
//  Created by Rudolph Miller on 2016/03/06.
//  Copyright © 2016年 rudolph-miller. All rights reserved.
//

import UIKit
import PagingMenuController

class PagingViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let viewControllers = [0, 1, 2, 3, 4, 5, 6].map { (index) -> UIViewController in
            let viewController = UIViewController()
            viewController.title = "Tab: \(index)"
            return(viewController)
        }
        let options = PagingMenuOptions()
        let pagingMenuController = PagingMenuController(viewControllers: viewControllers, options: options)
        pagingMenuController.view.frame.origin.y += 60
        // options.menuDisplayMode = .Infinite(withMode: MenuItemWithMode)


        self.addChildViewController(pagingMenuController)
        self.view.addSubview(pagingMenuController.view)
        pagingMenuController.didMoveToParentViewController(self)
    }
}
