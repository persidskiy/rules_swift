import SomeObjcLib

public class Library {
    public init() {}
    public func foo() -> Underlying {
        print("Library.foo")
        ObjcClass().run()
        return Underlying()
    }
}
