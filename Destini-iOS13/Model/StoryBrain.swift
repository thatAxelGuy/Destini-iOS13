//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain{
    static let stories = [
        // Story 0: The Hitchhike
        Story(
            title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide-brimmed hat and soulless eyes opens the passenger door for you and says: 'Need a ride, boy?'",
            choice: ["I'll hop in. Thanks for the help!", "Well, I don't have many options. Better ask him if he's a murderer."],
            choice1Destination: 2,  // Leads to Story 2
            choice2Destination: 1    // Leads to Story 1
        ),
        
        // Story 1: The Honest Murderer
        Story(
            title: "You ask the man, 'Are you a murderer?' He nods slowly, unphased by the question.",
            choice: ["At least he's honest. I'll climb in.", "Wait, I know how to change a tire."],
            choice1Destination: 2,  // Leads to Story 2
            choice2Destination: 3    // Leads to Story 3
        ),
        
        // Story 2: The Glove Box
        Story(
            title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glove box. Inside, you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            choice: ["I love Elton John! Hand him the cassette tape.", "It’s him or me. Take the knife and stab him."],
            choice1Destination: 5,  // Leads to Story 5 (correct index)
            choice2Destination: 4    // Leads to Story 4 (correct index)
        ),
        
        // Story 3: The Tire Cop-Out
        Story(
            title: "What? Such a cop-out! Did you know accidental traffic accidents are the second leading cause of accidental death for most adult age groups?",
            choice: ["I should have gotten in the truck.", "I'm walking. No more hitchhiking for me."],
            choice1Destination: 0,  // Leads to Story 0 (restart)
            choice2Destination: 6    // Leads to End of Story (Story 6)
        ),
        
        // Story 4: The Fatal Stab
        Story(
            title: "As you smash through the guardrail and careen towards the jagged rocks below, you reflect on the dubious wisdom of stabbing someone while they are driving a car you're in.",
            choice: ["This was a bad idea.", "Try to grab the wheel"],
            choice1Destination: 6,  // Leads to End of Story (Story 6)
            choice2Destination: 6    // Leads to End of Story (Story 6)
        ),
        
        // Story 5: The Murderer Bonding
        Story(
            title: "You bond with the murderer while crooning verses of 'Can You Feel the Love Tonight'. He drops you off at the next town. Before you go, he asks if you know any good places to dump bodies. You reply: 'Try the pier.'",
            choice: ["Get out of the truck and walk away.", "Maybe I should report him to the authorities."],
            choice1Destination: 6,  // Leads to End of Story (Story 6)
            choice2Destination: 6    // Leads to End of Story (Story 6)
        ),
        
        // Story 6: End of Story
        Story(
            title: "The story has come to an end. Would you like to restart or exit?",
            choice: ["Restart", "Exit"],
            choice1Destination: 0,  // Restarts the story
            choice2Destination: 6    // Ends the story (does nothing)
        )
    ]
    
    var storyNumber = 0
    
    mutating func processChoice(_ choiceMade: Int){
        if choiceMade == 0 {
            storyNumber = StoryBrain.stories[storyNumber].choice1Destination
        }
        else{
            storyNumber = StoryBrain.stories[storyNumber].choice2Destination
        }
        
    }
    
    func getStoryTitle() -> String{
        return StoryBrain.stories[storyNumber].title
    }
    
    func getChoices() -> Array<String>{
        return StoryBrain.stories[storyNumber].choice
    }
}

