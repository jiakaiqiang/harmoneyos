
//自定义全局函数---- 一般使用引用传参 这样数据是响应式的值传参 数据式非响应式的

/// @BuilderParams 则表示的我们通过父组件给子组件通过参数传递的方式将函数作为参数进行传递  传递过来的函数必须式用于修饰@builder函数的
// @BuilderParams 中的参数和@builder的参数保持一致
/**
 * 举例：
 *  @Builder function PararmFun($$:{label:string}){
 *     Text(`${$$.label}`)
 *
 * }
 *
 *
 * @component
* struct child {
 *  @builder mytestFn(){}
 *  @builderParam mytestFnParam :()=> void = this.mytestFn
 *  @builderParam mytestFnjkq:()=>void = PararmFun
 *  build(){
 *    Colnum(){
 *   this.mytestFnParam() //无参
 *   this.mytestFnParam()
 *   this.mytestFnjkq({label:"jkq"}) //打印jkq   在子组件中传递参数
 *
 *   }
 * }
 *
 *
 * }
 *
 *
 *
 *
 */

/




@Builder function myTestFun($$:{name:string,age:number}){
   Text(`我是全局${$$.name}-${$$.age}`)
}



@Entry
@Component
//定义组件内部的函数


struct myBuilder {
  @Builder myTestContentFn(){
 Text('我是内部')
  }
  build(){
    Column(){
      myTestFun({name:"jkq",age:12})
      this.myTestContentFn()
    }
  }
}
