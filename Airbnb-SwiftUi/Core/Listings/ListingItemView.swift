//
//  ListingItemView.swift
//  Airbnb-SwiftUi
//
//  Created by Kanan  on 17.12.24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images =  [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    var body: some View {
        VStack(spacing: 8) {
            //images
            TabView {
                ForEach(images, id: \.self) { image in
                   Image (image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            //images
            
            
            //listing details
            HStack (alignment: .top) {
                //details
                VStack(alignment: .leading) {
                    Text("Miami,Florida")
                        .fontWeight(.semibold)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack (spacing: 4){
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                Spacer()
                //ratings
                HStack (spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
