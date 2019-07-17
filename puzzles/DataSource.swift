/*
 데이터소스(DataSource)
 
 데이터소스는 데이터에 대한 정보를 제공해주는 역할을 한다.
 
 다음 프로토콜에 정의된 데이터소스 규칙을 만족하고 테스트를 모두 통과하도록 코드를 작성하시오.
 
 */


protocol DataSource {
    var numberOfItem: Int { get }
    func item(at index:Int) -> String
    
    func addItem(_ item: String)
    func removeItem(at index:Int) -> String
}


class MyDataSource : DataSource {
    
    var numberOfItem: Int = 0
    var myArray = [String]()
    
    func item(at index: Int) -> String {
        return myArray[index]
    }
    
    func addItem(_ item: String) {
        myArray.append(item)
        numberOfItem+=1
    }
   
    func removeItem(at index: Int) -> String {
        numberOfItem-=1
        return myArray[index]
        myArray.remove(at: index)
    }
    // 데이터소스 라는 프로토콜을 따르고 있음, 데이터 소스는 규칙들을 담고있음.
    // 이곳에 코드를 작성하시오.
}


let dataSupplier = MyDataSource()

let result1 = dataSupplier.numberOfItem
assert(result1 == 0, "Test1 Fail \(result1)")

dataSupplier.addItem("Apple")
dataSupplier.addItem("Banana")

let result2 = dataSupplier.numberOfItem
assert(result2 == 2, "Test2 Fail \(result2)")

dataSupplier.addItem("Cherry")

let result3 = dataSupplier.item(at: 0)
assert(result3 == "Apple", "Test3 Fail \(result3)")

let result4 = dataSupplier.removeItem(at: 1)
assert(result4 == "Banana", "Test4 Fail \(result4)")

let result5 = dataSupplier.numberOfItem
assert(result5 == 2, "Test5 Fail \(result5)")

print("Well Done")

