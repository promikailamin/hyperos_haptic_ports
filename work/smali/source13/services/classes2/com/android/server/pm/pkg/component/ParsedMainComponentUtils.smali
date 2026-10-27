.class Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;
.super Ljava/lang/Object;
.source "ParsedMainComponentUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseIntentFilter(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 18
    .param p0, "mainComponent"    # Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "visibleToEphemeral"    # Z
    .param p5, "allowGlobs"    # Z
    .param p6, "allowAutoVerify"    # Z
    .param p7, "allowImplicitEphemeralVisibility"    # Z
    .param p8, "failOnNoActions"    # Z
    .param p9, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponent;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "ZZZZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 119
    move-object/from16 v7, p9

    .line 120
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getName()Ljava/lang/String;

    move-result-object v0

    .line 119
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    move-object/from16 v6, p9

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;->parseIntentInfo(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 122
    .local v0, "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 123
    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 126
    :cond_1c
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 127
    .local v1, "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 128
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v2}, Landroid/content/IntentFilter;->countActions()I

    move-result v3

    .line 129
    .local v3, "actionCount":I
    if-nez v3, :cond_6c

    if-eqz p8, :cond_6c

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No actions in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 131
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    const-string v5, "PackageParsing"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 137
    :cond_6c
    if-eqz p4, :cond_70

    .line 138
    const/4 v4, 0x1

    .local v4, "intentVisibility":I
    goto :goto_7b

    .line 139
    .end local v4    # "intentVisibility":I
    :cond_70
    if-eqz p7, :cond_7a

    .line 140
    invoke-static {v1}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isImplicitlyExposedIntent(Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 141
    const/4 v4, 0x2

    .restart local v4    # "intentVisibility":I
    goto :goto_7b

    .line 143
    .end local v4    # "intentVisibility":I
    :cond_7a
    const/4 v4, 0x0

    .line 145
    .restart local v4    # "intentVisibility":I
    :goto_7b
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 147
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-interface {v7, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5
.end method

.method static parseMainComponent(Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;
    .registers 37
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "separateProcesses"    # [Ljava/lang/String;
    .param p3, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p4, "array"    # Landroid/content/res/TypedArray;
    .param p5, "flags"    # I
    .param p6, "useRoundIcon"    # Z
    .param p7, "defaultSplitName"    # Ljava/lang/String;
    .param p8, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p9, "bannerAttr"    # I
    .param p10, "descriptionAttr"    # I
    .param p11, "directBootAwareAttr"    # I
    .param p12, "enabledAttr"    # I
    .param p13, "iconAttr"    # I
    .param p14, "labelAttr"    # I
    .param p15, "logoAttr"    # I
    .param p16, "nameAttr"    # I
    .param p17, "processAttr"    # I
    .param p18, "roundIconAttr"    # I
    .param p19, "splitNameAttr"    # I
    .param p20, "attributionTagsAttr"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;",
            ">(TComponent;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "IZ",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "IIIIIIIIIIII)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TComponent;>;"
        }
    .end annotation

    .line 54
    .local p0, "component":Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;, "TComponent;"
    move-object/from16 v13, p0

    move-object/from16 v14, p4

    move-object/from16 v15, p7

    move-object/from16 v12, p8

    move/from16 v11, p11

    move/from16 v10, p12

    move/from16 v9, p17

    move/from16 v8, p19

    move/from16 v7, p20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move v15, v8

    move/from16 v8, p13

    move v15, v9

    move/from16 v9, p14

    move v15, v10

    move/from16 v10, p15

    move v15, v11

    move/from16 v11, p16

    move/from16 v12, p18

    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 57
    .local v6, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<TComponent;>;"
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 58
    return-object v6

    .line 61
    :cond_3b
    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v15, v8, :cond_56

    .line 62
    invoke-virtual {v14, v15, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v13, v1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->isDirectBootAware()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 64
    move-object/from16 v9, p3

    invoke-interface {v9, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setPartiallyDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_58

    .line 63
    :cond_53
    move-object/from16 v9, p3

    goto :goto_58

    .line 61
    :cond_56
    move-object/from16 v9, p3

    .line 68
    :goto_58
    move/from16 v1, p12

    if-eq v1, v8, :cond_63

    .line 69
    invoke-virtual {v14, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setEnabled(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 72
    :cond_63
    move/from16 v10, p17

    if-eq v10, v8, :cond_a9

    .line 74
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_77

    .line 75
    const/16 v0, 0x400

    invoke-virtual {v14, v10, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .local v0, "processName":Ljava/lang/CharSequence;
    goto :goto_7c

    .line 81
    .end local v0    # "processName":Ljava/lang/CharSequence;
    :cond_77
    invoke-virtual {v14, v10}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 85
    .local v11, "processName":Ljava/lang/CharSequence;
    :goto_7c
    nop

    .line 86
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 85
    move-object v2, v11

    move/from16 v3, p5

    move-object/from16 v4, p2

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 88
    .local v0, "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 89
    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 92
    :cond_9d
    move-object/from16 v1, p8

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    goto :goto_ab

    .line 72
    .end local v0    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .end local v11    # "processName":Ljava/lang/CharSequence;
    :cond_a9
    move-object/from16 v1, p8

    .line 95
    :goto_ab
    move/from16 v0, p19

    if-eq v0, v8, :cond_b6

    .line 96
    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setSplitName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 99
    :cond_b6
    move-object/from16 v0, p7

    if-eqz v0, :cond_c3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->getSplitName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c3

    .line 100
    invoke-virtual {v13, v0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setSplitName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 103
    :cond_c3
    move/from16 v2, p20

    if-eq v2, v8, :cond_d6

    .line 104
    invoke-virtual {v14, v2, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "attributionTags":Ljava/lang/String;
    if-eqz v3, :cond_d6

    .line 106
    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setAttributionTags([Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 110
    .end local v3    # "attributionTags":Ljava/lang/String;
    :cond_d6
    invoke-interface {v1, v13}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method
