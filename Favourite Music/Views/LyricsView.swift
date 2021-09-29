//
//  LyricsView.swift
//  Favourite Music
//
//  Created by Alex Cannizzo on 30/09/2021.
//

import SwiftUI

struct LyricsView: View {
    var song: Song
    var body: some View {
        ScrollView {
            Text(song.lyrics)
                .padding()
        }
        .navigationTitle(song.title)
    }
}

struct LyricsView_Previews: PreviewProvider {
    static var previews: some View {
        LyricsView(song: Song())
            .environmentObject(SongModel())
    }
}
