# EuroScope 标准操作流程

EuroScope standard operating procedure

## 总则

为规范 EuroScope 在 APOCFLY 模拟飞行平台的应用，明确相关操作要求与执行标准，特制定本文件。本文件旨在对[《Flyatcsim EuroScope 扇区使用教程》](../Learning_Center/References/Flyatcsim%20EuroScope扇区使用教程%20v1.2.pdf)进行补充与细化，并结合 APOCFLY 平台实际运行环境，提供具备可操作性的程序指引。

全体 APOCFLY 管制员均应遵循本文件所列之标准操作流程。如在具体情境中遇到与本文件不一致或存在疑问的情况，可在确保安全与协调的前提下，经评估后临时调整执行方式。

若本文件与所引用教程存在差异，应以本文件规定为准。

## 航前准备

每一位管制员在上管之前，都应该查看有关[SOP](#sop)、[Loa](#loa)、[航行资料汇编（航图）](#航图)、[最新的扇区](#扇区)。

### SOP

SOP主要在文档站的SOP专栏可以查看。其次，有部分空域的标准运行规则，我们暂时无法独立完成。因此，请前往：[https://www.vatprc.net/zh-cn/airspace/sop](https://www.vatprc.net/zh-cn/airspace/sop)。

同样的，任何文档都可能产生错误或冲突，请你优先采用本文档站的意见。

!!! Note "注意"

	这并不意味着您可以不看VATPRC出品的SOP了，而是需要两者相结合在一起。

### Loa

Loa部分与SOP同理，您可前往：[https://www.vatprc.net/zh-cn/controller/loa](https://www.vatprc.net/zh-cn/controller/loa)。

Loa主要用于中国大陆与港、澳、台及国际地区移交机组使用的，大部分情况下是向外移交。

### 航图

目前航图有许多方式进行查询，我们最推荐使用eAIP航图及其镜像站。您可前往APOC架设的镜像站：[https://eaip.apocfly.com/](https://eaip.apocfly.com/)

航图需要重点留意的部分：机场细则-跑道运行模式, 低能见度运行模式(极端天气下), 非全跑道起飞距离、进离场航图-TA, TL, (TH)、进近图-截盲高, 复飞高度/程序。

### 扇区

## 安装插件

EuroScope软件在连接至APOCFLY网络前，必须前往：[网盘下载](https://file.apocfly.com/d/apocfly/EuroScope/Plugins/EuroScopeInjector.dll?sign=SMW3cOk_5khRwL3XAVMxbKkZsjfHhjHISt0G0YR69gU=:0) 或 空管中心QQ群内进行插件下载。

部分扇区，例如: [China-Mainland-Sector](https://github.com/Master-Gui-Studio/China-Mainland-Sector)等扇区，已内置此插件，您可能仅需要动动配置文件或不用动任何事即可。

下载完成后，将选择 `EuroScopeInjector.dll` 其放在在任何位置（只要你能找到的）。

打开扇区 -> Other setting -> Plug-ins -> Load -> 选择EuroScopeInjector.dll -> Close

!!! Note "注意了解"

	由于 [EuroScopeInjector.dll](https://file.apocfly.com/d/apocfly/EuroScope/Plugins/EuroScopeInjector.dll?sign=SMW3cOk_5khRwL3XAVMxbKkZsjfHhjHISt0G0YR69gU=:0) 暂时不集成 [Radio Direction Finder](https://github.com/KingfuChan/MTEPlugin-for-EuroScope) 功能，不需要给予插件绘制权限。

## 连接至服务器

![Connection Dialog](./assets/2026-01-11_23-26-55.png)

此部分特别需要注意：

- 在上管前，提前查阅SOP、航图等航前资料，准备好后再上管。
- Callsign处：必须通过"▽"进行席位的**选择**，禁止填写。

!!! Note "注意了解"

	如果是OBS，则将"*_OBS" 改为 "CID_OBS"，此处的CID为注册CID。例如：5516_OBS。

- Realname处：必须填写注册CID、注册昵称、注册邮箱中任意一个（QQ号因在注册时不强制填写，故不作为身份的识别，不能在此处填写）[CoC 2.9](../../General/OPDOC-General-202502-R2-SC/?h=%E5%90%88%E7%90%86%E7%9A%84%E5%90%8D%E7%A7%B0#_5)
- Rating处：按照**管制权限**的最高填写，此处的管制权限特指：OBS-C3。而如果是教员上XXXX_I_XXX，则可以使用I1-I3的最高教员权限进行。请勿在单独上管中填写I1-I3。
  
!!! Tip "总而言之"

	如果您仅是一位管制员，填写最高权限即可。

- CID处：同Realname原则填写。
- Server处：fsd.apocfly.com
- Logoff time处：可留空，填写自己的下管UTC时。格式：HHMM。
- [✓] Connect to VATSIM
- ATC INFO栏：部分扇区默认INFO填写有Hoppie CPDLC Login Code，如果您尚未了解清楚此部分内容，请删去。Hoppie CPDLC 服务器推荐使用[PDASIM]。任何机组使用CPDLC/DCL前，必须向管制员再次询问是否可用。
- Range处：按照[CoC 4.6](../../General/OPDOC-General-202502-R2-SC/?h=%E9%81%B5%E5%BE%AA%E8%A7%86%E7%A8%8B%E8%B7%9D%E7%A6%BB%E8%A7%84%E5%AE%9A#_7)有关范围进行填写

## 连接ATIS

URL链接：

```
http://atis.flyatcsim.club/atis.php?type=B&metar=$metar($atisairportA)&code=$atiscodeA&dep_runway=$deprwy($atisairportA)&arr_runway=$arrrwy($atisairportA)
```

[//]: # (TODO)