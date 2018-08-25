//
//  CatFact.swift
//  CatFactsMEOW
//
//  Created by Rui Yang Tan on 25/8/18.
//  Copyright © 2018 Rui Yang Tan. All rights reserved.
//

import Foundation

struct CatFact: Codable {
    var text: String
    var id: String
    
    enum CodingKeys: String, CodingKey {
        case text
        case id = "_id"
    }
    init(from decoder: Decoder) throws {
        let valueContainer = try decoder.container(keyedBy: CodingKeys.self)
        self.text = try valueContainer.decode(String.self, forKey: CodingKeys.text)
        self.id = try valueContainer.decode(String.self, forKey: CodingKeys.id)
    }
}
