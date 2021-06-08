
import Foundation
import SwiftUI

//
//  CountryCityButtons.swift
//  travel logictics
//
//  Created by Sonia Haidara on 04/05/2021.
//

import SwiftUI

struct CountryCityButtons: View {
    
    let cityName: String
    var body: some View {
        
        VStack{
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text(cityName)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(15)
                    .foregroundColor(Color.white)
                    .font(.system (size: 15))
                
            })
        }
    }
}

struct CountryCityView: View {
    var body: some View {
        NavigationView {
            ZStack {
                CouleurDeFond()
                ScrollView(showsIndicators: false) {
                    
                    VStack (alignment: .center) {
                        
                        HStack {
                            
                            CountryCityButtons(cityName: "EUROPE")
                            CountryCityButtons(cityName: "ASIE")
                            CountryCityButtons(cityName: "OCEANIE")
                            
                            
                        }
                        HStack {
                            CountryCityButtons(cityName: "AFRIQUE")
                            CountryCityButtons(cityName: "AMERIQUE")
                          }
                        
                    }//fin hstack button
                    .padding(.horizontal,40)
                    
                    
                    
                    VStack{
                        
                        //worldmap
                        Text("Pays")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding(.leading, -190)
                        
                        Image("worldmap")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 150)
                            .clipped()
                        
                        //button horizontal
                        
                        
                        //block Ville
                        HStack{
                            VStack{
                                Text("Ville")
                                    .fontWeight(.bold)
                                    .font(.title)
                                    .padding(.leading, -190)
                                
                                
                                Image("city2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 400, height: 150)
                                    .clipped()
                                
                            }
                        }
                        //block news
                        
                        HStack{
                            VStack{
                                Text("Dernières Actualités")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .padding(.leading, -115)
                                
                                
                                Image("news")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 150)
                                    .clipped()
                                
                            }
                        }
                    }
                }
                
            }
            .navigationBarTitle(Text("NEWS"))
        }
    }
}

struct CountryCityView_Previews: PreviewProvider {
    static var previews: some View {
        CountryCityView()
    }
}

