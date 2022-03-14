//
//  Ring.swift
//  KavWeeklyClone
//
//  Created by Kyungyun Lee on 14/03/2022.
//

import Foundation
import SwiftUI

struct Step : Identifiable {
    
    let id = UUID()
    let value : CGFloat
    let key : String
    var color : Color = Color.purple
    
}

var steps : [Step] = [

    Step(value: 500 , key: "1-4AM"),
    Step(value: 300 , key: "5-8AM", color: .green),
    Step(value: 400 , key: "9-11AM"),
    Step(value: 200 , key: "12-4PM", color: .green),
    Step(value: 400 , key: "5-8PM"),
    Step(value: 300 , key: "9-12PM", color: .green),

]
