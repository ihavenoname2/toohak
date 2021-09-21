//
//  ContentView.swift
//  toohak
//
//  Created by Nyein Nyein on 21/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        QuizView(choices:
            QuizChoices(choices:
                [
                    QuizChoice(text: "SCREAM", color: .red),
                    QuizChoice(text: "Die", color: .green),
                    QuizChoice(text: "Kill", color: .yellow),
                    QuizChoice(text: "slap", color: .blue)
                ]
            )
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
