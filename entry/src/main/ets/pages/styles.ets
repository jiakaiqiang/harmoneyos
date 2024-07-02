
//定义全局的style   @style 只能在当前的组件中使用  并且不支持参数
@Styles function  myStyles() {
  .height(100)
  .width(100)
  .backgroundColor(Color.Pink)

}







@Entry
@Component
struct myStyle  {
   build(){
     Column(){
       Text('我是全局的样式')
         .myStyles()
       Text('我是全局共享样式').myStyles()

     }
   }
}