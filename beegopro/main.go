package main

import (
	_ "beeblog/routers"
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
)

func main() {
	dataSource := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=utf8mb4&parseTime=true&loc=Local", beego.AppConfig.String("db_username"), beego.AppConfig.String("db_password"), beego.AppConfig.String("db_host"), beego.AppConfig.String("db_port"), beego.AppConfig.String("db_database"))
	orm.Debug = true
	err := orm.RegisterDataBase("default", "mysql", dataSource)
	if err != nil {
		panic(err)
	}
	beego.Run()
}
