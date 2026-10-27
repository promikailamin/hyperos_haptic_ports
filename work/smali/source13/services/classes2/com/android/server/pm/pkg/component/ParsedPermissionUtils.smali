.class public Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;
.super Ljava/lang/Object;
.source "ParsedPermissionUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateFootprint(Lcom/android/server/pm/pkg/component/ParsedPermission;)I
    .registers 4
    .param p0, "permission"    # Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 273
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 274
    .local v0, "size":I
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 275
    .local v1, "nonLocalizedLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_13

    .line 276
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 278
    :cond_13
    return v0
.end method

.method public static declareDuplicatePermission(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z
    .registers 10
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 306
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 307
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedPermission;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 308
    .local v1, "size":I
    if-lez v1, :cond_38

    .line 309
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 310
    .local v2, "checkDuplicatePerm":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedPermission;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v1, :cond_38

    .line 311
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 312
    .local v4, "parsedPermission":Lcom/android/server/pm/pkg/component/ParsedPermission;
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 314
    .local v6, "perm":Lcom/android/server/pm/pkg/component/ParsedPermission;
    invoke-static {v4, v6}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->isMalformedDuplicate(Lcom/android/server/pm/pkg/component/ParsedPermission;Lcom/android/server/pm/pkg/component/ParsedPermission;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 316
    const v7, 0x534e4554

    const-string v8, "213323615"

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 317
    const/4 v7, 0x1

    return v7

    .line 319
    :cond_32
    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .end local v4    # "parsedPermission":Lcom/android/server/pm/pkg/component/ParsedPermission;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "perm":Lcom/android/server/pm/pkg/component/ParsedPermission;
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 322
    .end local v2    # "checkDuplicatePerm":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedPermission;>;"
    .end local v3    # "i":I
    :cond_38
    const/4 v2, 0x0

    return v2
.end method

.method public static getProtection(Lcom/android/server/pm/pkg/component/ParsedPermission;)I
    .registers 2
    .param p0, "permission"    # Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 265
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static getProtectionFlags(Lcom/android/server/pm/pkg/component/ParsedPermission;)I
    .registers 2
    .param p0, "permission"    # Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 269
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v0

    and-int/lit8 v0, v0, -0x10

    return v0
.end method

.method public static isAppOp(Lcom/android/server/pm/pkg/component/ParsedPermission;)Z
    .registers 2
    .param p0, "permission"    # Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 260
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isMalformedDuplicate(Lcom/android/server/pm/pkg/component/ParsedPermission;Lcom/android/server/pm/pkg/component/ParsedPermission;)Z
    .registers 6
    .param p0, "p1"    # Lcom/android/server/pm/pkg/component/ParsedPermission;
    .param p1, "p2"    # Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 288
    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    if-eqz p1, :cond_2e

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_2e

    .line 292
    :cond_12
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1e

    .line 293
    return v3

    .line 295
    :cond_1e
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 296
    return v3

    .line 299
    :cond_2d
    return v0

    .line 289
    :cond_2e
    :goto_2e
    return v0
.end method

.method public static isRuntime(Lcom/android/server/pm/pkg/component/ParsedPermission;)Z
    .registers 3
    .param p0, "permission"    # Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 256
    invoke-static {p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/server/pm/pkg/component/ParsedPermission;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static parsePermission(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 27
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
            "Lcom/android/server/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 53
    move-object/from16 v7, p1

    move-object/from16 v6, p4

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "packageName":Ljava/lang/String;
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;-><init>()V

    move-object v4, v0

    .line 55
    .local v4, "permission":Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
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

    move-result-object v21

    .line 58
    .local v21, "tag":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v3, p2

    invoke-virtual {v7, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 60
    .local v2, "sa":Landroid/content/res/TypedArray;
    const/16 v14, 0x8

    const/4 v15, 0x5

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x2

    const/16 v20, 0x9

    move-object v8, v4

    move-object/from16 v9, v21

    move-object/from16 v10, p0

    move-object v11, v2

    move/from16 v12, p3

    move-object/from16 v13, p4

    :try_start_4a
    invoke-static/range {v8 .. v20}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 69
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_1ae

    if-eqz v1, :cond_63

    .line 70
    :try_start_54
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_5c

    .line 141
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-object v1

    .line 141
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;>;"
    :catchall_5c
    move-exception v0

    move-object v9, v2

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    goto/16 :goto_1b3

    .line 73
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;>;"
    :cond_63
    const/16 v1, 0xb

    :try_start_65
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_1ae

    const-string v9, "PackageParsing"

    const-string v10, "android"

    if-eqz v8, :cond_93

    .line 75
    :try_start_6f
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 76
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setBackgroundPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    goto :goto_93

    .line 79
    :cond_7d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " defines a background permission. Only the \'android\' package can do that."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_6f .. :try_end_93} :catchall_5c

    .line 86
    :cond_93
    :goto_93
    const/4 v1, 0x4

    :try_start_94
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setGroup(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v8

    const/16 v11, 0xc

    .line 88
    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setRequestRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v8

    const/4 v11, 0x3

    .line 90
    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v8

    const/4 v11, 0x7

    .line 93
    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 96
    const/16 v8, 0xa

    invoke-virtual {v2, v8, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11
    :try_end_be
    .catchall {:try_start_94 .. :try_end_be} :catchall_1ae

    .line 98
    .local v11, "knownCertsResource":I
    if-eqz v11, :cond_100

    .line 102
    :try_start_c0
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "resourceType":Ljava/lang/String;
    const-string v12, "array"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d6

    .line 104
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 105
    .local v12, "knownCerts":[Ljava/lang/String;
    if-eqz v12, :cond_d5

    .line 106
    invoke-virtual {v4, v12}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setKnownCerts([Ljava/lang/String;)V

    .line 108
    .end local v12    # "knownCerts":[Ljava/lang/String;
    :cond_d5
    goto :goto_df

    .line 109
    :cond_d6
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 110
    .local v12, "knownCert":Ljava/lang/String;
    if-eqz v12, :cond_df

    .line 111
    invoke-virtual {v4, v12}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setKnownCert(Ljava/lang/String;)V

    .line 114
    .end local v12    # "knownCert":Ljava/lang/String;
    :cond_df
    :goto_df
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->getKnownCerts()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_ff

    .line 115
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " defines a knownSigner permission but the provided knownCerts resource is null"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_c0 .. :try_end_ff} :catchall_5c

    .line 118
    .end local v8    # "resourceType":Ljava/lang/String;
    :cond_ff
    goto :goto_109

    .line 121
    :cond_100
    :try_start_100
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_104
    .catchall {:try_start_100 .. :try_end_104} :catchall_1ae

    .line 123
    .local v8, "knownCert":Ljava/lang/String;
    if-eqz v8, :cond_109

    .line 124
    :try_start_106
    invoke-virtual {v4, v8}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setKnownCert(Ljava/lang/String;)V
    :try_end_109
    .catchall {:try_start_106 .. :try_end_109} :catchall_5c

    .line 129
    .end local v8    # "knownCert":Ljava/lang/String;
    :cond_109
    :goto_109
    :try_start_109
    invoke-static {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->isRuntime(Lcom/android/server/pm/pkg/component/ParsedPermission;)Z

    move-result v8
    :try_end_10d
    .catchall {:try_start_109 .. :try_end_10d} :catchall_1ae

    if-eqz v8, :cond_147

    :try_start_10f
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11a

    goto :goto_147

    .line 134
    :cond_11a
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->getFlags()I

    move-result v8

    and-int/2addr v8, v1

    if-eqz v8, :cond_159

    .line 135
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->getFlags()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_12a

    goto :goto_159

    .line 136
    :cond_12a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission cannot be both soft and hard restricted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 137
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .end local v4    # "permission":Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v21    # "tag":Ljava/lang/String;
    .end local p0    # "pkg":Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .end local p1    # "res":Landroid/content/res/Resources;
    .end local p2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p3    # "useRoundIcon":Z
    .end local p4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    throw v1
    :try_end_147
    .catchall {:try_start_10f .. :try_end_147} :catchall_5c

    .line 130
    .restart local v2    # "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "permission":Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v21    # "tag":Ljava/lang/String;
    .restart local p0    # "pkg":Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .restart local p1    # "res":Landroid/content/res/Resources;
    .restart local p2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p3    # "useRoundIcon":Z
    .restart local p4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    :cond_147
    :goto_147
    :try_start_147
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->getFlags()I

    move-result v8

    and-int/lit8 v8, v8, -0x5

    invoke-virtual {v4, v8}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 131
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->getFlags()I

    move-result v8

    and-int/lit8 v8, v8, -0x9

    invoke-virtual {v4, v8}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    :try_end_159
    .catchall {:try_start_147 .. :try_end_159} :catchall_1ae

    .line 141
    .end local v11    # "knownCertsResource":I
    :cond_159
    :goto_159
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    nop

    .line 144
    nop

    .line 145
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->getProtectionLevel()I

    move-result v8

    invoke-static {v8}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v8

    .line 144
    invoke-virtual {v4, v8}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    .line 147
    invoke-static {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->getProtectionFlags(Lcom/android/server/pm/pkg/component/ParsedPermission;)I

    move-result v8

    and-int/lit16 v8, v8, -0x3041

    .line 150
    .local v8, "otherProtectionFlags":I
    if-eqz v8, :cond_185

    .line 151
    invoke-static {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/server/pm/pkg/component/ParsedPermission;)I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_185

    .line 152
    invoke-static {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/server/pm/pkg/component/ParsedPermission;)I

    move-result v9

    if-eq v9, v1, :cond_185

    .line 153
    const-string v1, "<permission> protectionLevel specifies a non-instant, non-appop, non-runtimeOnly flag but is not based on signature or internal type"

    invoke-interface {v6, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 157
    :cond_185
    move-object/from16 v1, p0

    move-object v9, v2

    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .local v9, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v10, v4

    .end local v4    # "permission":Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .local v10, "permission":Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    move-object/from16 v4, v21

    move-object v11, v5

    .end local v5    # "packageName":Ljava/lang/String;
    .local v11, "packageName":Ljava/lang/String;
    move-object v5, v10

    move-object v12, v6

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1a3

    .line 159
    invoke-interface {v12, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 162
    :cond_1a3
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedPermission;

    invoke-interface {v12, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 141
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;>;"
    .end local v8    # "otherProtectionFlags":I
    .end local v9    # "sa":Landroid/content/res/TypedArray;
    .end local v10    # "permission":Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .end local v11    # "packageName":Ljava/lang/String;
    .restart local v2    # "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "permission":Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .restart local v5    # "packageName":Ljava/lang/String;
    :catchall_1ae
    move-exception v0

    move-object v9, v2

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .end local v4    # "permission":Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .end local v5    # "packageName":Ljava/lang/String;
    .restart local v9    # "sa":Landroid/content/res/TypedArray;
    .restart local v10    # "permission":Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .restart local v11    # "packageName":Ljava/lang/String;
    :goto_1b3
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    throw v0
.end method

.method public static parsePermissionGroup(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
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
            "Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 216
    move-object/from16 v14, p4

    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;-><init>()V

    move-object v15, v0

    .line 217
    .local v15, "permissionGroup":Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;
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

    .line 219
    .local v16, "tag":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 221
    .local v11, "sa":Landroid/content/res/TypedArray;
    const/4 v7, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v0, 0x5

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

    .line 230
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_c7

    if-eqz v1, :cond_5f

    .line 231
    :try_start_53
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_5b

    .line 243
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    return-object v1

    .line 243
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;>;"
    :catchall_5b
    move-exception v0

    move-object/from16 v7, v19

    goto :goto_ca

    .line 235
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;>;"
    :cond_5f
    const/16 v1, 0xc

    const/4 v2, 0x0

    move-object/from16 v7, v19

    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .local v7, "sa":Landroid/content/res/TypedArray;
    :try_start_64
    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setRequestDetailRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/16 v3, 0x9

    .line 236
    invoke-virtual {v7, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setBackgroundRequestRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/16 v3, 0xa

    .line 237
    invoke-virtual {v7, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setBackgroundRequestDetailRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/16 v3, 0xb

    .line 238
    invoke-virtual {v7, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setRequestRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/4 v3, 0x3

    .line 239
    invoke-virtual {v7, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setPriority(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/4 v3, 0x6

    .line 240
    invoke-virtual {v7, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    :try_end_9b
    .catchall {:try_start_64 .. :try_end_9b} :catchall_c5

    .line 243
    nop

    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;>;"
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 244
    nop

    .line 246
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object v5, v15

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 248
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 249
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 252
    :cond_ba
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {v14, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 243
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;>;"
    :catchall_c5
    move-exception v0

    goto :goto_ca

    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .restart local v19    # "sa":Landroid/content/res/TypedArray;
    :catchall_c7
    move-exception v0

    move-object/from16 v7, v19

    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .restart local v7    # "sa":Landroid/content/res/TypedArray;
    :goto_ca
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 244
    throw v0
.end method

.method public static parsePermissionTree(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 24
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
            "Lcom/android/server/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 169
    move-object/from16 v14, p4

    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;-><init>()V

    move-object v15, v0

    .line 170
    .local v15, "permission":Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
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

    .line 173
    .local v16, "tag":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 175
    .local v17, "sa":Landroid/content/res/TypedArray;
    const/4 v7, 0x4

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v0, 0x2

    const/16 v18, 0x5

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object/from16 v4, v17

    move/from16 v5, p3

    move-object/from16 v6, p4

    move v12, v0

    move/from16 v13, v18

    :try_start_45
    invoke-static/range {v1 .. v13}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 184
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 185
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_53
    .catchall {:try_start_45 .. :try_end_53} :catchall_c0

    .line 188
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    return-object v1

    .line 188
    :cond_57
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    nop

    .line 191
    invoke-virtual {v15}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 192
    .local v1, "index":I
    if-lez v1, :cond_73

    .line 193
    invoke-virtual {v15}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v7, v1

    goto :goto_74

    .line 192
    :cond_73
    move v7, v1

    .line 195
    .end local v1    # "index":I
    .local v7, "index":I
    :goto_74
    if-gez v7, :cond_92

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<permission-tree> name has less than three segments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 197
    invoke-virtual {v15}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-interface {v14, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 200
    :cond_92
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v1

    .line 201
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setTree(Z)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    .line 203
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object v5, v15

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 205
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 208
    :cond_b5
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedPermission;

    invoke-interface {v14, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 188
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;>;"
    .end local v7    # "index":I
    :catchall_c0
    move-exception v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    throw v0
.end method
