//
//  TextFieldsModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 20.08.25.
//

import SwiftUI

struct TextFieldsModule: View {
    @State var email = ""
    @State var password = ""
    @State var welcomeText = ""
    var body: some View {
        VStack(spacing: 24) {
            if !welcomeText.isEmpty {
                Text(welcomeText)
                    .bold()
                    .font(.caption)
                    .foregroundColor(.red)
                    .underline()
                    .padding()
                    .background(.yellow)
                    .cornerRadius(10)
            }

            CuteMascotComponent(
                cuteMascot: .init(
                    name: "Welcome to the Cute Mascots World!",
                    image: .cutePretzel
                )
            )
            VStack {
                //                TextField("bio", text: $email, axis: .vertical)
                //                    .font(.subheadline)
                //                    .padding(12)
                //                    .background(Color(.systemGroupedBackground))
                //                    .cornerRadius(10)

                TextField("Enter your username", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                //                    .textFieldStyle(RoundedBorderTextFieldStyle())

                SecureField("Enter you password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(10)
                    .textInputAutocapitalization(.never)

                Button {
                    welcomeText = "Welcome \(email)!"
                } label: {
                    Text("Log In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 370, height: 48)
                        .background(.brown.mix(with: .yellow, by: 0.40))
                        .cornerRadius(10)
                }

            }
            .padding()
        }
    }
}

#Preview {
    TextFieldsModule()
}
