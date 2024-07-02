//测试localStorage localStorageProp  localStorageLink    //页面级别的ui 状态存储状态
//localStorageProp 单项数据流  其组件中值的修改不会引起localStorage对应key 值的变化
//localStorageLink 双向数据流 其中组件中值的修改会引起localStorage对应key值的变化  不建议使用   建议使用事件线的方式取处理
//页面内的数据共享 得放在@Entry(storage)中导入 才能实现   被@Entery 修饰的组件 是ui入口组件
interface dataType {
  name:string
}
let para:dataType  ={name:'测试'};
let storage =  new LocalStorage(para)
@Component
struct customChild {
  @LocalStorageLink('name') textName:string = '测试双向绑定'   //双向绑定  兄弟组件之间的数据共享
  build(){
   Column(){
     Text(this.textName)
     Button('修改值')
       .onClick(()=>{
         this.textName='双向绑定的值'
       })
   }
  }

}

//测试localStorageProp

@Entry(storage) //传入后供页面共享
@Component
struct  customLocalStorage {
  @LocalStorageProp('name') testName:string =  '测试111'   //初始值 如果localStorage中的name没有值的话则取的是初始的值

  build(){
    Column(){
      Text('测试prop')
      Text(this.testName)
      Button('prop')
        .onClick(()=>{
          this.testName = 'text'
        })
      customChild()

    }
  }

}








