//
//  listingCarosalView.swift
//  Air_BnB_Clone
//
//  Created by Dev Patel on 10/08/24.
//

import SwiftUI

struct listingCarosalView: View {
    /*var Images = [
     Image-1
     Image-2
     Image-3
     Image-4
     Image-5
     Image-6
     ]
     Is used to reuse the componets and use it again and again
     */
    var body: some View {
        TabView{
            ForEach(0...3,id:\.self){ image in
                Rectangle()
            }
        }
//        .frame(height: 320)
//        .clipShape(RoundedRectangle(cornerRadius: 10))
        .tabViewStyle(.page)
    }
}

#Preview {
    listingCarosalView()
}

