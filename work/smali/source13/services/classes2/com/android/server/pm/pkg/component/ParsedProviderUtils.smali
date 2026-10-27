.class public Lcom/android/server/pm/pkg/component/ParsedProviderUtils;
.super Ljava/lang/Object;
.source "ParsedProviderUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseGrantUriPermission(Lcom/android/server/pm/pkg/component/ParsedProviderImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 15
    .param p0, "provider"    # Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/component/ParsedProviderImpl;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 222
    .local v0, "sa":Landroid/content/res/TypedArray;
    :try_start_6
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 225
    .local v2, "pa":Landroid/os/PatternMatcher;
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "str":Ljava/lang/String;
    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v5, :cond_1c

    .line 228
    new-instance v3, Landroid/os/PatternMatcher;

    invoke-direct {v3, v5, v6}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    goto :goto_54

    .line 230
    :cond_1c
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 232
    if-eqz v5, :cond_2b

    .line 233
    new-instance v3, Landroid/os/PatternMatcher;

    invoke-direct {v3, v5, v8}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    goto :goto_54

    .line 235
    :cond_2b
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 237
    if-eqz v5, :cond_39

    .line 238
    new-instance v3, Landroid/os/PatternMatcher;

    invoke-direct {v3, v5, v7}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    goto :goto_54

    .line 240
    :cond_39
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 242
    if-eqz v5, :cond_47

    .line 243
    new-instance v4, Landroid/os/PatternMatcher;

    invoke-direct {v4, v5, v3}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v4

    goto :goto_54

    .line 245
    :cond_47
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 247
    if-eqz v5, :cond_54

    .line 248
    new-instance v3, Landroid/os/PatternMatcher;

    invoke-direct {v3, v5, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    .line 255
    :cond_54
    :goto_54
    if-eqz v2, :cond_5d

    .line 256
    invoke-virtual {p0, v2}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->addUriPermissionPattern(Landroid/os/PatternMatcher;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    .line 257
    invoke-virtual {p0, v7}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setGrantUriPermissions(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    goto :goto_91

    .line 263
    :cond_5d
    const-string v3, "PackageParsing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <path-permission>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " at "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 264
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_91
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_95
    .catchall {:try_start_6 .. :try_end_95} :catchall_99

    .line 269
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 267
    return-object v3

    .line 269
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "pa":Landroid/os/PatternMatcher;
    .end local v5    # "str":Ljava/lang/String;
    :catchall_99
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    throw v1
.end method

.method private static parsePathPermission(Lcom/android/server/pm/pkg/component/ParsedProviderImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .param p0, "provider"    # Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/component/ParsedProviderImpl;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .line 276
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 279
    .local v5, "sa":Landroid/content/res/TypedArray;
    :try_start_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "name":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, "permission":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 285
    .local v9, "readPermission":Ljava/lang/String;
    if-nez v9, :cond_1f

    .line 286
    move-object v9, v7

    .line 288
    :cond_1f
    const/4 v10, 0x2

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 290
    .local v11, "writePermission":Ljava/lang/String;
    if-nez v11, :cond_27

    .line 291
    move-object v11, v7

    .line 294
    :cond_27
    const/4 v12, 0x0

    .line 295
    .local v12, "havePerm":Z
    if-eqz v9, :cond_30

    .line 296
    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 297
    const/4 v12, 0x1

    .line 299
    :cond_30
    if-eqz v11, :cond_38

    .line 300
    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_10c

    move-object v11, v13

    .line 301
    const/4 v12, 0x1

    .line 304
    :cond_38
    const-string v13, " "

    const-string v14, " at "

    const-string v15, "PackageParsing"

    if-nez v12, :cond_76

    .line 309
    :try_start_40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No readPermission or writePermission for <path-permission>: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 310
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 311
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 309
    invoke-static {v15, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-interface {v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_72
    .catchall {:try_start_40 .. :try_end_72} :catchall_10c

    .line 366
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 312
    return-object v6

    .line 316
    :cond_76
    const/16 v16, 0x0

    .line 317
    .local v16, "pa":Landroid/content/pm/PathPermission;
    const/4 v8, 0x7

    :try_start_79
    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    .line 318
    .local v8, "path":Ljava/lang/String;
    const/4 v10, 0x3

    if-eqz v8, :cond_88

    .line 319
    new-instance v6, Landroid/content/pm/PathPermission;

    invoke-direct {v6, v8, v10, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    goto :goto_d0

    .line 322
    :cond_88
    const/4 v10, 0x5

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 323
    if-eqz v8, :cond_99

    .line 324
    new-instance v6, Landroid/content/pm/PathPermission;

    const/4 v10, 0x2

    invoke-direct {v6, v8, v10, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    goto :goto_d0

    .line 327
    :cond_99
    const/4 v10, 0x4

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v8, v17

    .line 329
    if-eqz v8, :cond_ab

    .line 330
    new-instance v6, Landroid/content/pm/PathPermission;

    const/4 v10, 0x1

    invoke-direct {v6, v8, v10, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    goto :goto_d0

    .line 333
    :cond_ab
    const/4 v10, 0x6

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 335
    if-eqz v8, :cond_bc

    .line 336
    new-instance v6, Landroid/content/pm/PathPermission;

    const/4 v10, 0x4

    invoke-direct {v6, v8, v10, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    goto :goto_d0

    .line 339
    :cond_bc
    const/4 v10, 0x3

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 341
    if-eqz v8, :cond_ce

    .line 342
    new-instance v10, Landroid/content/pm/PathPermission;

    invoke-direct {v10, v8, v6, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v10

    move-object/from16 v6, v16

    goto :goto_d0

    .line 341
    :cond_ce
    move-object/from16 v6, v16

    .line 350
    .end local v16    # "pa":Landroid/content/pm/PathPermission;
    .local v6, "pa":Landroid/content/pm/PathPermission;
    :goto_d0
    if-eqz v6, :cond_d6

    .line 351
    invoke-virtual {v1, v6}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->addPathPermission(Landroid/content/pm/PathPermission;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    goto :goto_104

    .line 358
    :cond_d6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 359
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 361
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_104
    invoke-interface {v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_108
    .catchall {:try_start_79 .. :try_end_108} :catchall_10c

    .line 366
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 364
    return-object v3

    .line 366
    .end local v0    # "name":Ljava/lang/String;
    .end local v6    # "pa":Landroid/content/pm/PathPermission;
    .end local v7    # "permission":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "readPermission":Ljava/lang/String;
    .end local v11    # "writePermission":Ljava/lang/String;
    .end local v12    # "havePerm":Z
    :catchall_10c
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    throw v0
.end method

.method public static parseProvider([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 35
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
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 59
    move-object/from16 v9, p7

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v8

    .line 60
    .local v8, "targetSdkVersion":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, "packageName":Ljava/lang/String;
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;-><init>()V

    move-object v6, v0

    .line 62
    .local v6, "provider":Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v22

    .line 64
    .local v22, "tag":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 66
    .local v3, "sa":Landroid/content/res/TypedArray;
    const/16 v10, 0x11

    const/16 v11, 0xe

    const/16 v12, 0x12

    const/4 v13, 0x6

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0xf

    const/16 v17, 0x2

    const/16 v18, 0x8

    const/16 v19, 0x13

    const/16 v20, 0x15

    const/16 v21, 0x17

    .line 67
    move-object v1, v6

    move-object/from16 v2, v22

    move-object/from16 v23, v3

    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .local v23, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v23

    move-object/from16 v24, v6

    .end local v6    # "provider":Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .local v24, "provider":Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    move/from16 v6, p4

    move-object/from16 v25, v7

    .end local v7    # "packageName":Ljava/lang/String;
    .local v25, "packageName":Ljava/lang/String;
    move/from16 v7, p5

    move/from16 v26, v8

    .end local v8    # "targetSdkVersion":I
    .local v26, "targetSdkVersion":I
    move-object/from16 v8, p6

    move-object/from16 v9, p7

    :try_start_4c
    invoke-static/range {v1 .. v21}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 81
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedProviderImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_183

    if-eqz v1, :cond_6d

    .line 82
    move-object/from16 v8, p7

    :try_start_58
    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_60

    .line 136
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    return-object v1

    .line 136
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedProviderImpl;>;"
    :catchall_60
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v9, v23

    move-object/from16 v11, v24

    move-object/from16 v15, v25

    move/from16 v12, v26

    goto/16 :goto_190

    .line 85
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedProviderImpl;>;"
    :cond_6d
    move-object/from16 v8, p7

    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v9, v23

    .end local v23    # "sa":Landroid/content/res/TypedArray;
    .local v9, "sa":Landroid/content/res/TypedArray;
    :try_start_74
    invoke-virtual {v9, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 90
    .local v10, "authority":Ljava/lang/String;
    const/16 v1, 0xb

    invoke-virtual {v9, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_179

    move-object/from16 v11, v24

    .end local v24    # "provider":Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .local v11, "provider":Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    :try_start_81
    invoke-virtual {v11, v1}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setSyncable(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object v1
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_171

    const/4 v3, 0x7

    const/16 v4, 0x11

    const/4 v5, 0x1

    move/from16 v12, v26

    .end local v26    # "targetSdkVersion":I
    .local v12, "targetSdkVersion":I
    if-ge v12, v4, :cond_8f

    move v4, v5

    goto :goto_90

    :cond_8f
    move v4, v2

    .line 92
    :goto_90
    :try_start_90
    invoke-virtual {v9, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 95
    const/4 v1, 0x3

    invoke-virtual {v9, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "permission":Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {v9, v3, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3
    :try_end_a1
    .catchall {:try_start_90 .. :try_end_a1} :catchall_16b

    .line 99
    .local v3, "readPermission":Ljava/lang/String;
    if-nez v3, :cond_a4

    .line 100
    move-object v3, v1

    .line 102
    :cond_a4
    if-nez v3, :cond_b5

    .line 103
    :try_start_a6
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setReadPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    :try_end_ad
    .catchall {:try_start_a6 .. :try_end_ad} :catchall_ae

    goto :goto_b8

    .line 136
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedProviderImpl;>;"
    .end local v1    # "permission":Ljava/lang/String;
    .end local v3    # "readPermission":Ljava/lang/String;
    .end local v10    # "authority":Ljava/lang/String;
    :catchall_ae
    move-exception v0

    move-object/from16 v14, p1

    :goto_b1
    move-object/from16 v15, v25

    goto/16 :goto_190

    .line 105
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedProviderImpl;>;"
    .restart local v1    # "permission":Ljava/lang/String;
    .restart local v3    # "readPermission":Ljava/lang/String;
    .restart local v10    # "authority":Ljava/lang/String;
    :cond_b5
    :try_start_b5
    invoke-virtual {v11, v3}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setReadPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    .line 107
    :goto_b8
    const/4 v4, 0x5

    invoke-virtual {v9, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4
    :try_end_bd
    .catchall {:try_start_b5 .. :try_end_bd} :catchall_16b

    .line 109
    .local v4, "writePermission":Ljava/lang/String;
    if-nez v4, :cond_c0

    .line 110
    move-object v4, v1

    .line 112
    :cond_c0
    if-nez v4, :cond_ca

    .line 113
    :try_start_c2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setWritePermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    :try_end_c9
    .catchall {:try_start_c2 .. :try_end_c9} :catchall_ae

    goto :goto_cd

    .line 115
    :cond_ca
    :try_start_ca
    invoke-virtual {v11, v4}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setWritePermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    .line 118
    :goto_cd
    const/16 v6, 0xd

    .line 119
    invoke-virtual {v9, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 118
    invoke-virtual {v11, v6}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setGrantUriPermissions(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object v6

    const/16 v7, 0x16

    .line 121
    invoke-virtual {v9, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 120
    invoke-virtual {v6, v7}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setForceUriPermissions(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object v6

    const/16 v7, 0x9

    .line 124
    invoke-virtual {v9, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 123
    invoke-virtual {v6, v7}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setMultiProcess(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object v6

    const/16 v7, 0xc

    .line 125
    invoke-virtual {v9, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setInitOrder(I)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object v6

    .line 126
    invoke-virtual {v11}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->getFlags()I

    move-result v7

    const/high16 v13, 0x40000000    # 2.0f

    const/16 v14, 0x10

    invoke-static {v13, v14, v9}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v13

    or-int/2addr v7, v13

    invoke-virtual {v6, v7}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 129
    const/16 v6, 0x14

    invoke-virtual {v9, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2
    :try_end_10b
    .catchall {:try_start_ca .. :try_end_10b} :catchall_16b

    move v13, v2

    .line 131
    .local v13, "visibleToEphemeral":Z
    if-eqz v13, :cond_120

    .line 132
    :try_start_10e
    invoke-virtual {v11}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->getFlags()I

    move-result v2

    const/high16 v6, 0x100000

    or-int/2addr v2, v6

    invoke-virtual {v11, v2}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    :try_end_118
    .catchall {:try_start_10e .. :try_end_118} :catchall_ae

    .line 133
    move-object/from16 v14, p1

    :try_start_11a
    invoke-interface {v14, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_11d
    .catchall {:try_start_11a .. :try_end_11d} :catchall_11e

    goto :goto_122

    .line 136
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedProviderImpl;>;"
    .end local v1    # "permission":Ljava/lang/String;
    .end local v3    # "readPermission":Ljava/lang/String;
    .end local v4    # "writePermission":Ljava/lang/String;
    .end local v10    # "authority":Ljava/lang/String;
    .end local v13    # "visibleToEphemeral":Z
    :catchall_11e
    move-exception v0

    goto :goto_b1

    .line 131
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedProviderImpl;>;"
    .restart local v1    # "permission":Ljava/lang/String;
    .restart local v3    # "readPermission":Ljava/lang/String;
    .restart local v4    # "writePermission":Ljava/lang/String;
    .restart local v10    # "authority":Ljava/lang/String;
    .restart local v13    # "visibleToEphemeral":Z
    :cond_120
    move-object/from16 v14, p1

    .line 136
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedProviderImpl;>;"
    .end local v1    # "permission":Ljava/lang/String;
    .end local v3    # "readPermission":Ljava/lang/String;
    .end local v4    # "writePermission":Ljava/lang/String;
    :goto_122
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    nop

    .line 139
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isCantSaveState()Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 141
    invoke-virtual {v11}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->getProcessName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, v25

    .end local v25    # "packageName":Ljava/lang/String;
    .local v15, "packageName":Ljava/lang/String;
    invoke-static {v0, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 142
    const-string v0, "Heavy-weight applications can not have providers in main process"

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 139
    .end local v15    # "packageName":Ljava/lang/String;
    .restart local v25    # "packageName":Ljava/lang/String;
    :cond_13f
    move-object/from16 v15, v25

    .line 147
    .end local v25    # "packageName":Ljava/lang/String;
    .restart local v15    # "packageName":Ljava/lang/String;
    :cond_141
    if-nez v10, :cond_14a

    .line 148
    const-string v0, "<provider> does not include authorities attribute"

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 150
    :cond_14a
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_157

    .line 151
    const-string v0, "<provider> has empty authorities attribute"

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 153
    :cond_157
    invoke-virtual {v11, v10}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setAuthority(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    .line 155
    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move v5, v13

    move-object v6, v11

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/pkg/component/ParsedProviderUtils;->parseProviderTags(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/android/server/pm/pkg/component/ParsedProviderImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 136
    .end local v10    # "authority":Ljava/lang/String;
    .end local v13    # "visibleToEphemeral":Z
    .end local v15    # "packageName":Ljava/lang/String;
    .restart local v25    # "packageName":Ljava/lang/String;
    :catchall_16b
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, v25

    .end local v25    # "packageName":Ljava/lang/String;
    .restart local v15    # "packageName":Ljava/lang/String;
    goto :goto_190

    .end local v12    # "targetSdkVersion":I
    .end local v15    # "packageName":Ljava/lang/String;
    .restart local v25    # "packageName":Ljava/lang/String;
    .restart local v26    # "targetSdkVersion":I
    :catchall_171
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, v25

    move/from16 v12, v26

    .end local v25    # "packageName":Ljava/lang/String;
    .end local v26    # "targetSdkVersion":I
    .restart local v12    # "targetSdkVersion":I
    .restart local v15    # "packageName":Ljava/lang/String;
    goto :goto_190

    .end local v11    # "provider":Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .end local v12    # "targetSdkVersion":I
    .end local v15    # "packageName":Ljava/lang/String;
    .restart local v24    # "provider":Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .restart local v25    # "packageName":Ljava/lang/String;
    .restart local v26    # "targetSdkVersion":I
    :catchall_179
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v11, v24

    move-object/from16 v15, v25

    move/from16 v12, v26

    .end local v24    # "provider":Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .end local v25    # "packageName":Ljava/lang/String;
    .end local v26    # "targetSdkVersion":I
    .restart local v11    # "provider":Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .restart local v12    # "targetSdkVersion":I
    .restart local v15    # "packageName":Ljava/lang/String;
    goto :goto_190

    .end local v9    # "sa":Landroid/content/res/TypedArray;
    .end local v11    # "provider":Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .end local v12    # "targetSdkVersion":I
    .end local v15    # "packageName":Ljava/lang/String;
    .restart local v23    # "sa":Landroid/content/res/TypedArray;
    .restart local v24    # "provider":Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .restart local v25    # "packageName":Ljava/lang/String;
    .restart local v26    # "targetSdkVersion":I
    :catchall_183
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v8, p7

    move-object/from16 v9, v23

    move-object/from16 v11, v24

    move-object/from16 v15, v25

    move/from16 v12, v26

    .end local v23    # "sa":Landroid/content/res/TypedArray;
    .end local v24    # "provider":Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .end local v25    # "packageName":Ljava/lang/String;
    .end local v26    # "targetSdkVersion":I
    .restart local v9    # "sa":Landroid/content/res/TypedArray;
    .restart local v11    # "provider":Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .restart local v12    # "targetSdkVersion":I
    .restart local v15    # "packageName":Ljava/lang/String;
    :goto_190
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    throw v0
.end method

.method private static parseProviderTags(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/android/server/pm/pkg/component/ParsedProviderImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 25
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "visibleToEphemeral"    # Z
    .param p5, "provider"    # Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .param p6, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Lcom/android/server/pm/pkg/component/ParsedProviderImpl;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 165
    .local v15, "depth":I
    :goto_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v9, v0

    .local v9, "type":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_f9

    const/4 v0, 0x3

    if-ne v9, v0, :cond_26

    .line 167
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v15, :cond_20

    goto :goto_26

    :cond_20
    move-object/from16 v0, p1

    move/from16 v16, v9

    goto/16 :goto_fd

    .line 168
    :cond_26
    :goto_26
    const/4 v2, 0x2

    if-eq v9, v2, :cond_2a

    .line 169
    goto :goto_e

    .line 172
    :cond_2a
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 174
    .local v8, "name":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_102

    :cond_36
    goto :goto_6b

    :sswitch_37
    const-string/jumbo v0, "path-permission"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v1, 0x4

    goto :goto_6c

    :sswitch_42
    const-string/jumbo v0, "property"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v1, v2

    goto :goto_6c

    :sswitch_4d
    const-string v0, "intent-filter"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v1, 0x0

    goto :goto_6c

    :sswitch_57
    const-string/jumbo v0, "meta-data"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_6c

    :sswitch_61
    const-string v1, "grant-uri-permission"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    move v1, v0

    goto :goto_6c

    :goto_6b
    move v1, v3

    :goto_6c
    packed-switch v1, :pswitch_data_118

    .line 204
    move-object/from16 v17, v8

    move/from16 v16, v9

    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "type":I
    .local v16, "type":I
    .local v17, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v10, v12, v14}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto/16 :goto_ec

    .line 200
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v16    # "type":I
    .end local v17    # "name":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "type":I
    :pswitch_7b
    invoke-static {v13, v10, v11, v12, v14}, Lcom/android/server/pm/pkg/component/ParsedProviderUtils;->parsePathPermission(Lcom/android/server/pm/pkg/component/ParsedProviderImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 201
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v1, v0

    move-object/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v0, p1

    goto/16 :goto_ec

    .line 196
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_88
    invoke-static {v13, v10, v11, v12, v14}, Lcom/android/server/pm/pkg/component/ParsedProviderUtils;->parseGrantUriPermission(Lcom/android/server/pm/pkg/component/ParsedProviderImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 197
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v1, v0

    move-object/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v0, p1

    goto :goto_ec

    .line 193
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_94
    invoke-static {v13, v10, v11, v12, v14}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 194
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v1, v0

    move-object/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v0, p1

    goto :goto_ec

    .line 190
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_a0
    invoke-static {v13, v10, v11, v12, v14}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 191
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v1, v0

    move-object/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v0, p1

    goto :goto_ec

    .line 176
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_ac
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    .line 177
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v17, v8

    .end local v8    # "name":Ljava/lang/String;
    .restart local v17    # "name":Ljava/lang/String;
    move/from16 v8, v16

    move/from16 v16, v9

    .end local v9    # "type":I
    .restart local v16    # "type":I
    move-object/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 181
    .local v0, "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;>;"
    move-object v1, v0

    .line 182
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 183
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 184
    .local v2, "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 185
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v3}, Landroid/content/IntentFilter;->getOrder()I

    move-result v4

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->getOrder()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setOrder(I)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 186
    invoke-virtual {v13, v2}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->addIntent(Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;)V

    .line 208
    .end local v0    # "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;>;"
    .end local v2    # "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_ea
    move-object/from16 v0, p1

    :goto_ec
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 209
    invoke-interface {v14, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 211
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v17    # "name":Ljava/lang/String;
    :cond_f7
    goto/16 :goto_e

    .line 165
    .end local v16    # "type":I
    .restart local v9    # "type":I
    :cond_f9
    move-object/from16 v0, p1

    move/from16 v16, v9

    .line 213
    .end local v9    # "type":I
    .restart local v16    # "type":I
    :goto_fd
    invoke-interface {v14, v13}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :sswitch_data_102
    .sparse-switch
        -0x6c28de5f -> :sswitch_61
        -0x4284098e -> :sswitch_57
        -0x3d616837 -> :sswitch_4d
        -0x3b32222b -> :sswitch_42
        0x25eb3477 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_a0
        :pswitch_94
        :pswitch_88
        :pswitch_7b
    .end packed-switch
.end method
