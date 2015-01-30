// Playground - noun: a place where people can play

import Cocoa
import AVFoundation

//func createChaChingSound() -> SystemSoundID {
//    var soundID: SystemSoundID = 0
//    let soundURL = CFBundleCopyResourceURL(CFBundleGetMainBundle(), "Cha-Ching", "aiff", nil)
//    AudioServicesCreateSystemSoundID(soundURL, &soundID)
//    CFRelease(soundURL)
//    return soundID
//}
//
//let chaChingSound: SystemSoundID = createChaChingSound()
//
//AudioServicesPlaySystemSound(chaChingSound)

//if let mySound = NSSound(named:"~/Desktop/sound.mp3") {
//    mySound.duration
//    mySound.play()
//}

//let soundFileURL = NSBundle.mainBundle().URLForResource("sound", withExtension: "mp3")

var player: AVAudioPlayer

let soundUrl = NSURL(fileURLWithPath: "/Users/anbh/Desktop/Completed.wav")
var error: NSError?
player = AVAudioPlayer(contentsOfURL: soundUrl, error: &error)
player.play()
sleep(1)
