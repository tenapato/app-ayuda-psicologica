//
//  DetailView.swift
//  psychology-app
//
//  Created by Patricio Tena on 25/04/23.
//

import SwiftUI

struct DetailView: View {
    var tipo: Tipos
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
                .frame(maxHeight: 10)
            
            Text(tipo.name)
                .font(.system(size: 36, weight: .bold))
                .foregroundColor(Color(.label))
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Text(tipo.description)
                .font(.system(size: 18, weight: .regular))
                .foregroundColor(Color(.secondaryLabel))
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Spacer()
        }
        .padding(.top)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(tipo: Tipos(name: "Test", description: "Test"))
    }
}
