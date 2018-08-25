//
//  CatFactViewController.swift
//  CatFactsMEOW
//
//  Created by Rui Yang Tan on 25/8/18.
//  Copyright © 2018 Rui Yang Tan. All rights reserved.
//

import UIKit

class CatFactViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func gimmeCatFact(_ sender: Any) {
        let catFact = fetchOnlineCatFact()
    }
    func fetchOnlineCatFact(completion: @escaping (CatFact) -> Void ) {
    let url = URL(string: "https://cat-fact.herokuapp.com/Facts/Random")!
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        let jsonDecoder = JSONDecoder()
        if let data = data,
            let catFact = try? jsonDecoder.decode(CatFact.self, from:data) {
            completion(catFact)
            
        }
    }
    task.resume() //😘
    }
}

