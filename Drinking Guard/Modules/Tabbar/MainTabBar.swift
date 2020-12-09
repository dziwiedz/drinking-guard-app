//
//  MainTabBar.swift
//  Drinking Guard
//
//  Created by Łukasz Niedźwiedź on 09/12/2020.
//  Copyright © 2020 niedzwiedz. All rights reserved.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Text("Home")
                }
                .tag(0)
            SettingsView()
                .tabItem {
                    Text("Settings")
                }
            .tag(1)
        }
    }
}


struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
