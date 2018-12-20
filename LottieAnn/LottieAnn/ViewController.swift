//  ViewController.swift
//  LottieAnn
//
//  Created by GladkiySergey on 11/15/18.
//  Copyright © 2018 GladkiySergey. All rights reserved.
//

import UIKit
import Lottie
class ViewController: UIViewController {
    
    @IBOutlet var animationContainer: UIView!
    @IBOutlet var slider: UISlider!
    var animation: LOTAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //comment this
        slider.addTarget(self, action: #selector(onSliderCharged(sender:)), for: .valueChanged)
        
        // Do any additional setup after loading the view, typically from a nib.
        animation = LOTAnimationView.init(name: "Logo")
//        animation.frame = CGRect(x: 0, y: 100, width: self.view.frame.width, height: 500)
        animation.contentMode = .scaleAspectFit
        animation.loopAnimation = true
        animation.animationSpeed = 2
        //animation.animationProgress = 1
        animationContainer.addSubview(animation)
        animation.translatesAutoresizingMaskIntoConstraints = false
        animation.leftAnchor.constraint(equalTo: animationContainer.leftAnchor).isActive = true
        animation.topAnchor.constraint(equalTo: animationContainer.topAnchor).isActive = true
        animation.rightAnchor.constraint(equalTo: animationContainer.rightAnchor).isActive = true
        animation.bottomAnchor.constraint(equalTo: animationContainer.bottomAnchor).isActive = true
//        animation.play()
           //comment this
        animation.animationProgress = CGFloat(slider.value)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    
    @objc func onSliderCharged(sender: UISlider) {
        let progress = sender.value
        animation.animationProgress = CGFloat(progress)
        
    }
}
