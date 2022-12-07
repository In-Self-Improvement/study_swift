#  TIL


### 221207 오늘의 학습

```swift
struct ContentView: View {
    @State
    private var isTrue: Bool = false;
    var body: some View {
        VStack{
            increaseView().padding(isTrue ? 50 : 0).background(isTrue ? Color(.blue) : Color(.white)).foregroundColor(isTrue ? .red : .black)
            increaseView()
            increaseView()
        }.onTapGesture{self.isTrue.toggle()}
    }
}
```
오늘 한 것
클릭하면 배경색, 패딩 값 변하는 것
오늘 배운 것 State
변수 선언
background Color 

