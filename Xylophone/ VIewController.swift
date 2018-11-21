//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var audioPlayer: AVAudioPlayer!
    var selectedSoundFileName : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedSoundFileName = soundArray[sender.tag -  1]
        print(selectedSoundFileName)
        
          playSound()
    }
    
  
    func playSound() {
                
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        
        audioPlayer.play()
        
    }
}

