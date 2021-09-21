//
//  QuizView.swift
//  toohak
//
//  Created by Nyein Nyein on 21/9/21.
//

import SwiftUI

struct QuizChoice{
    var text: String;
    var color: Color;
}

struct QuizChoices{
    init(choices: Array<QuizChoice>){
        assert(choices.count%2==0);
        self.choices=choices;
        number=choices.count;
    }
    var number: Int;
    var choices: Array<QuizChoice>;
}

struct QuizChoicesView: View {
    var choices: QuizChoices;
    var body: some View {
        VStack{
            ForEach(0...(choices.number-1)/2,id: \.self) { row in
                HStack{
                    Button(action: {}){
                        Text(choices.choices[row*2].text)
                            .foreground(.white)
                    }.background(choices.choices[row*2].color)
                    Button(action: {}){
                        Text(choices.choices[row*2+1].text)
                            .foreground(.white)
                    }.background(choices.choices[row*2+1].color)
                }
            }
        }
    }
}

struct QuizView: View {
    var choices: QuizChoices;
    var body: some View {
        QuizChoicesView(choices: choices)
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
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
