README.txt

This is from the iBook “Swift Swift View Controllers” by Steven Lipton



Author: Frank Cipolla

Chapter 6 Section 2 – Split View Controllers using Template Pg 361
				Disappearing Outlets in the Detail



Notes:

// do not use the Master-Detail templste for splitviews because some properties are so weak they get consumed by ARC. pg 361
// if you re using the templste a work-around is to use didSet on a property pg 362
// then use the if let ..... optional unwrapping pattern because the constant is strong enough to survive the ARC within the execution block of the if.

Doing the demos in Swift 4 Xcode 9.2 Beta

There will be comments and notes in my source code.
