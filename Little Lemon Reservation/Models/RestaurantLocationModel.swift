//
//  RestaurantLocation.swift
//  Little Lemon Reservation
//
//  Created by Trung Kiên Nguyễn on 23/4/24.
//

import Foundation

struct RestaurantLocationModel: Hashable {
    let city: String
    let neighborhood: String
    let phoneNumber: String
    
    init(city: String = "", neighborhood: String = "", phoneNumber: String = "") {
        self.city = city
        self.neighborhood = neighborhood
        self.phoneNumber = phoneNumber
    }
}
