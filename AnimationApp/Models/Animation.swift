//
//  Animation.swift
//  AnimationApp
//
//  Created by Anastasiia Korshina on 06.04.2022.
//

import Foundation

struct Animation {
    let perset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    

    
    init() {
        perset = DataManager.shared.persets.first ?? "slideLeft"
        curve = DataManager.shared.curves.first ?? "easeIn"
        force = 1
        duration = 1
        delay = 0.2
    }
    
    init(perset: String,
         curve: String,
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
            perset: DataManager.shared.persets[Int.random(in: 0..<DataManager.shared.persets.count)],
            curve: DataManager.shared.curves[Int.random(in: 0..<DataManager.shared.curves.count)],
            force: Double.random(in: 0.2...1.0),
            duration: Double.random(in: 0.2...1.0),
            delay: Double.random(in: 0.2...1.0))
                
        return animation
        
    }
}
