//
//  DrinkingForm.swift
//  Drinking Guard
//
//  Created by Łukasz Niedźwiedź on 09/12/2020.
//  Copyright © 2020 niedzwiedz. All rights reserved.
//

import SwiftUI

struct DrinkingOath: View {
    @Binding var isPresented: Bool
    @Binding var startedDrinking: String?
    @State var duration: Float = 0
    @State var breakTime: Float = 0
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        Text("How long? : \(Int(duration)) minutes")
                        Slider(value: $duration, in: 0...400, step: 10)
                        
                    }
                    Section {
                        Text("Minimum break? \(Int(breakTime)) minutes")
                        Slider(value: $breakTime, in: 0...120, step: 15)
                        
                    }
                }
                Button("Done") {
                    self.isPresented = false
                    self.startedDrinking = "A"
                }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 44, alignment: .center)
            }
            .navigationBarTitle("Swipe to close")
        }
    }
}

struct DrinkingActive: View {
    var body: some View {
        Text("Currently drinking")
    }
}
