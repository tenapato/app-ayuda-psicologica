//
//  TableTest.swift
//  psychology-app
//
//  Created by Patricio Tena on 25/04/23.
//

import SwiftUI

struct TableTest: View {
    var body: some View {
        Grid {
            GridRow {
                Text("Hello")
                Image(systemName: "globe")
            }
            GridRow {
                Image(systemName: "hand.wave")
                Text("World")
            }
        }
    }
}

struct TableTest_Previews: PreviewProvider {
    static var previews: some View {
        TableTest()
    }
}
