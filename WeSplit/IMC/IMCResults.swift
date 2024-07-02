//
//  IMCResults.swift
//  WeSplit
//
//  Created by Pedro on 1/07/24.
//

import SwiftUI

struct IMCResults: View {
    
    let userWeight:Double
    let userHeight:Double
    
    var body: some View {
        VStack {
            Text("Tu resultado").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().foregroundColor(.white)
            InformationView(result:2.0)
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity).background(.backgroundApp)
    }
}

func calculateIMC(weight:Double , height:Double)->Double{
    let result = weight/(height/100)
    
    return result
}

//func getImcResult(result:Double)

struct InformationView:View {
    let result:Double
    var body: some View {
        VStack{
            Spacer()
            Text("Normal").foregroundColor(.green).font(.title).bold()
            Spacer()
            Text("\(result, specifier: "%.2f")").font(.system(size: 80))
                .foregroundColor(.white)
            Spacer()
            Text("Es un resultado normal").foregroundColor(.white).font(.title2)
            .padding(.horizontal, 8)
            Spacer()
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundComponent).cornerRadius(16).padding(16)
    }
}

#Preview {
    IMCResults(userWeight: 80 , userHeight:80)
}
