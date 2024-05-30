//
//  SwiftUIVoiceView.swift
//  NStackSwiftUi
//
//  Created by Praveen on 30/05/24.
//




/*
import SwiftUI
import AVFoundation

struct SwiftUIVoiceView: View {
    @StateObject private var speechManager = SpeechManager()
    @State private var attributedString = NSMutableAttributedString(string: "")

    var body: some View {
        VStack {
            TextEditor(text: $speechManager.paragraph)
                .border(Color.gray, width: 1)
                .padding()
                .background(HighlightedTextView(attributedText: attributedString))
                .disabled(true)

            Button(action: {
                speechManager.startSpeaking()
            }) {
                Text("Start Speaking")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .onReceive(speechManager.$highlightedText) { highlightedText in
            updateHighlight(highlightedText)
        }
    }

    private func updateHighlight(_ text: String) {
        let paragraph = speechManager.paragraph
        let range = (paragraph as NSString).range(of: text)
        attributedString = NSMutableAttributedString(string: paragraph)
        attributedString.addAttribute(.backgroundColor, value: UIColor.yellow, range: range)
    }
}

class SpeechManager: NSObject, ObservableObject {
    @Published var paragraph: String =     "T It all begins with one idea and everything familiar that naturally flows with it fits into one paragraph. Every paragraph you have should have points or sentence/s related and referring to the central idea. These ideas should not be random. It always helps to jot down quick points quickly in a rough sheet. Arrange them into a logical chronological order that flows in one direction making. It easier to read.When discussing the string pattern matching recognition problem, the first thought to pop up in your mind would probably be the Knuth-Morris-Pratt algorithm. However, I would like to introduce a more intuitive method based on which is part of the Swift standard libraryr."
    
    
    @Published var highlightedText: String = ""
    
    private let synthesizer = AVSpeechSynthesizer()

    override  init() {
        super.init()
        synthesizer.delegate = self
    }

    func startSpeaking() {
        let lines = paragraph.split(separator: ".").map { String($0) + "." }
        for line in lines {
            let utterance = AVSpeechUtterance(string: line)
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
            utterance.rate = AVSpeechUtteranceDefaultSpeechRate
            synthesizer.speak(utterance)
        }
    }
}

extension SpeechManager: AVSpeechSynthesizerDelegate {
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance) {
        DispatchQueue.main.async {
            self.highlightedText = utterance.speechString
        }
    }

    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        DispatchQueue.main.async {
            self.highlightedText = ""
        }
    }
}

struct HighlightedTextView: UIViewRepresentable {
    var attributedText: NSMutableAttributedString

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.isEditable = false
        return textView
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = attributedText
    }
}

struct SwiftUIVoiceView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIVoiceView()
    }
}
*/













