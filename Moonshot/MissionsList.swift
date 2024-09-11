//
//  MissionsList.swift
//  Moonshot
//
//  Created by Joel Lacerda on 11/09/24.
//

import SwiftUI

struct MissionsList: View {
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    
    var body: some View {
        List {
            ForEach(missions) { mission in
                NavigationLink {
                    MissionView(mission: mission, astronauts: astronauts)
                } label: {
                    HStack {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding()
                        
                        VStack {
                            Text(mission.displayName)
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            Text(mission.formattedLaunchDate)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(.lightBackground)
                        .clipShape(.rect(cornerRadius: 10))
                    }
                    
                }
                .padding(.horizontal)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.lightBackground)
                )
            }
            .padding(.horizontal, -20)
            .listRowBackground(Color.darkBackground)
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}
