//
//  HomeView.swift
//  Drinking Guard
//
//  Created by Łukasz Niedźwiedź on 09/12/2020.
//  Copyright © 2020 niedzwiedz. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var showingOathView = false
    @State var startedDrinking: String?
    var body: some View {
        VStack {
            Text("Drinking Guard")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Text("👮🏻‍♂️")
                .font(.system(size: 180))
            
            Button("Start drinking") {
                self.showingOathView.toggle()
            }
            .font(.title)
            .frame(width: 180, height: 44, alignment: .center)
            .sheet(isPresented: $showingOathView) {
                DrinkingOath(isPresented: self.$showingOathView, startedDrinking: self.$startedDrinking)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    @State var showingOathView = true
    static var previews: some View {
        HomeView()
    }
}
