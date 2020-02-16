//
//  Mission.swift
//  MoonShoot
//
//  Created by ChamanGurjar on 16/02/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import Foundation

struct CrewRole: Codable {
    let name: String
    let role: String
}

struct Mission: Codable, Identifiable {
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
