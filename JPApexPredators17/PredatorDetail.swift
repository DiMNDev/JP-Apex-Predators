//
//  PredatorDetail.swift
//  JPApexPredators17
//
//  Created by Joshua Arnold on 4/25/24.
//

import SwiftUI

struct PredatorDetail: View {
    let predator: ApexPredators
    var body: some View {
        GeometryReader { geo in
        ScrollView {
            ZStack(alignment: .bottomTrailing) {
                // background image
                Image(predator.type.rawValue)
                    .resizable()
                    .scaledToFit()
                
                // dino image
                Image(predator.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width/1.5, height: geo.size.height/3)
                    .scaleEffect(x: -1)
                    .shadow(color: .black, radius: 7)
                    .offset(y: 20)
            }
            
            // dino name
            
            // current location map
            
            // appears in list
            
            // movie moments
            
            // link to web
        }
        .ignoresSafeArea()
        }
    }
}

#Preview {
    PredatorDetail(predator: Predators().apexPredators[2])
        .preferredColorScheme(.dark)
}
