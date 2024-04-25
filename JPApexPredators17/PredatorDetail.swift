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
        ScrollView {
            ZStack {
                // background image
                Image(predator.type.rawValue)
                    .resizable()
                    .scaledToFit()
                
                // dino image
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

#Preview {
    PredatorDetail(predator: Predators().apexPredators[2])
        .preferredColorScheme(.dark)
}
