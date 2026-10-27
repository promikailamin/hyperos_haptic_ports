.class public Lcom/android/server/pm/pkg/component/ParsedProcessUtils;
.super Ljava/lang/Object;
.source "ParsedProcessUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 66
    .local p0, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestAllowPermission:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "perm":Ljava/lang/String;
    if-eqz v1, :cond_1a

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 71
    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_26

    move-object p0, v2

    .line 74
    .end local v1    # "perm":Ljava/lang/String;
    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    nop

    .line 76
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 77
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 74
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    throw v1
.end method

.method private static parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 48
    .local p0, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestDenyPermission:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "perm":Ljava/lang/String;
    if-eqz v1, :cond_1a

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 53
    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_26

    move-object p0, v2

    .line 56
    .end local v1    # "perm":Ljava/lang/String;
    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    nop

    .line 58
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 59
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 56
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    throw v1
.end method

.method private static parseProcess(Ljava/util/Set;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .param p1, "separateProcesses"    # [Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 84
    .local p0, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v10, p6

    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;-><init>()V

    move-object v11, v0

    .line 85
    .local v11, "proc":Lcom/android/server/pm/pkg/component/ParsedProcessImpl;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProcess:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 87
    .local v12, "sa":Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1e

    .line 88
    :try_start_16
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v11, v0}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->setDeniedPermissions(Ljava/util/Set;)Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    .line 91
    :cond_1e
    const/4 v0, 0x1

    const/4 v13, 0x0

    invoke-virtual {v12, v0, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "processName":Ljava/lang/String;
    nop

    .line 94
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 93
    move/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 96
    .local v4, "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 97
    invoke-interface {v10, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_16 .. :try_end_41} :catchall_11f

    .line 115
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-object v0

    .line 100
    :cond_45
    :try_start_45
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "packageName":Ljava/lang/String;
    nop

    .line 102
    invoke-virtual {v12, v13, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-static {v5, v7}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "className":Ljava/lang/String;
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v11, v8}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->setName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    .line 105
    invoke-virtual {v11, v5, v7}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->putAppClassNameForPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v8, 0x2

    const/4 v9, -0x1

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->setGwpAsanMode(I)Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    .line 107
    const/4 v8, 0x3

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v11, v14}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->setMemtagMode(I)Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    .line 108
    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_83

    .line 109
    invoke-virtual {v12, v14, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 111
    .local v15, "v":Z
    nop

    .line 112
    if-eqz v15, :cond_7f

    move v9, v0

    goto :goto_80

    :cond_7f
    move v9, v13

    .line 111
    :goto_80
    invoke-virtual {v11, v9}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/component/ParsedProcessImpl;
    :try_end_83
    .catchall {:try_start_45 .. :try_end_83} :catchall_11f

    .line 115
    .end local v4    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "processName":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    .end local v15    # "v":Z
    :cond_83
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    nop

    .line 119
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 120
    .local v4, "innerDepth":I
    :goto_8b
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    if-eq v5, v0, :cond_118

    if-ne v6, v8, :cond_9f

    .line 121
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v4, :cond_9b

    goto :goto_9f

    :cond_9b
    move-object/from16 v9, p2

    goto/16 :goto_11a

    .line 122
    :cond_9f
    :goto_9f
    if-eq v6, v8, :cond_114

    if-ne v6, v14, :cond_a4

    .line 123
    goto :goto_8b

    .line 128
    :cond_a4
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "tagName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_126

    :cond_af
    goto :goto_c4

    :sswitch_b0
    const-string v7, "deny-permission"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_af

    move v7, v13

    goto :goto_c5

    :sswitch_ba
    const-string v7, "allow-permission"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_af

    move v7, v0

    goto :goto_c5

    :goto_c4
    const/4 v7, -0x1

    :goto_c5
    packed-switch v7, :pswitch_data_130

    .line 147
    const-string v7, "<process>"

    move-object/from16 v9, p2

    invoke-static {v7, v9, v3, v10}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .local v7, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    goto :goto_107

    .line 139
    .end local v7    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :pswitch_d1
    nop

    .line 140
    invoke-virtual {v11}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v7

    .line 139
    invoke-static {v7, v2, v3, v10}, Lcom/android/server/pm/pkg/component/ParsedProcessUtils;->parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 141
    .local v7, "allowResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    move-object v9, v7

    .line 142
    .local v9, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v15

    if-eqz v15, :cond_104

    .line 143
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    invoke-virtual {v11, v15}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->setDeniedPermissions(Ljava/util/Set;)Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    goto :goto_104

    .line 131
    .end local v7    # "allowResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v9    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :pswitch_eb
    nop

    .line 132
    invoke-virtual {v11}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v7

    .line 131
    invoke-static {v7, v2, v3, v10}, Lcom/android/server/pm/pkg/component/ParsedProcessUtils;->parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 133
    .local v7, "denyResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    move-object v9, v7

    .line 134
    .restart local v9    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v15

    if-eqz v15, :cond_104

    .line 135
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    invoke-virtual {v11, v15}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->setDeniedPermissions(Ljava/util/Set;)Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    .line 151
    .end local v7    # "denyResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_104
    :goto_104
    move-object v7, v9

    move-object/from16 v9, p2

    .end local v9    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .local v7, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :goto_107
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v15

    if-eqz v15, :cond_112

    .line 152
    invoke-interface {v10, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 154
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v7    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_112
    goto/16 :goto_8b

    .line 122
    :cond_114
    move-object/from16 v9, p2

    goto/16 :goto_8b

    .line 120
    :cond_118
    move-object/from16 v9, p2

    .line 156
    :goto_11a
    invoke-interface {v10, v11}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 115
    .end local v4    # "innerDepth":I
    .end local v6    # "type":I
    :catchall_11f
    move-exception v0

    move-object/from16 v9, p2

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    throw v0

    :sswitch_data_126
    .sparse-switch
        -0x49dc292d -> :sswitch_ba
        0x62d33430 -> :sswitch_b0
    .end sparse-switch

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_d1
    .end packed-switch
.end method

.method public static parseProcesses([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .param p0, "separateProcesses"    # [Ljava/lang/String;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 164
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    const/4 v0, 0x0

    .line 165
    .local v0, "deniedPerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v10, v1

    .line 168
    .local v10, "processes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedProcess;>;"
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    move-object v12, v0

    .line 169
    .end local v0    # "deniedPerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v11, "innerDepth":I
    .local v12, "deniedPerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_12
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v13, v0

    .local v13, "type":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_fd

    const/4 v0, 0x3

    if-ne v13, v0, :cond_28

    .line 170
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v11, :cond_24

    goto :goto_28

    :cond_24
    move-object/from16 v1, p1

    goto/16 :goto_ff

    .line 171
    :cond_28
    :goto_28
    if-eq v13, v0, :cond_f9

    const/4 v0, 0x4

    if-ne v13, v0, :cond_30

    .line 172
    move-object/from16 v1, p1

    goto :goto_12

    .line 177
    :cond_30
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 178
    .local v14, "tagName":Ljava/lang/String;
    const/4 v0, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_104

    :cond_3c
    goto :goto_5b

    :sswitch_3d
    const-string v1, "deny-permission"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x0

    goto :goto_5c

    :sswitch_47
    const-string/jumbo v1, "process"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x2

    goto :goto_5c

    :sswitch_52
    const-string v2, "allow-permission"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_5c

    :goto_5b
    move v1, v0

    :goto_5c
    packed-switch v1, :pswitch_data_112

    .line 208
    const-string v0, "<processes>"

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8, v9}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    goto/16 :goto_ec

    .line 196
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :pswitch_69
    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/component/ParsedProcessUtils;->parseProcess(Ljava/util/Set;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 198
    .local v0, "processResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedProcess;>;"
    move-object v1, v0

    .line 199
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 200
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProcess;

    .line 201
    .local v2, "process":Lcom/android/server/pm/pkg/component/ParsedProcess;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b1

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<process> specified existing name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 203
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-interface {v9, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 205
    .end local v2    # "process":Lcom/android/server/pm/pkg/component/ParsedProcess;
    :cond_b1
    move-object v0, v1

    move-object/from16 v1, p1

    goto :goto_ec

    .line 199
    :cond_b5
    move-object v0, v1

    move-object/from16 v1, p1

    goto :goto_ec

    .line 188
    .end local v0    # "processResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedProcess;>;"
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :pswitch_b9
    invoke-static {v12, v7, v8, v9}, Lcom/android/server/pm/pkg/component/ParsedProcessUtils;->parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 190
    .local v0, "allowResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    move-object v1, v0

    .line 191
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 192
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object v0, v1

    move-object v12, v2

    move-object/from16 v1, p1

    .end local v12    # "deniedPerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v2, "deniedPerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_ec

    .line 191
    .end local v2    # "deniedPerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "deniedPerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_cf
    move-object v0, v1

    move-object/from16 v1, p1

    goto :goto_ec

    .line 180
    .end local v0    # "allowResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :pswitch_d3
    invoke-static {v12, v7, v8, v9}, Lcom/android/server/pm/pkg/component/ParsedProcessUtils;->parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 182
    .local v0, "denyResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    move-object v1, v0

    .line 183
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 184
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object v0, v1

    move-object v12, v2

    move-object/from16 v1, p1

    .end local v12    # "deniedPerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "deniedPerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_ec

    .line 183
    .end local v2    # "deniedPerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "deniedPerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e9
    move-object v0, v1

    move-object/from16 v1, p1

    .line 212
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :goto_ec
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 213
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 216
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .end local v14    # "tagName":Ljava/lang/String;
    :cond_f7
    goto/16 :goto_12

    .line 171
    :cond_f9
    move-object/from16 v1, p1

    goto/16 :goto_12

    .line 169
    :cond_fd
    move-object/from16 v1, p1

    .line 218
    :goto_ff
    invoke-interface {v9, v10}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :sswitch_data_104
    .sparse-switch
        -0x49dc292d -> :sswitch_52
        -0x1272e191 -> :sswitch_47
        0x62d33430 -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_d3
        :pswitch_b9
        :pswitch_69
    .end packed-switch
.end method
