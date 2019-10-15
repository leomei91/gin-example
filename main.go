package main

import (
	"fmt"
	"syscall"

	"github.com/fvbock/endless"
	"go-gin-example/models"
	"go-gin-example/pkg/gredis"
	"go-gin-example/pkg/logging"
	"go-gin-example/pkg/setting"
	"go-gin-example/pkg/util"
	"go-gin-example/routers"
)

func main() {
	//配置初始化
	setting.Setup()
	//日志初始化
	logging.Setup()
	//数据库初始化
	models.Setup()
	//redis初始化
	gredis.Setup()
	//工具初始化
	util.Setup()
	//软重启
	endless.DefaultReadTimeOut = setting.ServerSetting.ReadTimeout
	endless.DefaultWriteTimeOut = setting.ServerSetting.WriteTimeout
	endless.DefaultMaxHeaderBytes = 1 << 20
	//
	endPoint := fmt.Sprintf(":%d", setting.ServerSetting.HttpPort)
	server := endless.NewServer(endPoint, routers.InitRouter())
	//打印PID
	server.BeforeBegin = func(add string) {
		logging.Info("Actual pid is", syscall.Getpid())
	}
	//启动服务
	logging.Info("开始启动服务器，端口：", setting.ServerSetting.HttpPort)
	err := server.ListenAndServe()
	if err != nil {
		logging.Info("Server err:", err)
	}

}
