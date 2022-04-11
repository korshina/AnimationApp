//
//  ViewController.swift
//  AnimationApp
//
//  Created by Anastasiia Korshina on 06.04.2022.
//

import UIKit
import Spring

class AnimationViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    // MARK: Private Properties
    private var animation = Animation.getRandomAnimation()
    
    
    // MARK: IBActions
        
    @IBAction func runButtonTapped(_ sender: SpringButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.perset
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.curve = animation.curve
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.perset)", for: .normal)
        
    }
    

}

