#20220316 ver1
#パッケージ・自動インスコ&読み込み。インストール済みであれば読み込みだけ

#パッケージチェック関数「pkgch」を定義
pkgch <- function(pack){
  
######
#使い方
#pkgch("pacman")
#のように、pkgch関数にパッケージ名を書いてやるだけ。  
#まあ、pacman使えば良さそうって話もあり
#https://teramonagi.hatenablog.com/entry/20130823/1377291452
  
  exist <- pack %in% rownames(installed.packages())
  
  if( exist == FALSE ) {
    #パッケージがなければインストール&読み込み。
    install.packages(pack, repos="https://cran.ism.ac.jp/")
    library(pack, character.only=TRUE)
    cat("インストールと読み込み完了")
  }else{
    
    #あれば読み込みのみ。
    library(pack, character.only=TRUE)
    cat("インストール済み、読み込み完了")
  } # else 終わり
  
}#関数終了

