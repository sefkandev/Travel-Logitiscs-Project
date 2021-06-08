//
//  OtherDocument.swift
//  Travel Logitiscs Project
//
//  Created by Florie on 04/05/2021.
//

import SwiftUI

struct OtherDocument: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Image").font(.system(size: 22,weight: .bold))){
                        Text("photo.jpg")
                        Text("photo1.jpg")
                        Text("photo2.jpg")
                        
                        
                    }
                    Section(header: Text("Fichier").font(.system(size: 22,weight: .bold))){
                        Text("fichier.pdf")
                        Text("fichier1.pdf")
                        Text("fichier2.pdf")
                        
                        
                    }
                }
            }
        }.navigationTitle(Text("AUTRES DOCUMENTS"))
    }
}

struct OtherDocument_Previews: PreviewProvider {
    static var previews: some View {
        OtherDocument()
    }
}
