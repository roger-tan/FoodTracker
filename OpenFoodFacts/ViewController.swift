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

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        openFoodFactsProvider.request(.Search(searchTerms: "Banania")) { results in
            let json = JSON(data: results.value!.data)
            let search = Search(json: json)
            debugPrint(search.description)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

