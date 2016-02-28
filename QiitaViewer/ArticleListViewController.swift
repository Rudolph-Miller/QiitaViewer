//
//  ArticleListViewController.swift
//  QiitaViewer
//
//  Created by Rudolph Miller on 2016/02/29.
//  Copyright © 2016年 rudolph-miller. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ArticleListViewController: UIViewController, UITableViewDataSource {
    let table = UITableView()
    var articles: [[String: String?]] = []

    func getArticles() {
        Alamofire.request(.GET, "https://qiita.com/api/v2/items")
            .responseJSON { response in
                guard let object = response.result.value else {
                    return
                }

                let json = JSON(object)
                json.forEach { (_, json) in
                    let article: [String: String?] = [
                        "title": json["title"].string,
                        "userId": json["user"]["id"].string
                    ]
                    self.articles.append(article)
                }
                self.table.reloadData()
            }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "cell")
        let article = articles[indexPath.row]
        cell.textLabel?.text = article["title"]!
        cell.detailTextLabel?.text = article["userId"]!
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "新着記事"

        table.frame = view.frame
        view.addSubview(table)
        table.dataSource = self
        getArticles()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
