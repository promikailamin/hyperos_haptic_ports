.class public Lcom/android/server/pm/pkg/component/ParsedInstrumentationUtils;
.super Ljava/lang/Object;
.source "ParsedInstrumentationUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseInstrumentation(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 25
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "useRoundIcon"    # Z
    .param p4, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 45
    move-object/from16 v14, p4

    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;-><init>()V

    move-object v15, v0

    .line 46
    .local v15, "instrumentation":Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 48
    .local v16, "tag":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 50
    .local v11, "sa":Landroid/content/res/TypedArray;
    const/4 v7, 0x7

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v0, 0x6

    const/16 v17, 0x2

    const/16 v18, 0x8

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object v4, v11

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v19, v11

    .end local v11    # "sa":Landroid/content/res/TypedArray;
    .local v19, "sa":Landroid/content/res/TypedArray;
    move v11, v0

    move/from16 v12, v17

    move/from16 v13, v18

    :try_start_49
    invoke-static/range {v1 .. v13}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 59
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_b3

    if-eqz v1, :cond_5f

    .line 60
    :try_start_53
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_5b

    .line 72
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-object v1

    .line 72
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;>;"
    :catchall_5b
    move-exception v0

    move-object/from16 v7, v19

    goto :goto_b6

    .line 66
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;>;"
    :cond_5f
    const/4 v1, 0x3

    move-object/from16 v7, v19

    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .local v7, "sa":Landroid/content/res/TypedArray;
    :try_start_62
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->setTargetPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;

    move-result-object v1

    const/16 v2, 0x9

    .line 67
    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->setTargetProcesses(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;

    move-result-object v1

    const/4 v2, 0x4

    .line 68
    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->setHandleProfiling(Z)Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;

    move-result-object v1

    const/4 v2, 0x5

    .line 69
    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->setFunctionalTest(Z)Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;
    :try_end_86
    .catchall {:try_start_62 .. :try_end_86} :catchall_b1

    .line 72
    nop

    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;>;"
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    nop

    .line 75
    nop

    .line 76
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object v5, v15

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 78
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 79
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 82
    :cond_a6
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {v14, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 72
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;>;"
    :catchall_b1
    move-exception v0

    goto :goto_b6

    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .restart local v19    # "sa":Landroid/content/res/TypedArray;
    :catchall_b3
    move-exception v0

    move-object/from16 v7, v19

    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .restart local v7    # "sa":Landroid/content/res/TypedArray;
    :goto_b6
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    throw v0
.end method
