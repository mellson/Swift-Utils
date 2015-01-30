// Anders Bech Mellson, Utility Playground

import Cocoa

func time <A> (f: @autoclosure () -> A) -> (result: A, duration: String) {
    let startTime = CFAbsoluteTimeGetCurrent()
    let result = f()
    let endTime = CFAbsoluteTimeGetCurrent()
    return (result, "Elapsed time is \(endTime - startTime) seconds.")
}

time (1+2)

func isPrime(var number:Int) ->Bool {
    var i = 0;
    for i=2; i<number; i++ {
        if(number % i == 0 && i != 0) {
            return false;
        }
    }
    return true;
}

let (res, dur) = time(isPrime(Int.max))
res
dur


let numberFormatter = NSNumberFormatter()
//numberFormatter.stringFromNumber(2)

let number: NSNumber? = Some("hej") as AnyObject? as NSNumber?
numberFormatter.stringFromNumber(number!)
