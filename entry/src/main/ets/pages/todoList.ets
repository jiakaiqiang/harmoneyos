import router from '@ohos.router'
@Entry
@Component
struct todo {
  @State list:Array<string> = ['测试','侧石','测试2','测试三','测试4']
  @State name:string = (router.getParams() as Record<string, string>)['name']
  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  build(){
    Column(){
      List({ space: 10 }) {
        ForEach(this.arr, (item: number) => {
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
        }, (item:string) => item)
      }
     Text(this.name)
       .fontWeight(FontWeight.Bold)
       .fontColor(Color.Blue)

      ForEach(this.list,(item:string)=>{
        Text(item)
          .fontSize('20')
          .fontColor(Color.Pink)
          .fontWeight(FontWeight.Bold)
          .backgroundColor(Color.Red)
      })
      Button('返回')
        .onClick(()=>{

          // router.enableBackPageAlert({
          //           //   message: '返回的提示信息'
          //           // });
          router.back()
        })
    }

  }
}
