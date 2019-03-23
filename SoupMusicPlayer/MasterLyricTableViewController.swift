//
//  MasterLyricTableViewController.swift
//  SoupMusicPlayer
//
//  Created by Ahmet Mohammed on 3/11/19.
//  Copyright © 2019 Ahmet. All rights reserved.
//

import UIKit

class MasterLyricTableViewController: UITableViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let lyric = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",  for: indexPath)
        cell.textLabel?.text = lyric.name
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier:"goRight", sender: indexPath)
    }
    
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let lyric = data[indexPath.row]
        let title = lyric.name
        let message = "Album: " + lyric.albumname + "\n" + "Relesead: " + String(lyric.albumyear) + "\n" + "Artist: " + lyric.artist
        let alertController = UIAlertController(title: title, message: message,  preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
        alertController.addAction(okayAction)
        present(alertController, animated: true, completion: nil)
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let detailViewController = segue.destination as? DetailViewController {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                detailViewController.lyric = data[indexPath.row]
            }
        }
    }
    
    
    
    
}

