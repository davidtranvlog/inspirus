//
//  Quotes.swift
//  inspirus
//
//  Created by Duc Tran on 3/11/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import Foundation

class Quotes
{
    
    // 1. An array of quotes - data
    var quotes = ["Stay Hungry, Stay Foolish.", "All wonders you seek are within yourself.", "Service to others is the rent you pay for your room here on Earth.", "Faith is taking the first step even when you don't see the whole staircase.", "If your ship doesn't come in, swim out to it.", "Relentless optimism is what moves the world forward.", "Your time is limited so don't waste it living someone else's life.", "Our lives begin to end the day we become silent about things that matter.", "If your dreams don't scare you, they are not big enough.", "If you are not willing to risk the unusual, you will have to settle for the ordinary.", "I act despite of my mood!", "You decided to pursue your dreams. That's confidence!", "Continuous effort - not strength or intelligence - is the key to unclocking our potential.", "When you knock on the door of opportunities, it is work who answers!", "Happiness is not something ready made. It comes from your own actions.", "Be kind whenever possible. It is always possible!", "Try not to become a man of succses but rather to become a man of value."]
    
    
    // 2. A variable / property that returns the count/number of quotes
    var count: Int {
        return quotes.count
    }
    
    // 3. A function that returns a random quote
    // return a random quote everytime it gets called
    func randomQuote() -> String
    {
        // need an random index. arc4random(): random int
        let randomIndex = Int(arc4random()) % quotes.count      // from 0 to (quotes.count -1)
        let randomQuote = quotes[randomIndex]
        return randomQuote
    }
    
    
}




























