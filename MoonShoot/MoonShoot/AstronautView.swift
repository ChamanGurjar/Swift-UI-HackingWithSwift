//
//  AstronautView.swift
//  MoonShoot
//
//  Created by ChamanGurjar on 22/02/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronaut
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                VStack {
                    Image(self.astronaut.id)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width)
                    
                    Text(self.astronaut.description)
                        .padding()
                        .layoutPriority(1)
                }
            }
        }
        .navigationBarTitle(Text(astronaut.name), displayMode: .inline)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static let astranauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        AstronautView(astronaut: astranauts[0])
    }
}
