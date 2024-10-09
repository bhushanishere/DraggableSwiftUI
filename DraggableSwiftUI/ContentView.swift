//
//  ContentView.swift
//  DraggableSwiftUI
//
//  Created by Bhushan Borse DXC on 09/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var myPayload: String = "I belong in a blue box."

    
    var body: some View {
        HStack(spacing: 50) {
          Square(text: $myPayload, color: .pink)
            .draggable(myPayload, preview: {
              Text("Dragging...")
                .padding()
                .background(Color.purple)
                .cornerRadius(25)
            })
        }
      }
    }
    
struct Square: View {
    @Binding var text: String
    var color: Color
    var body: some View {
        ZStack {
            color
            Text(text)
                .padding()
                .bold()
        }
        .frame(width: 150, height: 150)
        .cornerRadius(25)
    }
}


#Preview {
    ContentView()
}
