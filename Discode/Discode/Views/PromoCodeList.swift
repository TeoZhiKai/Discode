//
//  PromoCodeList.swift
//  Discode
//
//  Created by Fader VMmac on 7/7/22.
//

import SwiftUI

struct PromoCodeList: View {
   
    var selected : String
    
 
    init (selected:String) {
        self.selected = selected
       
        UITableView.appearance().backgroundColor = UIColor( getTheme(selchoice: selected))
    }
 
    

    var body: some View {
        
         
            let selModel = Swiftload(selected: selected)
            let items = Array(0...selModel.len-1)
            //let items = Array(0...2) //debugging
            

            
            List (items , id:\.self) {
                item in
               
                PromoRow(icount: item , selectedModel: selModel , selected: selected)
                        
                    
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .background(getTheme(selchoice: selected))
                   
               
            }
            .listRowBackground(getTheme(selchoice: selected))
            .listStyle(.plain)
            //.offset(x:-10)
            //.background(Color.pink.ignoresSafeArea(.all))
            //.edgesIgnoringSafeArea(.all)
            //.frame(maxWidth: . infinity, maxHeight: .infinity)
            //.background(getTheme(selchoice: selected))
            .listStyle(GroupedListStyle())
               
           
          
           
     
      
    }
}

struct PromoCodeList_Previews: PreviewProvider {
    static var previews: some View {
        PromoCodeList(selected: "foodpanda")
        PromoCodeView(selcode: "foodpanda")
            .previewDevice("iPhone 13 Pro Max")
    }
}
