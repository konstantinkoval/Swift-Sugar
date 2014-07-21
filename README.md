Note: Used as an exercise mainly, still you can make use of it of course

## Inspiration

Swift Sugar is heavily inspired on [ObjectiveSugar](https://github.com/supermarin/ObjectiveSugar). 

## Documentation

**Int extensions** 

``` swift
3.times({
    println("Hello!")
})
// Hello!
// Hello!
// Hello!
```

``` swift
3.timesWithIndex({
    index in println(index)
})
// 0
// 1
// 2
```

``` swift
3.upTo(5,{
    index in println(index)
})
// 3
// 4
```

``` swift
5.downTo(0, doTask: {
    index in println(index)
})
// 5
// 4
// 3
// 2
// 1
```

**Array functions** 
``` swift
[1,2,3,4].initial(3)
// [1,2,3]
```

``` swift
[1,2,3,4].initial()
// [1]
```

``` swift
[1,2,3,4].drop(){$0 % 2 ==0}
// [2,4]
```

``` swift
[1,2,3,4].remove(2)
// [3,4]
```

``` swift
[1,2,3,4,1].numberTimesRepeated(1)
// 2
```

**String functions** 

``` swift
"Swift programming".length
// 17
```

``` swift
"Swift programming"[1]
// w
```

``` swift
"Swift programming"[-4]
// m
```

``` swift
String.join(["S","w","i"])
//Swi
```

``` swift
String.join("S","w","i","f","t")
//Swift
```

``` swift
"Swift programming".split()
//["Swift", "programming"]
```

``` swift
"Swift programming".split(delimiter:"r")
//["Swift p", "og", "amming"]
```

``` swift
"Swift programming".indexOfString("mm")
// 12
```

``` swift
"Swift programming".toCharacterArray()
//["S","w","i","f","t"," ","p","r","o","g","r","a","m","m","i","n","g"]
```

``` swift
"Swift programming".reverse()
//gnimmargorp tfiwS
```

**Swift Sugar (Global functions)** 

``` swift
let x : [(Int,Int)] = zip([1,2,3,4,5], [1,2,3])
// [(1,1),(2,2),(3,3)]
```

### Swift (Global functions)
---

**Array**  

``` swift
[1,2,3].reduce(0){$0 + $1}
//6
```

```swift
var ar = [3,1,2]
ar.sort{$0 < $1}
//[1,2,3]
```

``` swift
[2,3,1].sorted {$0 < $1}
//[1,2,3]
```

``` swift
[1,2,3].map {$0 + 10}
//[11,12,13]
```

``` swift
[1,2,3].reverse()
//[3,2,1]
```

``` swift
[1,2,3,4].filter {$0 % 2 == 0}
//[2,4]
```

**Collections**  
``` swift
minElement([1,2,3,4])
// 1
```

``` swift
manElement([1,2,3,4])
//4
```

``` swift
contains([1,2,3], 3)
//true
```

``` swift
find([5,2,3,1], 1)
//3, return Optional
```

``` swift
//Partition a range into two partially sorted regions
// where items in [start..pivot) < [pivot..end)
var ar = [20, 10, 30, 1, 2, 3]
var pivot = partition(&ar, Range(start:0, end:6))
ar[0..<pivot] //[2, 10, 3, 1]
ar[pivot..<ar.endIndex] // [20, 30]
```

``` swift
var ar = [1, 2, 0, 3, 4, 0, 5, 6, 0, 0]
split(ar) {$0 == 0}
// [[1, 2], [3, 4], [5, 6]]
```

``` swift
startsWith([1,2,3,4,5], [1,2,3])
//true
```















