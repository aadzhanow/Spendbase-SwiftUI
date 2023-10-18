//
//  SpendbaseTabView.swift
//  Spendbase-SwiftUI
//
//  Created by Alisher on 18.10.2023.
//

import SwiftUI

struct SpendbaseTabView: View {
    
    enum Tab: CaseIterable {
        case home, transactions, myCards, account
        
        var title: LocalizedStringKey {
            switch self {
            case .home: return "itemOne"
            case .transactions: return "itemTwo"
            case .myCards: return "itemThree"
            case .account: return "itemFour"
            }
        }
        
        @ViewBuilder
        var view: some View {
            switch self {
            case .home: HomeView()
            case .transactions: TransactionsView()
            case .myCards: MyCardsView()
            case .account: AccountView()
            }
        }
        
        var icon: String {
            switch self {
            case .home: return TabBarIcons.iconHome
            case .transactions: return TabBarIcons.iconList
            case .myCards: return TabBarIcons.iconCreditCard
            case .account: return TabBarIcons.iconUserSquare
            }
        }
    }

    @State private var selectedTab: Tab = .home

    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(Tab.allCases, id: \.self) { tab in
                tab.view
                    .tabItem {
                        VStack {
                            Image(tab.icon)
                                .renderingMode(.template)
                                .foregroundColor(selectedTab == tab ? Color(BrandColors.accentOne) : Color(BrandColors.systemFour))
                            Text(tab.title)
                        }
                    }
                    .tag(tab)
            }
        }
        .background(Color(BrandColors.backgroundTwo))
    }
}

struct SpendbaseTabView_Previews: PreviewProvider {
    static var previews: some View {
        SpendbaseTabView()
    }
}
