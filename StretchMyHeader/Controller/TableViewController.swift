//
//  TableViewController.swift
//  StretchMyHeader
//
//  Created by Jamie on 2018-09-11.
//  Copyright © 2018 Jamie. All rights reserved.
//

import UIKit

private let kTableHeaderHeight: CGFloat = 300.0

class TableViewController: UITableViewController {
    

  
    // MARK: Properties
    
    @IBOutlet weak var dateUILabel: UILabel!
    
    
    
    
    var headerView: UIView!
    var newsArray = [News]()
    override var prefersStatusBarHidden: Bool {
            return true
        }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the date label
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM dd"
        let today = Date()
        self.dateUILabel.text = dateFormatter.string(from: today)
        
        
        //setup the sample data array
        let newsItem1 = News(category: .world, headline: "Climate change protests, divestments meet fossil fuels realities")
        let newsItem2 = News(category: .americas, headline: "Climate change protests, divestments meet fossil fuels realities")
        let newsItem3 = News(category: .asiaPacific, headline: "Climate change protests, divestments meet fossil fuels realities")
        let newsItem4 = News(category: .middleEast, headline: "Climate change protests, divestments meet fossil fuels realities")
        let newsItem5 = News(category: .europe, headline: "I am writing something. Yes, I plan to make it the most boring thing ever written. I go to the store. A car is parked. Many cars are parked or moving. Some are blue. Some are tan. They have windows. In the store, there are items for sale. These include such things as soap, detergent, magazines, and lettuce. You can enhance your life with these products. Soap can be used for bathing, be it in a bathtub or in a shower. Apply the soap to your body and rinse. Detergent is used to wash clothes. Place your dirty clothes into a washing machine and add some detergent as directed on the box. Select the appropriate settings on your washing machine and you should be ready to begin. Magazines are stapled reading material made with glossy paper, and they cover a wide variety of topics, ranging from news and politics to business and stock market information. Some magazines are concerned with more recreational topics, like sports card collecting or different kinds of hairstyles. Lettuce is a vegetable. It is usually green and leafy, and is the main ingredient of salads. You may have an appliance at home that can quickly shred lettuce for use in salads. Lettuce is also used as an optional item for hamburgers and deli sandwiches. Some people even eat lettuce by itself. I have not done this. So you can purchase many types of things at stores.")
        newsArray.append(newsItem1)
        newsArray.append(newsItem2)
        newsArray.append(newsItem3)
        newsArray.append(newsItem4)
        newsArray.append(newsItem5)
        
        //setup the automatic row height
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = UITableViewAutomaticDimension
        
  //MARK: Custom Header Setup
        
        headerView = tableView.tableHeaderView
        tableView.tableHeaderView = nil
        tableView.addSubview(headerView)
        tableView.contentInset = UIEdgeInsets(top: kTableHeaderHeight, left: 0, bottom: 0, right: 0)
        tableView.contentOffset = CGPoint(x: 0, y: -kTableHeaderHeight)
        updateHeaderView()

    }

    func updateHeaderView(){
        var headerRect = CGRect(x: 0, y: -kTableHeaderHeight, width: tableView.bounds.width, height: kTableHeaderHeight )
        if tableView.contentOffset.y < kTableHeaderHeight {
            headerRect.origin.y = tableView.contentOffset.y
            headerRect.size.height = -tableView.contentOffset.y
        }
        headerView.frame = headerRect
    }

    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        updateHeaderView()
    }
    
    // MARK: TableView Setup
    
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

        cell.categoryUILabel.text = newsCell.category.toString()
        cell.categoryUILabel.textColor = newsCell.category.toColor()
        cell.headlineUILabel.text = newsCell.headline
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        guard let headerView = tableView.tableHeaderView else {
//            return
//        }
//        let size = headerView.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
//        
//        headerView.frame.size.height = size.height*self.tableView.frame.size.width/size.width
//        headerView.frame.size.width = self.tableView.frame.size.width
// 
//    }

    
}

