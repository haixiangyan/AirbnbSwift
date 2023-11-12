//
//  AirbnbDetailView.swift
//  Airbnb
//
//  Created by 海怪 on 2023/11/12.
//

import SwiftUI

struct AirbnbDetailView: View {
    let modal: AirbnbListing
    
    var body: some View {
        VStack(alignment: .leading) {
            GeometryReader { proxy in
                ScrollView(.vertical) {
                    // Picture
                    AsyncImage(url: URL(string: modal.xl_picture_url ?? ""))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: proxy.frame(in: .global).width, height: proxy.frame(in: .global).width)
                        .clipped()
                    
                    // Info
                    Text(modal.name ?? "")
                        .bold()
                        .padding()
                    
                    if let price = modal.price {
                        Text("Nightly Rate: \(price.formatted(.currency(code: "USD")))")
                    }
                    
                    Text("Description: \(modal.description ?? "")")
                        .padding()
                    Text("Summary: \(modal.summary ?? "")")
                        .padding()
                    Text("House Rules: \(modal.house_rules ?? "")")
                        .padding()
                    Text("Space: \(modal.space ?? "")")
                        .padding()
                    
                    // Host Info
                    Text("About Your Host")
                        .font(.title2)
                        .bold()
                    
                    HStack {
                        AsyncImage(url: URL(string: modal.host_thumbnail_url ?? ""))
                            .frame(width: 75, height: 75)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .clipShape(Circle())
                        
                        Text(modal.host_name ?? "")
                            .bold()
                    }
                    .padding()
                    
                    Text("Hosting since:" + modal.host_since)
                }
                .frame(maxWidth: proxy.frame(in: .global).width)
            }
        }
        .navigationTitle(modal.name ?? "Listing")
    }
}
