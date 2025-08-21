//
//  BindingModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 21.08.25.
//

import SwiftUI

struct BindingModule: View {
    @State var isOn = false
    @State var showBatteryLife = false
    var body: some View {
        VStack {
            Text(!isOn ? "Notifications: Disabled" : "Notifications: Enabled")
            if showBatteryLife {
                Text("Battery Life 100%")
                    .foregroundColor(.green)
            }
            SettingRowView(
                isOn: $isOn,
                imageName: "bell.circle.fill",
                title: "Notifications"
            )
            SettingRowView(
                isOn: $showBatteryLife,
                imageName: "battery.100.circle.fill",
                title: "Notifications"
            )

        }

    }
}

#Preview {
    BindingModule()
}

struct SettingRowView: View {
    @Binding var isOn: Bool
    let imageName: String
    let title: String

    var body: some View {
        Toggle(isOn: $isOn) {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 35, height: 35)
                    .foregroundColor(!isOn ? .gray : .blue)

                Text(title)
                    .font(.subheadline)
                    .fontWidth(.condensed)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(Color(.systemGroupedBackground))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}
