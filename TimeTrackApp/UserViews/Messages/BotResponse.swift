//
//  BotResponse.swift
//  TimeTrackApp
//
//  Created by Wallace McCarthy on 12/22/22.
//

import Foundation
func getBotResponse(message: String) -> String
{
    let tempMessage = message.lowercased()
    if tempMessage.contains("schedule")
    {
        if(tempMessage.contains("monday") || tempMessage.contains("tuesday") || tempMessage.contains("wednesday") || tempMessage.contains("thursday"))
        {
            return "PERIOD 1 OR 5: 7:45 – 9:01 | 76 Minutes \n APP: 9:07 – 9:44 | 37 Minutes \n PERIOD 2 OR 6: 9:50– 11:06 | 76 Minutes \n 1ST LUNCH: 11:06 – 11:36 | 30 Minutes \n PERIOD 3 OR 7: 11:42 –12:58 | 76 Minutes \n 2ND LUNCH: 12:28 – 12:58 | 30 Minutes \n PERIOD 3 OR 7: 11:12 – 12:28 | 76 Minutes \n PERIOD 4 OR 8: 1:04 – 2:20 | 76 Minutes"
        }else if (tempMessage.contains("friday"))
        {
            return "It will be an early out day! \n PERIOD 1 OR 5: 7:45 – 8:45 | 60 Minutes \n PERIOD 2 OR 6: 8:51 – 9:51 | 60 Minutes \n PERIOD 3 OR 7: 9:57 – 10:57 | 60 Minutes \n PERIOD 4 OR 8: 11:03 – 12:03 | 60 Minutes \n LUNCH: 12:03 – 12:43 | 40 Minutes \n PLC: 12:43 – 2:20 | 97 Minutes"
        }else if(tempMessage.contains("saturday") || tempMessage.contains("sunday"))
        {
            return "There is no school Sunday or Saturday, it's the weekend."
        }else
        {
            return "Schedule for which day? \n Please use the following as a inpout guide: \n \"DAY\" Schedule or Schedule \"DAY\""
        }
    }
    else if tempMessage.contains("hello")
    {
        return "Hey there!"
    }
    
    else  if tempMessage.contains("goodbye")
    {
        return "Tatlk to you later!"
    }else if tempMessage.contains("how are you")
    {
        return "Good how about you?"
    }else if tempMessage.contains(" ")
    {
        return "Thats cool."
    }
    
    else
    {
        return " "
    }
}