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
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var animationView: SpringView!
    
    // MARK: Properties
    private var animation = Animation()
    private var isFirtsRun = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
    }
    
    // MARK: IBActions
        
    @IBAction func runButtonTapped(_ sender: SpringButton) {
        if !isFirtsRun {
            isFirtsRun = true
            animateView(view: animationView)
            animation = Animation.getRandomAnimation()
            sender.setTitle("Run \(animation.perset)", for: .normal)
        } else {
            updateLabels()
            animateView(view: animationView)
            animation = Animation.getRandomAnimation()
            sender.setTitle("Run \(animation.perset)", for: .normal)
        }
    }
    
    // MARK: Private Methods
    
    private func updateLabels() {
        presetLabel.text = animation.perset
        curveLabel.text = animation.curve
        forceLabel.text = String(format: "%.2f", animation.force)
        durationLabel.text = String(format: "%.2f", animation.duration)
        delayLabel.text = String(format: "%.2f", animation.delay)
    }
    
    private func animateView(view: SpringView) {
        view.animation = animation.perset
        view.curve = animation.curve
        view.force = animation.force
        view.duration = animation.duration
        view.delay = animation.delay
        view.animate()
    }
    

}

