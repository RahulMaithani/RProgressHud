//
//  RProgressHud.swift
//  RProgressHud
//
//  Created by Rahul Maithani on 07/04/21.
//

import UIKit
class RProgressHud {
    
    private var imageView = UIImageView(image: UIImage(named: "iOsSpinner"))
    private var spinnerBackgroundView = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
    private var mainView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
    private var timer: Timer!
    
    static public let shared = RProgressHud()
    
    private func startTimer() {
        
          if timer == nil {
              timer = Timer.scheduledTimer(timeInterval:0.0, target: self, selector: #selector(self.animateView), userInfo: nil, repeats: false)
          }
      }
    
    @objc private func animateView() {
        
        UIView.animate(withDuration: 0.8, delay: 0.0, options: .curveLinear, animations: {
            self.imageView.transform = self.imageView.transform.rotated(by: CGFloat(Double.pi))
        }, completion: { (finished) in
            if self.timer != nil {
                self.timer = Timer.scheduledTimer(timeInterval:0.0, target: self, selector: #selector(self.animateView), userInfo: nil, repeats: false)
            }
        })
    }
    
    private func stopTimer() {
        
        timer?.invalidate()
        timer = nil
    }
    
    public func stopHud(view: UIView) {
        
        view.isUserInteractionEnabled = true
        self.stopTimer()
        DispatchQueue.main.async {
            self.imageView.removeFromSuperview()
            self.spinnerBackgroundView.removeFromSuperview()
            self.mainView.removeFromSuperview()
        }
    }
    
    public func startHud(view: UIView) {

        DispatchQueue.main.async {
            view.isUserInteractionEnabled = false
            self.mainView.backgroundColor = UIColor(red: 21.0/255.0, green: 21.0/255.0, blue: 21.0/255.0, alpha: 0.8)
            self.imageView.frame = CGRect(x: self.mainView.center.x - 18, y: self.mainView.center.y - 18, width: 36, height: 36)
            self.spinnerBackgroundView.frame = CGRect(x: self.mainView.center.x - 40, y: self.mainView.center.y - 40, width: 80, height: 80)
            self.spinnerBackgroundView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8)
            self.spinnerBackgroundView.layer.cornerRadius = 8.0
            self.spinnerBackgroundView.clipsToBounds = true
            self.mainView.addSubview(self.imageView)
            self.mainView.addSubview(self.spinnerBackgroundView)
            self.mainView.bringSubviewToFront(self.imageView)
            view.addSubview(self.mainView)
            self.startTimer()
        }
    }
}
