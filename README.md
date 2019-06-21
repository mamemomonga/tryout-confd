# confd を試す

confdはいろんなところから設定情報を引っ張ってきて設定ファイルを書き換えてくれるすごいやつだよ。

https://github.com/kelseyhightower/confd

[run.sh](./run.sh) の -e オプションで環境変数を設定した値を、[/etc/confd/conf.d/myconfig.toml](assets/etc/confd/conf.d/myconfig.toml)の設定内容に基づき、[/etc/confd/templates/myconfig.conf.tmpl](assets/etc/confd/templates/myconfig.conf.tmpl)のテンプレートから、/tmp/myconfig.conf を生成します。

## 実行

	$ ./run.sh
	
## 掃除

	$ docker rmi test-confd

