//
//  songlyricses.swift
//  SoupMusicPlayer
//
//  Created by Ahmet Mohammed on 3/11/19.
//  Copyright © 2019 Ahmet. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

//    @IBOutlet weak var lyricslbl: UILabel!
    @IBOutlet weak var lyricslbl: UILabel!
    
    @IBOutlet weak var namelbl: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet var viewThis: UIView!
    
    var lyric: Lyric?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        rightSwipe.direction = UISwipeGestureRecognizer.Direction.up
        self.view.addGestureRecognizer(rightSwipe)
    }
    
    @objc func swipeAction(swipe:UISwipeGestureRecognizer)
    {
        performSegue(withIdentifier: "goLeft", sender: self)
    }
    
    @objc func pinchGesture(sender: UIPinchGestureRecognizer){
        sender.view?.transform = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale))!
        sender.scale = 1.0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        lyricslbl.isUserInteractionEnabled = true
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(self.pinchGesture))
        lyricslbl.addGestureRecognizer(pinchGesture)
        
        if let w = lyric {
            namelbl.text = w.name
            lyricslbl.text = w.caption2
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
