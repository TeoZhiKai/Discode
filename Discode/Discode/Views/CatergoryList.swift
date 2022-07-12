//
//  CatergoryList.swift
//  Discode
//
//  Created by Fader VMmac on 28/6/22.
//

import SwiftUI




struct CategoryList: View {



    var body: some View {
    
        NavigationView {
            
            VStack(spacing: 0){
                Text("Discount").font(.system(size: 60))
                    .foregroundColor(Color("MainTitleColor"))
                    .bold()
                    .frame( maxWidth: .infinity,  alignment: .leading)
                    .padding(.all,30)
                    
                ForEach (categorys,id: \.id) {
                category in
                    NavigationLink{SelectedCategory(selected: category)} label:{
                    CategoryRow(category: category)
                          
                }
                   
                .frame( maxWidth: .infinity,   alignment: .center)
                .listRowInsets(EdgeInsets())
                

            }
            .navigationBarHidden(true)
                Spacer()
            }
        }
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList()
    }
}
