//
//  ViewController.swift
//  WordGame
//
//  Created by Rebecca Finne on 2017-11-07.
//  Copyright © 2017 Rebecca Finne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet var startBackground: UIView!
    @IBOutlet weak var startButton: UIButton!
    startButton.addTarget(self, action: "action", forControlEvents: UIControlEvents.TouchUpInside)
    var playImage: UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.textColor = UIColor(hex: "804D15")
        startBackground.backgroundColor = UIColor(hex: "FFD6AA")
        let playImage = UIImage(named: "play_button.png")
        let startButton = UIButton(type: UIButtonType.custom) as UIButton
        startButton.setImage(playImage, for: .normal)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func action(sender: UIButton){
        viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

    extension UIColor {
        convenience init(hex: String) {
            let scanner = Scanner(string: hex)
            scanner.scanLocation = 0
            
            var rgbValue: UInt64 = 0
            
            scanner.scanHexInt64(&rgbValue)
            
            let r = (rgbValue & 0xff0000) >> 16
            let g = (rgbValue & 0xff00) >> 8
            let b = rgbValue & 0xff
            
            self.init(
                red: CGFloat(r) / 0xff,
                green: CGFloat(g) / 0xff,
                blue: CGFloat(b) / 0xff, alpha: 1
            )
        }
}

extension UIColor {
    var toHexString: String {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        return String(
            format: "%02X%02X%02X",
            Int(r * 0xff),
            Int(g * 0xff),
            Int(b * 0xff)
        )
    }
}

