//
//  ContentView.swift
//  SmartHomeThermostat
//
//  Created by Jonathan Stillman on 1/23/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 0) {
                        // MARK: Thermometer
                        ThermometerView()
                            .padding(.top, 30)
                            .padding(.bottom, 60)
                        // MARK: Smart System
                        HStack(spacing: 20) {
                            // MARK: Humidity Card
                            ClimateCard(iconName: "humidity.fill", index: "Inside humidity", measure: "49%")
                            
                            // MARK: Temperature Card
                            ClimateCard(iconName: "thermometer", index: "Outside temp.", measure: "-10")
                        }
                    }
                }
            }
            .navigationTitle("Thermostat")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
