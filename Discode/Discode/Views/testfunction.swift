//
//  testfunction.swift
//  Discode
//
//  Created by Fader VMmac on 6/7/22.
//

import SwiftUI

struct testfunction: View {
    
    @State var aPress = false
    var body: some View {
        ZStack{
            VStack{
                Circle()
                    .frame(width: self.aPress ? 500 : 20, height: self.aPress ? 500 : 20)
                    .foregroundColor(Color.blue)
                    .animation(Animation.easeIn(duration: 1) ,value: aPress)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Button(action: onButtonTap)
                {
                    Text("test")
                }
            }
        }
    }
    func onButtonTap (){
        self.aPress.toggle()
        if aPress {
            //change
        }
    }
}

struct testfunction_Previews: PreviewProvider {
    static var previews: some View {
        testfunction()
    }
}
