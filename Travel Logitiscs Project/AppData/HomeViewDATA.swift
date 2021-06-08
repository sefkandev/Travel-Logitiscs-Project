//
//  HomeViewDATA.swift
//  Travel Logitiscs Project
//
//  Created by Sefkan on 05/05/2021.
//

import Foundation
import SwiftUI

//PAGE HOME VIEW STRUCTURE

struct TravelCellView: View {
    
    let travel : Travel
    
    var body: some View {
        
        HStack {
            Image(travel.flagCountry)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 70, height: 70)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .padding(.trailing, 8)
            VStack(alignment : .leading) {
                Text(travel.nameCountry)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.bottom, -4)
                Text("Durée du voyage: \(travel.day) jours")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(.bottom, -4)
                Text(travel.typeOfTravel)
                    .font(.subheadline)
                    .foregroundColor(Color.black)
                
            }
            Spacer()
            FavouriteButtonView()
        }.padding()
    }
}

//NOUVEAU FORMULAIRE BOUTON

struct PlusButtonView: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            ZStack {
                Circle()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .frame(width: 70, height: 70)
                Image(systemName: "plus")
                    .foregroundColor(.yellow)
                    .font(.system(size: 30, weight: .bold))
            }.shadow(radius: 3)
        })
    }
}

//BOUTON FAVORIS

struct FavouriteButtonView: View {
    
    var body: some View {
        
            Image(systemName: "arrow.right.circle")
                .font(.system(size: 27))
                .padding(10)
                .foregroundColor(.blue)
        }
    }
    
    
//DATA POUR LE FORMULAIRE
    

struct Travel: Identifiable {
    let id = UUID().uuidString
    let flagCountry: String
    let nameCountry: String
    let typeOfTravel: String
    let linkWebGov: String
    var descriptionCountry: String
    let day: Int
    var isFavourite: Bool
    let adressEmbassy: String
    let localizationEmbassy: String
    
   
    init(flagCountry: String, nameCountry: String, typeOfTravel: String, day: Int, isFavourite: Bool, descriptionCountry: String, linkWebGov: String, adressEmbassy: String, localizationEmbassy: String) {
        self.flagCountry = flagCountry
        self.nameCountry = nameCountry
        self.typeOfTravel = typeOfTravel
        self.day = day
        self.isFavourite = isFavourite
        self.descriptionCountry = descriptionCountry
        self.linkWebGov = linkWebGov
        self.adressEmbassy = adressEmbassy
        self.localizationEmbassy = localizationEmbassy
    }
    
    init(config: NewTravelConfig) {
        self.flagCountry = config.flagCountry[config.index1]
        self.nameCountry = config.nameCountry[config.index1]
        self.typeOfTravel = config.typeOfTravel[config.index2]
        self.day = config.day
        self.isFavourite = false
        self.descriptionCountry = config.descriptionCountry[config.index1]
        self.linkWebGov = config.linkWebGov[config.index1]
        self.adressEmbassy = config.adressEmbassy[config.index1]
        self.localizationEmbassy = config.localizationEmbassy[config.index1]
    }
}

class NewTravelConfig: ObservableObject {
    
    var descriptionUSA = ("Vous avez besoin d'un ESTA")
    
    @Published var flagCountry = ["USAflag", "Japanflag", "Germanflag", "Pakistanflag", "Bruneiflag"]
    @Published var nameCountry = ["États-Unis", "Japon", "Allemagne", "Pakistan", "Bruneï"]
    @Published var typeOfTravel = ["Tourisme", "Business"]
    @Published var day = 0
    @Published var index1 = 0
    @Published var index2 = 0
    @Published var linkWebGov =  ["https://travel.state.gov/",
                                  "https://mofa.go.jp/",
                                  "https://germany.travel",
                                  "https://tourism.gov.pk",
                                  "https://bruneitourism.com"]
    @Published var descriptionCountry =
    
      
//        ÉTATS-UNIS DÉSCRIPTION
        
        ["Un passeport est obligatoire pour entrer dans le territoire américain.\n\n Pour un séjour de moins 90 jours, un formulaire E.S.T.A seras nécessaire.\n\n Pour une durée de plus 90 jours, vous devez faire la demande d'un visa B1/B2.",
         
//         JAPON DESCRIPTION
         "Un passeport est obligatoire pour entrer dans le territoire japonais.\n\n Vous n'avez pas besoin d'un visa pour un séjour moins de 90 jours.\n\n Pour une durée de plus 90 jours, vous devez faire la demande d'un visa.",

//         ALLEMAGNE DESCRIPTION
                                         "L'Allemagne fait partie de l'espace Schengen,\n vous êtes libre de circuler.\n Cependant, un document d'identité est nécessaire.",
                                         
//         PAKISTAN DESCRIPTION
                                         "Un passeport et un visa est obligatoire pour entrer dans le territoire.\n\n Une liste de document nécessaire a été établit par le gouvernement Pakistanais pour la demande d'un visa.",
                                         
//         BRUNEI DESCRIPTION
                                         "Un passeport est obligatoire pour entrer dans le territoire.\n\n Vous n'avez pas besoin d'un visa pour un séjour moins de 15 jours.\n\n Pour une durée de plus 15 jours, vous devez faire la demande d'un visa."]
    
    @Published var adressEmbassy =
        
        
//          AMBASSADE ÉTATS-UNIS
        
        ["Ambassade des États-Unis d’Amérique\n 2 Avenue Gabriel, 75008 Paris\n Téléphone : 01 43 12 22 22",
//          AMBASSADE JAPON
         "Ambassade du Japon en France\n 7 Avenue Hoche, 75008 Paris\n Téléphone : 01 48 88 62 00",
//          AMBASSADE ALLEMAGNE
         "Ambassade d'Allemagne\n 13/15 Avenue Franklin Delano Roosevelt, 75008 Paris\n Téléphone : 01 53 83 45 00",
//          AMBASSADE PAKISTAN
         "Ambassade du Pakistan\n 18 Rue Lord Byron, 75008 Paris\n Téléphone : 01 45 62 23 32",
//          AMBASSADE BRUNEÏ
         "Ambassade de Brunei Darussalam\n 7 Rue de Presbourg, 75116 Paris\n Téléphone : 01 53 64 67 60"]
    
    @Published var localizationEmbassy = ["USAembassy",
                                          "Japanembassy",
                                          "Germanembassy",
                                          "Pakistanembassy",
                                          "Bruneiembassy"]
    
}

class TravelLibrary: ObservableObject {
   
    @Published var testTravels = [
    
    Travel(flagCountry: "USAflag",
           nameCountry: "États-Unis",
           typeOfTravel: "Tourisme",
           day: 15,
           isFavourite: false,
           descriptionCountry: "Un passeport est obligatoire pour entrer dans le territoire américain.\n\n Pour un séjour de moins 90 jours, un formulaire E.S.T.A seras nécessaire.\n\n Pour une durée de plus 90 jours, vous devez faire la demande d'un visa B1/B2.",
           linkWebGov: "https://travel.state.gov/",
           adressEmbassy: "Ambassade des États-Unis d’Amérique\n 2 Avenue Gabriel, 75008 Paris\n Téléphone : 01 43 12 22 22",
           localizationEmbassy: "USAembassy"),
    
    ]
}




