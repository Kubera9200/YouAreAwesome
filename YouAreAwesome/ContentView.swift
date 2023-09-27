//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by likhtih areekkal on 2023-08-10.
//

import SwiftUI

struct ContentView: View {
    @State private var strMessage = "Namaste"
//    @State private var intCount = 1
    
    var body: some View {
                
            VStack (spacing: 4) {
                Spacer()
                
                Image(systemName: "speaker.wave.3", variableValue: 0.7)
                    .resizable()
                    .scaledToFit()
                    .symbolRenderingMode(.multicolor)
                    .padding()
                    .background(Color(hue: 0.511, saturation: 0.36, brightness: 0.941))
                    .cornerRadius(30)
                    .shadow(color: .gray, radius: 30, x:20, y:20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(.teal, lineWidth:1)
                    )
                    .padding()
                
//                Image(systemName: "cloud.sun.rain.fill")
//                    .resizable()
//                    .scaledToFit()
//                    .symbolRenderingMode(.multicolor)
//                    .padding()
//                    .background(Color(hue: 0.511, saturation: 0.36, brightness: 0.941))
//                    .cornerRadius(30)
//                    .shadow(color: .gray, radius: 30, x:20, y:20)
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 30)
//                            .stroke(.teal, lineWidth:1)
//                    )
//                    .padding()
//                    .clipShape(Circle())
//                    .shadow(color: .gray, radius: 20, x:20, y:20)
//                    .padding()
//                    .foregroundStyle(.gray, .orange, .blue)
//                    .padding()
//                    .scaledToFill()
//                    .border(.pink)
//                    .foregroundColor(Color.pink)
//                    .frame(width: 200, height: 300)
//                    .border(.blue)
//                    .clipped()
                    
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
                        strMessage="You are Awesome!"
                    }
                    .foregroundColor(Color.yellow).bold()
                    .buttonStyle(.borderedProminent)
                    
                    Spacer()
                    
                    Button("Great", action: {strMessage="You are Great"})
                        .foregroundColor(Color.black)
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
