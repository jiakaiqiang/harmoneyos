// 子组件
@Component
struct childComponet {
  @Link name:string; //子组件可修改父组件的数据  @Prop 子组件不能修改父组件的数据
  build(){
   Column(){
     Text('wefwef')
     Text('我是子组件:'+this.name)

     Button('children')
       .onClick(()=>{
         this.name = '子组件修改值'
       })
     childchildComponet()

   }
  }
}

@Component
struct childchildComponet{
  @Consume name:String    //后代组件中可以通过同名的变量名称使用 并切这种是双向的数据绑定
  build(){
    Column(){
      Text('子代选择器：'+ this.name)
      Button('修改子代选择器')
        .onClick(()=>{
          this.name = '子代选择器'
        })
    }
  }
}

@Entry
@Component
struct myCutomComponentChat{
  @Provide  name:string =  '测试'    //@Provide 父组件提供响应式的数据
  build(){
    Row(){
      Text('父组件:'+this.name)
      childComponet({name:this.name})
      Button('clkc')
        .onClick(()=>{
          this.name =  '改变后的名称'
        })
    }
  }



}