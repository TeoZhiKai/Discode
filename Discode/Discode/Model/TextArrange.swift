//
//  TextArrange.swift
//  Discode
//
//  Created by Fader VMmac on 8/7/22.
//

import Foundation


func getTextArrange (rText:String) -> String {

//    let replacementString:[String] = ["min","min.","minimum"]
    var aText: String = ""
//    for rline in replacementString {
//         aText = rText.replacingOccurrences(of: rline, with: "Minxxxxx")
//    }
    let retainText :String = rText
    aText = rText.replacingOccurrences(of: "min", with: ".\nmin")
    let rTextArray : [String] = aText.components(separatedBy: ".")
    let getlenArray = rTextArray.count

    let newTextArray = rTextArray.prefix(upTo: getlenArray-2)
    let bText = newTextArray.joined(separator: ". ")
    
    if (bText.isEmpty){
        return retainText
    }
    else { return bText}
    

}
