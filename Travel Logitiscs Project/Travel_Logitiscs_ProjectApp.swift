//
//  Travel_Logitiscs_ProjectApp.swift
//  Travel Logitiscs Project
//
//  Created by Sefkan on 04/05/2021.
//

import SwiftUI

@main
struct Travel_Logitiscs_ProjectApp: App {
    
    @StateObject var travelLibrary = TravelLibrary()
    
    var body: some Scene {
        WindowGroup {
            ZStack{
            HomeView(travelLibrary: travelLibrary)
                VStack {
            ViewTab()
               }
            }
        }
    }
}
