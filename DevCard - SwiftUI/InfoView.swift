//
//  InfoView.swift
//  MobiCash
//
//  Created by Vsevolod on 05.12.2020.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.gray)
                Text(text)
            })
            .padding(.horizontal)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "vsevolod.dzh@ya.ru", imageName: "paperplane.fill").previewLayout(.sizeThatFits)
    }
}
