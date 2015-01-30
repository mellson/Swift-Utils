import Cocoa

extension Int {
    func square() -> Int {
        return self * self
    }
    
    func incr() -> Int {
        return self + 1
    }
}

3.square().incr()

let xs = [1...10]

func square (x: Int) -> Int {
    return x * x
}

func incr (x: Int) -> Int {
    return x + 1
}

infix operator |> { associativity left }
func |> <A, B> (x: A, f: A -> B) -> B {
    return f(x)
}


func |> <A, B, C> (f: A -> B, g: B -> C) -> (A -> C) {
    return { a in
        return g(f(a))
    }
}

3 |> square |> incr


















let smukke = "Ditte"

println(smukke)

func hvadErMor(s: String) -> String {
    return "\(s) er smuk"
}

hvadErMor("Ditte")
























