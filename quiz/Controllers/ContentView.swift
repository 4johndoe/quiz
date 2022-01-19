//
//  ContentView.swift
//  quiz
//
//  Created by Bogdan Demchenko on 18.01.2022.
//

import SwiftUI

func UIColorFromRGB(rgbValue: UInt) -> UIColor {
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.init(UIColorFromRGB(rgbValue: 0x020449))
                .ignoresSafeArea()
            
            VStack {
                Text("logo")
                Text("title")
                Text("description")
                Text("button login")
                Text("button sign up")
                Text("button sign up with apple")
                Text("license agreement")
                Spacer()
            }
            .foregroundColor(Color.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
