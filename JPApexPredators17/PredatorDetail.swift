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
                
                VStack(alignment: .leading) {
                    // dino name
                    Text(predator.name)
                        .font(.largeTitle)
                    
                    // current location map
                    
                    // appears in list
                    Text("Appears In:")
                        .font(.title3)
                    ForEach(predator.movies, id: \.self) { movie in
                        Text("•" + movie)
                            .font(.subheadline)
                    }

                    // movie moments
                    Text("Movie Moments")
                        .font(.title)
                        .padding(.top, 15)
                    
                    ForEach(predator.movieScenes) { scene in
                        Text(scene.movie)
                            .font(.title2)
                            .padding(.vertical, 1)
                        
                        Text(scene.sceneDescription)
                            .padding(.bottom, 15)
                    }
                    
                    // link to web
                    Text("Read More:")
                        .font(.caption)
                    Link(predator.link, destination: URL(string: predator.link)!)
                        .font(.caption)
                        .foregroundStyle(.blue)
                }
                .frame(width: geo.size.width, alignment: .leading)
                .padding()
                .padding(.bottom)
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    PredatorDetail(predator: Predators().apexPredators[2])
        .preferredColorScheme(.dark)
}
