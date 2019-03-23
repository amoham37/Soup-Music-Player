//
//  SecondViewController.swift
//  SoupMusicPlayer
//
//  Created by Ahmet Mohammed on 2/26/19.
//  Copyright © 2019 Ahmet. All rights reserved.
//

import UIKit
import AVFoundation


class SecondViewController: UIViewController {
    
    @IBOutlet weak var songlbl: UILabel!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    @IBOutlet weak var progresslbl: UILabel!
    //    let durationk =  audioPlayer.duration;
    
    @IBAction func playbtn(_ sender: Any) {
        if audioStuffed == true && audioPlayer.isPlaying == false
        {
            audioPlayer.play()
            
            
        }
    }
    
    func setSonglbl (){
        if  audioPlayer.isPlaying {
            songlbl.text = songs[thisSong]
        }
    }
    
    
    @objc func setProgressBar(){
        if audioStuffed == true {
            progressBar.setProgress(Float(audioPlayer.currentTime/audioPlayer.duration), animated: true)
            progresslbl.text = String(format: "%02d:%02d", ((Int)((audioPlayer.currentTime))) / 60, ((Int)((audioPlayer.currentTime))) % 60)
        }
    }
    
    
    
    
    
    @IBAction func pausebtn(_ sender: Any) {
        
        if audioStuffed == true && audioPlayer.isPlaying {
            audioPlayer.pause()
        }
    }
    
    @IBAction func prevbtn(_ sender: Any) {
        if thisSong != 0 && audioStuffed == true {
            playThis(thisOne: songs[thisSong-1])
            thisSong -= 1
            songlbl.text = songs[thisSong]
        }
    }
    
    @IBAction func nextbtn(_ sender: Any) {
        if thisSong < songs.count-1 && audioStuffed == true
        {
            playThis(thisOne: songs[thisSong+1])
            thisSong += 1
            songlbl.text = songs[thisSong]
        }
    }
    
    @IBAction func slider(_ sender: UISlider) {
        if audioStuffed == true {
            audioPlayer.volume = sender.value
        }
    }
    
    func playThis(thisOne:String){
        do {
            let audioPath = Bundle.main.path(forResource: thisOne, ofType: ".mp3")
            try audioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            audioPlayer.play()
        }
        catch
        {
            print ("ERROR")
        }
    }
    
    @objc func pinchGesture(sender: UIPinchGestureRecognizer){
        sender.view?.transform = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale))!
        sender.scale = 1.0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songlbl.text = songs[thisSong]

        myImageView.isUserInteractionEnabled = true
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(self.pinchGesture))
        myImageView.addGestureRecognizer(pinchGesture)
        
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(setProgressBar), userInfo: nil, repeats: true)
    }
    
    
    
    
    
    
}

