//
//  PromoRow.swift
//  Discode
//
//  Created by Fader VMmac on 5/7/22.
//

import SwiftUI


struct PromoRow: View {
    
    let deal : String = """
foodpanda shops $8 off on first shops order + Addition
$12 cashback \n- Minimum spend $24 \n- Valid on first 'foodpanda shops'
order only
"""
    let code : String = "NEWCOMER"
    
    //var PromoModels = Swiftload()
    var icount : Int
    var selectedModel : PromoModel
    var selected : String
    
    var body: some View {
        HStack{
            Spacer()
        
        HStack{
        Spacer()
               
            Text (getTextArrange(rText: selectedModel.deal[icount]))
                .font(.system(size: 10, weight: .semibold))
                .multilineTextAlignment(.center)
                .frame(width: 170, height: 150, alignment: .leading)
                //.minimumScaleFactor(0.0001)
                .lineLimit(6)
                
            
            Spacer().frame(width:10)
         
            
            ZStack{
               
                Text(selectedModel.Pcode[icount])
                    .scaledToFit()
                    .frame(width: 130, height: 100 )
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .bold ))
                    .minimumScaleFactor(0.01)
                    .background(RoundedRectangle(cornerRadius: 15)
                    .fill(getTheme(selchoice: selected))
                    
                    
              
                    )
                    
                    
//
//                ZStack{
//            Circle()
//                    .fill(.white)/Users/vmmac/Documents/Discode/Discode/Views/PromoRow.swift
//                    .frame(width: 60,height: 60)
//                    .offset(x:80 ,y:30)
//                   
//                    Circle()
//                            .fill(getTheme(selchoice: selected))
//                            .frame(width: 55,height: 55)
//                            .offset(x:80 ,y:30)
//                            
//                }
                
            }
            Spacer()
      
        }.background(Rectangle()
            .stroke(.gray, lineWidth: 2)
            .frame(width: 330, height: 130)
            .background(Rectangle().foregroundColor(Color.white))
        )
            Spacer()
        }
       
    }
}

struct PromoRow_Previews: PreviewProvider {
    var PromoModelfp : PromoModel
    static var previews: some View {
        //PromoRow(PromoModels: Swiftload())
        PromoRow(icount: 0 , selectedModel: PromoModel( deal:["dea.lI.nString"], Pcode: ["pcodeInString"], len: 0) , selected: "foodpanda")
    }
}
