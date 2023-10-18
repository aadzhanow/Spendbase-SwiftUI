//
//  ContentView.swift
//  Spendbase-SwiftUI
//
//  Created by Alisher on 18.10.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Image(TabBarIcons.iconHome)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Home")
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
