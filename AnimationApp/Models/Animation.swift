//
//  Animation.swift
//  AnimationApp
//
//  Created by Anastasiia Korshina on 06.04.2022.
//

import Foundation
import Spring

struct Animation {
    let perset: Spring.AnimationPreset
    let curve: Spring.AnimationCurve
    let force: Double
    let duration: Double
    let delay: Double
    
    init() {
        perset = .fadeIn
        curve = .easeIn
        force = 1
        duration = 1
        delay = 0.2
    }
    
    init(perset: Spring.AnimationPreset,
         curve: Spring.AnimationCurve, 
         force: Double,
         duration: Double,
         delay: Double) {
        self.perset = perset
        self.curve = curve
        self.force = force
        self.duration = duration
        self.delay = delay
    }
    
    static func getRandomAnimation() -> Animation {
        let animation = Animation(
            perset: .allCases[Int.random(in: 0..<Spring.AnimationPreset.allCases.count)],
            curve: .allCases[Int.random(in: 0..<Spring.AnimationCurve.allCases.count)],
            force: Double.random(in: 0.2...1.0),
            duration: Double.random(in: 0.2...1.0),
            delay: Double.random(in: 0.2...1.0))
                
        return animation
        
    }
}
