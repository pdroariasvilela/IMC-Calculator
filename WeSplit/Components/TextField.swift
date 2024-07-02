//
//  TextField.swift
//  WeSplit
//
//  Created by Pedro on 29/06/24.
//

import SwiftUI

struct CustomTextField: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack {
            TextField("Escribe tu email", text: $email)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.1))
                .cornerRadius(10)
            .padding(.horizontal,32)
            
            SecureField("Escribe tu contraseña", text: $password)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.1))
                .cornerRadius(10)
            .padding(.horizontal,32)
            .onChange(of: password) { oldValue, newValue in
                print("El valor antiguo es \(oldValue) y el nuevo es \(newValue)")
            }
        }
            
    }
}

#Preview {
    CustomTextField()
}
