//
//  lyric.swift
//  SoupMusicPlayer
//
//  Created by Ahmet Mohammed on 3/12/19.
//  Copyright © 2019 Ahmet. All rights reserved.
//

import UIKit

import Foundation
import UIKit

let data = [

    Lyric(name: "A Girl In Oakland",
          album: "A Girl In Oakland - Single ",
          albumyear: 2012,
          artist: "Otis McDonald ",
          caption2: " Come down on your own and leave your body alone.\nSomebody must change.\nYou are the reason I've been waiting all these years.\nSomebody holds the key."
    ),
    
    Lyric(name: "All of Me",
          album: "Love in the Future ",
          albumyear: 2013,
          artist: "John Legend",
          caption2: "My head’s under water\nBut I’m breathing fine\nYou’re crazy and I’m out of my mind\n'Cause all of me\nLoves all of you\nLove your curves and all your edges\nAll your perfect imperfections\nGive your all to me\nI’ll give my all to you\nYou’re my end and my beginning\nEven when I lose I’m winning\n'Cause I give you all of me\nAnd you give me all, all of you\nGive me all of you"
    ),
    
    Lyric(name: "Chandelier",
          album: "1000 Forms of Fear",
          albumyear: 2014,
          artist: "Sia",
          caption2: "I'm gonna swing from the chandelier, from the chandelier\nI'm gonna live like tomorrow doesn't exist\nLike it doesn't exist\nI'm gonna fly like a bird through the night, feel my tears as they dry\nI'm gonna swing from the chandelier, from the chandelier"
    ),
    
    Lyric(name: "Diamonds",
          album: "Unapologetic",
          albumyear: 2012,
          artist: "Rhianna",
          caption2: "So shine bright, tonight you and I\nWe’re beautiful like diamonds in the sky\nEye to eye, so alive\nWe’re beautiful like diamonds in the sky\nShine bright like a diamond\nShine bright like a diamond\nShining bright like a diamond\nWe’re beautiful like diamonds in the sky\nShine bright like a diamond\nShine bright like a diamond\nShining bright like a diamond\nWe’re beautiful like diamonds in the sky"
    ),
    
    Lyric(name: "Find My Way Home",
        album: " ",
        albumyear: 2000,
        artist: " ",
        caption2: "This song has no lyrics"
    ),
    
    Lyric(name: "Fingers",
        album: " Fingers - Single",
        albumyear: 2014,
        artist: "Otis McDonald ",
        caption2: "This song has no lyrics"
        
    ),
    
    Lyric(name: "Girls Like You",
          album: " ",
          albumyear: 2017,
          artist: " ",
          caption2: "'Cause girls like you\nRun around with guys like me\n'Til sundown, when I come through\nI need a girl like you, yeah yeah\nGirls like you\nLove fun, yeah me too\nWhat I want when I come through\nI need a girl like you, yeah yeah\nYeah yeah yeah\nYeah yeah yeah\nI need a girl like you, yeah yeah"
    ),
    
    
    Lyric(name: "In Case You Forgot",
          album: " ",
          albumyear: 2013,
          artist: " ",
          caption2: "This song has no lyrics"
        
    ),
    
    Lyric(name: "Let Her Go",
          album: "All the Little Lights",
          albumyear: 2012,
          artist: "Passenger ",
          caption2: "'Cause you only need the light when it's burning low\nOnly miss the sun when it starts to snow\nOnly know you love her when you let her go\nOnly know you've been high when you're feeling low\nOnly hate the road when you're missing home\nOnly know you love her when you let her go"
        
    ),
    
    Lyric(name: "Mighty Fine",
          album: "Mighty Fine - Single",
          albumyear: 2014,
          artist: "Mighty Fine ",
          caption2: "This song has no lyrics"
        
    ),
    
    Lyric(name: "Otis McMusic",
          album: "Otis McMusic - Single",
          albumyear: 2014,
          artist: "Otis McDonald",
          caption2: "What we do here is go back (echo)"
        
    ),
    
    Lyric(name: "Scarlet Fire",
          album: "Scarlet Fire - Single ",
          albumyear: 2015,
          artist: "Otis McDonald ",
          caption2: "This song has no lyrics"
        
    )
]



class Lyric {

    var name: String
    var caption2: String
    var albumname: String
    var albumyear: Int
    var artist: String
    
    
    init(name: String,album: String, albumyear: Int,
        artist: String, caption2: String) {
        
        self.name = name
        self.caption2 = caption2
        self.albumname = album
        self.albumyear = albumyear
        self.artist = artist
        
    }
   
}
