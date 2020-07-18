#!/usr/bin/env bash
go get github.com/beego/bee@4637afa
bee new beeblog

cat > /root/beeblog/beegopro.toml <<TEXT
dsn = "root:@tcp(mysql:3306)/beeblog"
proType = "ant4"
[models.blog]
    names = ["name","content","created_at","updated_at"]
    orms = ["string","string","datetime","datetime"]
    comments = ["名称","内容","创建时间","更新时间"]
[path]
    beego =  "."
    ant  = "./ant/src/pages"
TEXT
