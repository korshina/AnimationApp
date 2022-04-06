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
    
    @IBOutlet weak var runButton: SpringButton!
    
    // MARK: Properties
    var animation = Animation()
    var isFirtsRun = false
    
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
            sender.setTitle("Run \(animation.perset.rawValue)", for: .normal)
            return
        } else {
            updateLabels()
            animateView(view: animationView)
            animation = Animation.getRandomAnimation()
            sender.setTitle("Run \(animation.perset.rawValue)", for: .normal)
        }
    }
    
    // MARK: Private Methods
    
    private func updateLabels() {
        presetLabel.text = animation.perset.rawValue
        curveLabel.text = animation.curve.rawValue
        forceLabel.text = String(format: "%.2f", animation.force)
        durationLabel.text = String(format: "%.2f", animation.duration)
        delayLabel.text = String(format: "%.2f", animation.delay)
    }
    
    private func animateView(view: SpringView) {
        view.animation = animation.perset.rawValue
        view.curve = animation.curve.rawValue
        view.force = animation.force
        view.duration = animation.duration
        view.delay = animation.delay
        view.animate()
    }
    

}

