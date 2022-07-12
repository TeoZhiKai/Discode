//
//  SelectedCatergory.swift
//  Discode
//
//  Created by Fader VMmac on 27/6/22.
//

import SwiftUI

struct SelectedCategory: View {
    var selected: Category
    
    var body: some View {
//        HStack{
//            Spacer()
            WrapHstackview(inchoice:  selected)
            
//            Spacer()
//        }
    }
}


//struct SelectedCategory_Previews: PreviewProvider {
//    var Categorys : Category
//    static var previews: some View {
//        SelectedCategory(selected : Category(id:1002,categoryname:"column_transport",choices:["grab","ryde"]))
//    }
//}
