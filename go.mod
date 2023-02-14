module go-gin-example

go 1.13

require (
	github.com/360EntSecGroup-Skylar/excelize v1.3.1-0.20180527032555-9e463b461434
	github.com/EDDYCJY/go-gin-example v0.0.0-20191007083155-a98c25f2172a
	github.com/OwnLocal/goes v1.0.0 // indirect
	github.com/astaxie/beego v1.12.2
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/fvbock/endless v0.0.0-20170109170031-447134032cb6
	github.com/gin-gonic/gin v1.4.0
	github.com/go-ini/ini v1.48.0
	github.com/go-openapi/jsonreference v0.19.3 // indirect
	github.com/go-openapi/spec v0.19.3 // indirect
	github.com/gomodule/redigo v2.0.1-0.20180401191855-9352ab68be13+incompatible
	github.com/jinzhu/gorm v1.9.11
	github.com/mailru/easyjson v0.7.0 // indirect
	github.com/mattn/go-isatty v0.0.10 // indirect
	github.com/siddontang/go v0.0.0-20180604090527-bdc77568d726 // indirect
	github.com/siddontang/ledisdb v0.0.0-20181029004158-becf5f38d373 // indirect
	github.com/swaggo/gin-swagger v1.1.0
	github.com/swaggo/swag v1.4.0
	github.com/tealeg/xlsx v1.0.4-0.20180419195153-f36fa3be8893
	github.com/ugorji/go v1.1.7 // indirect
	github.com/unknwon/com v1.0.1
	golang.org/x/net v0.0.0-20191011234655-491137f69257 // indirect
	google.golang.org/appengine v1.6.5 // indirect
)

replace (
	go-gin-example/conf => /data/golang/go-gin-example/pkg/conf
	go-gin-example/middleware => /data/golang/go-gin-example/middleware
	go-gin-example/models => /data/golang/go-gin-example/models
	go-gin-example/pkg/app => /data/golang/go-gin-example/pkg/app
	go-gin-example/pkg/file => /data/golang/go-gin-example/pkg/file
	go-gin-example/pkg/gredis => /data/golang/go-gin-example/pkg/gredis
	go-gin-example/pkg/setting => /data/golang/go-gin-example/pkg/setting
	go-gin-example/pkg/util => /data/golang/go-gin-example/pkg/util
	go-gin-example/routers => /data/golang/go-gin-example/routers
)
