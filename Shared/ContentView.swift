//
//  ContentView.swift
//  Shared
//
//  Created by Steven Lipton on 7/10/20.
//
// An exercise file for iOS Development Tips Weekly
// A weekly course on LinkedIn Learning for iOS developers
//  Season 11 (Q3 2020) video 12
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//This Week:  Learn about the iOS14 Color picker and DisclosureGroup in SwiftUI
//  For more code, go to http://bit.ly/AppPieGithub

import SwiftUI

struct ContentView: View {
    @State private var value = 1.5
    @State private var color:Color = .white
    @State private var borderColor:Color = .white
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Image("pizza")
                    Text("Hello, Pizza!")
                        .font(.headline)
                        .padding()
                }
                .padding(40)
                .border(borderColor, width: 5)
                .background(color)
                .padding()
 //Code goes here:
                DisclosureGroup("Settings"){
                    ColorPicker(selection: $color, supportsOpacity: true, label:{
                       
                        RoundedRectangle(cornerRadius:20)
                            .foregroundColor(color)
                            .frame(height:80)
                        Text("Background")
                    })
                    ColorPicker(selection: $borderColor, supportsOpacity: false, label:{
                        
                        RoundedRectangle(cornerRadius:20)
                            .foregroundColor(borderColor)
                            .frame(height:80)
                        Text("Border")
                    })
                }
            }
            Spacer()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
