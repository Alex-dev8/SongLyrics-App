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
}
