//
//  ViewTab.swift
//  Travel Logitiscs Project
//
//  Created by Sefkan on 05/05/2021.
//

import SwiftUI

struct ViewTab: View {
    
    @StateObject var travelLibrary = TravelLibrary()
    
    var body: some View {
        TabView {
            
            HomeView(travelLibrary: travelLibrary)
                .tabItem{
                    Image(systemName: "house")
                    Text("HOME")
                }
            Wallet()
                .tabItem{
                    Image(systemName: "person.crop.square.fill.and.at.rectangle")
                    Text("WALLET")
                }
            NewsView()
                .tabItem{
                    Image(systemName: "newspaper.fill")
                    Text("NEWS")
                }
            FAQView()
                .tabItem{
                    Image(systemName: "questionmark.circle")
                    Text("FAQ")
                }
        }.accentColor(.blue)
    }
}


struct ViewTab_Previews: PreviewProvider {
    static var previews: some View {
        ViewTab()
    }
}
