//
//  DataService.swift
//  Favourite Music
//
//  Created by Alex Cannizzo on 30/09/2021.
//

import Foundation

class DataService {
    
    static func getLocalFiles() -> [Song] {
        
        guard let path = Bundle.main.path(forResource: "data", ofType: "json") else { return [Song]() }
        let url = URL(fileURLWithPath: path)
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do {
                let songData = try decoder.decode([Song].self, from: data)
                return songData
            } catch {
                print(error)
            }
            
        } catch {
            print(error)
        }
        
        
        return [Song]()
    }
}
