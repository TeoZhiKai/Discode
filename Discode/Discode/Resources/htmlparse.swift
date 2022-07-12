//
//  htmlparse.swift
//  Discode
//
//  Created by Fader VMmac on 2/7/22.
//

import Foundation
import SwiftSoup

func hello() -> String{
    print("hello world")
    do {
        print("hello")
        Swift.print("hello")
       let html = "<html><head><title>First parse</title></head>"
           + "<body><p>Parsed HTML into a doc.</p></body></html>"
       let doc: Document = try SwiftSoup.parse(html)
       return try doc.text()
    } catch Exception.Error(_, let message) {
        print(message)
    } catch {
        print("error")
    }
    return "nothing"
}



func webloadtest() -> String{

    
    do {
        let url = URL(string:"https://www.sgdtips.com/whyq-promo-codes")!
        //let url = URL(string:"https://en.wikipedia.org/wiki/Aglaonema")!
        let html = try String(contentsOf: url)
        print(html.prefix(200))
//       let html = "<html><head><title>First parse</title></head>"
//           + "<body><p>Parsed HTML into a doc.</p></body></html>"
       let doc: Document = try SwiftSoup.parse(html)
        
        
 //      return try doc.title()
        let deal: [Element] = try doc.select("div[class=entry]>ol>li").array()
        let pcode: [Element] = try doc.select("div[class=entry]>ol>li>span>a").array()
        for element in deal {
            try element.select("span").remove()
        }
        
        //let dealInString = try deal[0].text()
        let pcodeInString = try pcode[0].attr("data-clipboard-text")
        //var dealcount = deal.count
        //return "\(dealcount)"
        return pcodeInString
        

       

        
    } catch Exception.Error(_, let message) {
        print(message)
    } catch {
        print("error")
    }
    return ""
    //return PromoModel( deal:["deal has error"], Pcode: ["Pomocode error"])
    //return PromoModel( deal:"deal has error", Pcode: "Pomocode error")
    //return PromoModel( deal:"dealInString", Pcode: "pcodeInString")
}
