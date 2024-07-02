//
//  ButtonExample.swift
//  WeSplit
//
//  Created by Pedro on 29/06/24.
//

import SwiftUI

struct ButtonExample: View {
    @State var numberCount = 0;
    var body: some View {
        Button(action: {numberCount += 1 }, label: {
            Text("Aumentar \(numberCount)").frame(
                width: 200,
                height:40).background(.blue).foregroundColor(.white).cornerRadius(6)
        })
    }
}

#Preview {
    ButtonExample()
}
