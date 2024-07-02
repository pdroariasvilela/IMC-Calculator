//
//  ContentView.swift
//  WeSplit
//
//  Created by Pedro on 5/06/24.
//

import SwiftUI

struct Exercices1: View {

    var body: some View {
        VStack{
            HStack{
                Rectangle().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Rectangle().foregroundColor(.orange)
                Rectangle().foregroundColor(.yellow)
            }.frame(height: 100)

            Rectangle().foregroundColor(.orange).frame(height: 100)
            
            HStack{
                Circle().foregroundColor(.green)
                Rectangle().foregroundColor(.black)
                Circle().foregroundColor(.purple)
            }.frame(height: 200)
            
            Rectangle().foregroundColor(.orange).frame(height: 100)
            
            HStack{
                Rectangle().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Rectangle().foregroundColor(.orange)
                Rectangle().foregroundColor(.yellow)
            }.frame(height: 100)

            
        }.background(.red)
    }
}

#Preview {
    Exercices1()
}
