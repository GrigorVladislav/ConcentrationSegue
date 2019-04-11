//
//  ConcentrationThemeChooserViewController.swift
//  Concentration
//
//  Created by VyacheslavKrivoi on 4/11/19.
//  Copyright © 2019 Michel Deiman. All rights reserved.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController {

//     var themes =  [
//         "Fruits":"🍏🍊🍓🍉🍇🍒🍌🥝🍆🍑🍋",
//        "Faces":"😀😂🤣😃😄😅😆😉😊😋😎",
//        "Activity":"⚽️🏄‍♂️🏑🏓🚴‍♂️🥋🎸🎯🎮🎹🎲",]
    
    var emojiThemes: [ConcentrationViewController.Theme] = [
        ConcentrationViewController.Theme(name: "Fruits",
              emojis:["🍏", "🍊", "🍓", "🍉", "🍇", "🍒", "🍌", "🥝", "🍆", "🍑", "🍋"],
              viewColor: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1),
              cardColor: #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)),
        ConcentrationViewController.Theme(name: "Faces",
              emojis:["😀", "😂", "🤣", "😃", "😄", "😅", "😆", "😉", "😊", "😋", "😎"],
              viewColor: #colorLiteral(red: 1, green: 0.8999392299, blue: 0.3690503591, alpha: 1),
              cardColor: #colorLiteral(red: 0.5519944677, green: 0.4853407859, blue: 0.3146183148, alpha: 1)),
        ConcentrationViewController.Theme(name: "Activity",
              emojis:["⚽️", "🏄‍♂️", "🏑", "🏓", "🚴‍♂️","🥋", "🎸", "🎯", "🎮", "🎹", "🎲"],
              viewColor: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1),
              cardColor: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)),
        ConcentrationViewController.Theme(name: "Animals",
              emojis:["🐶", "🐭", "🦊", "🦋", "🐢", "🐸", "🐵", "🐞", "🐿", "🐇", "🐯"],
              viewColor: #colorLiteral(red: 0.8306297664, green: 1, blue: 0.7910112419, alpha: 1),
              cardColor: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)),
        ConcentrationViewController.Theme(name: "Christmas",
              emojis:["🎅", "🎉", "🦌", "⛪️", "🌟", "❄️", "⛄️","🎄", "🎁", "🔔", "🕯"],
              viewColor: #colorLiteral(red: 0.9678710938, green: 0.9678710938, blue: 0.9678710938, alpha: 1),
              cardColor: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)),
        ConcentrationViewController.Theme(name: "Clothes",
              emojis:["👚", "👕", "👖", "👔", "👗", "👓", "👠", "🎩", "👟", "⛱","🎽"],
              viewColor: #colorLiteral(red: 0.9098039269, green: 0.7650054947, blue: 0.8981300767, alpha: 1),
              cardColor: #colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1)),
        ConcentrationViewController.Theme(name: "Halloween",
              emojis:["💀", "👻", "👽", "🙀", "🦇", "🕷", "🕸", "🎃", "🎭","😈", "⚰"],
              viewColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
              cardColor: #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)),
        ConcentrationViewController.Theme(name: "Transport",
              emojis:["🚗", "🚓", "🚚", "🏍", "✈️", "🚜", "🚎", "🚲", "🚂", "🛴"],
              viewColor: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1),
              cardColor: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
    ]
    
  
//    @IBAction func changeTheme(_ sender: Any) {
//
//
//        if let cvc = splitViewDetailConcentrationViewController {
//        if let themeName = (sender as? UIButton)?.currentTitle  {
//            for i in 0...emojiThemes.count-1 {
//
//                if  emojiThemes[i].name == themeName {
//                    let theme = emojiThemes[i]
//
//
//                        cvc.emojiThemes = [theme]
//
//                }
//            }
//        } else {
//            performSegue(withIdentifier: "Choose Theme", sender: sender)
//            }
//        }
//
//    }
//
//    private var splitViewDetailConcentrationViewController: ConcentrationViewController? {
//        return splitViewController?.viewControllers.last as? ConcentrationViewController
//    }
    

    
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Choose Theme" {
            if let themeName = (sender as? UIButton)?.currentTitle {
                for i in 0...emojiThemes.count-1 {
                    if  emojiThemes[i].name == themeName {
                        let theme = emojiThemes[i]
                        if let cvc = segue.destination as? ConcentrationViewController {
                            
                            cvc.emojiThemes = [theme]
                        
                    }
                    }
                
                }
            }
        }
    }

}
