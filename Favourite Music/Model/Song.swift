//
//  Song.swift
//  Favourite Music
//
//  Created by Alex Cannizzo on 30/09/2021.
//

import Foundation

class Song: Identifiable, Decodable {
    var id = 1
    var title = "Title"
    var artist = "Artist"
    var album = "Album"
    var release = 2021
    var cover = "supernatural"
    var favourite = false
    var rating = 3
    var lyrics = "[Verse 1] \n We all came out to Montreux \n On the Lake Geneva shoreline \n To make records with a mobile \n We didn't have much time \n But Frank Zappa and the Mothers \n Were at the best place around \n But some stupid with a flare gun \n Burned the place to the ground \n [Chorus] \n Smoke on the water \n (And fire in the sky) \n Smoke on the water \n [Verse 2] \n They burned down the gambling house \n It died with an awful sound \n Funky Claude was running in and out \n Pulling kids out the ground \n When it all was over \n We had to find another place \n But Swiss time was running out \n It seemed that we would lose the race \n [Chorus] \n Smoke on the water \n (And fire in the sky) \n Smoke on the water"
}
