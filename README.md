# vim

## 1. mv vim/script/vimrc ~/.vimrc

## 2. mv vim ~/.vim

## 3. git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle

## 4. 安装插件

> 打开vim，运行 ":BundleInstall"

> 或 在shell中直接运行 "vim +BundleInstall +qall"

## 5. Taglist
- 安装：

> 1.下载taglist_xx.zip

> 2.将taglist.zip文件解压至~/.vim文件夹下

> 3.命令行中切换当前路径至~/.vim/doc文件夹，进入vim后执行命令 ":helptags ."

> 4.也可以在任意文件夹下，进入vim后执行命令 ":helptags ~/.vim/doc"

- 变量设置：

> Tlist_GainFocus_On_ToggleOpen : 为1则使用TlistToggle打开标签列表窗口后会获焦点至于标签列表窗口；为0则taglist打开后焦点仍保持在代码窗口

> Tlist_Auto_Open : 为1则Vim启动后自动打开标签列表窗口

> Tlist_Close_On_Select : 选择标签或文件后是否自动关闭标签列表窗口

> Tlist_Exit_OnlyWindow : Vim当前仅打开标签列表窗口时，是否自动退出Vim

> Tlist_Use_SingleClick : 是否将默认双击标答打开定义的方式更改为单击后打开标签

> Tlist_Auto_Highlight_Tag : 是否高亮显示当前标签。命令":TlistHighlightTag"也可达到同样效果

> Tlist_Highlight_Tag_On_BufEnter : 默认情况下，Vim打开/切换至一个新的缓冲区/文件后，标签列表窗口会自动将当前代码窗口对应的标签高亮显示。TlistHighlight_Tag_On_BufEnter置为0可禁止以上行为

> Tlist_Process_File_Always : 为1则即使标签列表窗口未打开，taglist仍然会在后台处理vim所打开文件的标签

> Tlist_Auto_Update : 打开/禁止taglist在打开新文件或修改文件后自动更新标签。禁止自动更新后，taglist仅在使用:TlistUpdate,:TlistAddFiles，或:TlistAddFilesRecursive命令后更新标签

> Tlist_File_Fold_Auto_Close : 自动关闭标签列表窗口中非激活文件/缓冲区所在文档标签树，仅显示当前缓冲区标签树

> Tlist_Sort_Type : 标签排序依据，可以为"name"（按标签名排序）或"order"（按标签在文件中出现的顺序，默认值）

> Tlist_Use_Horiz_Window : 标签列表窗口使用水平分割样式

> Tlist_Use_Right_Window : 标签列表窗口显示在右侧（使用垂直分割样式时）

> Tlist_WinWidth : 设定水平分割时标签列表窗口的宽度

> Tlist_WinHeight : 设定垂直分割时标签列表窗口的高度

> Tlist_Inc_Winwidth : 显示标签列表窗口时允许/禁止扩展Vim窗口宽度

> Tlist_Compact_Format : 减少标签列表窗口中的空白行

> Tlist_Enable_Fold_Column : 是否不显示Vim目录列

> Tlist_Display_Prototype : 是否在标签列表窗口用标签原型替代标签名

> Tlist_Display_Tag_Scope : 在标签名后是否显示标签有效范围

> Tlist_Show_Menu : 在图型界面Vim中，是否以下拉菜单方式显示当前文件中的标签

> Tlist_Max_Submenu_Item : 子菜单项上限值。如子菜单项超出此上限将会被分隔到多个子菜单中。缺省值为25

> Tlist_Max_Tag_Length : 标签菜单中标签长度上限

- 快捷键：

> `<CR>  代码窗口跳转到标签列表窗口中光标所在标签定义处`

> `o  在新建代码窗口中跳转到标签列表窗口中光标所在标签定义处`

> `P  跳转至上一个窗口的标签处`

> `p  代码窗口中内容跳转至标签定义处，光标保持在标签列表窗口中`

> `t  在Vim新标签窗口中跳转至标签定义处。如文件已经在Vim标签窗口中打开，则跳转至此标签窗口`

> `Ctrl-t  在Vim新标签窗口处跳转至标签定义处`

> `: 显示光标当前所在标签原型。对文件标签，显示文件的全路径名，文件类型和标签数量。对标签类型(指如variable/function等类别)，显示标签类型和拥有标签的数量;对函数/变量等普通标签，显示其定义的原型`

> `u  更新标签列表窗口中的标签信息`

> `s  切换标签排序类型(按名称序或出现顺序)`

> `d  移除当前标签所在文件的所有标签`

> `x  扩展/收缩标签列表窗口`

> `+  展开折叠节点*`

> `-  折叠结点*`

> `*  展开所有结点`

> `=  折叠所有节点`

> `[[  跳转至上一个文件标签的头部`

> `<Backspace>  跳转至上一个文件标签头部`

> `]]  跳转至下一个文件标签头部`

> `<Tab>  跳转至下一个文件标签头部`

> `q  关闭标签列表窗口`

> `F1  显示帮助**`

## 6. Go
- 安装 go.tools Binaries 二进制工具：

> `在vim下输入:GoInstallBinaries 会自动安装相关工具，安装后会在GOPATH目录下的bin文件夹里面`

- 编辑：

> `新起一行输入fmt.，然后ctrl+x, ctrl+o，Vim 会弹出补齐提示下拉框，不过并非实时跟随的那种补齐，这个补齐是由gocode提供的。`

> `输入一行代码：time.Sleep(time.Second)，执行:GoImports，Vim会自动导入time包。`

> `将光标移到Sleep函数上，执行:GoDef或命令模式下敲入gd，Vim会打开$GOROOT/src/time/sleep.go中 的Sleep函数的定义。执行:b 1返回到hellogolang.go。`

> `执行:GoLint，运行golint在当前Go源文件上。`

> `执行:GoDoc，打开当前光标对应符号的Go文档。`

> `执行:GoVet，在当前目录下运行go vet在当前Go源文件上。`

> `执行:GoRun，编译运行当前main package。`

> `执行:GoBuild，编译当前包，这取决于你的源文件，GoBuild不产生结果文件。`

> `执行:GoInstall，安装当前包。`

> `执行:GoTest，测试你当前路径下地_test.go文件。`

> `执行:GoCoverage，创建一个测试覆盖结果文件，并打开浏览器展示当前包的情况。`

> `执行:GoErrCheck，检查当前包种可能的未捕获的errors。`

> `执行:GoFiles，显示当前包对应的源文件列表。`

> `执行:GoDeps，显示当前包的依赖包列表。`

> `执行:GoImplements，显示当前类型实现的interface列表。`

> `执行:GoRename [to]，将当前光标下的符号替换为[to]。`
