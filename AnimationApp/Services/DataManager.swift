//
//  DataManager.swift
//  AnimationApp
//
//  Created by Anastasiia Korshina on 07.04.2022.
//

import Foundation
import Spring

class DataManager {
    static let shared = DataManager()
    
    let persets = Spring.AnimationPreset.allCases.map { preset in
        preset.rawValue
    }
    
    let curves = Spring.AnimationCurve.allCases.map { curve in
        curve.rawValue
    }
    
    private init() {}
}
