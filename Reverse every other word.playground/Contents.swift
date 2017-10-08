//Using extension and parsing string elements - string to character, reverse character, making custom function for type string

import UIKit


extension String {
    
    func stringByRemovingVowels() -> String {
        var newWord = self
        let vowels = ["a","e","i","o","u"]
        for v in vowels {
            newWord = newWord.replacingOccurrences(of: v, with: "")
        }
        return newWord
    }
}


var sentence = "Let's start today by completing this sentence"

func reverseOtherWord(_ sentence: String) -> String {
    let allWords = sentence.components(separatedBy: " ")
    var newSentence = ""
    
    for i in 0...allWords.count - 1 {
        let word = allWords[i]
        if newSentence != "" {
            newSentence += " "
        }
        if i % 2 == 1 {
            let reverseWord = String(word.characters.reversed())
            newSentence += reverseWord.stringByRemovingVowels()
        } else {
            newSentence += word
        }
        
    }
    
    return newSentence
}

print(reverseOtherWord(sentence))



