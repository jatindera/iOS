//
//  StoriesTableViewController.swift
//  NewsPaperExample
//
//  Created by Dimple Arora on 20/01/19.
//  Copyright © 2019 dimple. All rights reserved.
//

import UIKit

struct Headline {
    var id: Int
    var title: String
    var text: String
    var image: String
}

class StoriesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    var headlines = [
        Headline(id:1,title:"Apple News",text:"This is Apple news",image:"Apple"),
        Headline(id:2,title:"Banana News",text:"This is Banana news",image:"Banana"),
        Headline(id:3,title:"Cantaloupe News",text:"This is Cantaloupe news",image:"Cantaloupe"),
    ]
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headlines.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        //cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
        cell.textLabel?.text = headlines[indexPath.row].title
        cell.detailTextLabel?.text = headlines[indexPath.row].text
        cell.imageView?.image = UIImage(named: headlines[indexPath.row].image)
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Section \(section)"
//    }
 

    
}
