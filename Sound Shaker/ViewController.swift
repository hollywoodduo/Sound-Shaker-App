//
//  ViewController.swift
//  Sound Shaker
//
//  Created by Matthew J. Perkins on 6/13/17.
//  Copyright © 2017 Matthew J. Perkins. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {
    
    
    var player = AVAudioPlayer()
    let chimppath = Bundle.main.path(forResource: "chimp", ofType: "mp3")
    let cricketpath = Bundle.main.path(forResource: "cricket", ofType: "mp3")
    let dogpath = Bundle.main.path(forResource: "dog", ofType: "mp3")
    let foxpath = Bundle.main.path(forResource: "fox", ofType: "mp3")
    let frogpath = Bundle.main.path(forResource: "frog", ofType: "mp3")
    let lionpath = Bundle.main.path(forResource: "lion", ofType: "mp3")

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        let diceroll = arc4random_uniform(6)
        
        var randompath = ""
        
        switch diceroll {
            
        case 1:
            
            randompath = chimppath!
            
        case 2:
            
            randompath = cricketpath!
            
        case 3:
            
            randompath = dogpath!
            
        case 4:
            
            randompath = foxpath!
            
        case 5:
            
            randompath = frogpath!
            
        case 6:
            
            randompath = lionpath!
            
        default:
            
            randompath = frogpath!
        }
        
        if event?.subtype == UIEventSubtype.motionShake {
            
            do {
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: randompath))
                
            
            } catch {
            
            }
        
        player.play()
        print(diceroll)
        print(randompath)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

