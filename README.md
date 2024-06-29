# homework
这个是移动应用开发大作业 项目成员：黄永杰 游景林
1. 克隆仓库
首先，克隆GitHub上的项目仓库到本地计算机：
bash
git clone https://github.com/whaowhaowhao/homework.git
cd homework
2. 配置开发环境
2.1 安装MySQL
确保已安装MySQL数据库。安装后，创建数据库并导入项目提供的数据库文件：
sql
CREATE DATABASE your_database_name;
USE your_database_name;
SOURCE path_to_sql_file.sql;
2.2 配置数据库连接
修改项目的数据库配置文件 application.properties 或 application.yml，设置数据库连接信息：
properties复制代码
spring.datasource.url=jdbc:mysql://localhost:3306/your_database_name
spring.datasource.username=your_username
spring.datasource.password=your_password
2.3 安装Java及相关工具
确保已安装Java开发工具包（JDK），以及Maven或Gradle等构建工具。
2.4 微信开发者工具
下载并安装微信开发者工具，用于调试和预览微信小程序。配置项目的AppID：
json
{
  "appid": "your_appid",
  "projectname": "homework"
}
3. 构建和运行项目
3.1 使用Maven构建项目
在项目根目录下执行以下命令：
bash
mvn clean install
3.2 运行项目
使用Maven命令启动项目：
bash
mvn spring-boot:run
项目将运行在本地服务器（默认端口：8080）。
4. 部署到服务器
如果需要将项目部署到远程服务器，请确保服务器上已安装JDK和Tomcat。
4.1 将项目打包成WAR文件
执行以下命令将项目打包：
bash
mvn package
生成的WAR文件位于 target 目录下。
4.2 部署WAR文件
将生成的WAR文件复制到服务器的Tomcat webapps 目录中，并启动Tomcat服务器。
5. 配置微信小程序后台
在微信公众平台上配置小程序的服务器域名和业务域名，以确保小程序能够正常与后端服务器通信。
6. 其他配置
根据项目需求，可能还需要配置其他相关服务，如Redis缓存、消息队列等。
7. 访问和测试
在浏览器中输入服务器地址访问项目，并使用微信开发者工具预览和调试微信小程序，确保其功能正常。
8. 版本控制
在完成上述步骤并确认项目正常运行后，可以通过Git将最新的代码提交到仓库：
bash
git add .
git commit -m "Initial project setup and deployment"
git push origin main
