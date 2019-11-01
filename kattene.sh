#!/bin/bash

echo "タイトルを入力してね"
read title

echo "説明を入力してね"
read description

echo "画像のURLを入力してね"
read img_url

echo "Amazon linkを入力してね"
read amazon_url

echo "Rakuten linkを入力してね"
read rakuten_url

echo -n '[kattene]'
echo -n '{'
echo -n "\"image\": \"$img_url\","
echo -n "\"title\": \"$title\","
echo -n "\"description\": \"$description\","
echo -n '"sites": ['
echo -n '{'
echo -n '"color": "orange",'
echo -n "\"url\": \"$amazon_url\","
echo -n '"label": "Amazon",'
echo -n '"main": "true"'
echo -n '},'
echo -n '{'
echo -n '"color": "red",'
echo -n "\"url\": \"$rakuten_url\","
echo -n '"label": "楽天"'
echo -n '}'
echo -n ']'
echo -n '}'
echo '[/kattene]'
exit
