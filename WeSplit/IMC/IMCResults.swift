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
            Text("Tu resultado").font(.title).bold().foregroundColor(.white)
            let result = calculateIMC(weight: userWeight, height: userHeight)
            InformationView(result:result)
        }.frame(maxWidth: .infinity,maxHeight: .infinity).background(.backgroundApp)
    }
}

func calculateIMC(weight:Double , height:Double)->Double{
    let result = weight/((height/100)*(height/100))
    
    return result
}

func getImcResult(result:Double)-> (String , String, Color){
    let title:String
    let description:String
    let color:Color
    
    switch result {
    case 0.00...19.99:
        title = "Peso bajo"
        description="Estas por debajo del peso recomendado por el IMC"
        color=Color.yellow
    case 20.00...24.99:
        title = "Peso normal"
        description="Estas en el peso recomendado por el IMC"
        color=Color.green
    case 25.00...29.99:
        title = "Sobrepeso"
        description="Estas por encima del peso recomendado por el IMC"
        color=Color.orange
    case 30.00...100.99:
        title = "Obesidad"
        description="Estas nuy por encima del peso recomendado por el IMC"
        color=Color.red
    default:
        title = "Error"
        description = "Ha ocurrido un error"
        color = Color.gray
    }
    
    return (title, description , color)
}
struct InformationView:View {
    let result:Double
    var body: some View {
        
        let information = getImcResult(result: result)
        VStack{
            Spacer()
            Text(information.0).foregroundColor(information.2).font(.title).bold()
            Spacer()
            Text("\(result, specifier: "%.2f")").font(.system(size: 80))
                .foregroundColor(.white)
            Spacer()
            Text(information.1).foregroundColor(.white).font(.title2)
                .padding(.horizontal, 8)
            Spacer()
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundComponent).cornerRadius(16).padding(16)
    }
}

#Preview {
    IMCResults(userWeight:90 , userHeight:180)
}
