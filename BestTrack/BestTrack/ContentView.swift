//
//  ContentView.swift
//  BestTrack
//
//  Created by WSS on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var tracks = "question"
    
    var body: some View {
        ZStack {
            Image("KuwaitCodes")
                .resizable()
                .ignoresSafeArea()
                .blur(radius:4)
            VStack{
                Text("ما هو المسار المفضل لديك")
                    .font(.system(size:32, weight:.bold, design:.rounded))
                    .foregroundColor(.white)
                Image(tracks)
                    .resizable()
                    .scaledToFit()
                    .frame(width:150,
                           height:200)
                Spacer()
            ZStack {
                Capsule()
                    .frame(width:300, height:60)
                    .foregroundColor(.cyan)
                    .opacity(0.8)
                Text("iOS")
                    .font(.largeTitle)
                
            }.onTapGesture {
                tracks = "apple"
            }
            .padding()
            ZStack {
                Capsule()
                    .frame(width:300, height:60)
                    .foregroundColor(.red)
                    .opacity(0.8)
                Text("Gamedev")
                    .font(.largeTitle)
            }.onTapGesture {
                tracks = "unity"
            }
            .padding()
            ZStack {
                Capsule()
                    .frame(width:300, height:60)
                    .foregroundColor(.blue)
                    .opacity(0.7)
                Text("Web")
                    .font(.largeTitle)
            }.onTapGesture {
                tracks = "visual"
            }
            .padding()
            ZStack {
                Capsule()
                    .frame(width:300, height:60)
                    .foregroundColor(.green)
                    .opacity(0.7)
                Text("Android")
                    .font(.largeTitle)
            }.onTapGesture {
                tracks = "android"
            }
            .padding()
            Spacer()
        }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
