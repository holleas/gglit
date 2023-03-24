# xray for Glitch

## 项目特点

* 本项目用于在 [Glitch](https://glitch.com/) 免费服务上部署 vmess / vless / trojan / shadowsocks 节点
* 部署完成如发现不能上网，请检查域名是否被墙，可使用 Cloudflare CDN 或者 worker 解决。

## 部署

* 注册 [Glitch](https://glitch.com/)，创建一个 Blank Node 项目
* 将 server.js 进行混淆加密 （可在此网站 https://www.obfuscator.io/ 进行加密），并将此项目下载下来并上传 （除 README.md 和 LICENCE）
* 在 config.json 的 14、52、69、100、128 和 157 行修改 UUID，可在 https://www.uuidgenerator.net/ 生成
* 需要应用的 URL 参数
  |      命令     | 是否必须 |     说明    |
  | ------------ | -------- | ----------- |
  | <URL>/start  |    是    |  运行 xray  |
  | <URL>/status |    否    | 查看后台进程 |

## 免责声明

* 本程序仅供学习了解, 非盈利目的，请于下载后 24 小时内删除, 不得用作任何商业用途, 文字、数据及图片均有所属版权, 如转载须注明来源。
* 使用本程序必循遵守部署免责声明。使用本程序必循遵守部署服务器所在地、所在国家和用户所在国家的法律法规, 程序作者不对使用者任何不当行为负责。

## 赞助

爱发电：https://afdian.net/a/Misaka-blog

![afdian-MisakaNo の 小破站](https://user-images.githubusercontent.com/122191366/211533469-351009fb-9ae8-4601-992a-abbf54665b68.jpg)