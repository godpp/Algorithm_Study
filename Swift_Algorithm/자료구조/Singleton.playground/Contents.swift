//: Playground - noun: a place where people can play

class Singleton {
    static let sharedInstance : Singleton = {
        let instance = Singleton()
        instance.value = 20
        return instance
    }()
    var value : Int = 10
    private init() {}
}

let instance : Singleton = Singleton.sharedInstance
print(instance.value)
