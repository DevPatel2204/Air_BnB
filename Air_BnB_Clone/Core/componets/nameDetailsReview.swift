//
//  nameDetailsReview.swift
//  Air_BnB_Clone
//
//  Created by Dev Patel on 10/08/24.
//

import SwiftUI

struct nameDetailsReview: View {
    var body: some View {
        VStack(alignment:.leading){
            Text("Miami Villa")
                .font(.system(size: 30))
                .fontWeight(.semibold)
            VStack {
                HStack(spacing:2){
                    Image(systemName: "star.fill")
                    
                    Text("4.98")
                    
                    Text("-")
                    
                    Text("30 Reviews")
                        .underline()
                        .fontWeight(.semibold)
                }.foregroundStyle(.black)
                Text("Miami , Florida")
            }.font(.caption)
        }
        .padding(.leading)
        .frame(maxWidth: .infinity,alignment: .leading)
    }
}

#Preview {
    nameDetailsReview()
}
