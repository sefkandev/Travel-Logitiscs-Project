//
//  VisaWallet.swift
//  Travel Logitiscs Project
//
//  Created by Florie on 04/05/2021.

import SwiftUI

struct VisaWallet: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Image").font(.system(size: 22,weight: .bold))){
                        Text("scan_page_passeport.jpg")
                        Text("document_à_conserver.jpg")
                        Text("photo.jpg")
                        
                        
                    }
                    Section(header: Text("Fichier").font(.system(size: 22,weight: .bold))){
                        Text("scan_page_passeport1.pdf")
                        Text("formulaire_à_remplir.pdf")
                        Text("fichier.pdf")
                        
                        
                    }
                }
            }
        }.navigationTitle(Text("VISA"))
    }
}

struct VisaWallet_Previews: PreviewProvider {
    static var previews: some View {
        VisaWallet()
    }
}
