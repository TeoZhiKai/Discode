//
//  ChoiceButton.swift
//  Discode
//
//  Created by Fader VMmac on 28/6/22.
//

import SwiftUI

struct ShakeEffect: AnimatableModifier {
    var shakeNumber: CGFloat = 0

    var animatableData: CGFloat {
        get {
            shakeNumber
        } set {
            shakeNumber = newValue
        }
    }

    func body(content: Content) -> some View {
        content
            .offset(x: sin(shakeNumber * .pi * 2) * 10)
    }
}



struct ChoiceButton: View {
    var choice :String
    @State var aPress = false
    @State var isAnimationFinish = false
    @State var isButtonTap = false
    @State var numberOfShakes: CGFloat = 0
    
    var body: some View {
        ZStack{
            

            
            
            ImageButton(choice: choice)
                .modifier(ShakeEffect(shakeNumber: numberOfShakes))
               .onTapGesture {
                   withAnimation(Animation.easeIn){
                       isButtonTap = true
                       numberOfShakes = 10
                       DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                          
                           isAnimationFinish = true
                           isButtonTap = false
                           
                           
                       }
                   }
               }

            
            if isButtonTap{

//                    Circle()
//                    .position(x:0 , y:0)
//                        .frame(width: self.isButtonTap ? 1000 : 20, height: self.isButtonTap ? 1000 : 20)
//                        .foregroundColor(Color.blue)
//                        .transition(AnyTransition.scale.animation(.easeInOut(duration: 1.0)))
                

            }
            NavigationLink("", destination :PromoCodeView(selcode: choice)
                                       ,isActive: $isAnimationFinish
                                       )
            


        
        }
        
    }
    

}
struct ImageButton: View {
    var choice :String
    var body: some View{
        Image(choice)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width:120)
               .padding(.horizontal,7).padding(.vertical, 7)
               .overlay(
               RoundedRectangle(cornerRadius: 20)
                   .stroke(.gray, lineWidth: 18)
               )
               .padding(.all,11)

    }
}





struct ChoiceButton_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceButton(choice:"foodpanda")
    }
}
