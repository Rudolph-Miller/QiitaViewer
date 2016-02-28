//
//  ArticleListViewController.swift
//  QiitaViewer
//
//  Created by Rudolph Miller on 2016/02/29.
//  Copyright © 2016年 rudolph-miller. All rights reserved.
//

import UIKit
import Alamofire

class ArticleListViewController: UIViewController {
    let table = UITableView()

    func getArticles() {
        Alamofire.request(.GET, "https://qiita.com/api/v2/items")
            .responseJSON { response in
                print(response.result.value)
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "新着記事"

        table.frame = view.frame
        view.addSubview(table)
        getArticles()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
