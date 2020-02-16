//
//  Bundle-Decodable.swift
//  MoonShoot
//
//  Created by ChamanGurjar on 16/02/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import Foundation

extension Bundle {
    
    func decode(_ file: String) -> [Astronaut] {
        guard let url = self.url(forResource: file, withExtension: nil ) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        guard let loaded = try? decoder.decode([Astronaut].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return loaded
    }
    
}
