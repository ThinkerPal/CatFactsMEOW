//
//  CatFactViewController.swift
//  CatFactsMEOW
//
//  Created by Rui Yang Tan on 25/8/18.
//  Copyright © 2018 Rui Yang Tan. All rights reserved.
//

import UIKit

class 
troller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func gimmeCatFact(_ sender: Any) {
        let url = URL(string: "https://cat-fact.herokuappp.com/facts/random")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data, let response = response {
                print(data)
                print("")
                print(response)
            }
        }
    }
    
}

