//
//  SongCard.swift
//  Favourite Music
//
//  Created by Alex Cannizzo on 30/09/2021.
//

import SwiftUI

struct SongCard: View {
    @EnvironmentObject var model: SongModel
    var song: Song
    @State private var rating = 3
    @State private var isFavourite = false
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Artist: \(song.artist)")
                Text("Song: \(song.title)")
                Text("Album: \(song.album)")
                Text("Release date: \(song.release)")
                
            }
            NavigationLink {
                LyricsView(song: song)
            } label: {
                VStack(spacing: 1) {
                    Text("Lyrics")
                        .foregroundColor(.primary)
                    Image(song.cover)
                        .resizable()
                        .scaledToFit()
                    .padding()
                }
                .padding()
            }
            Button {
                isFavourite.toggle()
                model.songFavourite(forID: song.id, isFavourite: isFavourite)
            } label: {
                if isFavourite {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.yellow)
                } else {
                    Image(systemName: "star")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.yellow)
                }
            }
            
            Text("Rate \(song.title)")
                .padding(.top, 40)
            Picker("Rate the song", selection: $rating) {
                ForEach(1..<6) { index in
                    Text("\(index)")
                        .tag(index)
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal, 40)
            
            
        }
        .navigationTitle(song.title)
//        .navigationBarTitleDisplayMode(.inline)
        .onChange(of: rating, perform: { newValue in
            model.changeRating(forID: song.id, newRating: rating)
        })
        .onAppear {
            isFavourite = song.favourite
            rating = song.rating
        }
    }
    
}

struct SongCard_Previews: PreviewProvider {
    static var previews: some View {
        SongCard(song: Song())
            .environmentObject(SongModel())
    }
}
