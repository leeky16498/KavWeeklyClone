//
//  Ring.swift
//  KavWeeklyClone
//
//  Created by Kyungyun Lee on 14/03/2022.
//

import Foundation
import SwiftUI

struct Ring : Identifiable {
    
    var id = UUID()
    let progress : CGFloat
    let value : String
    let keyIcon : String
    let keyColor : Color
    var isText : Bool = false
    
}

var rings : [Ring] = [

    Ring(progress: 72, value: "Steps", keyIcon: "figure.walk", keyColor: .green, isText: false),
    Ring(progress: 36, value: "Calories", keyIcon: "flame.fill", keyColor: .red, isText: false),
    Ring(progress: 91, value: "Sleep time", keyIcon: "😭", keyColor: .purple, isText: true)
    
]
