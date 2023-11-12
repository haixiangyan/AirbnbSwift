//
//  AirbnbListingView.swift
//  Airbnb
//
//  Created by 海怪 on 2023/11/12.
//

import Foundation

final class AirbnbListingViewViewModal: ObservableObject {
    private let service = APIService()
    
    @Published var listings: [AirbnbListing] = []
    
    
    public func fetchListings() {
        service.getListings { [weak self] result in
            switch result {
            case .success(let modals):
                self?.listings = modals
            case .failure:
                break
            }
        }
    }
}
