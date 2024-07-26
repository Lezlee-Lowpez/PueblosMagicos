//
//  DataService.swift
//  PueblosMagicos
//
//  Created by Lesley Lopez on 7/25/24.
//

import Foundation

struct DataService {
    func getData() -> [MexicoState]{
        // try to read the file
        if let url = Bundle.main.url(forResource: "data", withExtension: "json") {
            
            do {
                //read the file now and turn it into data
                let data = try Data(contentsOf: url)
                // this prints out 22589 bytes
                
                //parse through the data and create them into swift instances
                let decoder = JSONDecoder()
                
                do {
                    // try to decode the data
                    let states = try decoder.decode([MexicoState].self, from: data)
                    
                    return states
                } catch let decodingError{
                    print("Decoding Error: \(decodingError)")
                }
                
            } catch{
                print("Something went wrong trying to read the file, or when creating swift instances.")
            }
        }
        return [MexicoState]()
    }
}
