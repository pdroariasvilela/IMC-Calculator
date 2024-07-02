//
//  TextExample.swift
//  WeSplit
//
//  Created by Pedro on 8/06/24.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack{
            Text("Hello, World!").font(.headline)
            Text("Texto 2 ").font(.system(size: 20))
        }
    }
}

#Preview {
    TextExample()
}
