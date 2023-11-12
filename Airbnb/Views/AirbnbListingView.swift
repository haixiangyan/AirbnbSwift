//
//  AirbnbListingView.swift
//  Airbnb
//
//  Created by 海怪 on 2023/11/12.
//

import SwiftUI

struct AirbnbListingView: View {
    @StateObject var viewModal = AirbnbListingViewViewModal()
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModal.listings.isEmpty {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                } else {
                    List(viewModal.listings) { listing in
                        NavigationLink(destination: AirbnbDetailView(modal: listing), label: {
                            AirbnbListingCardView(modal: listing)
                        })
                    }
                }
            }
            .navigationTitle("Airbnb")
        }
        .onAppear {
            viewModal.fetchListings()
        }
    }
}
