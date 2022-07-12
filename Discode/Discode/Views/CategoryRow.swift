//
//  CatergoryRow.swift
//  Discode
//
//  Created by Fader VMmac on 27/6/22.
//

import SwiftUI


struct CategoryRow: View {
    
    var category: Category
    
    var body: some View {
        HStack{
            Spacer()
        Image(category.categoryname)
                .resizable()
                .padding(.vertical,15)
               
            .aspectRatio(contentMode: .fit)
            .frame(width: 300)
            
            Spacer()
        }

    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(category: categorys[1])
    }
}
