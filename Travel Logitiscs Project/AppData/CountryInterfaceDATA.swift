//
//  CountryInterfaceDATA.swift
//  Travel Logitiscs Project
//
//  Created by Sefkan on 05/05/2021.
//

import Foundation
import SwiftUI

struct TheCountryFlag: View {
    
    var flagCountry: String
    
    var body: some View {
        HStack{
            Image(flagCountry)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 120, height: 120)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .padding()
            
            }
        }
    }


struct DescriptionCountry1: View {
    
    var description1: String
    
    var body: some View {
        VStack {
        Text(description1)
        }
    }
}


