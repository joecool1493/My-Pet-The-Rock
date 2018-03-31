//
//  ViewController9.swift
//  My Pet, The Rock Official
//
//  Created by Joey Newfield on 3/27/18.
//  Copyright © 2018 Joey Newfield. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController9: UIViewController {
    
    var backgroundMusicPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        playBackgroundMusic()
    }
    
    func playBackgroundMusic() {
        
        do {
            
            let path = Bundle.main.path(forResource: "ClapTrap", ofType: "mp3")
            backgroundMusicPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
            backgroundMusicPlayer.volume = 0.05
            backgroundMusicPlayer.numberOfLoops = -1
            backgroundMusicPlayer.prepareToPlay()
            backgroundMusicPlayer.play()
            
        } catch {
            print("error loading music")
        }
        
    }

    @IBAction func buttonNineTapped(_ sender: UIButton) {
        backgroundMusicPlayer.stop()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
