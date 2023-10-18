//
//  MyCardsView.swift
//  Spendbase-SwiftUI
//
//  Created by Alisher on 18.10.2023.
//

import SwiftUI

struct MyCardsView: View {
    var body: some View {
        VStack {
            Image(TabBarIcons.iconCreditCard)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("My Cards")
        }
        .padding()
    }
}

#Preview {
    MyCardsView()
}
