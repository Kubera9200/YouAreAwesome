//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by likhtih areekkal on 2023-08-10.
//

import SwiftUI
import UIKit
import Foundation

struct ContentView: View {
    @State private var varImage = "image"
    @State private var count: Int = 0
    @State private var strCount = "0"
    @State private var messageString: String = ""

    var body: some View {
        let messagesArray = ["m0", "m1", "m2",
                             "m3","m4", "m5",
                             "m6", "m7", "m8",
                             "m9", "m10", "m11"]
        
        VStack (spacing: 4) {
            
            Image(varImage+strCount)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 10)
                .padding()

            Text(messageString)

            
            HStack {
                
                
                Button("Awesome") {
                    
                    if(count == 9){
                        count = 0
                    }
                    else{
                        count+=1
                    }
                    strCount = String(count)
                    
                    messageString = messagesArray[Int.random(in: 0...(messagesArray.count-1))]
                    
                }
                .foregroundColor(Color.yellow).bold()
                .buttonStyle(.borderedProminent)
                
            }
            .padding()
            .tint(Color("Vermillion"))
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
