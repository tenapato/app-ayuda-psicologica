//
//  PhoneView.swift
//  psychology-app
//
//  Created by Patricio Tena on 25/04/23.
//

import SwiftUI

struct FloatingCallButton: View {
    var body: some View {
            Button(action: {
                if let url = URL(string: "tel:555-555-555"), UIApplication.shared.canOpenURL(url) {
                    UIApplication.shared.open(url)
                }
            }) {
                ZStack {
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.green)
                    
                    Image(systemName: "phone.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                }
            }
        }
}
