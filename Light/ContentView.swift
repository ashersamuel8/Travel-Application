//
//  ContentView.swift
//  Light
//
//  Created by Samuel Asher  on 1/12/21.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView{
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            Text(location.description)
                .padding(.horizontal)
            
            Text("Did You Know")
                .font(.title3)
                .bold()
                .padding(.top)
                .padding(1)
            Text(location.more)
                .padding(.horizontal)
            
            
            
        
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView{
                ContentView(location: Locations().primary)
            }
    
        }
    }
}

