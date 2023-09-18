//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by likhtih areekkal on 2023-08-10.
//

import SwiftUI

struct ContentView: View {
    @State private var strMessage = "Yo-Yo"
//    @State private var intCount = 1
    
    var body: some View {
        VStack (spacing: 4) {
            Text("You have Skills!")
                .font(.largeTitle)
                .fontWeight(.black)
                .background(.purple)
                .cornerRadius(10)
            Spacer()
            Text(strMessage)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.cyan, width: 1)
                .padding()
            Spacer()
            Spacer()
            HStack {
                Button("Awesome") {
                    strMessage="You are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                Spacer()
                
                Button("Wonderful", action: {strMessage="You are wonderful"})
                    .buttonStyle(.borderedProminent)
                Spacer()
                Button("Clear") {
                    strMessage = "This hopefully should be an extra long sentence. If you think it is not then you will have to properly explain in detail why it is not"
                }
            }
            .border(.gray, width: 1)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
