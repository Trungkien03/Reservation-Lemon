//
//  ContentView.swift
//  Little Lemon Reservation
//
//  Created by Trung Kiên Nguyễn on 23/4/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var model = Model()
        @State var tabSelection = 0
        
        var body: some View {
            TabView (selection: $model.tabViewSelectedIndex){
                // A view of restaurants and his location, each of which can be clicked to navigate to a reservation form for that restaurant
                LocationsView()
                    .tag(0)
                    .tabItem {
                        if !model.displayingReservationForm {
                            Label("Locations", systemImage: "fork.knife")
                        }
                    }
                // Reservation view shows information about a reservation or that there is no reservation yet
                ReservationsView()
                    .tag(1)
                    .tabItem {
                        if !model.displayingReservationForm {
                            Label("Reservation", systemImage: "square.and.pencil")
                        }
                    }
            }
            .environmentObject(model)

        }
}

#Preview {
    MainView()
}
