//
//  ContentView.swift
//  Discode
//
//  Created by Fader VMmac on 24/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      MainView()
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
        ContentView()
            .previewDevice("iPhone 13 mini")
        
            
    }
}
