#!/bin/sh
pwd=`pwd`
for f in '01-Business' '02-Management' '03-Requirements' '04-Archetype' '05-Design' '06-Release' '07-Deploy' '08-Test' '09-Learning'
do 
    mkdir $pwd/$f
done

echo '# ${项目名称}\n\n## 文件夹说明\n\n1.  01-Business 项目业务文件夹，前期市场资料，客户资料\n2.  02-Management 项目管理文件夹，包括计划\方案\会议记录等管理文档\n3.  03-Requirements 项目需求文档， 包括功能清单\需求分析\等分析文档\n4.  04-Archetype 项目原型设计， 包括功能原型\UI 设计等设计文档\n5.  05-Design 项目设计文档， 包括数据库物理设计\业务逻辑\概要设计\详细设计设计文档\n6.  06-Release 项目发布文件夹, 包括生产服务器的链接方式\生产配置文件\以及相关的工具\n7.  07-Deploy 项目部署文件夹, 包括部署文档\部署工具\部署脚本等工具\n8.  08-Test 项目测试文件夹, 包括测试文档\测试工具\测试脚本等资料\n9.  09-Learning 业务和技术学习参考手册文件夹\n' > $pwd/Readme.md