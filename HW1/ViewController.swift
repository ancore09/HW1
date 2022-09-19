//
//  ViewController.swift
//  HW1
//
//  Created by Andrey Grechko on 19.09.2022.
//

import UIKit

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var changeColorBtn: UIButton!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var fourthView: UIView!
    @IBOutlet weak var fifthView: UIView!
    @IBOutlet weak var sixthView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        toggleButton()
        animatedChange()
    }

    @IBAction func buttonWasClicked(_ sender: Any) {
        toggleButton()
        animatedChange()
    }
    
    fileprivate func animatedChange() {
        UIView.animate(withDuration: 0.6, delay: 0, options: .curveEaseInOut,
        animations: {
            self.changeViewColors()
            
            self.changeViewRadius()
            
            self.changeViewSizeAndPosition()
        }, completion: {finished in
            self.toggleButton()
        })
    }
    
    fileprivate func toggleButton() {
        self.changeColorBtn.isEnabled = !self.changeColorBtn.isEnabled
    }
    
    fileprivate func changeViewColors() {
        self.firstView.backgroundColor = .random()
        self.secondView.backgroundColor = .random()
        self.thirdView.backgroundColor = .random()
        self.fourthView.backgroundColor = .random()
        self.fifthView.backgroundColor = .random()
        self.sixthView.backgroundColor = .random()
    }
    
    fileprivate func changeViewRadius() {
        self.firstView.layer.cornerRadius = CGFloat(Int.random(in: 0...30))
        self.secondView.layer.cornerRadius = CGFloat(Int.random(in: 0...30))
        self.thirdView.layer.cornerRadius = CGFloat(Int.random(in: 0...30))
        self.fourthView.layer.cornerRadius = CGFloat(Int.random(in: 0...30))
        self.fifthView.layer.cornerRadius = CGFloat(Int.random(in: 0...30))
        self.sixthView.layer.cornerRadius = CGFloat(Int.random(in: 0...30))
    }
    
    fileprivate func changeViewSizeAndPosition() {
        self.firstView.frame.size.width += CGFloat(Int.random(in: -10...10))
        
        self.secondView.frame.size.height += CGFloat(Int.random(in: -10...10))
        
        self.thirdView.frame.size.height += CGFloat(Int.random(in: -10...10))
        self.thirdView.frame.size.width += CGFloat(Int.random(in: -10...10))
        
        self.fourthView.frame.size.width += CGFloat(Int.random(in: -10...10))
        
        self.fifthView.layer.position.x += CGFloat(Int.random(in: -10...10))
    }
}

