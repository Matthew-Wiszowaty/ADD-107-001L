//
//  ContentView.swift
//  CalorieBurner
//
//  Created by student on 10/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        } .position()
        ZStack{
            Text("hello Wordls")
        }
    }
}

#Preview {
    ContentView()
}
