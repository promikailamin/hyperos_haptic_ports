.class public Lcom/android/server/pm/pkg/component/ParsedServiceUtils;
.super Ljava/lang/Object;
.source "ParsedServiceUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseService([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 34
    .param p0, "separateProcesses"    # [Ljava/lang/String;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "useRoundIcon"    # Z
    .param p6, "defaultSplitName"    # Ljava/lang/String;
    .param p7, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    move-object/from16 v9, p1

    move-object/from16 v8, p2

    move-object/from16 v7, p3

    move-object/from16 v6, p7

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "packageName":Ljava/lang/String;
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;-><init>()V

    move-object v4, v0

    .line 57
    .local v4, "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "tag":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    invoke-virtual {v8, v7, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 61
    .local v2, "sa":Landroid/content/res/TypedArray;
    const/16 v10, 0xc

    const/4 v11, 0x7

    const/16 v12, 0xd

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x2

    const/16 v18, 0x6

    const/16 v19, 0xf

    const/16 v20, 0x11

    const/16 v21, 0x14

    move-object v1, v4

    move-object/from16 v22, v2

    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .local v22, "sa":Landroid/content/res/TypedArray;
    move-object v2, v3

    move-object/from16 v23, v3

    .end local v3    # "tag":Ljava/lang/String;
    .local v23, "tag":Ljava/lang/String;
    move-object/from16 v3, p0

    move-object/from16 v24, v4

    .end local v4    # "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    .local v24, "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    move-object/from16 v4, p1

    move-object/from16 v25, v5

    .end local v5    # "packageName":Ljava/lang/String;
    .local v25, "packageName":Ljava/lang/String;
    move-object/from16 v5, v22

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    :try_start_48
    invoke-static/range {v1 .. v21}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 78
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedServiceImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_2a7

    if-eqz v1, :cond_6b

    .line 79
    move-object/from16 v11, p7

    :try_start_54
    invoke-interface {v11, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_5c

    .line 113
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-object v1

    .line 113
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedServiceImpl;>;"
    :catchall_5c
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v14, p3

    move-object/from16 v12, v22

    move-object/from16 v2, v23

    move-object/from16 v15, v24

    move-object/from16 v24, v25

    goto/16 :goto_2b6

    .line 82
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedServiceImpl;>;"
    :cond_6b
    move-object/from16 v11, p7

    const/4 v1, 0x5

    move-object/from16 v12, v22

    .end local v22    # "sa":Landroid/content/res/TypedArray;
    .local v12, "sa":Landroid/content/res/TypedArray;
    :try_start_70
    invoke-virtual {v12, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_29b

    move v13, v2

    .line 83
    .local v13, "setExported":Z
    const/4 v14, 0x0

    if-eqz v13, :cond_9a

    .line 84
    :try_start_78
    invoke-virtual {v12, v1, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_8d

    move-object/from16 v15, v24

    .end local v24    # "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    .local v15, "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    :try_start_7e
    invoke-virtual {v15, v1}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_82

    goto :goto_9c

    .line 113
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedServiceImpl;>;"
    .end local v13    # "setExported":Z
    :catchall_82
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v14, p3

    move-object/from16 v2, v23

    move-object/from16 v24, v25

    goto/16 :goto_2b6

    .end local v15    # "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    .restart local v24    # "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    :catchall_8d
    move-exception v0

    move-object/from16 v15, v24

    move-object/from16 v1, p1

    move-object/from16 v14, p3

    move-object/from16 v2, v23

    move-object/from16 v24, v25

    .end local v24    # "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    .restart local v15    # "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    goto/16 :goto_2b6

    .line 83
    .end local v15    # "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedServiceImpl;>;"
    .restart local v13    # "setExported":Z
    .restart local v24    # "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    :cond_9a
    move-object/from16 v15, v24

    .line 88
    .end local v24    # "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    .restart local v15    # "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    :goto_9c
    const/4 v10, 0x3

    :try_start_9d
    invoke-virtual {v12, v10, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "permission":Ljava/lang/String;
    if-eqz v1, :cond_a5

    move-object v2, v1

    goto :goto_a9

    :cond_a5
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v2

    :goto_a9
    invoke-virtual {v15, v2}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    .line 92
    const/16 v2, 0x13

    invoke-virtual {v12, v2, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v15, v2}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->setForegroundServiceType(I)Lcom/android/server/pm/pkg/component/ParsedServiceImpl;

    move-result-object v2

    .line 95
    invoke-virtual {v15}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->getFlags()I

    move-result v3

    const/16 v4, 0x9

    const/4 v9, 0x1

    invoke-static {v9, v4, v12}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    const/16 v5, 0xa

    .line 97
    const/4 v8, 0x2

    invoke-static {v8, v5, v12}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v5

    or-int/2addr v4, v5

    const/4 v5, 0x4

    const/16 v6, 0xe

    .line 99
    invoke-static {v5, v6, v12}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v5

    or-int/2addr v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x12

    .line 101
    invoke-static {v5, v6, v12}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v5

    or-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    const/16 v6, 0xb

    .line 103
    invoke-static {v5, v6, v12}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v5

    or-int/2addr v4, v5

    or-int/2addr v3, v4

    .line 95
    invoke-virtual {v2, v3}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 106
    const/16 v2, 0x10

    invoke-virtual {v12, v2, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2
    :try_end_ed
    .catchall {:try_start_9d .. :try_end_ed} :catchall_291

    move/from16 v16, v2

    .line 108
    .local v16, "visibleToEphemeral":Z
    if-eqz v16, :cond_10b

    .line 109
    :try_start_f1
    invoke-virtual {v15}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    invoke-virtual {v15, v2}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    :try_end_fb
    .catchall {:try_start_f1 .. :try_end_fb} :catchall_82

    .line 110
    move-object/from16 v7, p1

    :try_start_fd
    invoke-interface {v7, v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_101

    goto :goto_10d

    .line 113
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedServiceImpl;>;"
    .end local v1    # "permission":Ljava/lang/String;
    .end local v13    # "setExported":Z
    .end local v16    # "visibleToEphemeral":Z
    :catchall_101
    move-exception v0

    move-object/from16 v14, p3

    move-object v1, v7

    move-object/from16 v2, v23

    move-object/from16 v24, v25

    goto/16 :goto_2b6

    .line 108
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedServiceImpl;>;"
    .restart local v1    # "permission":Ljava/lang/String;
    .restart local v13    # "setExported":Z
    .restart local v16    # "visibleToEphemeral":Z
    :cond_10b
    move-object/from16 v7, p1

    .line 113
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedServiceImpl;>;"
    .end local v1    # "permission":Ljava/lang/String;
    :goto_10d
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    nop

    .line 116
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isCantSaveState()Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 119
    invoke-virtual {v15}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->getProcessName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v25

    .end local v25    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 120
    const-string v0, "Heavy-weight applications can not have services in main process"

    invoke-interface {v11, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 116
    .end local v6    # "packageName":Ljava/lang/String;
    .restart local v25    # "packageName":Ljava/lang/String;
    :cond_12a
    move-object/from16 v6, v25

    .line 124
    .end local v25    # "packageName":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    :cond_12c
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 126
    .local v0, "depth":I
    :goto_130
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v5, v1

    .local v5, "type":I
    if-eq v1, v9, :cond_236

    if-ne v5, v10, :cond_14d

    .line 128
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_140

    goto :goto_14d

    :cond_140
    move-object/from16 v14, p3

    move/from16 v22, v5

    move-object/from16 v24, v6

    move-object v1, v7

    move/from16 v18, v9

    move-object/from16 v2, v23

    goto/16 :goto_241

    .line 129
    :cond_14d
    :goto_14d
    if-eq v5, v8, :cond_150

    .line 130
    goto :goto_130

    .line 134
    :cond_150
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_2ba

    :cond_15c
    goto :goto_17c

    :sswitch_15d
    const-string/jumbo v3, "property"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15c

    move v2, v8

    goto :goto_17c

    :sswitch_168
    const-string v3, "intent-filter"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15c

    move v2, v14

    goto :goto_17c

    :sswitch_172
    const-string/jumbo v3, "meta-data"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15c

    move v2, v9

    :goto_17c
    packed-switch v2, :pswitch_data_2c8

    .line 157
    move-object/from16 v14, p3

    move/from16 v22, v5

    move-object/from16 v24, v6

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    .end local v5    # "type":I
    .end local v6    # "packageName":Ljava/lang/String;
    .local v22, "type":I
    .local v24, "packageName":Ljava/lang/String;
    move-object/from16 v1, p1

    move-object/from16 v2, v23

    .end local v23    # "tag":Ljava/lang/String;
    .local v2, "tag":Ljava/lang/String;
    invoke-static {v2, v1, v14, v11}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .local v3, "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    goto/16 :goto_21d

    .line 153
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    .end local v22    # "type":I
    .end local v24    # "packageName":Ljava/lang/String;
    .restart local v5    # "type":I
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v23    # "tag":Ljava/lang/String;
    :pswitch_195
    nop

    .line 154
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    invoke-static {v15, v7, v4, v3, v11}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 155
    .local v1, "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    move-object v14, v3

    move/from16 v22, v5

    move-object/from16 v24, v6

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v2, v23

    move-object v3, v1

    move-object v1, v7

    goto/16 :goto_21d

    .line 150
    .end local v1    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_1af
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    invoke-static {v15, v7, v4, v3, v11}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 151
    .restart local v1    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    move-object v14, v3

    move/from16 v22, v5

    move-object/from16 v24, v6

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v2, v23

    move-object v3, v1

    move-object v1, v7

    goto :goto_21d

    .line 136
    .end local v1    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_1c7
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 137
    move-object v1, v15

    move-object/from16 v2, p1

    move-object v14, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v22, v5

    .end local v5    # "type":I
    .restart local v22    # "type":I
    move/from16 v5, v16

    move-object/from16 v24, v6

    .end local v6    # "packageName":Ljava/lang/String;
    .restart local v24    # "packageName":Ljava/lang/String;
    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v17, v8

    move/from16 v8, v19

    move/from16 v18, v9

    move/from16 v9, v20

    move/from16 v19, v10

    move-object/from16 v10, p7

    invoke-static/range {v1 .. v10}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 141
    .local v1, "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;>;"
    move-object v2, v1

    .line 142
    .local v2, "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_218

    .line 143
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 144
    .local v3, "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    .line 145
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v4}, Landroid/content/IntentFilter;->getOrder()I

    move-result v5

    invoke-virtual {v15}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->getOrder()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v15, v5}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->setOrder(I)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 146
    invoke-virtual {v15, v3}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->addIntent(Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;)V

    .line 161
    .end local v1    # "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;>;"
    .end local v3    # "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    :cond_218
    move-object/from16 v1, p1

    move-object v3, v2

    move-object/from16 v2, v23

    .end local v23    # "tag":Ljava/lang/String;
    .local v2, "tag":Ljava/lang/String;
    .local v3, "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    :goto_21d
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_228

    .line 162
    invoke-interface {v11, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 164
    .end local v3    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    :cond_228
    move-object v7, v1

    move-object/from16 v23, v2

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move-object/from16 v6, v24

    const/4 v14, 0x0

    goto/16 :goto_130

    .line 126
    .end local v2    # "tag":Ljava/lang/String;
    .end local v22    # "type":I
    .end local v24    # "packageName":Ljava/lang/String;
    .restart local v5    # "type":I
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v23    # "tag":Ljava/lang/String;
    :cond_236
    move-object/from16 v14, p3

    move/from16 v22, v5

    move-object/from16 v24, v6

    move-object v1, v7

    move/from16 v18, v9

    move-object/from16 v2, v23

    .line 166
    .end local v5    # "type":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v23    # "tag":Ljava/lang/String;
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v22    # "type":I
    .restart local v24    # "packageName":Ljava/lang/String;
    :goto_241
    if-nez v13, :cond_28c

    .line 167
    invoke-virtual {v15}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->getIntents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_24e

    goto :goto_250

    :cond_24e
    const/16 v18, 0x0

    :goto_250
    move/from16 v3, v18

    .line 168
    .local v3, "hasIntentFilters":Z
    if-eqz v3, :cond_289

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    invoke-virtual {v15}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Targeting S+ (version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x1f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and above) requires that an explicit value for android:exported be defined when intent filters are present"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/32 v5, 0x8f45e27

    .line 169
    invoke-interface {v11, v4, v5, v6}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 174
    .local v4, "exportedCheckResult":Landroid/content/pm/parsing/result/ParseResult;
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_289

    .line 175
    invoke-interface {v11, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 178
    .end local v4    # "exportedCheckResult":Landroid/content/pm/parsing/result/ParseResult;
    :cond_289
    invoke-virtual {v15, v3}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 181
    .end local v3    # "hasIntentFilters":Z
    :cond_28c
    invoke-interface {v11, v15}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 113
    .end local v0    # "depth":I
    .end local v2    # "tag":Ljava/lang/String;
    .end local v13    # "setExported":Z
    .end local v16    # "visibleToEphemeral":Z
    .end local v22    # "type":I
    .end local v24    # "packageName":Ljava/lang/String;
    .restart local v23    # "tag":Ljava/lang/String;
    .restart local v25    # "packageName":Ljava/lang/String;
    :catchall_291
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v14, p3

    move-object/from16 v2, v23

    move-object/from16 v24, v25

    .end local v23    # "tag":Ljava/lang/String;
    .end local v25    # "packageName":Ljava/lang/String;
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v24    # "packageName":Ljava/lang/String;
    goto :goto_2b6

    .end local v2    # "tag":Ljava/lang/String;
    .end local v15    # "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    .restart local v23    # "tag":Ljava/lang/String;
    .local v24, "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    .restart local v25    # "packageName":Ljava/lang/String;
    :catchall_29b
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v14, p3

    move-object/from16 v2, v23

    move-object/from16 v15, v24

    move-object/from16 v24, v25

    .end local v23    # "tag":Ljava/lang/String;
    .end local v25    # "packageName":Ljava/lang/String;
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v15    # "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    .local v24, "packageName":Ljava/lang/String;
    goto :goto_2b6

    .end local v2    # "tag":Ljava/lang/String;
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    .end local v15    # "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    .local v22, "sa":Landroid/content/res/TypedArray;
    .restart local v23    # "tag":Ljava/lang/String;
    .local v24, "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    .restart local v25    # "packageName":Ljava/lang/String;
    :catchall_2a7
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v14, p3

    move-object/from16 v11, p7

    move-object/from16 v12, v22

    move-object/from16 v2, v23

    move-object/from16 v15, v24

    move-object/from16 v24, v25

    .end local v22    # "sa":Landroid/content/res/TypedArray;
    .end local v23    # "tag":Ljava/lang/String;
    .end local v25    # "packageName":Ljava/lang/String;
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v12    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "service":Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    .local v24, "packageName":Ljava/lang/String;
    :goto_2b6
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    throw v0

    :sswitch_data_2ba
    .sparse-switch
        -0x4284098e -> :sswitch_172
        -0x3d616837 -> :sswitch_168
        -0x3b32222b -> :sswitch_15d
    .end sparse-switch

    :pswitch_data_2c8
    .packed-switch 0x0
        :pswitch_1c7
        :pswitch_1af
        :pswitch_195
    .end packed-switch
.end method
