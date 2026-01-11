# EuroScope 标准操作流程

EuroScope standard operating procedure

## 总则

为规范 EuroScope 在 APOCFLY 模拟飞行平台的应用，明确相关操作要求与执行标准，特制定本文件。本文件旨在对[《Flyatcsim EuroScope 扇区使用教程》](../Learning_Center/References/Flyatcsim%20EuroScope扇区使用教程%20v1.2.pdf)进行补充与细化，并结合 APOCFLY 平台实际运行环境，提供具备可操作性的程序指引。

全体 APOCFLY 管制员均应遵循本文件所列之标准操作流程。如在具体情境中遇到与本文件不一致或存在疑问的情况，可在确保安全与协调的前提下，经评估后临时调整执行方式。

若本文件与所引用教程存在差异，应以本文件规定为准。

### 航前准备

未完待续...

### 安装插件

连接至APOCFLY网络前，必须前往：[网盘下载](https://file.apocfly.com/d/apocfly/EuroScope/Plugins/EuroScopeInjector.dll?sign=SMW3cOk_5khRwL3XAVMxbKkZsjfHhjHISt0G0YR69gU=:0) 或 空管中心QQ群内进行插件下载。部分扇区，例如: China-Mainland-Sector等扇区。

下载完成后，将其放在在任何位置。

打开扇区-> Other setting -> Plug-ins -> Load -> 选择EuroScopeInjector.dll -> Close

!!! Note "注意了解"

	由于 EuroScopeInjector.dll 暂时不集成Radio Direction Finder功能，不需要给予插件绘制权限。

### 连接至服务器

![Connection Dialog](./assets/2026-01-11_23-26-55.png)

此部分特别需要注意：

- 在上管前，提前查阅SOP、航图等航前资料，准备好后再上管。
- Callsign处：必须通过"▽"进行席位的选择，禁止填写。
- Realname处：必须填写注册CID、注册昵称、注册邮箱中任意一个（QQ号因在注册时不强制填写，故不作为身份的识别，不能在此处填写）
- Rating处：按照__管制权限__的最高填写，此处的管制权限特指：OBS-C3。而如果是教员上XXXX_I_XXX，则可以使用I1-I3的最高教员权限进行。请勿在单独上管中填写I1-I3。
- CID处：同Realname原则填写。
- Server处：fsd.apocfly.com
- Logoff time处：可留空，填写自己的下管UTC时。
- [✓] Connect to VATSIM
- ATC INFO栏：部分扇区默认INFO填写有Hoppie CPDLC Login Code，如果您尚未了解清楚此部分内容，请删去。Hoppie CPDLC 服务器推荐使用 [PDASIM]。任何机组使用CPDLC/DCL前，必须向管制员再次询问是否可用。
- Range处：按照[CoC 4.6](../../General/OPDOC-General-202502-R2-SC/?h=%E6%AD%A3%E7%A1%AE%E7%9A%84%E5%B8%AD%E4%BD%8D%E5%90%8D%E7%A7%B0#_7)有关范围进行填写

### 连接ATIS

URL链接：http://atis.flyatcsim.club/atis.php?type=B&metar=$metar($atisairportA)&code=$atiscodeA&dep_runway=$deprwy($atisairportA)&arr_runway=$arrrwy($atisairportA)

未完待续...