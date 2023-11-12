//
//  AirbnbListingResponse.swift
//  Airbnb
//
//  Created by 海怪 on 2023/11/12.
//

import Foundation

struct AirbnbListingResponse: Codable {
//    let total_count: Int
    let results: [AirbnbListing]
}
