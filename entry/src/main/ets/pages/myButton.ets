@Entry
@Component
struct  myButton {
  private  list:Array<string> = ['测试','测试1','测试2','测试3','测试4','测试5','测试6','测试7']
  build(){
    Stack(){
      List({space:10}){
        ForEach(this.list,(item:string)=>{
          ListItem() {
            Text(`${item}`)
              .width('100%')
              .height(100)
              .fontSize(20)
              .fontColor(Color.White)
              .textAlign(TextAlign.Center)
              .borderRadius(10)
              .backgroundColor(0x007DFF)
          }
        },(item:string)=>item)
      }
      Button('测试按钮')
        .width(60)
        .height(60)
        .position({x: '80%', y: 600})
        .shadow({radius: 10})
    }
  }
}