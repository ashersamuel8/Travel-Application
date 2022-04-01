//
//  Tip.swift
//  Light
//
//  Created by Samuel Asher  on 1/12/21.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
    
}
