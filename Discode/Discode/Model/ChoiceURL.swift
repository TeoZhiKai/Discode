//
//  ChoiceURL.swift
//  Discode
//
//  Created by Fader VMmac on 7/7/22.
//

import Foundation

func getURL (selchoice:String) -> String {
    let selected = selchoice
    
    switch (selected){
    case "foodpanda":
        return "https://www.sgdtips.com/foodpanda-singapore-promo-codes"
    case "deliveroo":
        return "https://www.sgdtips.com/deliveroo-singapore-promo-codes"
    case "grabfood":
        return "https://www.sgdtips.com/grabfood-promo-codes"
    case "whyq":
        return "https://www.sgdtips.com/whyq-promo-codes"
    case "grab":
        return "https://www.sgdtips.com/grab-singapore-promo-codes"
    case "gojek":
        return "https://www.sgdtips.com/gojek-promo-codes"
    case "ryde":
        return "https://www.sgdtips.com/ryde-promo-codes"
    case "shopee":
        return "https://www.sgdtips.com/shopee-singapore-promo-codes"
    case "lazada":
        return "https://www.sgdtips.com/lazada-promo-codes"
    case "amazon":
        return "https://www.sgdtips.com/amazon-promo-codes"
    case "qoo10":
        return "https://www.sgdtips.com/qoo10-coupons"
    default:
        return "invalid"
        
        
    }
    
}
