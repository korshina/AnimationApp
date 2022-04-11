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
    var description: String {
        """
        Perset: \(perset)
        Curve: \(curve)
        Force: \(String(format: "%.2f", force))
        Duration: \(String(format: "%.2f", duration))
        Delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        let animation = Animation(
            perset: DataManager.shared.persets.randomElement() ?? "slideLeft",
            curve: DataManager.shared.curves.randomElement() ?? "easeIn",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.2...1.0),
            delay: Double.random(in: 0.8...1.6))
                
        return animation
        
    }
}
