//
//  TravelDetailView.swift
//  Travel Logitiscs Project
//
//  Created by Sefkan on 05/05/2021.
//

import SwiftUI

struct TravelDetailView: View {
    
    
    var travel: Travel
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack{
                    
                    TheCountryFlag(flagCountry: travel.flagCountry)
                        .padding(.top, -100)
                    
                    Text("La durée de votre voyage est de \(travel.day) jours. \nVous voyagez en classe \(travel.typeOfTravel).")
                        .font(.headline)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    DescriptionCountry1(description1: travel.descriptionCountry)
                        .font(.headline)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("Pour toutes les informations complémentaire, \nTravel Logistics vous invite à prendre contact avec l'ambassade:")
                        .font(.headline)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Text(travel.adressEmbassy)
                        .font(.headline)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Image(travel.localizationEmbassy)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 170, height: 170)
                    
                    Text("OU")
                        .font(.title2)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("Sur le site du gouvernement:\n \(travel.linkWebGov)")
                        .font(.headline)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    
                    
                    Spacer()
                    
                    
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(CouleurDeFond())
            
            
            
            
        }
        .navigationBarTitle(Text(travel.nameCountry), displayMode: .inline)
        
        
    }
}


struct TravelDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TravelDetailView(travel: Travel(flagCountry: "USAflag",
                                        nameCountry: "USA",
                                        typeOfTravel: "Tourisme",
                                        day: 12,
                                        isFavourite: false,
                                        descriptionCountry: "Pour une durée séjour moins de 90 jours, un formulaire E.S.T.A seras nécessaire.\n\n Au delà de 90 jours, vous devrez faire la demande d'un visa B1/B2 via l'ambassade.",
                                        linkWebGov: "https://travel.state.gov/",
                                        adressEmbassy: "Ambassade des États-Unis d’Amérique\n 2 Avenue Gabriel, 75008 Paris\n Téléphone : 01 43 12 22 22", localizationEmbassy:"USAembassy"))
    }
}
