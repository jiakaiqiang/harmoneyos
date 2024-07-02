import {myCustomComonents} from './customcompontent'
import router from '@ohos.router'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {

        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('click ME')
          .onClick(()=>{
            this.message='我是改变后的值'
            router.pushUrl({
              url: 'pages/todoList', // 目标url
              params:{
                name:this.message
              }

            }, (err) => {
              if (err) {
                console.error(`Invoke pushUrl failed, code is ${err.code}, message is ${err.message}`);
                return;
              }
              console.info('Invoke pushUrl succeeded.');
            })
          })
        Button('层叠布局')
          .onClick(()=>{
            router.pushUrl({
              url:"pages/Cascade"
            })
          }).margin('12px')
        Button('创建轮播图')
          .onClick(()=>{
            router.pushUrl({
              url:"pages/swiper"
            })
          })
        Button('测试按钮')
          .onClick(()=>{
            router.pushUrl({
              url:'pages/myButton'
            })
          }).margin('12px')
        Button('跳转地图')
          .onClick(()=>{
            router.pushUrl({
              url:'pages/map'
            })
          }).margin('12px')
        Button('测试样式')
          .onClick(()=>{
            router.pushUrl({
              url:'pages/customStyle'
            })
          })
        Button('测试父子组件')
          .onClick(()=>{
            router.pushUrl({
              url:'pages/componentsChat'
            })
          }).margin('10px')
        Button('测试localStorage')
          .onClick(()=>{
            router.pushUrl({
              url:'pages/localStorage'
            })
          }).margin('10px')
      }
      .width('50%')
      Column(){
        myCustomComonents()
      }
      .width('50%')

    }
    .height('100%')
  }
}