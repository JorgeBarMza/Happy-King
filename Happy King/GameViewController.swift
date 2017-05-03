//
//  GameViewController.swift
//  Happy King
//
//  Created by Jorge Barrios on 7/31/15.
//  Copyright (c) 2015 Jorge Barrios. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var menuButton: UIButton!
   
    @IBOutlet weak var gameLabel: UILabel!
    
    @IBOutlet weak var dealButton: UIButton!
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var back: UIImageView!
    @IBOutlet weak var front: UIImageView!
    
    @IBOutlet weak var blurVisualEffectView: UIVisualEffectView!
    
    
    @IBOutlet weak var onTopOfVisualEffectView: UIView!
    
    @IBOutlet weak var gameDescriptionLabel: UILabel!
    @IBOutlet weak var gameNameLabel: UILabel!
    
    let tapRec = UITapGestureRecognizer()
    
    var james = HappyKingModel()
    
    var imageName = ""
    var showingCard = false
    var timer: Timer?

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundCorners(menuButton, level: 10)
        roundCorners(dealButton, level: 10)
        roundCorners(cardView, level: 40)
        
        back.image = UIImage(named: "Back_Card.png")
        front.image =  UIImage(named: "Back_Card.png")
        
        tapRec.addTarget(self, action: #selector(GameViewController.tapGesture))
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func getCard(_ sender: AnyObject) {
        if showingCard{
            getCard()
        }else{
            flipCard()
            getCard()
        }
    }
    
    
    func getCard(){
        fadeOutCardView()
        imageName = james.dealOneCard()
        self.front.image = UIImage(named: imageName)
        fadeInCardView()
        let gameName = james.gameByCardDictionary[imageName]![0]
        gameLabel.text = gameName
        cardView.addGestureRecognizer(tapRec)
    }
    
    func fadeOutCardView(){
        UIView.animate(withDuration: 0.5, delay: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {self.cardView.alpha = 0}, completion: nil)
    }
    
    func fadeInCardView(){
        UIView.animate(withDuration: 0.5, delay: 0 , options: UIViewAnimationOptions.curveEaseIn, animations: {self.cardView.alpha = 1.0}, completion: nil)
    }
    
    func tapGesture(){
        if showingCard{
            flipCard()
            blurVisualEffectView.addGestureRecognizer(tapRec)
        }else{
            exitGameDescription()
            flipCard()
            cardView.addGestureRecognizer(tapRec)
        }
    }
    @IBAction func flipCardButton(_ sender: AnyObject) {
    
        flipCard()
    }
    
    func flipCard(){
        if showingCard{
        UIView.transition(from: front, to: back, duration: 1, options: [UIViewAnimationOptions.transitionFlipFromLeft, UIViewAnimationOptions.showHideTransitionViews], completion: nil)
        showingCard = false
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(GameViewController.showGameDescription), userInfo: nil, repeats: false)
    }else{
        exitGameDescription()
        UIView.transition(from: back, to: front, duration: 1, options:  [UIViewAnimationOptions.transitionFlipFromRight, UIViewAnimationOptions.showHideTransitionViews], completion: nil)
        showingCard = true
        }
    }

    func roundCorners(_ objectName: AnyObject, level: CGFloat){
        objectName.layer.cornerRadius = level
    }
    
    
    func showGameDescription(){
        blurVisualEffectView.isHidden = false
        gameNameLabel.text = gameLabel.text
        gameNameLabel.isHidden = false
        gameDescriptionLabel.text = james.gameByCardDictionary[imageName]![1]
        
    }
    
    func exitGameDescription(){
        blurVisualEffectView.isHidden = true
    }
}

