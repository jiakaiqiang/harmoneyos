@Entry
@Component
struct swipter{
  build() {
    Swiper() {
      Text("0")
        .width('100%')
        .height('100%')
        .backgroundColor(Color.Gray)
        .textAlign(TextAlign.Center)
        .fontSize(30)
      Text("1")
        .width('100%')
        .height('100%')
        .backgroundColor(Color.Pink)
        .textAlign(TextAlign.Center)
        .fontSize(30)

    }
    .indicatorStyle({
      size: 30,
      left: 0,
      color: Color.Pink

    })
  }
}