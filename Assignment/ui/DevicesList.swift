//
//  ComputerList.swift
//  Assignment
//
//  Created by Kunal on 03/01/25.
//

import SwiftUI

struct DevicesList: View {
    let devices: [DeviceData]
    let onSelect: (DeviceData) -> Void // Callback for item selection

    var body: some View {
        List(devices) { device in
            Button {
                onSelect(device)
            } label: {
                ListItemView(device)
            }
        }
    }
    
    private func ListItemView(_ device: DeviceData) -> some View {
        VStack(alignment: .leading) {
            AssignmentText(text: device.name, font: .headline)
            if let color = device.data?.color {
                AssignmentText(text: "Color: \(color)", font: .body)
            }
            if let price = device.data?.price {
                AssignmentText(text: "Price: $\(price)", font: .body)
            }
            if let capacity = device.data?.capacity {
                AssignmentText(text: "Capacity: \(capacity)", font: .body)
            }
            if let description = device.data?.description {
                AssignmentText(text: "Description: \(description)", font: .body)
            }
        }
    }
}
