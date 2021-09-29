//
//  SongModel.swift
//  Favourite Music
//
//  Created by Alex Cannizzo on 30/09/2021.
//

import Foundation

class SongModel: ObservableObject {
    @Published var songs = [Song]()
    
    init() {
        self.songs = DataService.getLocalFiles()
    }
    
    func songFavourite(forID: Int, isFavourite: Bool) {
        if let index = songs.firstIndex(where: { $0.id == forID}) {
            songs[index].favourite = isFavourite
        }
    }
    
    func changeRating(forID: Int, newRating: Int) {
        if let index = songs.firstIndex(where: { $0.id == forID }) {
            songs[index].rating = newRating
        }
            
    }
    
}
