//
//  ViewController.swift
//  inspirus
//
//  Created by Duc Tran on 3/10/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit        // UI: user interface

class ViewController: UIViewController {
    
    // IB: Interface Builder
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    
    var quotes = Quotes()
    

    // gets called when the view is loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Interface Builder Action.
    // Gets called whenever the user taps on the button
    @IBAction func inspireMeDidTap(sender: UIButton)
    {
        let quote = quotes.randomQuote()
        quoteLabel.text = quote
        
        // change the background image
        let image = randomImage()
        backgroundImageView.image = image
        
        // change the background color of the button
        sender.backgroundColor = randomColor()
    }
    
    func randomImage() -> UIImage
    {
        let imageCount = 6                  // 0 -> 5
        let randomNumber = Int(arc4random()) % imageCount + 1
        
        if let image = UIImage(named: "image\(randomNumber)") {
            return image
        } else {
            return UIImage(named: "image1")!
        }
    }
    
    func randomColor() -> UIColor
    {
        let random = Int(arc4random()) % 5  // 0 -> 4
        switch random {
        case 0: return UIColor(red: 211/255.0, green: 86/255.0, blue: 87/255.0, alpha: 0.9)
        case 1: return UIColor(red: 71/255.0, green: 178/255.0, blue: 137/255.0, alpha: 0.9)
        case 2: return UIColor(red: 229/255.0, green: 177/255.0, blue: 93/255.0, alpha: 0.9)
        case 3: return UIColor(red: 92/255.0, green: 163/255.0, blue: 178/255.0, alpha: 0.9)
        case 4: return UIColor(red: 38/255.0, green: 38/255.0, blue: 38/255.0, alpha: 0.9)
        default: return UIColor(red: 56/255.0, green: 72/255.0, blue: 72/255.0, alpha: 0.9)
        }
        
    }

}
















