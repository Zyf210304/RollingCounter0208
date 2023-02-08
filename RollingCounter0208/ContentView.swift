//
//  ContentView.swift
//  RollingCounter0208
//
//  Created by 张亚飞 on 2023/2/8.
//

import SwiftUI

struct ContentView: View {
    @State var value: Int = 0
    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                RollingText(font: .system(size: 55), weight: .black, value: $value)
                
                Button("Change Value") {
                    value = .random(in: 0...2000)
                }
            }
            .padding()
            .navigationTitle("Rolling Counter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
