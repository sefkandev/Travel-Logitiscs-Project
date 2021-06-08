//
//  Wallet.swift
//  Travel Logitiscs Project
//
//  Created by Florie on 04/05/2021.
//

import SwiftUI

struct Wallet: View {
    
    var body: some View {
        NavigationView{
            ZStack{
                
                CouleurDeFond()
                
                VStack {
                    
                    HStack {
                        VStack{
                            iconeInWallet(iconeWalletPic: "touchid", walletNavLink: PasseportWallet())
                            Text("PASSEPORT")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                        .padding()
                        
                        VStack{
                            iconeInWallet(iconeWalletPic: "cross.circle", walletNavLink: CarnetDeSanteWallet())
                            Text("SANTÉ")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                        .padding()
                    }
                    
                    
                    HStack {
                        VStack{
                            iconeInWallet(iconeWalletPic: "creditcard", walletNavLink: VisaWallet())
                            Text("VISA")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                        .padding()
                        VStack {
                            iconeInWallet(iconeWalletPic: "doc.fill", walletNavLink: OtherDocument())
                            Text("DOCUMENT")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                            
                        }
                        .padding()
                        
                    }
                    CameraInWallet()
                        .padding(.top, 120)
                }
            }.navigationBarTitle("Wallet")
        }
    }
}

struct Wallet_Previews: PreviewProvider {
    static var previews: some View {
        Wallet()
    }
}
