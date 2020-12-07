//
//  VsevolodCardView.swift
//  MobiCash
//
//  Created by Vsevolod on 05.12.2020.
//

import SwiftUI

struct VsevolodCardView: View {
    var body: some View {
        ZStack {
            Color(red: 0.15, green: 0.68, blue: 0.38)
                .ignoresSafeArea(.all)
            
            VStack {
                
                Image("My_photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 300)
                    .background(Color(.lightGray))
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Vsevolod\nDzhafarov")
                    .font(.system(size: 40
                    ))
                    .foregroundColor(.white)
                    .bold()
                    .multilineTextAlignment(.center)
                    
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .multilineTextAlignment(.center)
                Spacer()
                
                InfoView(text: "+7 999 816 32 28", imageName: "phone.fill")
                InfoView(text: "vsevolod.dzh@ya.ru", imageName: "paperplane.fill")
                
            }
            
        }
        
    }
}






struct VsevolodCardView_Previews: PreviewProvider {
    static var previews: some View {
        VsevolodCardView()
            .previewDevice("iPhone 11")
    }
}

