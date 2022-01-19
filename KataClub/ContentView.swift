//
//  ContentView.swift
//  KataClub
//
//  Created by Tom Phillips on 1/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: DynamicTriangleView()) {
                    Text("Dynamic Triangle (Logic)")
                }
                NavigationLink(destination: FeaturedAppHelperView()) {
                    Text("Featured App (Interface)")
                }
            }
            .navigationTitle("Kata Club")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
