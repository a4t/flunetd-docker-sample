# flunetd-docker-sample

## データ作成スクリプト起動

ファイルにデータが書き込まれるのをtailで確認する

```
$ docker run --rm -d -v $(pwd):/flunetd-docker-sample andyneff/uuidgen /flunetd-docker-sample/entrypoint.sh
$ tail -f data/logs/sensor.log
```

## Fluentd起動

fluentdがファイルのデータを読み込んでJSON型に書き換えながらOutputをするのを確認する

```
$ docker run --rm -v $(pwd):/flunetd-docker-sample -v $(pwd)/fluent.conf:/fluentd/etc/fluent.conf fluent/fluentd:v1.11.2-1.0
```
