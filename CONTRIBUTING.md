# 贡献指南

Contribution Guidelines



## User Guide / 使用指南

### Python 库

#### 基础库

| Package  | Version |
| -------- |---------|
| zensical | 0.0.11  |

#### 依赖库

```
click==8.3.1
colorama==0.4.6
deepmerge==2.0
Markdown==3.10
Pygments==2.19.2
pymdown-extensions==10.17.1
PyYAML==6.0.3
```

####  部署教程

##### 一、使用 `zensical` 进行部署

1. 确保有python环境(>=3.12)

2. 克隆本项目到本地
   ```shell
   git clone https://github.com/apocfly/Operating-document.git
   ```

3. 创建虚拟环境 
   你也可以使用conda或者pdm之类的包管理软件, 这里我们使用python原生的venv做示范
    ```shell
    python -m venv ./.venv
    ```

4. 激活虚拟环境
   ```cmd
   ; cmd
   .\.venv\Scripts\activate.bat
   ```
   ```powershell
   ; powershell
   .\.venv\Scripts\activate
   ```

5. 安装所需的库
   ```shell
   pip install -r requirements.txt
   ```

6. 运行开发服务器
   ```shell
   zensical serve
   ```

7. 进行编写

##### 二、使用bat脚本部署

1. 运行项目根目录下的`DevEnv-Launcher.bat`一键配置环境及打开Vscode

2. 运行开发服务器
   ```shell
   zensical serve
   ```

3. 进行编写

##### 三、生成 `requirements.txt`

1. 安装freeze
   ```shell
   pip freeze
   ```

2. 生成requirements.txt
   ```shell
   pip freeze > requirements.txt
   ```

##### 四、更新 `zensical`

1. 前往 [`Zensical` Github releases](https://github.com/zensical/zensical/releases) 查看版本

2. 更新`zensical`
   ```shell
   pip install --upgrade --force-reinstall zensical
   ```

3. 参考[生成requirements.txt](#requirementstxt)，更新requirements.txt

### 文件分类的说明

本文档站有许多分文件夹，以下将讲述他们的用途，这些文件夹均在`/docs`内：

```markdown
General - 总则，通适用于任何用户的文件
CTD - 管制员训练部，培训管制员所用到的材料等
	Learning_Center - 学习中心，培训管制员所用到的一些理论资料
PTD - 飞行员训练部，培训飞行员所用到的材料等
	Learning_Center - 学习中心，培训飞行员所用到的一些理论资料
Document - 文档，存放上述Markdown文件的docs、pdf格式文件
```



---



## Repository Community / 仓库社区

###  讨论(Discussions)

[仓库讨论专栏](https://github.com/apocfly/Operating-document/discussions)，您可以在此进行一些讨论、请教，我们会第一时间进行回复。

![Discussions](./assets/discussions.png)

### 议题(Issues)

[议题专栏](https://github.com/apocfly/Operating-document/issues/new/choose)，您可以在此对仓库提供一些有建设性的建议，例如：

- Bug 报告：汇报文档中存在的错误、失效链接或技术问题
- 文档改进：帮助完善现有文档内容，提升文档质量
- 功能增强：对现有功能提出优化建议
- 功能申请：申请添加全新的功能或内容模块

![Issues](./assets/issues.png)

### 发展路线图(Roadmap)

[项目专栏](https://github.com/orgs/apocfly/projects/2)，您可以再次查阅我们的[Issues](#)完成情况，及我们下一步的发展路线

![Projects](./assets/projects.png)



---



## Code of Conduct / 社区行为准则(贡献者公约)

您可以查看Markdown文件版本，[在此查看](./CODE_OF_CONDUCT.md)

### 我们的承诺

身为社区成员、贡献者和领袖，我们承诺使社区参与者不受骚扰，无论其年龄、体型、可见或不可见的缺陷、族裔、性征、性别认同和表达、经验水平、教育程度、社会与经济地位、国籍、相貌、种族、种姓、肤色、宗教信仰、性倾向或性取向如何。

我们承诺以有助于建立开放、友善、多样化、包容、健康社区的方式行事和互动。

### 我们的准则

有助于为我们的社区创造积极环境的行为例子包括但不限于：

* 表现出对他人的同情和善意
* 尊重不同的主张、观点和感受
* 提出和大方接受建设性意见
* 承担责任并向受我们错误影响的人道歉
* 注重社区共同诉求，而非个人得失

不当行为例子包括：

* 使用情色化的语言或图像，及性引诱或挑逗
* 嘲弄、侮辱或诋毁性评论，以及人身或政治攻击
* 公开或私下的骚扰行为
* 未经他人明确许可，公布他人的私人信息，如物理或电子邮件地址
* 其他有理由认定为违反职业操守的不当行为

### 责任和权力

社区领袖有责任解释和落实我们所认可的行为准则，并妥善公正地对他们认为不当、威胁、冒犯或有害的任何行为采取纠正措施。

社区领导有权力和责任删除、编辑或拒绝或拒绝与本行为准则不相符的评论（comment）、提交（commits）、代码、维基（wiki）编辑、议题（issues）或其他贡献，并在适当时机知采取措施的理由。

### 适用范围

本行为准则适用于所有社区场合，也适用于在公共场所代表社区时的个人。

代表社区的情形包括使用官方电子邮件地址、通过官方社交媒体帐户发帖或在线上或线下活动中担任指定代表。

### 监督

辱骂、骚扰或其他不可接受的行为可通过 [插入联系方式] 向负责监督的社区领袖报告。 所有投诉都将得到及时和公平的审查和调查。

所有社区领袖都有义务尊重任何事件报告者的隐私和安全。

### 处理方针

社区领袖将遵循下列社区处理方针来明确他们所认定违反本行为准则的行为的处理方式：

#### 1. 纠正

**社区影响**：使用不恰当的语言或其他在社区中被认定为不符合职业道德或不受欢迎的行为。

**处理意见**：由社区领袖发出非公开的书面警告，明确说明违规行为的性质，并解释举止如何不妥。或将要求公开道歉。

#### 2. 警告

**社区影响**：单个或一系列违规行为。

**处理意见**：警告并对连续性行为进行处理。在指定时间内，不得与相关人员互动，包括主动与行为准则执行者互动。这包括避免在社区场所和外部渠道中的互动。违反这些条款可能会导致临时或永久封禁。

#### 3. 临时封禁

**社区影响**: 严重违反社区准则，包括持续的不当行为。

**处理意见**: 在指定时间内，暂时禁止与社区进行任何形式的互动或公开交流。在此期间，不得与相关人员进行公开或私下互动，包括主动与行为准则执行者互动。违反这些条款可能会导致永久封禁。

#### 4. 永久封禁

**社区影响**：行为模式表现出违反社区准则，包括持续的不当行为、骚扰个人或攻击或贬低某个类别的个体。

**处理意见**：永久禁止在社区内进行任何形式的公开互动。

### 参见

本行为准则改编自 [Contributor Covenant][homepage] 2.1 版, 参见 [https://www.contributor-covenant.org/version/2/1/code_of_conduct.html][v2.1]。

社区处理方针灵感来源于 [Mozilla's code of conduct enforcement ladder][Mozilla CoC]。

有关本行为准则的常见问题的答案，参见 [https://www.contributor-covenant.org/faq][FAQ]。 其他语言翻译参见 [https://www.contributor-covenant.org/translations][translations]。

---



## 后记

🎉🎉🎉感谢您的贡献！🎉🎉🎉



[homepage]: https://www.contributor-covenant.org
[v2.1]: https://www.contributor-covenant.org/version/2/1/code_of_conduct.html
[Mozilla CoC]: https://github.com/mozilla/diversity
[FAQ]: https://www.contributor-covenant.org/faq
[translations]: https://www.contributor-covenant.org/translations