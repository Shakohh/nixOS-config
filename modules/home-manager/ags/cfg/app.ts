import { App } from "astal/gtk3"
import style from "./style.scss"
import Bar from "./widget/Bar"
import Panel from "./widget/Panel"

App.start({
  css: style,
  main() {
    App.get_monitors().forEach((v, i) => {
      Bar(v, i)
      Panel(i)
    })
  },
})