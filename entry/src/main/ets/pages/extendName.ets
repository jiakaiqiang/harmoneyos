//通过extend装饰求装饰 系统自带的组件比如 Text Button 等
//extend 可以传递参数 参数可以是函数也可以是变量
//函数类型的

@Extend(Text)  function markText(onclick:()=>void){
  .backgroundColor(Color.Pink)
  .onClick(onclick)
}

// 变量类型的
@Extend(Button) function myButton(myColor:string,onClick:()=>void){
  .backgroundColor(myColor).onClick(onClick)

}



 @Entry
 @Component
  struct  myExtend {
   @State myColor:string =  'red'

   build(){
    Column(){
      Text('修饰后的文本').markText(()=>{
        console.log('我是修饰后的数据')

      })
      Button('测试').myButton(this.myColor,()=>{this.myColor='blue'})
    }


   }
 }