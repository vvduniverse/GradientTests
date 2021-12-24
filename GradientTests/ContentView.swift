//
//  ContentView.swift
//  GradientTests
//
//  Created by Vahtee Boo on 24.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 1) {
            LinearGradient(colors: [.red, .green, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
            
            LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
            
//            Gradient(colors: [.yellow, .green, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
            
            LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
            
            LinearGradient(gradient: Gradient(stops: [
                    Gradient.Stop(color: .white, location: 0.15),
                    Gradient.Stop(color: .black, location: 0.85),
                ]), startPoint: .top, endPoint: .bottom)
            
            LinearGradient(gradient: Gradient(stops: [
                    .init(color: .white, location: 0.45),
                    .init(color: .black, location: 0.55),
                ]), startPoint: .top, endPoint: .bottom)
            
            LinearGradient(stops: [.init(color: .green, location: 0.2),
                                    .init(color: .yellow, location: 0.5),
                                    .init(color: .black, location: 0.8)],
                           startPoint: .leading, endPoint: .trailing)
            
            RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
            
            Circle()
                .fill(AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center))
                .frame(width: 180, height: 180)
               
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
