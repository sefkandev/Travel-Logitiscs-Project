//
//  ContactView.swift
//  travel logictics
//
//  Created by Sonia Haidara on 04/05/2021.

import SwiftUI

struct ContactView: View {
    var body: some View {
        ScrollView {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("BlueD")]),
                           startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                
                
                Text("VOUS N'AVEZ PAS TROUVÉ RÉPONSE A VOS QUESTIONS ?")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    //                    .frame(width:300.0, height: 200.0)
                    .font(.title)
                    .multilineTextAlignment(.center)
                Spacer()
                
                Image("confused")
                    .resizable()
                    //                    .aspectRatio(contentMode: .fit)
                    .frame(width: 280, height: 400)
                //                Spacer(minLength: 80)
                //                    .padding()
                
                Spacer()
                
                VStack{
                    
                    Text ("Appelez-nous au")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).multilineTextAlignment(.center)
                        .font(.title)
                    Image (systemName:
                            "phone.fill.badge.plus")
                        .font(.system(size: 40))
                        .foregroundColor(.orange)
                        .frame(height: 113.0)
                        .imageScale(.large)
                    Text ("0800 000 001").fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .padding(.top, 5.0)
                    
                }
                //                .padding(.bottom, 300.0)
               }
            }.padding(.horizontal, 5)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CouleurDeFond())
       
    }
}







struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
