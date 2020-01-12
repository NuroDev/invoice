//
//  ContentView.swift
//  invoice
//
//  Created by Ben Dixon on 12/01/2020.
//  Copyright © 2020 NURO. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isFirstLaunch: Bool = true

    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    Button(action: {
                        self.isFirstLaunch = true
                    }) {
                        Image(systemName: "chart.bar.fill")
                            .font(.largeTitle)
                            .foregroundColor(.primaryColor)
                            .padding()
                            .accessibility(hidden: true)
                    }.sheet(isPresented: self.$isFirstLaunch) {
                        SplashScreen()
                    }
                }.navigationBarTitle("Dashboard")
            }.tabItem {
                Image(systemName: "chart.bar.fill")
                    .padding()
                    .accessibility(hidden: true)
                Text("Dashboard")
            }
            .tag(1)

            NavigationView {
                VStack {
                    Image(systemName: "rectangle.stack.fill")
                        .font(.largeTitle)
                        .foregroundColor(.primaryColor)
                        .padding()
                        .accessibility(hidden: true)
                }.navigationBarTitle("Documents")
            }.tabItem {
                Image(systemName: "rectangle.stack.fill")
                    .padding()
                    .accessibility(hidden: true)
                Text("Documents")
            }.tag(2)

            NavigationView {
                VStack {
                    Image(systemName: "person.2.fill")
                        .font(.largeTitle)
                        .foregroundColor(.primaryColor)
                        .padding()
                        .accessibility(hidden: true)
                }.navigationBarTitle("Clients")
            }.tabItem {
                Image(systemName: "person.2.fill")
                    .padding()
                    .accessibility(hidden: true)
                Text("Clients")
            }.tag(3)

            NavigationView {
                VStack {
                    Image(systemName: "gear")
                        .font(.largeTitle)
                        .foregroundColor(.primaryColor)
                        .padding()
                        .accessibility(hidden: true)
                }.navigationBarTitle("Settings")
            }.tabItem {
                Image(systemName: "gear")
                    .padding()
                    .accessibility(hidden: true)
                Text("Settings")
            }.tag(4)
        }
        .accentColor(.green)
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().colorScheme(.light)
            ContentView().colorScheme(.dark)
        }
    }
}
