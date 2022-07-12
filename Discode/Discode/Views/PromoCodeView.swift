//
//  PromoCodeView.swift
//  Discode
//
//  Created by Fader VMmac on 1/7/22.
//

import SwiftUI

struct PromoCodeView: View {
   
    var selcode :String
    

    var body: some View {
        VStack(spacing: 0){
            
            Text(selcode.uppercased()).font(.system(size: 50, weight: .bold))
                .offset(y:-20)

            PromoCodeList(selected: selcode)
                
                
                
            Spacer()
    
        
        }
        .background(getTheme(selchoice: selcode))
    
    }
}


struct PromoCodeView_Previews: PreviewProvider {
    static var previews: some View {
        PromoCodeView(selcode: "deliveroo")
        
        PromoCodeView(selcode: "deliveroo")
            .previewDevice("iPhone 13 Pro Max")
        
    }
}
