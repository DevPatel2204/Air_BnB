//
//  rowOptional.swift
//  Air_BnB_Clone
//
//  Created by Dev on 24/08/24.
//

import SwiftUI

struct rowOptional: View {
    let imageName:String
    let tittle:String
    var body: some View {
        VStack{
            HStack{
            Image(systemName: imageName)
                
            Text(tittle)
                    .font(.subheadline)
            
                Spacer()
            
            Image(systemName: "chevron.right")
            }
            Divider()
        }
    }
}

#Preview {
    rowOptional(imageName: "gear", tittle: "settings")
}
