//
//  ContentView.swift
//  vorobei_2
//
//  Created by Raman Liukevich on 03/12/2024.
//

import SwiftUI

struct ContentView: View {
    @State var sliderValue: Double = 200

    var combinedMessage: AttributedString {
        var message1 = AttributedString("Марафон\u{00A0}")
        message1.font = .title2
        message1.foregroundColor = .gray

        var message2 = AttributedString("по ")
        message2.font = .title2
        message2.foregroundColor = .black

        var message3 = AttributedString("SwiftUI")
        message3.font = .title2
        message3.foregroundColor = .black

        message1.append(message2)
        message1.append(message3)
        return message1
    }

    var body: some View {
        VStack(spacing: 20) {
            VStack(alignment: .leading) {

                Text(combinedMessage)
                Text("«Отцовский Пинок»")
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundStyle(.blue)

            }
            .padding()
            .frame(width: 150+sliderValue, height: 200)
            .border(.blue, width: 3)

            Slider(value: $sliderValue, in: 0...200)
                .padding()

            Text("\(Int(sliderValue))")
        }
    }
}

#Preview {
    ContentView()
}
