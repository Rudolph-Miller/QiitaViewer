//
//  ArticleListViewController.swift
//  QiitaViewer
//
//  Created by Rudolph Miller on 2016/02/29.
//  Copyright © 2016年 rudolph-miller. All rights reserved.
//

import UIKit

class ArticleListViewController: UIViewController {
    let table = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "新着記事"

        table.frame = view.frame
        view.addSubview(table)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
