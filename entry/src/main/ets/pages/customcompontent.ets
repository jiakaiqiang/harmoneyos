@Component
export  struct myCustomComonents {
  build(){
    
    Column(){
      Text('自定义组件')
        .fontColor($r('app.color.jkq_test_color'))
    }
  }
}
