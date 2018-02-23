//
//  VC2.swift
//  MVVMBinding
//
//  Created by Espiral on 2/23/18.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import UIKit

class VC2: UIViewController {
    
    var initialTouchPoint : CGPoint = CGPoint.zero
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let panGesture = UIPanGestureRecognizer(target: self, action:#selector(didPan(_:)))
        view.addGestureRecognizer(panGesture)
    }
    
    @objc func didPan(_ sender: UIPanGestureRecognizer) {
        let touchPoint = sender.location(in: self.view?.window)
        switch sender.state {
        case .began:
            initialTouchPoint = touchPoint
        case .changed:
            if (touchPoint.y - initialTouchPoint.y > 0) {
                self.view.frame = CGRect(x: 0, y: touchPoint.y - initialTouchPoint.y, width: self.view.frame.size.width, height: self.view.frame.size.height)
            }
        case .ended, .cancelled:
            if touchPoint.y - initialTouchPoint.y > 100 {
                self.dismiss(animated: true, completion: nil)
            } else {
                UIView.animate(withDuration: 0.3, animations: {
                    self.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
                })
            }
        default:
            break
        }
    }
}
