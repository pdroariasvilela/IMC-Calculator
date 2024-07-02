//
//  MenuView.swift
//  WeSplit
//
//  Created by Pedro on 30/06/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination: IMCView()){
                    Text("IMC CALCULATOR >>")
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
