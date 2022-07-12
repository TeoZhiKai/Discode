//
//  CatergoryData.swift
//  Discode
//
//  Created by Fader VMmac on 28/6/22.
//

import Foundation

struct Category: Hashable,Codable {
    var id : Int
    var categoryname : String
    var choices : Array<String>
}
