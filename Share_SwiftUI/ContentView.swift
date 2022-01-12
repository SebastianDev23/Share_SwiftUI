//
//  ContentView.swift
//  Share_SwiftUI
//
//  Created by Sebastian Kl on 12.01.22.
//

import SwiftUI
import Foundation

struct ContentView: View {

@State private var url = URL(string: "https://nextcoding.de")
    
@State private var shareSheet = false // shareSheet
    
    var body: some View {
        
        VStack {
            Button {
                shareSheet.toggle()
                //shareSheet()
            } label: {
                Text("Share!")
                    Image(systemName: "square.and.arrow.up")
                    .padding()
                
              
            }
      
        
        
            
            
            
            
            
            
        
        }
        // ShareSheet hier wird das sheet eingeblendet und etwas eingestellt
        .sheet(isPresented: $shareSheet,
               content: {
            ActivityView(activityItems: ["Here is my Text", url as Any], applicationActivities: nil) })

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
