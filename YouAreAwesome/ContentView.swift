//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by likhtih areekkal on 2023-08-10.
//

import SwiftUI

struct ContentView: View {
    @State private var strMessage = ""

    
    var body: some View {
                
            VStack (spacing: 4) {

                Spacer()
                
                Text(strMessage)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .padding()
                
                Spacer()
                
                HStack {
                    
                    Button("Awesome") {
//                        if (strMessage == message1) {
//                            strMessage = message2
//                        }
//                        else {
//                            strMessage = message1
//                        }
                        let  message1 = "You are Awesome!"
                        let  message2 = "You are Great!"
                        strMessage = (strMessage == message1 ? message2 : message1   )
                    }
                    .foregroundColor(Color.yellow).bold()
                    .buttonStyle(.borderedProminent)
                    
 
                }
                .padding()
                .tint(Color("Vermillion"))
            }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
