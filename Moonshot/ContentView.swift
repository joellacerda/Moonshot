//
//  ContentView.swift
//  Moonshot
//
//  Created by Joel Lacerda on 09/09/24.
//

import SwiftUI

struct ContentView: View {
    let astronauts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        Text(String(astronauts.count))
    }
}

#Preview {
    ContentView()
}
