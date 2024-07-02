//全局的样式写在最前面
@Styles function functionName() {
  .width('200px')
  .height('300px')
  .backgroundColor(Color.Pink)
  .borderColor(Color.Blue)
  .alignSelf(ItemAlign.Center)



}
@Extend(Text)function test(){
  .fontColor(Color.White)
}
@Entry
@Component
/*定义全局的样式*/

struct myCustom {
  //定义在组件内部的
  @Styles lineCutom (){
    .width('100px')
    .height('100px')
    .backgroundColor(Color.Green)
  }

  build(){
    Column(){
      Text('自定义颜色')
      Flex(){
       Text('fewfwfe')
         .test()
        Row(){
          Text('jia')

        }.lineCutom()
      }.functionName()
      Button('测试动态的样式')
        .stateStyles({
          normal: {
            .backgroundColor(Color.Blue)
          },
          focused:{
            .backgroundColor(Color.Red)
          }
        })
    }
  }
}


