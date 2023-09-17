//
//  ContentView.swift
//  TextModifiers
//
//  Created by zumin you on 2023/09/17.
//

import SwiftUI

/**
 family: Pretendard
 name: Pretendard-Light
 name: Pretendard-Medium
 name: Pretendard-ExtraBold
 */

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
//            getFontName()
        }
    }
    
    private func getFontName() {
        for family in UIFont.familyNames {

            let sName: String = family as String
            print("family: \(sName)")
                    
            for name in UIFont.fontNames(forFamilyName: sName) {
                print("name: \(name as String)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
