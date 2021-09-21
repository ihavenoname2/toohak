//
//  ContentView.swift
//  toohak
//
//  Created by sap on 21/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            VStack {
                Text("Not")
                    .font(.system(size: 50))
                Text("Kahoot")
                    .font(.system(size: 50))
                
                Button("Start!") {
                    
                }
                .background(Color.blue)
                .foregroundColor(Color.green)
                .cornerRadius(5)
                .font(.title)
                .padding()
                
                Text("Start to begin")
                    .font(.system(size: 50))
                    .multilineTextAlignment(.center)
                    .padding()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
