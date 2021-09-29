//
//  ArtistListView.swift
//  Favourite Music
//
//  Created by Alex Cannizzo on 30/09/2021.
//

import SwiftUI

struct ArtistListView: View {
    @EnvironmentObject var model: SongModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 10) {
                    ForEach(model.songs) { song in
                        HStack {
                            Image(song.cover)
                                .resizable()
                                .frame(width: 60, height: 60)
                            Text(song.artist)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                }
            }
            .navigationTitle("Artists")
        }
    }
}

struct ArtistListView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistListView()
            .environmentObject(SongModel())
    }
}
