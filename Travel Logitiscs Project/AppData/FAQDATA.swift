//
//  FAQDATA.swift
//  Travel Logitiscs Project
//
//  Created by Sonia Haidara on 04/05/2021.
//

import Foundation
import SwiftUI

struct FAQ: View {
    
    @State var showalert = false
    
    var body: some View {
        NavigationView {
            //            ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
            VStack {
                List {
                    Section(header: Text("QUESTIONS FRÉQUEMMENT POSÉES").font(.system(size: 18,weight: .bold))) {
                        
                        Text("Travel Logistics, c'est quoi ?")
                            .fontWeight(.semibold)
                            .font(.system(size: 15,weight: .regular))
                            .foregroundColor(.white)
                            .listRowBackground(Color("BlueD"))
                        Text("Ça marche comment ?")
                            .fontWeight(.semibold)
                            .font(.system(size: 15,weight: .regular))
                            .foregroundColor(.white)
                            .listRowBackground(Color("BlueD"))
                        Text("Comment créer mon compte ?")
                            .fontWeight(.semibold)
                            .font(.system(size: 15,weight: .regular))
                            .foregroundColor(.white)
                            .listRowBackground(Color("BlueD"))
                        Text("Vos services sont-ils payants ?")
                            .fontWeight(.semibold)
                            .font(.system(size: 15,weight: .regular))
                            .foregroundColor(.white)
                            .listRowBackground(Color("BlueD"))
                        Text("Pouvez-vous garantir mes réservations ?")
                            .fontWeight(.semibold)
                            .font(.system(size: 15,weight: .regular))
                            .foregroundColor(.white)
                            .listRowBackground(Color("BlueD"))
                    }
                    
                    Section(header: Text("DONNÉES PERSONNELLES ET COOKIES").font(.system(size: 18,weight: .bold))) {
                        
                        
                    }
                    Section(header: Text("CGV ET MENTIONS LEGALES").font(.system(size: 18,weight: .bold))) {
                    }
                    
                    Section(header: Text("MARKETING").font(.system(size: 18,weight: .bold))) {
                        
                        
                    }
                    
                    
                }
                .accentColor(Color("BlueD"))
                Text("CELA VOUS A ÉTÉ UTILE ?")
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .font(.system(size: 18,weight: .bold))
                
                
                HStack{
                    
                    Spacer()
                    
                    
                    Button(action: {
                            // user satisafction custom button
                            showalert.toggle()})   {
                        Image(systemName:"hand.thumbsup.fill")
                            .padding()
                            .imageScale(.large)
                            .foregroundColor(.orange)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        
                        
                    }
                    .alert(isPresented: $showalert) {
                        Alert(title: Text("Merci pour votre feedback 😁"), message: Text(""), dismissButton: .default(Text("Gotcha!")))
                    }
                    Spacer()
                    NavigationLink (
                        destination:ContactView(),
                        label: {
                            HStack{
                                
                                Image(systemName:"hand.thumbsdown.fill")
                                    .padding()
                                    .imageScale(.large)
                                    .foregroundColor(.orange)
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                
                                
                            }
                        })
                    Spacer()
                }
                
            }
            .background(CouleurDeFond())
            .navigationTitle(Text("BESOIN D'AIDE ?"))
        }
        .accentColor(.orange)
    }
}


