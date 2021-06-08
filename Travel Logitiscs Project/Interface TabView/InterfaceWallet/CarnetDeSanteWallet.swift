//
//  CarnetDeSanteWallet.swift
//  Travel Logitiscs Project
//
//  Created by Florie on 04/05/2021.
//

import SwiftUI

struct CarnetDeSanteWallet: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Image").font(.system(size: 22,weight: .bold))){
                        Text("scan_carnet_santé.jpg")
                        Text("document_à_conserver.jpg")
                        Text("photo.jpg")
                        
                        
                    }
                    Section(header: Text("Fichier").font(.system(size: 22,weight: .bold))){
                        Text("scan_page_carnet_santé.pdf")
                        Text("formulaire_covid_à_remplir.pdf")
                        Text("test_PCR.pdf")
                        
                        
                    }
                }
            }
        }.navigationTitle(Text("SANTÉ"))
    }
}

struct CarnetDeSanteWallet_Previews: PreviewProvider {
    static var previews: some View {
        CarnetDeSanteWallet()
    }
}
