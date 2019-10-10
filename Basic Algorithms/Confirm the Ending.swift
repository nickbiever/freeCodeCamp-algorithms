import UIKit
import PlaygroundSupport

func confirmEnding(str: String, target: String) -> Bool {
    return str.components(separatedBy: " ").last!.contains(target)
}

confirmEnding(str: "Bastian", target: "n")                                                                                                           // Should return true
confirmEnding(str: "Congratulation", target: "on")                                                                                                   // Should return true
confirmEnding(str: "Connor", target: "n")                                                                                                            // Should return true
confirmEnding(str: "Walking on water and developing software from a specification are easy if both are frozen", target: "specification")             // Should return false
confirmEnding(str: "He has to give me a new name", target: "name")                                                                                   // Should return true
confirmEnding(str: "Open sesame", target: "same")                                                                                                    // Should return true
confirmEnding(str: "Open sesame", target: "pen")                                                                                                     // Should return false
confirmEnding(str: "Open sesame", target: "game")                                                                                                    // Should return false
confirmEnding(str: "If you want to save our world, you must hurry. We dont know how much longer we can withstand the nothing", target: "mountain")   // Should return false
confirmEnding(str: "Abstraction", target: "action")                                                                                                  // Should return true
