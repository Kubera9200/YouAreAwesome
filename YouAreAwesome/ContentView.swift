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
//    @State private var strImgCount = ""
    
    var body: some View {
                
            VStack (spacing: 4) {

                
                Spacer()
//      this doesn't work, why?
//             strImgCount = "image\(strCount)"
                Image(varImage+strCount)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    .padding()
                
                Text(String(count))
                
                HStack {
                    
                    Button("Awesome") {
                        if(count == 9){
                            count = 0
                        }
                        else{
                            count+=1
                        }
                        strCount = String(count)
                        print(String(count))
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
