//
//  TravelCreationView.swift
//  Travel Logitiscs Project
//
//  Created by Sefkan on 05/05/2021.
//

import SwiftUI


struct TravelCreationView: View {
    
    @ObservedObject var travelLibrary: TravelLibrary
    @ObservedObject var travelConfig = NewTravelConfig()
    @Environment(\.presentationMode) var presentationMode
    
  var body: some View {
        NavigationView {
            ZStack {
                Form {
                    Section {
                        Picker(selection: $travelConfig.index1, label: Text("Pays de destination : ")) {
                            ForEach(0 ..< travelConfig.nameCountry.count) {
                                Text(travelConfig.nameCountry[$0]).tag($0)
                                    .foregroundColor(.black)
                            }
                        }
                        Picker(selection: $travelConfig.index2, label: Text("Type de voyage : ")) {
                            ForEach(0 ..< travelConfig.typeOfTravel.count) {
                                Text(travelConfig.typeOfTravel[$0]).tag($0)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    Section {
                        Stepper(value: $travelConfig.day, in: 1...365) {
                            Text("Durée du séjour : \(travelConfig.day) jours")
                        }
                    }
                }
            }
            .navigationTitle("Formulaire")
            .navigationBarItems(trailing: Button(action: {
                let newTravel = Travel(config: travelConfig)
                travelLibrary.testTravels.append(newTravel)
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Valider")
            }))
            
        }
    }
}

struct TravelCreationView_Previews: PreviewProvider {
    
    @StateObject static var travelLibrary = TravelLibrary()
    
    static var previews: some View {
        TravelCreationView(travelLibrary: travelLibrary)
    }
}
//                if travelConfig.$nameCountry. "Japon" {
//
//                }
