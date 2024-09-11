//
//  ContentView.swift
//  Moonshot
//
//  Created by Joel Lacerda on 09/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingGrid = false
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationStack {
            Group {
                if showingGrid {
                    MissionsGrid(missions: missions, astronauts: astronauts)
                } else {
                    MissionsList(missions: missions, astronauts: astronauts)
                }
            }
            .padding([.horizontal, .bottom])
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Button(showingGrid ? "Show List" : "Show Grid") {
                    showingGrid.toggle()
                }
                .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
