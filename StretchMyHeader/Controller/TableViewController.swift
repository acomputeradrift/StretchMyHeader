//
//  TableViewController.swift
//  StretchMyHeader
//
//  Created by Jamie on 2018-09-11.
//  Copyright © 2018 Jamie. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    

  
 
    var newsArray = [News]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let newsItem1 = News(category: "World", headline: "Climate change protests, divestments meet fossil fuels realities")
        let newsItem2 = News(category: "World", headline: "Climate change protests, divestments meet fossil fuels realities")
        let newsItem3 = News(category: "World", headline: "Climate change protests, divestments meet fossil fuels realities")
        let newsItem4 = News(category: "World", headline: "Climate change protests, divestments meet fossil fuels realities")
        let newsItem5 = News(category: "World", headline: "Climate change protests, divestments meet fossil fuels realities")
        newsArray.append(newsItem1)
        newsArray.append(newsItem2)
        newsArray.append(newsItem3)
        newsArray.append(newsItem4)
        newsArray.append(newsItem5)
        
        //create an array of news ites
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath) as? NewsTableViewCell else {
            print("What the heck?")
            return UITableViewCell()
        }
        let row = indexPath.row
        let newsCell = newsArray[row]
        // I wanna set the cell properties from the news properties
        cell.categoryUILabel.text = newsCell.category
        cell.headlineUILabel.text = newsCell.headline
        return cell
    }
}

