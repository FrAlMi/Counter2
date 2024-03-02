//
//  ViewController.swift
//  Counter2
//
//  Created by Алина Фролкина on 02.03.2024.
//

import UIKit

class ViewController: UIViewController {
    //Переменная счетчика
    var score: Int = 0
    var currentDate = Date()
    
    
    //Переменная лейбла с счетчиком
    @IBOutlet weak var scoreLabel: UILabel!
    //Переменная уменьшения счетчика
    @IBOutlet weak var minusCountButton: UIButton!
    //Переменная лейбла для кнопки обнуления счетчика
    @IBOutlet weak var repeatLabel: UILabel!
    //Переменная увеличения счетчика
    @IBOutlet weak var plusCountButton: UIButton!
    //Переменная лейбла к кнопке увеличения счетчика
    @IBOutlet weak var plusLabel: UILabel!
    //Переменная обнуления счетчика
    @IBOutlet weak var repeatCountButton: UIButton!
    //Переменная лейбла к кнопке уменьшения счетчика
    @IBOutlet weak var minusLabel: UILabel!
    //Переменная истории изменения
    @IBOutlet weak var changeHistoryTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeHistoryTextView.text = "История изменений: \n"
    }
    
    func dateTime() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        let dateString = dateFormatter.string(from: date)
        return dateString
    }
    func updateScoreLabel() {
        scoreLabel.text = "ЗНАЧЕНИЕ СЧЕТЧИКА: \(score)"
    }
    
    @IBAction func tapMinusButton(_ sender: Any) {
        if score > 0 {
            score -= 1
            updateScoreLabel()
            changeHistoryTextView.text.append("[\(dateTime())]: значение изменено на -1 \n")
        }
        else {
            updateScoreLabel()
            changeHistoryTextView.text.append("[\(dateTime())]: попытка уменьшить значение счетчика ниже 0 \n")
        }
    }
    
    @IBAction func tapPlusButton(_ sender: Any) {
        score += 1
        updateScoreLabel()
        changeHistoryTextView.text.append("[\(dateTime())]: значение изменено на +1 \n")
    }
    
    @IBAction func tapRepeatButton(_ sender: Any) {
        score = 0
        updateScoreLabel()
        changeHistoryTextView.text.append("[\(dateTime())]: значение сброшено \n")
    }
    
}

