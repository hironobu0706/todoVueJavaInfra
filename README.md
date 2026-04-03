> 申し込みシステム（ポートフォリオ）の環境構築手順を記載します。  
> 必要なリポジトリは3つ  
> + 1.インフラ、DB：todoVueJavaInfra(このリポジトリ)  
> + 2.フロント：https://github.com/hironobu0706/todoVueJavaFrontend
> + 3.バック：https://github.com/hironobu0706/todoVueJavaBackend

<h1>必要なソフト</h1>
 + docker及びdocker-compose  
 + git

<h1>手順</h1>
1.上記3リポジトリを任意のフォルダにクローンする。  
  ※必ず同じフォルダに配置すること。

↓のイメージ（2階層目まで表示）
>VUEJAVATODO  
>├─backend  
>│  ├─.mvn  
>│  ├─.settings  
>│  ├─src  
>│  └─target  
>├─frontend  
>│  ├─.vscode  
>│  ├─node_modules  
>│  ├─public  
>│  └─src  
>└─infra  
>    ├─initdb.d  
>    └─mysql_data  
<img width="907" height="591" alt="image" src="https://github.com/user-attachments/assets/ef15f159-1d7f-47eb-a2c5-1fcc65659106" />
  
2.infraフォルダの直下でターミナルを開く  

3.`docker-compose up -d --build`　を実行  
※もし失敗した場合すべてのフォルダを削除し、1からやり直し  

4.`docker-compose ps -a` を実行し、ステータスがupになっていることを確認する。  
※もしupではない場合 `docker-compose down` を実行し再度3の手順を実行する。何度かやってみて解決しなければすべてのフォルダを削除し、1からやり直し  
<img width="1321" height="314" alt="image" src="https://github.com/user-attachments/assets/03a0d116-ef46-4add-9524-55c4db2dea98" />

5.ブラウザで`http://localhost:5173/`にアクセスしトップページ画面が表示されれば環境構築成功

6.番外編(必須ではない) A5 Mk2でmysqlにアクセスる方法 
+ データベース :sampledb
+ ポート      :3307
+ ユーザー    :user
+ パスワード  :pass

データベースの追加と削除＞追加を押す  
<img width="491" height="718" alt="image" src="https://github.com/user-attachments/assets/e20edadf-d47b-424a-8ce6-44e03d6b00a4" />  

以下のように入力  
<img width="1011" height="514" alt="image" src="https://github.com/user-attachments/assets/3c83e236-4632-483a-931b-a449f99f0cf5" />  

以下の画面が表示されれば完了  
<img width="1013" height="515" alt="image" src="https://github.com/user-attachments/assets/aaf79b61-cc9c-4237-ae8f-56f897f8ff7b" />



