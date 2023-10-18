//
//  AccountView.swift
//  Spendbase-SwiftUI
//
//  Created by Alisher on 18.10.2023.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack {
            Image(TabBarIcons.iconUserSquare)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Account")
        }
        .padding()
    }
}

#Preview {
    AccountView()
}
