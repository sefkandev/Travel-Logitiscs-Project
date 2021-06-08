//
//  WalletDATA.swift
//  Travel Logitiscs Project
//
//  Created by Florie on 04/05/2021.
//

import Foundation
import SwiftUI

//PAGE WALLET

//Icône : //PAGE WALLET

//Icône PREMIER PLAN

struct iconeInWallet<walletNavigation: View> : View {
    
    var iconeWalletPic: String
    var walletNavLink: walletNavigation
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
                .frame(width: 150, height: 100)
            
            NavigationLink(
                destination: (walletNavLink),
                label: {
                    Image(systemName: "\(iconeWalletPic)")
                        .foregroundColor(Color("BlueD"))
                        .font(.system(size: 70, weight: .bold))
                        .frame(width: 80, height: 60)
                    
                })
        }
    }
}

//Icône Caméra

struct CameraInWallet: View {
    @State private var showSheet: Bool = false
    @State private var showImagePicker : Bool = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    @State private var image: UIImage?
    var body: some View {
        
     
        VStack{
            Button (action: {self.showSheet = true}, label: {
                Image(systemName: ("camera.circle"))
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .bottomLeading)
                    .foregroundColor(.white)
                
                })
            
        }
        .actionSheet(isPresented: $showSheet) {
            ActionSheet(title:Text ("Select Photo"), message: Text("Choisir"), buttons:[ .default(Text("Photo Library")) {
                self.showImagePicker = true
                self.sourceType = .photoLibrary
            },
            .default(Text("Camera")) {
                self.showImagePicker = true
                self.sourceType = .camera
            },
            .cancel()
            
            ])
            
        }
        
        .sheet(isPresented: $showImagePicker, content: {
            ImagePicker(image:self.$image, sourceType: self.sourceType)
        })
    }
}

//IMAGE PICKER

class ImagePickerCoordinator:NSObject, UINavigationControllerDelegate,UIImagePickerControllerDelegate{
    
    @Binding var image : UIImage?
   
    init(image:Binding<UIImage?>) {
    _image = image
}
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
//        if let uiImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
//        image = uiImage
        }
        
   }

struct ImagePicker: UIViewControllerRepresentable{
    
typealias UIViewControllerType = UIImagePickerController
typealias Coordinator = ImagePickerCoordinator
    
    @Binding var image : UIImage?
    var sourceType : UIImagePickerController.SourceType = .camera
    
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>){
    }
    
    func makeCoordinator() -> ImagePicker.Coordinator {
        return ImagePickerCoordinator(image: $image)
    }
    
    
   
    func makeUIViewController(context:
    UIViewControllerRepresentableContext<ImagePicker>)->
    UIImagePickerController {
        
      let picker = UIImagePickerController()
        picker.sourceType = sourceType
        picker.delegate = context.coordinator
        return picker
    }
    
}



