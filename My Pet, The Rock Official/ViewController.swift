//
//  ViewController.swift
//  My Pet, The Rock Official
//
//  Created by Joey Newfield on 3/20/18.
//  Copyright © 2018 Joey Newfield. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var eyeButton: UIButton!
    @IBOutlet weak var normalButton: UIButton!
    @IBOutlet weak var browButton: UIButton!
    @IBOutlet weak var pecButton: UIButton!
    @IBOutlet weak var armButton: UIButton!
    @IBOutlet weak var scorpionButton: UIButton!
    @IBOutlet weak var beltButton: UIButton!
    @IBOutlet weak var carButton: UIButton!
    
    lazy var buttons: [UIButton] = [self.eyeButton, self.normalButton, self.carButton, self.beltButton, self.scorpionButton, self.armButton, self.pecButton, self.browButton]
    
    var browSound = AVAudioPlayer()
    
    var pecSound = AVAudioPlayer()
    
    var beltSound = AVAudioPlayer()
    
    var ooooSound = AVAudioPlayer()
    
    var eyeSound = AVAudioPlayer()
    
    var armSound = AVAudioPlayer()
    
    var carSound = AVAudioPlayer()
    
    var scorpionSound = AVAudioPlayer()
    
    var backgroundMusicPlayer = AVAudioPlayer()
    
    var normalImages: [UIImage] = []
    
    var eyeImages: [UIImage] = []
    
    var browImages: [UIImage] = []
    
    var armImages: [UIImage] = []
    
    var pecImages: [UIImage] = []
    
    var scorpionImages: [UIImage] = []
    
    var carImages: [UIImage] = []
    
    var beltImages: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        playBackgroundMusic()
        
        eyeImages = createImageArray(total: 3, imagePrefix: "CSERock")
        
        normalImages = createImageArray(total: 2, imagePrefix: "ORock")
        
        browImages = createImageArray(total: 3, imagePrefix: "SPABRock")
        
        armImages = createImageArray(total: 3, imagePrefix: "SARock")
        
        pecImages = createImageArray(total: 3, imagePrefix: "SPRock")
        
        scorpionImages = createImageArray(total: 3, imagePrefix: "SCRock")
        
        carImages = createImageArray(total: 3, imagePrefix: "SCARRock")
        
        beltImages = createImageArray(total: 3, imagePrefix: "SDRock")
    }
    
    func createImageArray(total: Int, imagePrefix: String) -> [UIImage] {
        
        var imageArray: [UIImage] = []
        
        for imageCount in 1..<total {
            let imageName = "\(imagePrefix)-\(imageCount).png"
            let image = UIImage(named: imageName)!
            
            imageArray.append(image)
        }
        return imageArray
    }
    
    func playBackgroundMusic() {
        
        do {
            
            let path = Bundle.main.path(forResource: "Chillout", ofType: "mp3")
            backgroundMusicPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
            backgroundMusicPlayer.volume = 0.05
            backgroundMusicPlayer.numberOfLoops = -1
            backgroundMusicPlayer.prepareToPlay()
            backgroundMusicPlayer.play()
            
        } catch {
            print("error loading music")
        }
        
    }
    
    func playBrowSound() {
        do {
            let path = Bundle.main.path(forResource: "scissors", ofType: "mp3")
            browSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
            browSound.play()
        } catch {
            print("error loading music")
        }
    }
    
    func playCarSound() {
        do {
            let path = Bundle.main.path(forResource: "movefastfuriously", ofType: "mp3")
            carSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
            carSound.play()
        } catch {
            print("error loading music")
        }
    }
    
    func playArmSound() {
        do {
            let path = Bundle.main.path(forResource: "heartofstone", ofType: "mp3")
            armSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
            armSound.play()
        } catch {
            print("error loading music")
        }
    }
    
    func playScorpionSound() {
        do {
            let path = Bundle.main.path(forResource: "nothingstingstherock", ofType: "mp3")
            scorpionSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
            scorpionSound.play()
        } catch {
            print("error loading music")
        }
    }
    
    func playEyeSound() {
        do {
            let path = Bundle.main.path(forResource: "brrr", ofType: "mp3")
            eyeSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
            eyeSound.play()
        } catch {
            print("error loading music")
        }
    }
    
    func playPecSound() {
        do {
            let path = Bundle.main.path(forResource: "dontbeacoldstone", ofType: "mp3")
            pecSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
            pecSound.play()
        } catch {
            print("error loading music")
        }
    }
    
    func playBeltSound() {
        do {
            let path = Bundle.main.path(forResource: "rockchamp", ofType: "mp3")
            beltSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
            beltSound.play()
        } catch {
            print("error loading music")
        }
    }
    
    func playOoooSound() {
        do {
            let path = Bundle.main.path(forResource: "oooo8", ofType: "mp3")
            ooooSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
            ooooSound.play()
        } catch {
            print("error loading music")
        }
    }
    
    func animateOne(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 0.33
        imageView.animationRepeatCount = 7
        imageView.startAnimating()
    }
    
    func animateTwo(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 0.2
        imageView.animationRepeatCount = 9
        imageView.startAnimating()
    }
    
    func animateThree(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 0.23
        imageView.animationRepeatCount = 11
        imageView.startAnimating()
    }
    
    func animateFour(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 1.3
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
    
    func animateFive(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 1.7
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
    
    func animateSix(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 0.27
        imageView.animationRepeatCount = 6
        imageView.startAnimating()
    }
    
    func animateSeven(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 0.33
        imageView.animationRepeatCount = 5
        imageView.startAnimating()
    }
    
    func animateEight(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 0.275
        imageView.animationRepeatCount = 12
        imageView.startAnimating()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        for button in self.buttons {
            button.isEnabled = false
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            for button in self.buttons {
                button.isEnabled = true
            }
        }
        animateFive(imageView: imageView, images: eyeImages)
        playEyeSound()
    }
    
    @IBAction func buttonTwoTapped(_ sender: UIButton) {
        for button in self.buttons {
            button.isEnabled = false
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            for button in self.buttons {
                button.isEnabled = true
            }
        }
        animateFour(imageView: imageView, images: normalImages)
        playOoooSound()
    }
    
    @IBAction func buttonThreeTapped(_ sender: UIButton) {
        for button in self.buttons {
            button.isEnabled = false
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            for button in self.buttons {
                button.isEnabled = true
            }
        }
        animateTwo(imageView: imageView, images: browImages)
        playBrowSound()
    }
    
    @IBAction func buttonFourTapped(_ sender: UIButton) {
        for button in self.buttons {
            button.isEnabled = false
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            for button in self.buttons {
                button.isEnabled = true
            }
        }
        animateOne(imageView: imageView, images: pecImages)
        playPecSound()
    }
    
    @IBAction func buttonFiveTapped(_ sender: UIButton) {
        for button in self.buttons {
            button.isEnabled = false
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4)) {
            for button in self.buttons {
                button.isEnabled = true
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            self.animateSix(imageView: self.imageView, images: self.armImages)
        }
        animateSix(imageView: imageView, images: armImages)
        playArmSound()
    }
    
    @IBAction func buttonSixTapped(_ sender: UIButton) {
        for button in self.buttons {
            button.isEnabled = false
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            for button in self.buttons {
                button.isEnabled = true
            }
        }
        animateSeven(imageView: imageView, images: scorpionImages)
        playScorpionSound()
    }
    @IBAction func buttonSevenTapped(_ sender: UIButton) {
        for button in self.buttons {
            button.isEnabled = false
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            for button in self.buttons {
                button.isEnabled = true
            }
        }
        animateThree(imageView: imageView, images: beltImages)
        playBeltSound()
    }
    
    @IBAction func buttonEightTapped(_ sender: UIButton) {
        for button in self.buttons {
            button.isEnabled = false
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4)) {
            for button in self.buttons {
                button.isEnabled = true
            }
        }
        animateEight(imageView: imageView, images: carImages)
        playCarSound()
    }
    @IBAction func buttonNineTapped(_ sender: UIButton) {
        backgroundMusicPlayer.stop()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
