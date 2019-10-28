# Stanford Learning Swift
![](https://img.shields.io/badge/Language-Swift%205.1-blue) ![](https://img.shields.io/badge/Platform-iOS-blue) ![](https://img.shields.io/badge/Version-v0.0.1-blue) ![](https://img.shields.io/badge/Support-Stanford%20University-970022)
![](https://img.shields.io/badge/Weibo-%E5%86%B7%E9%B8%A3%E8%BD%A9-green?logo=Sina%20Weibo&style=plastic)

![](https://gss0.bdstatic.com/-4o3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike150%2C5%2C5%2C150%2C50/sign=1319d9a8bf99a9012f3853647cfc611e/0df3d7ca7bcb0a46fe368e856c63f6246b60af71.jpg)

## NOTE

### 1.didset[->](https://github.com/LengMingxuan/stanford_learning_swift/blob/master/stanford_learning_swift/ViewController.swift)
```SWIFT
didset{
//'didset‘可以让此属性在用到他的时候执行didset内的指令
}
```
e.g.
```swift
 var flipCount: Int = 0
        {didSet {//'didset‘可以让此属性在用到他的时候执行didset内的指令
            flipCountLabel.text = "点击: \(flipCount)"//每次‘flipCount’变量的数据发生改变时都会执行Label的内容加一
        }
```
每次变量'flipCount'的数值改变时，都会执行'didset'内的指令，这样可以有效的减少代码的数量已经放置大规模修改代码
