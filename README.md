# KazakhSyntax
Syntax of the Kazakh language

This is a syntax analysys package for [Kazakh]
(https://en.wikipedia.org/wiki/Kazakh_language) that was implemented in
[GF](https://www.grammaticalframework.org/)

To use this package just clone this repository like so:
```shell
> git clone https://github.com/Gaziza-Yelibayeva/KazakhSyntax.git
```
Alternatively, you can download and unzip the archived
version:https://github.com/Gaziza-Yelibayeva/KazakhSyntax/archive/refs/heads/main.zip

The archive or a cloned repository will contain `KazakhSyntax-main` directory,
which contains all the gf. files:
\[1\] SyntaxAbs.gf
\[2\] SyntaxCon.gf
\[3\] ResSyntax.gf
\[4\] VocabAbs.gf
\[5\] VocabCon.gf
\[6\] cat_ZEAbs.gf
\[7\] cat_ZECon.gf
\[8\] cat_R_SEAbs.gf
\[9\] cat_R_SECon.gf
\[10\] cat_SNAbs.gf
\[11\] cat_SNCon.gf
\[12\] cat_ETAbs.gf
\[13\] cat_ETCon.gf

In order to correctly import all these files, you should run GF in the same
directory with `KazakhSyntax-main`.

To check, if everything is working, you can run this test code like so:
```shell
> VocabCon.gf
```
This should call all other files that mentioned in the list above, and run the
GF program itself.

### <a name="ch51"></a> Syntax parsing example usage

```shell
input sentence:
["ағаш_R_ZE тың_C2 сары_R_SE жапырақ_R_ZE тар_N1 ы_S3 жер_R_ZE ге_C3 түс_R_ET
ті_T3"]

> p "ағаш_R_ZE тың_C2 сары_R_SE жапырақ_R_ZE тар_N1 ы_S3 жер_R_ZE ге_C3 түс_R_ET ті_T3"

parsed sentence:
NPVPToS (NPNPToNP (NominalToNP (NToNominal (NounDecompos aghash_R_ZE sg_end
nullPoss_end tyn_end nullSgN_end))) (NominalToNP (AdjNominalToNominal
sary_R_SE (NToNominal (NounDecompos zhapyraq_R_ZE tar_end y_end c1_end
nullPlN_end))))) (VPwithObj (NominalToNP (NToNominal (NounDecompos zher_R_ZE
sg_end nullPoss_end ge_end nullSgN_end))) (VerbDecompos tus_stem1 zero_suf
ti_suf nullPlV_end))
```
