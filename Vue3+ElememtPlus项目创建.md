## Vue3部分
### 注意: 需要安装Nodejs和npm

#### 执行命令会出现一堆选择，一路回车到输入项目位置，假设输入项目名 TestVue
```
npm create vue@latest
```
#### 创建完成后试运行
```
cd TestVue
npm install
npm run dev
```

## ElementPlus部分
### 注意: 需要引入模块才会生效

#### 进入到 Vue项目，安装ElementPlus会放入项目模块中
```
cd TestVue
npm install element-plus --save

```

#### 打开Vue项目的 ./src/main.js 文件,加入如下内容
```
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
app.use(ElementPlus)
```

#### 完整 ./src/main.js 文件如下

```
import './assets/main.css'
import { createApp } from 'vue'
import App from './App.vue'
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'

const app = createApp(App)
app.use(ElementPlus)
app.mount('#app')
```


