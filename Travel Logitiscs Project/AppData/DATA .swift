//
//  DATA .swift
//  Travel Logitiscs Project
//
//  Created by Sefkan on 04/05/2021.
//

import Foundation
import SwiftUI

//COULEUR DE FOND

struct CouleurDeFond: View {
    var body: some View {
    LinearGradient(gradient: Gradient(colors: [Color("BlueD")]),
                   startPoint: .topLeading,
                   endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
   }
}

