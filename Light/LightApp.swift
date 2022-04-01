//
//  LightApp.swift
//  Light
//
//  Created by Samuel Asher  on 1/12/21.
//

import SwiftUI

@main
struct LightApp: App {
    
    
   @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView{
                    WorldView()
                }
                .tabItem{
                    Image(systemName: "star.fill")
                    Text("locations")
                }
                NavigationView{
                    TipsView()
                    
                }
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            
            
            }
            .environmentObject(locations)
        }
    }
}
