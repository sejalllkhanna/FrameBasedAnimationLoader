//
//  ViewController.swift
//  LoaderAnimation
//
//  Created by Apple on 14/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var AnimationView: UIView!
    @IBOutlet weak var FirstCircularView: UIView!
    @IBOutlet weak var SecondCircularView: UIView!
    @IBOutlet weak var ThirdCircularView: UIView!
    @IBOutlet weak var ForthCircularView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FirstCircularView.frame = CGRect(x: 200, y: 10, width: 150, height: 150)
        FirstCircularView.center = CGPoint(x: 200, y: 20)
        FirstCircularView.layer.cornerRadius = FirstCircularView.frame.width/2
        SecondCircularView.frame = CGRect(x: 200, y: 80, width: 120, height: 120)
        SecondCircularView.center = CGPoint(x: 200 , y: 80)
        SecondCircularView.layer.cornerRadius = SecondCircularView.frame.width/2
        ThirdCircularView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        ThirdCircularView.center = CGPoint(x: 120 , y: 80)
        ThirdCircularView.layer.cornerRadius = ThirdCircularView.frame.width/2
        ForthCircularView.frame = CGRect(x: 0, y: 0, width: 60, height: 60)
        ForthCircularView.center = CGPoint(x: 110 , y: 10)
        ForthCircularView.layer.cornerRadius = ForthCircularView.frame.width/2
        //
        AnimationView.bringSubviewToFront(ThirdCircularView)
        AnimationView.bringSubviewToFront(ForthCircularView)
        ViewDirection()
    }
    
    func ViewDirection(){
        UIView.animat
        // First Circle Motion
        UIView.animate(withDuration: 0.5) { [self] in
            self.FirstCircularView.frame.origin.y = FirstCircularView.frame.origin.y + 60
            self.FirstCircularView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            self.SecondCircularView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.ThirdCircularView.transform = CGAffineTransform(scaleX: 1.4, y: 1.4)
            self.ForthCircularView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            self.SecondCircularView.frame.origin.x = SecondCircularView.frame.origin.x - 50
            self.ThirdCircularView.frame.origin.y = ThirdCircularView.frame.origin.y - 60
            self.ForthCircularView.frame.origin.x = ForthCircularView.frame.origin.x + 100
            
       }
        completion: { _ in
            UIView.animate(withDuration: 0.5) { [self] in
                self.FirstCircularView.frame.origin.x = FirstCircularView.frame.origin.x - 60
                self.FirstCircularView.frame.origin = CGPoint(x:FirstCircularView.frame.origin.x, y: FirstCircularView.frame.origin.y - 20)
                self.SecondCircularView.frame.origin.y =  SecondCircularView.frame.origin.y - 50
                self.ThirdCircularView.frame.origin = CGPoint(x:ThirdCircularView.frame.origin.x + 80, y: ThirdCircularView.frame.origin.y + 20)
                self.ForthCircularView.frame.origin.y = ForthCircularView.frame.origin.y + 70
                self.ForthCircularView.frame.origin = CGPoint(x:ForthCircularView.frame.origin.x - 20 , y: ForthCircularView.frame.origin.y )
                self.FirstCircularView.transform = CGAffineTransform(scaleX: 1, y: 1)
                self.SecondCircularView.transform = CGAffineTransform(scaleX: 1, y: 1)
                self.ThirdCircularView.transform = CGAffineTransform(scaleX: 1, y: 1)
                self.ForthCircularView.transform = CGAffineTransform(scaleX: 1, y: 1)
            }
        completion: { _ in
            UIView.animate(withDuration: 0.5) {
                    self.FirstCircularView.frame.origin.y = self.FirstCircularView.frame.origin.y - 30
                    self.SecondCircularView.frame.origin.x = self.SecondCircularView.frame.origin.x + 80
                    self.ThirdCircularView.frame.origin.y = self.ThirdCircularView.frame.origin.y + 30
                    self.ForthCircularView.frame.origin.x = self.ForthCircularView.frame.origin.x - 60

                    self.FirstCircularView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
                    self.SecondCircularView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
                    self.ThirdCircularView.transform = CGAffineTransform(scaleX: 1.4, y: 1.4)
                    self.ForthCircularView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)

                }
        completion: { _ in
            UIView.animate(withDuration: 0.5) { [self] in
                        self.FirstCircularView.transform = CGAffineTransform(scaleX: 1, y: 1)
                        self.SecondCircularView.transform = CGAffineTransform(scaleX: 1, y: 1)
                        self.ThirdCircularView.transform = CGAffineTransform(scaleX: 1, y: 1)
                        self.ForthCircularView.transform = CGAffineTransform(scaleX: 1, y: 1)
            
            self.FirstCircularView.center = CGPoint(x: 200, y: 20)
            self.SecondCircularView.center = CGPoint(x: 200 , y: 80)
            self.ThirdCircularView.center = CGPoint(x: 120 , y: 80)
            self.ForthCircularView.center = CGPoint(x: 110 , y: 10)
                    }
                completion: { _ in
                        self.ViewDirection()
                    }
               }
            }
        }
    }
}




