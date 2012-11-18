RMeCab
==========================
RMeCab は日本語形態素解析である MeCab と R を接続するインターフェイスです.
RMecab は以下からダウンロードできます.

http://rmecab.jp/wiki/index.php?RMeCab

RMeCab を試す
---------------------------

'''{r loadLibrary}
# RMeCab を利用する準備
libary (RMeCab)
'''

### 文字を単位としたNgram(bigram)を生成
'''{r Ngram}
# 鴎外と漱石それぞれ4作品を含むフォルダを指定
res <- docNgram ("C:fromC/data/writters", type = 0) # writters はフォルダ名
res2 <- res[ rownames(res) %in% c("[と-、],[て-、],[は-、],[が-、],[で-、],[に-、],[ら-、],[も-、]"),]
res2
res2.pc <- princomp (t (res2))

'''

### 主成分分析によるバイプロット

'''{r plot}
biplot (res2.pc)
'''