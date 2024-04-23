//
//  RestaurantView.swift
//  Little Lemon Reservation
//
//  Created by Trung Kiên Nguyễn on 23/4/24.
//

import SwiftUI

struct RestaurantView: View {
  private var restaurant: RestaurantLocationModel
  
  init(_ restaurant: RestaurantLocationModel) {
    self.restaurant = restaurant
  }
  
  var body: some View {
    VStack (alignment: .leading, spacing:3){
      Text(restaurant.city)
        .font(.title2)
      
      HStack {
        Text(restaurant.neighborhood)
        Text("–")
        Text(restaurant.phoneNumber)
      }
      .font(.caption)
      .foregroundColor(.gray)

    }
  }
}

struct Restaurant_Previews: PreviewProvider {
  static var previews: some View {
    let sampleRestaurant = RestaurantLocationModel(city: "Las Vegas", neighborhood: "Downtown", phoneNumber: "(702) 555-9898")
    RestaurantView(sampleRestaurant)
    
  }
  
}
