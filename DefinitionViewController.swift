//
//  DefinitionViewController.swift
//  Treasure Hunt Emoji
//
//  Created by user124196 on 4/9/17.
//  Copyright © 2017 Newport Enterprises. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "No Emoji"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "😎" {
        
        definitionLabel.text = "I wear my sunglasses at night"}
        if emoji == "👁" {
            
            definitionLabel.text = "I see your underwear!"}
        if emoji == "💩" {
            
            definitionLabel.text = "Bad Dog! Head to the Corner for timeout"}
        if emoji == "👽" {
            
            definitionLabel.text = "Calling Agent Mulder"}
        if emoji == "🍔" {
    
            definitionLabel.text = "YUMM! Hamburgers!"}
        if emoji == "🐶" {
            
            definitionLabel.text = "Who's a good boy? Belly Rubs!"}
        if emoji == "🤕" {
            
            definitionLabel.text = "Shouldn't have backtalked my wife!"}
        if emoji == "😬" {
            
            definitionLabel.text = "She caught me red-handed, banging on the bathroom floor"}
        if emoji == "👻" {
            
            definitionLabel.text = "I see dead people!"}}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
