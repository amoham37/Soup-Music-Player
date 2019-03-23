//
//  searchViewController.swift
//  SoupMusicPlayer
//
//  Created by Ahmet Mohammed on 3/2/19.
//  Copyright © 2019 Ahmet. All rights reserved.
//

import UIKit
import AVFoundation


class searchViewController: UIViewController, UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var search: UISearchBar!
    var searchings = false
    var searchedSongs = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        search.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchings {
            return searchedSongs.count
        } else {
            return songs.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        if searchings {
            cell.textLabel?.text = searchedSongs[indexPath.row]
        } else {
            cell.textLabel?.text = songs[indexPath.row]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        do
        {
            let audioPath = Bundle.main.path(forResource: searchedSongs[indexPath.row], ofType: ".mp3")
            
            try audioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            
            thisSong = indexPath.row
            audioPlayer.play()
            audioStuffed = true
            
        }
        catch
        {
            print ("ERROR")
        }
    }
    
    func searchBar(_ search: UISearchBar, textDidChange searchText: String) {
        searchedSongs = songs.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        searchings = true
        tableview.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ search: UISearchBar) {
        searchings = false
        search.text = ""
        tableview.reloadData()
    }
}

