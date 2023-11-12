//
//  AirbnbListingCardView.swift
//  Airbnb
//
//  Created by 海怪 on 2023/11/12.
//

import SwiftUI

struct AirbnbListingCardView: View {
    let modal: AirbnbListing
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: modal.thumbnail_url ?? ""))
                .aspectRatio(contentMode: .fill)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .clipped()
            
            VStack {
                Text(modal.name ?? "Listing")
                    .lineLimit(1)
                    .font(.title3)
                    .bold()
                
                Text(modal.description ?? "Listing")
                    .foregroundColor(Color(.secondaryLabel))
                    .lineLimit(3)
                    .font(.body)
            }
        }
    }
}
