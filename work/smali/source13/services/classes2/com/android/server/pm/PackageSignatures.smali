.class Lcom/android/server/pm/PackageSignatures;
.super Ljava/lang/Object;
.source "PackageSignatures.java"


# instance fields
.field mSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/pm/SigningDetails;)V
    .registers 2
    .param p1, "signingDetails"    # Landroid/content/pm/SigningDetails;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 50
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSignatures;)V
    .registers 4
    .param p1, "orig"    # Lcom/android/server/pm/PackageSignatures;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p1, :cond_15

    iget-object v0, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v0, v1, :cond_15

    .line 42
    new-instance v0, Landroid/content/pm/SigningDetails;

    iget-object v1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v0, v1}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    goto :goto_19

    .line 44
    :cond_15
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 46
    :goto_19
    return-void
.end method

.method private readCertsListXml(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLandroid/content/pm/SigningDetails$Builder;)I
    .registers 25
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p4, "count"    # I
    .param p5, "isPastSigs"    # Z
    .param p6, "builder"    # Landroid/content/pm/SigningDetails$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;IZ",
            "Landroid/content/pm/SigningDetails$Builder;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 153
    .local p2, "readSignatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    .local p3, "signatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    const-string v12, "Error in package manager settings: <cert> index "

    const/4 v0, 0x0

    .line 155
    .local v0, "pos":I
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v13

    move-object/from16 v14, p6

    move v15, v0

    .line 157
    .end local v0    # "pos":I
    .end local p6    # "builder":Landroid/content/pm/SigningDetails$Builder;
    .local v13, "outerDepth":I
    .local v14, "builder":Landroid/content/pm/SigningDetails$Builder;
    .local v15, "pos":I
    :goto_12
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    move v7, v0

    .local v7, "type":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_308

    const/4 v0, 0x3

    if-ne v7, v0, :cond_28

    .line 159
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v13, :cond_24

    goto :goto_28

    :cond_24
    move/from16 v16, v7

    goto/16 :goto_30a

    .line 160
    :cond_28
    :goto_28
    if-eq v7, v0, :cond_302

    const/4 v0, 0x4

    if-ne v7, v0, :cond_2f

    .line 162
    goto/16 :goto_304

    .line 165
    :cond_2f
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "tagName":Ljava/lang/String;
    const-string v0, "cert"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, " is not a number at "

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1fb

    .line 167
    if-ge v15, v11, :cond_1cd

    .line 168
    const-string v0, "index"

    invoke-interface {v8, v3, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 169
    .local v1, "index":I
    if-eq v1, v2, :cond_1b1

    .line 170
    const/16 v16, 0x0

    .line 172
    .local v16, "signatureParsed":Z
    :try_start_4b
    const-string v0, "key"

    invoke-interface {v8, v3, v0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBytesHex(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 173
    .local v0, "key":[B
    if-nez v0, :cond_bd

    .line 174
    if-ltz v1, :cond_99

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_99

    .line 175
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/Signature;

    .line 176
    .local v2, "sig":Landroid/content/pm/Signature;
    if-eqz v2, :cond_75

    .line 182
    if-eqz p5, :cond_6e

    .line 183
    new-instance v3, Landroid/content/pm/Signature;

    invoke-direct {v3, v2}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 185
    :cond_6e
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :goto_71
    const/4 v3, 0x1

    move/from16 v16, v3

    .end local v16    # "signatureParsed":Z
    .local v3, "signatureParsed":Z
    goto :goto_98

    .line 189
    .end local v3    # "signatureParsed":Z
    .restart local v16    # "signatureParsed":Z
    :cond_75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not defined at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 192
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 194
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :goto_98
    goto :goto_d5

    .line 195
    :cond_99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is out of bounds at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 198
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_d5

    .line 203
    :cond_bd
    new-instance v2, Landroid/content/pm/Signature;

    invoke-direct {v2, v0}, Landroid/content/pm/Signature;-><init>([B)V

    .line 204
    .restart local v2    # "sig":Landroid/content/pm/Signature;
    :goto_c2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v1, :cond_cd

    .line 205
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c2

    .line 207
    :cond_cd
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d3
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_d3} :catch_109
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_d3} :catch_d6

    .line 209
    const/16 v16, 0x1

    .line 222
    .end local v0    # "key":[B
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :goto_d5
    goto :goto_12c

    .line 216
    :catch_d6
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has an invalid signature at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 220
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 221
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_12c

    .line 211
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_109
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 215
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_d5

    .line 224
    :goto_12c
    if-eqz p5, :cond_1b0

    .line 225
    const-string v0, "flags"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v8, v3, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 226
    .local v3, "flagsValue":I
    if-eq v3, v2, :cond_195

    .line 230
    if-eqz v16, :cond_14a

    .line 231
    :try_start_13a
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/Signature;

    invoke-virtual {v0, v3}, Landroid/content/pm/Signature;->setFlags(I)V

    goto :goto_194

    .line 233
    :cond_14a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: signature not available at index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to set flags at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_16f
    .catch Ljava/lang/NumberFormatException; {:try_start_13a .. :try_end_16f} :catch_170

    goto :goto_194

    .line 239
    :catch_170
    move-exception v0

    .line 240
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: <cert> flags "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    const/4 v4, 0x5

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 244
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_194
    goto :goto_1b0

    .line 246
    :cond_195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <cert> has no flags at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 251
    .end local v3    # "flagsValue":I
    .end local v16    # "signatureParsed":Z
    :cond_1b0
    :goto_1b0
    goto :goto_1cc

    .line 252
    :cond_1b1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <cert> has no index at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 254
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 256
    .end local v1    # "index":I
    :goto_1cc
    goto :goto_1f2

    .line 257
    :cond_1cd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: too many <cert> tags, expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 260
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 262
    :goto_1f2
    add-int/lit8 v15, v15, 0x1

    .line 263
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move/from16 v16, v7

    goto/16 :goto_2fe

    .line 264
    :cond_1fb
    const-string/jumbo v0, "pastSigs"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2dc

    .line 265
    if-nez p5, :cond_2b9

    .line 267
    const-string v0, "count"

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v8, v2, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 268
    .local v4, "pastSigsCount":I
    if-ne v4, v1, :cond_230

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <pastSigs> has no count at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 271
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 272
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 273
    goto/16 :goto_304

    .line 276
    :cond_230
    const/4 v3, 0x5

    :try_start_231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_236
    .catch Ljava/lang/NumberFormatException; {:try_start_231 .. :try_end_236} :catch_28e

    .line 277
    .local v0, "pastSignatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v17, v3

    move-object/from16 v3, p2

    move/from16 p6, v4

    .end local v4    # "pastSigsCount":I
    .local p6, "pastSigsCount":I
    move-object v4, v0

    move-object v8, v5

    move/from16 v5, p6

    move-object/from16 v17, v6

    .end local v6    # "tagName":Ljava/lang/String;
    .local v17, "tagName":Ljava/lang/String;
    move/from16 v6, v16

    move/from16 v16, v7

    .end local v7    # "type":I
    .local v16, "type":I
    move-object v7, v14

    :try_start_24d
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageSignatures;->readCertsListXml(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLandroid/content/pm/SigningDetails$Builder;)I

    move-result v1

    .line 280
    .local v1, "pastSigsPos":I
    nop

    .line 281
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/Signature;

    .line 280
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Signature;

    .line 282
    .local v2, "pastSignatures":[Landroid/content/pm/Signature;
    invoke-virtual {v14, v2}, Landroid/content/pm/SigningDetails$Builder;->setPastSigningCertificates([Landroid/content/pm/Signature;)Landroid/content/pm/SigningDetails$Builder;

    move-result-object v3
    :try_end_262
    .catch Ljava/lang/NumberFormatException; {:try_start_24d .. :try_end_262} :catch_289

    move-object v14, v3

    .line 284
    move/from16 v3, p6

    .end local p6    # "pastSigsCount":I
    .local v3, "pastSigsCount":I
    if-ge v1, v3, :cond_288

    .line 285
    :try_start_267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <pastSigs> count does not match number of <cert> entries "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 288
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_27e
    .catch Ljava/lang/NumberFormatException; {:try_start_267 .. :try_end_27e} :catch_285

    .line 285
    const/4 v5, 0x5

    :try_start_27f
    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_282
    .catch Ljava/lang/NumberFormatException; {:try_start_27f .. :try_end_282} :catch_283

    goto :goto_288

    .line 290
    .end local v0    # "pastSignatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    .end local v1    # "pastSigsPos":I
    .end local v2    # "pastSignatures":[Landroid/content/pm/Signature;
    :catch_283
    move-exception v0

    goto :goto_296

    :catch_285
    move-exception v0

    const/4 v5, 0x5

    goto :goto_296

    .line 295
    :cond_288
    :goto_288
    goto :goto_2b8

    .line 290
    .end local v3    # "pastSigsCount":I
    .restart local p6    # "pastSigsCount":I
    :catch_289
    move-exception v0

    move/from16 v3, p6

    const/4 v5, 0x5

    .end local p6    # "pastSigsCount":I
    .restart local v3    # "pastSigsCount":I
    goto :goto_296

    .end local v3    # "pastSigsCount":I
    .end local v16    # "type":I
    .end local v17    # "tagName":Ljava/lang/String;
    .restart local v4    # "pastSigsCount":I
    .restart local v6    # "tagName":Ljava/lang/String;
    .restart local v7    # "type":I
    :catch_28e
    move-exception v0

    move-object v8, v5

    move-object/from16 v17, v6

    move/from16 v16, v7

    move v5, v3

    move v3, v4

    .line 291
    .end local v4    # "pastSigsCount":I
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "type":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "pastSigsCount":I
    .restart local v16    # "type":I
    .restart local v17    # "tagName":Ljava/lang/String;
    :goto_296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <pastSigs> count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 294
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v5, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 296
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "pastSigsCount":I
    :goto_2b8
    goto :goto_2fe

    .line 297
    .end local v16    # "type":I
    .end local v17    # "tagName":Ljava/lang/String;
    .restart local v6    # "tagName":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_2b9
    move-object/from16 v17, v6

    move/from16 v16, v7

    const/4 v5, 0x5

    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "type":I
    .restart local v16    # "type":I
    .restart local v17    # "tagName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<pastSigs> encountered multiple times under the same <sigs> at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 300
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2fe

    .line 303
    .end local v16    # "type":I
    .end local v17    # "tagName":Ljava/lang/String;
    .restart local v6    # "tagName":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_2dc
    move-object/from16 v17, v6

    move/from16 v16, v7

    const/4 v5, 0x5

    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "type":I
    .restart local v16    # "type":I
    .restart local v17    # "tagName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <sigs>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 305
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 306
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 308
    .end local v17    # "tagName":Ljava/lang/String;
    :goto_2fe
    move-object/from16 v8, p1

    goto/16 :goto_12

    .line 160
    .end local v16    # "type":I
    .restart local v7    # "type":I
    :cond_302
    move/from16 v16, v7

    .line 157
    .end local v7    # "type":I
    :goto_304
    move-object/from16 v8, p1

    goto/16 :goto_12

    .restart local v7    # "type":I
    :cond_308
    move/from16 v16, v7

    .line 309
    .end local v7    # "type":I
    .restart local v16    # "type":I
    :goto_30a
    return v15
.end method

.method private writeCertsListXml(Landroid/util/TypedXmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;Z)V
    .registers 15
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p3, "signatures"    # [Landroid/content/pm/Signature;
    .param p4, "isPastSigs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;[",
            "Landroid/content/pm/Signature;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    .local p2, "writtenSignatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_50

    .line 82
    const/4 v1, 0x0

    const-string v2, "cert"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    aget-object v3, p3, v0

    .line 84
    .local v3, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->hashCode()I

    move-result v4

    .line 85
    .local v4, "sigHash":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 87
    .local v5, "numWritten":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_15
    const-string v7, "index"

    if-ge v6, v5, :cond_32

    .line 88
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/Signature;

    .line 89
    .local v8, "writtenSig":Landroid/content/pm/Signature;
    invoke-virtual {v8}, Landroid/content/pm/Signature;->hashCode()I

    move-result v9

    if-ne v9, v4, :cond_2f

    invoke-virtual {v8, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 90
    invoke-interface {p1, v1, v7, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    goto :goto_32

    .line 87
    .end local v8    # "writtenSig":Landroid/content/pm/Signature;
    :cond_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 94
    :cond_32
    :goto_32
    if-lt v6, v5, :cond_3f

    .line 95
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {p1, v1, v7, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    const-string v7, "key"

    invoke-virtual {v3, p1, v1, v7}, Landroid/content/pm/Signature;->writeToXmlAttributeBytesHex(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_3f
    if-eqz p4, :cond_4a

    .line 102
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v7

    const-string v8, "flags"

    invoke-interface {p1, v1, v8, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    :cond_4a
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    .end local v3    # "sig":Landroid/content/pm/Signature;
    .end local v4    # "sigHash":I
    .end local v5    # "numWritten":I
    .end local v6    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    .end local v0    # "i":I
    :cond_50
    return-void
.end method


# virtual methods
.method readXml(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;)V
    .registers 15
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 110
    .local p2, "readSignatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    new-instance v0, Landroid/content/pm/SigningDetails$Builder;

    invoke-direct {v0}, Landroid/content/pm/SigningDetails$Builder;-><init>()V

    .line 112
    .local v0, "builder":Landroid/content/pm/SigningDetails$Builder;
    const/4 v1, 0x0

    const-string v2, "count"

    const/4 v3, -0x1

    invoke-interface {p1, v1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 113
    .local v8, "count":I
    const/4 v9, 0x5

    if-ne v8, v3, :cond_2e

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <sigs> has no count at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 116
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v9, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 117
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 118
    return-void

    .line 121
    :cond_2e
    const/4 v2, 0x0

    const-string/jumbo v3, "schemeVersion"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    .line 123
    .local v10, "signatureSchemeVersion":I
    if-nez v10, :cond_52

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <sigs> has no schemeVersion at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v9, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 128
    :cond_52
    invoke-virtual {v0, v10}, Landroid/content/pm/SigningDetails$Builder;->setSignatureSchemeVersion(I)Landroid/content/pm/SigningDetails$Builder;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    .line 130
    .local v11, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v11

    move v5, v8

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageSignatures;->readCertsListXml(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLandroid/content/pm/SigningDetails$Builder;)I

    move-result v1

    .line 131
    .local v1, "pos":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Signature;

    .line 132
    .local v2, "signatures":[Landroid/content/pm/Signature;
    invoke-virtual {v0, v2}, Landroid/content/pm/SigningDetails$Builder;->setSignatures([Landroid/content/pm/Signature;)Landroid/content/pm/SigningDetails$Builder;

    .line 133
    if-ge v1, v8, :cond_91

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: <sigs> count does not match number of  <cert> entries"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 136
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-static {v9, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 140
    :cond_91
    :try_start_91
    invoke-virtual {v0}, Landroid/content/pm/SigningDetails$Builder;->build()Landroid/content/pm/SigningDetails;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;
    :try_end_97
    .catch Ljava/security/cert/CertificateException; {:try_start_91 .. :try_end_97} :catch_98

    .line 146
    goto :goto_a2

    .line 141
    :catch_98
    move-exception v3

    .line 142
    .local v3, "e":Ljava/security/cert/CertificateException;
    const-string v4, "Error in package manager settings: <sigs> unable to convert certificate(s) to public key(s)."

    invoke-static {v9, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 145
    sget-object v4, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v4, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 147
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :goto_a2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 315
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "PackageSignatures{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, " version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, ", signatures:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    const-string v2, ", "

    if-eqz v1, :cond_59

    .line 321
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_35
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_59

    .line 322
    if-lez v1, :cond_43

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_43
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 324
    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->hashCode()I

    move-result v3

    .line 323
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 327
    .end local v1    # "i":I
    :cond_59
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v1, ", past signatures:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v1

    if-eqz v1, :cond_a8

    .line 330
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6c
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_a8

    .line 331
    if-lez v1, :cond_7a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_7a
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 333
    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->hashCode()I

    move-result v3

    .line 332
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v3, " flags: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 336
    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    .line 335
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 339
    .end local v1    # "i":I
    :cond_a8
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    .local p3, "writtenSignatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    if-nez v0, :cond_9

    .line 59
    return-void

    .line 61
    :cond_9
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    array-length v1, v1

    const-string v2, "count"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v1

    const-string/jumbo v3, "schemeVersion"

    invoke-interface {p1, v0, v3, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p3, v1, v3}, Lcom/android/server/pm/PackageSignatures;->writeCertsListXml(Landroid/util/TypedXmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;Z)V

    .line 67
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 68
    const-string/jumbo v1, "pastSigs"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 70
    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v3

    array-length v3, v3

    .line 69
    invoke-interface {p1, v0, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 72
    invoke-virtual {v2}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v2

    const/4 v3, 0x1

    .line 71
    invoke-direct {p0, p1, p3, v2, v3}, Lcom/android/server/pm/PackageSignatures;->writeCertsListXml(Landroid/util/TypedXmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;Z)V

    .line 73
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    :cond_54
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    return-void
.end method
