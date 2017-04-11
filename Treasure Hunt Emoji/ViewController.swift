//
//  ViewController.swift
//  Treasure Hunt Emoji
//
//  Created by user124196 on 4/5/17.
//  Copyright © 2017 Newport Enterprises. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var emojitableview: UITableView!
    
    var emojis : [Emoji] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojitableview.dataSource = self
        emojitableview.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath , animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2011
        emoji1.category = "Smiley"
        emoji1.definition = "I wear my sunglasses at night!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😬"
        emoji2.birthYear = 2012
        emoji2.category = "Smiley"
        emoji2.definition = "UH! It wasn't me!"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💩"
        emoji3.birthYear = 2011
        emoji3.category = "Poo"
        emoji3.definition = "BAD DOG! Go to your cage!"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👽"
        emoji4.birthYear = 2010
        emoji4.category = "Smiley"
        emoji4.definition = "Calling Agent Mulder!"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🤕"
        emoji5.birthYear = 2007
        emoji5.category = "Smiley"
        emoji5.definition = "Shouldn't have backtalked my wife!"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "👻"
        emoji6.birthYear = 2008
        emoji6.category = "Ghost"
        emoji6.definition = "I see dead people!"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "👁"
        emoji7.birthYear = 2015
        emoji7.category = "Bodyparts"
        emoji7.definition = "Eye of Mordor sees all!"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "🐶"
        emoji8.birthYear = 2006
        emoji8.category = "Animal"
        emoji8.definition = "Who's a good boy!"
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "🍔"
        emoji9.birthYear = 2011
        emoji9.category = "Food"
        emoji9.definition = "YUMMM! Hamburgers!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9]       }

    
}
