//
//  ContentView.swift
//  KavWeeklyClone
//
//  Created by Kyungyun Lee on 14/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HomeView()
        }
        .frame(maxWidth: .infinity)
        .background(
            ZStack {
                VStack {
                    Circle()
                        .fill(.green)
                        .scaleEffect(0.6)
                        .offset(x: 20)
                        .blur(radius: 120)
                    
                    Circle()
                        .fill(.red)
                        .scaleEffect(0.6)
                        .offset(y: -20)
                        .blur(radius: 120)
                }
                
                Rectangle()
                    .fill(.ultraThinMaterial)
            }
                .ignoresSafeArea()
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
