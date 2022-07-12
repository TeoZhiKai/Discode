//
//  WrapHstackview.swift
//  Discode
//
//  Created by Fader VMmac on 30/6/22.
//

import SwiftUI


struct WrapHstackview: View {
    var inchoice: Category
    @State var runOnce = false
   
  
    var body: some View {
        HStack{
            Spacer()
            GeometryReader { geometry in
                self.generateContent(in: geometry)
            }.frame(width:330)
            Spacer()
        }
    }

    private func generateContent(in g: GeometryProxy) -> some View {
        
      
        
        var width = CGFloat.zero
        var height = CGFloat.zero
        runOnce = true
        return ZStack(alignment: .topLeading) {
            ForEach(inchoice.choices, id: \.self) { platform in
                self.item(for: platform)
                    .padding([.horizontal, .vertical], 4)
                    .alignmentGuide(.leading, computeValue: { d in
                        if (abs(width - d.width) > g.size.width)
                        {
                            width = 0
                            height -= d.height
                        }
                        let result = width
                        if platform == inchoice.choices.last! {
                            width = 0 //last item
                        } else {
                            width -= d.width
                        }
                        return result
                    })
                    .alignmentGuide(.top, computeValue: {d in
                        let result = height
                        if platform == inchoice.choices.last! {
                            height = 0 // last item
                        }
                        return result
                    })
            }
        }
        

        
        
    }

    func item(for text: String) -> some View {
        ChoiceButton(choice: text)
    }
}

//struct WrapHstackview_Previews: PreviewProvider {
//    static var previews: some View {
//        WrapHstackview(inchoice: )
//    }
//}



