//
//  ViewController.swift
//  OpenFoodFacts
//
//  Created by Roger TAN on 7/10/16.
//  Copyright © 2016 Roger TAN. All rights reserved.
//

import UIKit
import Moya
import SwiftyJSON
import SVProgressHUD

class ViewController: UIViewController {

    lazy var viewModel: SearchViewModel = {
        return SearchViewModel()
    }()
    
    @IBOutlet var tableView: UITableView!
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SVProgressHUD.showWithStatus(NSLocalizedString("Loading...", comment: "Text for loading"))
        viewModel.executeSearch("Banania", completion: { (products, error) in
            SVProgressHUD.dismiss()
            self.tableView.reloadData()
        })
        
    }

}

extension ViewController : UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.previousResults.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("ProductViewCell") as? ProductViewCell {
            let venueViewModel = viewModel.previousResults[indexPath.row]
            cell.viewModel = venueViewModel
            return cell
        }
        return UITableViewCell()
    }
    
}