//
//  HomeView.swift
//  Travel Logitiscs Project
//
//  Created by Sefkan on 04/05/2021.
//

import SwiftUI

struct HomeView: View {
    
   
    
    @ObservedObject var travelLibrary: TravelLibrary
    @State private var isShowingSurveyCreation = false

    
    var body: some View {
        NavigationView {
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom))  {
                ScrollView {
                    VStack {
                        Text("TRAVEL LOGISTICS,\nVOUS SOUHAITE BON VOYAGE.")
                            .font(.system(size: 24,weight: .bold))
                            .foregroundColor(.yellow)
                        ForEach(travelLibrary.testTravels) { travel in
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                                        .fill(Color.white)
                                        .shadow(color: .black, radius: 7)
                                    NavigationLink(
                                        destination:
                                            TravelDetailView(travel: travel),
                                        label: {
                                            TravelCellView(travel: travel)
                                        })
                                }
                            
                        }
                    }.padding(12)
                }
                .navigationTitle(Text("BIENVENUE"))
                .background(CouleurDeFond())
                PlusButtonView(action: {
                    isShowingSurveyCreation.toggle()
                }).sheet(isPresented: $isShowingSurveyCreation, content: {
                    TravelCreationView(travelLibrary: travelLibrary)
                })
                .padding()
            }
        }.accentColor(.blue)
    }
}

struct HomeView_Previews: PreviewProvider {
    
    @StateObject static var travelLibrary = TravelLibrary()
    
    static var previews: some View {
        HomeView(travelLibrary: travelLibrary)
    }
}
