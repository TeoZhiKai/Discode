//
//  SwiftParse.swift
//  Discode
//
//  Created by Fader VMmac on 6/7/22.
//

import Foundation
import SwiftSoup

func SwiftloadModule1(selected: String) -> PromoModel{

    var dealInArray : [String] = []
    var pcodeInArray : [String] = []
    let filterValue = ["See details below"]
    
    do {
        //let url = URL(string:"https://www.sgdtips.com/foodpanda-singapore-promo-codes")!
        //let url = URL(string:"https://www.sgdtips.com/deliveroo-singapore-promo-codes")!
        let url = URL(string:getURL(selchoice: selected))!
        

        let html = try String(contentsOf: url)
        //print(html.prefix(200))

       let doc: Document = try SwiftSoup.parse(html)
       //return try doc.text()
        
        
        let deal: [Element] = try doc.select("div[data-coupon-type=code]>div>div>p[class=sgdtcontent-text]").array()
        let pcode: [Element] = try doc.select("div[data-coupon-type=code]>div>div[class=pro-col col-detail]>input").array()
        
        
//        let dealInString = try deal[1].text()
//        let pcodeInString = try pcode[1].text()
//        dealInArray.append(dealInString)
//        pcodeInArray.append(pcodeInString)
//        var PromoModelfp = PromoModel( deal:dealInString, Pcode: pcodeInString)
//        //return  PromoModelfp
        
        
        if (pcode.count != 0 ) {
            
            for i in 0..<pcode.count {
                
                //if (try pcode[i].attr("value") != "See details below"  ){
                if ((filterValue.contains(try pcode[i].attr("value")) == false)  ){

                      let dealInString = try deal[i].text()

                      let pcodeInString = try pcode[i].attr("value")
                        dealInArray.append(dealInString)
                        pcodeInArray.append(pcodeInString)
                }
                
            }
        }
        else { return PromoModel( deal:["dealInString"], Pcode: ["pcodeInString"], len: 0)}
        
        return PromoModel( deal:dealInArray, Pcode: pcodeInArray, len: dealInArray.count)

        
    } catch Exception.Error( _, let message) {
        print(message)
    } catch {
        print("error")
    }
    //return print("")
    //return PromoModel( deal:["deal has error"], Pcode: ["Pomocode error"])
    //return PromoModel( deal:"deal has error", Pcode: "Pomocode error")
    return PromoModel( deal:["dealInString"], Pcode: ["pcodeInString"], len: 0)
}


func SwiftloadModule2(selected: String) -> PromoModel{

    var dealInArray : [String] = []
    var pcodeInArray : [String] = []
    
    do {
        //let url = URL(string:"https://www.sgdtips.com/foodpanda-singapore-promo-codes")!
        //let url = URL(string:"https://www.sgdtips.com/deliveroo-singapore-promo-codes")!
        let url = URL(string:getURL(selchoice: selected))!
        

        let html = try String(contentsOf: url)
        //print(html.prefix(200))

       let doc: Document = try SwiftSoup.parse(html)
       //return try doc.text()
        
        
        let deal: [Element] = try doc.select("div[class=entry]>ol>li").array()
        let pcode: [Element] = try doc.select("div[class=entry]>ol>li>span>a").array()
        for element in deal {
            try element.select("span").remove()
        }
        
//        let dealInString = try deal[1].text()
//        let pcodeInString = try pcode[1].text()
//        dealInArray.append(dealInString)
//        pcodeInArray.append(pcodeInString)
//        var PromoModelfp = PromoModel( deal:dealInString, Pcode: pcodeInString)
//        //return  PromoModelfp
        
    //return PromoModel( deal:["dealInString"], Pcode: ["pcodeInString"], len: pcode.count)
        if (pcode.count != 0 ) {
            
            for i in 0..<pcode.count {
                
                if (try pcode[i].attr("data-clipboard-text") != "See details below"){

                  let dealInString = try deal[i].text()

                  let pcodeInString = try pcode[i].attr("data-clipboard-text")
                    
                    
                    dealInArray.append(dealInString)
                    pcodeInArray.append(pcodeInString)
                
                }
                
            }
        }
        else { return PromoModel( deal:["dealInString"], Pcode: ["pcodeInString"], len: 0)}
        
        return PromoModel( deal:dealInArray, Pcode: pcodeInArray, len: pcode.count)

        
    } catch Exception.Error( _, let message) {
        print(message)
    } catch {
        print("error")
    }
    //return print("")
    //return PromoModel( deal:["deal has error"], Pcode: ["Pomocode error"])
    //return PromoModel( deal:"deal has error", Pcode: "Pomocode error")
    return PromoModel( deal:["dealInString"], Pcode: ["pcodeInString"], len: 0)
}


func Swiftload(selected: String) -> PromoModel{

    
//    return SwiftloadModule1(selected: selected)
    
    let pmodel = SwiftloadModule1(selected: selected)
    if pmodel.len != 0 {
       return pmodel
    }
    else {
        return SwiftloadModule2(selected: selected)
    }
 //   return PromoModel( deal:["Out of option"], Pcode: ["pcodeInString"], len: 0)

}
