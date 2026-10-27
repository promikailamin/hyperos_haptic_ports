.class public Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;
.super Ljava/lang/Object;
.source "ParsedIntentInfoUtils.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseData(Lcom/android/server/pm/pkg/component/ParsedIntentInfo;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .param p0, "intentInfo"    # Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "allowGlobs"    # Z
    .param p4, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 169
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 171
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_f8

    .line 173
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_22

    .line 175
    :try_start_11
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_f8

    .line 178
    goto :goto_22

    .line 176
    :catch_15
    move-exception v2

    .line 177
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :try_start_16
    invoke-virtual {v2}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_f8

    .line 286
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    return-object v4

    .line 181
    .end local v2    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_22
    :goto_22
    const/16 v4, 0xa

    :try_start_24
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 183
    if-eqz v3, :cond_2e

    .line 184
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addMimeGroup(Ljava/lang/String;)V

    .line 187
    :cond_2e
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 189
    if-eqz v3, :cond_39

    .line 190
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 193
    :cond_39
    const/4 v5, 0x7

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 195
    if-eqz v3, :cond_44

    .line 196
    invoke-virtual {v0, v3, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 200
    :cond_44
    const/16 v5, 0x8

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 202
    if-eqz v3, :cond_50

    .line 203
    invoke-virtual {v0, v3, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 207
    :cond_50
    const/16 v5, 0x9

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 209
    const/4 v5, 0x2

    if-eqz v3, :cond_6a

    .line 210
    if-nez p3, :cond_67

    .line 211
    const-string/jumbo v2, "sspPattern not allowed here; ssp must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_63
    .catchall {:try_start_24 .. :try_end_63} :catchall_f8

    .line 286
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    return-object v2

    .line 214
    :cond_67
    :try_start_67
    invoke-virtual {v0, v3, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 218
    :cond_6a
    const/16 v6, 0xe

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 220
    const/4 v6, 0x3

    if-eqz v3, :cond_84

    .line 221
    if-nez p3, :cond_81

    .line 222
    const-string/jumbo v2, "sspAdvancedPattern not allowed here; ssp must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_7d
    .catchall {:try_start_67 .. :try_end_7d} :catchall_f8

    .line 286
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    return-object v2

    .line 225
    :cond_81
    :try_start_81
    invoke-virtual {v0, v3, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 229
    :cond_84
    const/16 v7, 0xc

    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 231
    const/4 v7, 0x4

    if-eqz v3, :cond_91

    .line 232
    invoke-virtual {v0, v3, v7}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 237
    :cond_91
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    .line 239
    .local v8, "host":Ljava/lang/String;
    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 241
    .local v9, "port":Ljava/lang/String;
    if-eqz v8, :cond_9e

    .line 242
    invoke-virtual {v0, v8, v9}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_9e
    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 247
    if-eqz v3, :cond_a8

    .line 248
    invoke-virtual {v0, v3, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 251
    :cond_a8
    const/4 v10, 0x5

    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 253
    if-eqz v3, :cond_b3

    .line 254
    invoke-virtual {v0, v3, v4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 257
    :cond_b3
    const/4 v4, 0x6

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 259
    if-eqz v3, :cond_cb

    .line 260
    if-nez p3, :cond_c8

    .line 261
    const-string/jumbo v2, "pathPattern not allowed here; path must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_c4
    .catchall {:try_start_81 .. :try_end_c4} :catchall_f8

    .line 286
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    return-object v2

    .line 264
    :cond_c8
    :try_start_c8
    invoke-virtual {v0, v3, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 267
    :cond_cb
    const/16 v4, 0xd

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 269
    if-eqz v3, :cond_e4

    .line 270
    if-nez p3, :cond_e1

    .line 271
    const-string/jumbo v2, "pathAdvancedPattern not allowed here; path must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_dd
    .catchall {:try_start_c8 .. :try_end_dd} :catchall_f8

    .line 286
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    return-object v2

    .line 274
    :cond_e1
    :try_start_e1
    invoke-virtual {v0, v3, v6}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 277
    :cond_e4
    const/16 v4, 0xb

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 279
    .end local v3    # "str":Ljava/lang/String;
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_ef

    .line 280
    invoke-virtual {v0, v2, v7}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 284
    :cond_ef
    const/4 v3, 0x0

    invoke-interface {p4, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_f4
    .catchall {:try_start_e1 .. :try_end_f4} :catchall_f8

    .line 286
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    return-object v3

    .line 286
    .end local v2    # "str":Ljava/lang/String;
    .end local v8    # "host":Ljava/lang/String;
    .end local v9    # "port":Ljava/lang/String;
    :catchall_f8
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 287
    throw v2
.end method

.method public static parseIntentInfo(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "allowGlobs"    # Z
    .param p5, "allowAutoVerify"    # Z
    .param p6, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "ZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;-><init>()V

    move-object v4, v0

    .line 57
    .local v4, "intentInfo":Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    .line 58
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 60
    .local v6, "sa":Landroid/content/res/TypedArray;
    nop

    .line 61
    const/4 v0, 0x2

    const/4 v7, 0x0

    :try_start_19
    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 60
    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 62
    const/4 v8, 0x3

    invoke-virtual {v6, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->setOrder(I)V

    .line 64
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 65
    .local v9, "v":Landroid/util/TypedValue;
    if-eqz v9, :cond_3e

    .line 66
    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v10}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->setLabelRes(I)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 67
    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    if-nez v10, :cond_3e

    .line 68
    invoke-virtual {v9}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 72
    :cond_3e
    sget-boolean v10, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz v10, :cond_4a

    .line 73
    const/4 v10, 0x7

    invoke-virtual {v6, v10, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->setIcon(I)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 77
    :cond_4a
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIcon()I

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_59

    .line 78
    nop

    .line 79
    invoke-virtual {v6, v11, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 78
    invoke-virtual {v4, v10}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->setIcon(I)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 82
    :cond_59
    if-eqz p5, :cond_63

    .line 83
    const/4 v10, 0x6

    invoke-virtual {v6, v10, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->setAutoVerify(Z)V
    :try_end_63
    .catchall {:try_start_19 .. :try_end_63} :catchall_144

    .line 88
    .end local v9    # "v":Landroid/util/TypedValue;
    :cond_63
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    nop

    .line 90
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 92
    .local v9, "depth":I
    :goto_6b
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    move v12, v10

    .local v12, "type":I
    if-eq v10, v11, :cond_132

    if-ne v12, v8, :cond_81

    .line 94
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-le v10, v9, :cond_7b

    goto :goto_81

    :cond_7b
    move-object/from16 v7, p1

    move/from16 v13, p4

    goto/16 :goto_136

    .line 95
    :cond_81
    :goto_81
    if-eq v12, v0, :cond_84

    .line 96
    goto :goto_6b

    .line 100
    :cond_84
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, "nodeName":Ljava/lang/String;
    const/4 v13, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_14e

    :cond_90
    goto :goto_ae

    :sswitch_91
    const-string v14, "category"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_90

    move v13, v11

    goto :goto_ae

    :sswitch_9b
    const-string v14, "data"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_90

    move v13, v0

    goto :goto_ae

    :sswitch_a5
    const-string v14, "action"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_90

    move v13, v7

    :goto_ae
    const-wide/32 v14, 0x9029125

    const/4 v0, 0x0

    const-string/jumbo v7, "name"

    const-string v8, "http://schemas.android.com/apk/res/android"

    const-string v11, "No value supplied for <android:name>"

    packed-switch v13, :pswitch_data_15c

    .line 136
    move/from16 v13, p4

    const-string v0, "<intent-filter>"

    move-object/from16 v7, p1

    invoke-static {v0, v7, v2, v3}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_121

    .line 133
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_c7
    move/from16 v13, p4

    invoke-static {v4, v1, v2, v13, v3}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;->parseData(Lcom/android/server/pm/pkg/component/ParsedIntentInfo;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 134
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v7, p1

    goto :goto_121

    .line 118
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_d0
    move/from16 v13, p4

    invoke-interface {v2, v8, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_df

    .line 120
    invoke-interface {v3, v11}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object/from16 v7, p1

    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_121

    .line 121
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_df
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_ef

    .line 122
    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 124
    invoke-interface {v3, v11, v14, v15}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object/from16 v7, p1

    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_121

    .line 127
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_ef
    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 128
    invoke-interface {v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 130
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v7, p1

    goto :goto_121

    .line 103
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v7    # "value":Ljava/lang/String;
    :pswitch_f9
    move/from16 v13, p4

    invoke-interface {v2, v8, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 104
    .restart local v7    # "value":Ljava/lang/String;
    if-nez v7, :cond_108

    .line 105
    invoke-interface {v3, v11}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object/from16 v7, p1

    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_121

    .line 106
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_108
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_118

    .line 107
    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    invoke-interface {v3, v11, v14, v15}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object/from16 v7, p1

    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_121

    .line 112
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_118
    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    invoke-interface {v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 115
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v7, p1

    .line 140
    .end local v7    # "value":Ljava/lang/String;
    :goto_121
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v8

    if-eqz v8, :cond_12c

    .line 141
    invoke-interface {v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    return-object v8

    .line 143
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v10    # "nodeName":Ljava/lang/String;
    :cond_12c
    const/4 v0, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v11, 0x1

    goto/16 :goto_6b

    .line 92
    :cond_132
    move-object/from16 v7, p1

    move/from16 v13, p4

    .line 145
    :goto_136
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->setHasDefault(Z)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 162
    invoke-interface {v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 88
    .end local v9    # "depth":I
    .end local v12    # "type":I
    :catchall_144
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v13, p4

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    throw v0

    nop

    :sswitch_data_14e
    .sparse-switch
        -0x54d081ca -> :sswitch_a5
        0x2eefaa -> :sswitch_9b
        0x302bcfe -> :sswitch_91
    .end sparse-switch

    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_f9
        :pswitch_d0
        :pswitch_c7
    .end packed-switch
.end method
