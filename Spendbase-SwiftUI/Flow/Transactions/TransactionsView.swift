//
//  TransactionsView.swift
//  Spendbase-SwiftUI
//
//  Created by Alisher on 18.10.2023.
//

import SwiftUI

struct TransactionsView: View {
    var body: some View {
        VStack {
            Image(TabBarIcons.iconList)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Transactions")
        }
        .padding()
    }
}

#Preview {
    TransactionsView()
}
