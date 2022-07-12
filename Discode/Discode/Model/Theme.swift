//
//  Theme.swift
//  Discode
//
//  Created by Fader VMmac on 8/7/22.
//

import Foundation
import SwiftUI


func getTheme (selchoice:String) -> Color {
    let selected = selchoice
    
    switch (selected){
    case "foodpanda":
        return Color("T_foodpanda")
    case "deliveroo":
        return Color("T_deliveroo")
    case "grabfood":
        return Color("T_grabfood")
    case "whyq":
        return Color("T_whyq")
    case "grab":
        return Color("T_grabfood")
    case "ryde":
        return Color("T_ryde")
    case "shopee":
        return Color("T_shopee")
    case "lazada":
        return Color("T_lazada")
    case "qoo10":
        return Color("T_qoo10")
    default:
        return  Color(.black)
        
        
    }
    
}
