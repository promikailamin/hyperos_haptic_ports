.class public Lcom/android/server/pm/pkg/component/ParsedActivityUtils;
.super Ljava/lang/Object;
.source "ParsedActivityUtils.java"


# static fields
.field public static final LOG_UNSAFE_BROADCASTS:Z = false

.field private static final RECREATE_ON_CONFIG_CHANGES_MASK:I = 0x3

.field public static final SAFE_BROADCASTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 73
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->SAFE_BROADCASTS:Ljava/util/Set;

    .line 75
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityConfigChanges(II)I
    .registers 3
    .param p0, "configChanges"    # I
    .param p1, "recreateOnConfigChanges"    # I

    .line 624
    not-int v0, p1

    and-int/lit8 v0, v0, 0x3

    or-int/2addr v0, p0

    return v0
.end method

.method private static getActivityResizeMode(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;I)I
    .registers 8
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p1, "sa"    # Landroid/content/res/TypedArray;
    .param p2, "screenOrientation"    # I

    .line 512
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object v0

    .line 514
    .local v0, "resizeableActivity":Ljava/lang/Boolean;
    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2f

    if-eqz v0, :cond_10

    goto :goto_2f

    .line 525
    :cond_10
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isResizeableActivityViaSdkVersion()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 528
    return v3

    .line 533
    :cond_17
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 534
    const/4 v1, 0x6

    return v1

    .line 535
    :cond_1f
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 536
    const/4 v1, 0x5

    return v1

    .line 537
    :cond_27
    const/16 v1, 0xe

    if-ne p2, v1, :cond_2d

    .line 538
    const/4 v1, 0x7

    return v1

    .line 540
    :cond_2d
    const/4 v1, 0x4

    return v1

    .line 517
    :cond_2f
    :goto_2f
    const/4 v2, 0x0

    if-eqz v0, :cond_39

    .line 518
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_3a

    :cond_39
    move v3, v2

    .line 517
    :goto_3a
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 519
    const/4 v1, 0x2

    return v1

    .line 521
    :cond_42
    return v2
.end method

.method public static parseActivityAlias(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 33
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "useRoundIcon"    # Z
    .param p4, "defaultSplitName"    # Ljava/lang/String;
    .param p5, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    move-object/from16 v9, p5

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v8, p1

    move-object/from16 v7, p2

    invoke-virtual {v8, v7, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 239
    .local v5, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x7

    const/16 v1, 0x400

    :try_start_f
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_13e

    .line 242
    .local v0, "targetActivity":Ljava/lang/String;
    if-nez v0, :cond_24

    .line 243
    :try_start_15
    const-string v1, "<activity-alias> does not specify android:targetActivity"

    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1f

    .line 302
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 243
    return-object v1

    .line 302
    .end local v0    # "targetActivity":Ljava/lang/String;
    :catchall_1f
    move-exception v0

    move-object/from16 v26, v5

    goto/16 :goto_141

    .line 246
    .restart local v0    # "targetActivity":Ljava/lang/String;
    :cond_24
    :try_start_24
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 247
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_13e

    move-object v0, v1

    .line 248
    if-nez v0, :cond_4b

    .line 249
    :try_start_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty class name in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_1f

    .line 302
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 249
    return-object v1

    .line 252
    :cond_4b
    const/4 v1, 0x0

    .line 254
    .local v1, "target":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :try_start_4c
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    move-object v15, v2

    .line 255
    .local v15, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    invoke-static {v15}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v2
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_13e

    move v14, v2

    .line 256
    .local v14, "activitiesSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_57
    if-ge v2, v14, :cond_6f

    .line 257
    :try_start_59
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 258
    .local v3, "t":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 259
    move-object v1, v3

    .line 260
    move-object v13, v1

    goto :goto_70

    .line 256
    .end local v3    # "t":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_6f
    move-object v13, v1

    .line 264
    .end local v1    # "target":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .end local v2    # "i":I
    .local v13, "target":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :goto_70
    if-nez v13, :cond_a5

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<activity-alias> target activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in manifest with activities = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 267
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", parsedActivities = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_a1
    .catchall {:try_start_59 .. :try_end_a1} :catchall_1f

    .line 302
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 265
    return-object v1

    .line 271
    :cond_a5
    :try_start_a5
    invoke-static {v0, v13}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->makeAlias(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v1

    .line 272
    .local v1, "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_c6
    .catchall {:try_start_a5 .. :try_end_c6} :catchall_13e

    .line 274
    .local v2, "tag":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x6

    const/4 v12, -0x1

    const/16 v16, 0x4

    move-object/from16 v22, v13

    .end local v13    # "target":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .local v22, "target":Lcom/android/server/pm/pkg/component/ParsedActivity;
    move/from16 v13, v16

    const/16 v16, 0x1

    move/from16 v23, v14

    .end local v14    # "activitiesSize":I
    .local v23, "activitiesSize":I
    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v24, v15

    .end local v15    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    .local v24, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    move/from16 v15, v16

    const/16 v16, 0x8

    const/16 v17, 0x2

    const/16 v18, -0x1

    const/16 v19, 0xb

    const/16 v20, -0x1

    const/16 v21, 0xc

    move-object/from16 v25, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .local v25, "packageName":Ljava/lang/String;
    move-object/from16 v4, p0

    move-object/from16 v26, v5

    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .local v26, "sa":Landroid/content/res/TypedArray;
    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    :try_start_f6
    invoke-static/range {v1 .. v21}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    move-object v15, v3

    .line 288
    .local v15, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivityImpl;>;"
    invoke-interface {v15}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 289
    move-object/from16 v14, p5

    invoke-interface {v14, v15}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_107
    .catchall {:try_start_f6 .. :try_end_107} :catchall_13c

    .line 302
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    .line 289
    return-object v3

    .line 293
    :cond_10b
    move-object/from16 v14, p5

    .line 294
    :try_start_10d
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v3

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_118

    const/4 v3, 0x1

    goto :goto_119

    :cond_118
    const/4 v3, 0x0

    :goto_119
    move v11, v3

    .line 296
    .local v11, "visibleToEphemeral":Z
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v13, 0x9

    const/16 v16, 0x3

    const/16 v17, 0x5

    move-object v3, v1

    move-object/from16 v4, p0

    move-object v5, v2

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, v26

    move-object/from16 v12, p5

    move/from16 v14, v16

    move-object/from16 v16, v15

    .end local v15    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivityImpl;>;"
    .local v16, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivityImpl;>;"
    move/from16 v15, v17

    invoke-static/range {v3 .. v15}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityOrAlias(Lcom/android/server/pm/pkg/component/ParsedActivityImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_138
    .catchall {:try_start_10d .. :try_end_138} :catchall_13c

    .line 302
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    return-object v3

    .line 302
    .end local v0    # "targetActivity":Ljava/lang/String;
    .end local v1    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .end local v2    # "tag":Ljava/lang/String;
    .end local v11    # "visibleToEphemeral":Z
    .end local v16    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivityImpl;>;"
    .end local v22    # "target":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .end local v23    # "activitiesSize":I
    .end local v24    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    .end local v25    # "packageName":Ljava/lang/String;
    :catchall_13c
    move-exception v0

    goto :goto_141

    .end local v26    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "sa":Landroid/content/res/TypedArray;
    :catchall_13e
    move-exception v0

    move-object/from16 v26, v5

    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .restart local v26    # "sa":Landroid/content/res/TypedArray;
    :goto_141
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    .line 303
    throw v0
.end method

.method private static parseActivityOrAlias(Lcom/android/server/pm/pkg/component/ParsedActivityImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;
    .registers 35
    .param p0, "activity"    # Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "array"    # Landroid/content/res/TypedArray;
    .param p6, "isReceiver"    # Z
    .param p7, "isAlias"    # Z
    .param p8, "visibleToEphemeral"    # Z
    .param p9, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p10, "parentActivityNameAttr"    # I
    .param p11, "permissionAttr"    # I
    .param p12, "exportedAttr"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/component/ParsedActivityImpl;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Ljava/lang/String;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/TypedArray;",
            "ZZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "III)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 321
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p9

    move/from16 v13, p12

    const/16 v0, 0x400

    move/from16 v14, p10

    invoke-virtual {v11, v14, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    .line 322
    .local v15, "parentActivityName":Ljava/lang/String;
    if-eqz v15, :cond_4c

    .line 323
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "parentClassName":Ljava/lang/String;
    if-nez v1, :cond_49

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " specified invalid parentActivityName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageParsing"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 329
    :cond_49
    invoke-virtual {v7, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setParentActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 333
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "parentClassName":Ljava/lang/String;
    :cond_4c
    :goto_4c
    const/4 v6, 0x0

    move/from16 v5, p11

    invoke-virtual {v11, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "permission":Ljava/lang/String;
    if-eqz p7, :cond_59

    .line 338
    invoke-virtual {v7, v4}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    goto :goto_64

    .line 340
    :cond_59
    if-eqz v4, :cond_5d

    move-object v0, v4

    goto :goto_61

    :cond_5d
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v0

    :goto_61
    invoke-virtual {v7, v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 343
    :goto_64
    nop

    .line 344
    if-eqz p7, :cond_6a

    .line 345
    const/16 v0, 0xe

    goto :goto_6c

    .line 346
    :cond_6a
    const/16 v0, 0x3d

    .line 344
    :goto_6c
    invoke-static {v11, v10, v0, v12}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->parseKnownActivityEmbeddingCerts(Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 347
    .local v3, "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 348
    invoke-interface {v12, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 350
    :cond_7b
    nop

    .line 351
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 352
    .local v0, "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_87

    .line 353
    invoke-virtual {v7, v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    .line 357
    .end local v0    # "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_87
    invoke-virtual {v11, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    .line 358
    .local v16, "setExported":Z
    if-eqz v16, :cond_94

    .line 359
    invoke-virtual {v11, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 362
    :cond_94
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 364
    .local v2, "depth":I
    :goto_98
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v6, 0x1

    if-eq v0, v6, :cond_1c8

    const/4 v0, 0x3

    if-ne v1, v0, :cond_b8

    .line 366
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_aa

    goto :goto_b8

    :cond_aa
    move-object/from16 v0, p2

    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    const/16 v17, 0x0

    goto/16 :goto_1d4

    .line 367
    :cond_b8
    :goto_b8
    const/4 v0, 0x2

    if-eq v1, v0, :cond_bd

    .line 368
    const/4 v6, 0x0

    goto :goto_98

    .line 372
    :cond_bd
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "intent-filter"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 373
    xor-int/lit8 v6, p6, 0x1

    move-object/from16 v0, p1

    move/from16 v18, v1

    .end local v1    # "type":I
    .local v18, "type":I
    move-object/from16 v1, p0

    move/from16 v19, v2

    .end local v2    # "depth":I
    .local v19, "depth":I
    move v2, v6

    move-object/from16 v20, v3

    .end local v3    # "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v20, "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    move/from16 v3, p8

    move-object/from16 v21, v4

    .end local v4    # "permission":Ljava/lang/String;
    .local v21, "permission":Ljava/lang/String;
    move-object/from16 v4, p4

    move-object/from16 v5, p3

    const/16 v17, 0x0

    move-object/from16 v6, p9

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseIntentFilter(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 375
    .local v0, "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 376
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 377
    .local v1, "intentInfo":Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    if-eqz v1, :cond_10a

    .line 378
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 379
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v2}, Landroid/content/IntentFilter;->getOrder()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getOrder()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setOrder(I)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 380
    invoke-virtual {v7, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->addIntent(Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;)V

    .line 400
    .end local v1    # "intentInfo":Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_10a
    nop

    .line 401
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v1, v0

    move-object/from16 v0, p2

    goto/16 :goto_1b1

    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v18    # "type":I
    .end local v19    # "depth":I
    .end local v20    # "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v21    # "permission":Ljava/lang/String;
    .local v1, "type":I
    .local v2, "depth":I
    .restart local v3    # "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v4    # "permission":Ljava/lang/String;
    :cond_110
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    const/16 v17, 0x0

    .end local v1    # "type":I
    .end local v2    # "depth":I
    .end local v3    # "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4    # "permission":Ljava/lang/String;
    .restart local v18    # "type":I
    .restart local v19    # "depth":I
    .restart local v20    # "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v21    # "permission":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 402
    invoke-static {v7, v8, v10, v9, v12}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    move-object/from16 v0, p2

    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto/16 :goto_1b1

    .line 403
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_130
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "property"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146

    .line 404
    invoke-static {v7, v8, v10, v9, v12}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    move-object/from16 v0, p2

    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto/16 :goto_1b1

    .line 405
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_146
    if-nez p6, :cond_182

    if-nez p7, :cond_182

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "preferred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 406
    const/4 v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v3, p8

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p9

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseIntentFilter(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 409
    .local v0, "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 410
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 411
    .local v1, "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    if-eqz v1, :cond_17d

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 415
    .end local v1    # "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    :cond_17d
    nop

    .line 416
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v1, v0

    move-object/from16 v0, p2

    goto :goto_1b1

    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_182
    if-nez p6, :cond_1ab

    if-nez p7, :cond_1ab

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "layout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 417
    nop

    .line 418
    invoke-static {v10, v9, v12}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityWindowLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 419
    .local v0, "layoutResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/ActivityInfo$WindowLayout;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1a6

    .line 420
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v7, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 422
    :cond_1a6
    nop

    .line 423
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v1, v0

    move-object/from16 v0, p2

    goto :goto_1b1

    .line 424
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_1ab
    move-object/from16 v0, p2

    invoke-static {v0, v8, v9, v12}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 427
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;
    :goto_1b1
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1bc

    .line 428
    invoke-interface {v12, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 430
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_1bc
    move/from16 v5, p11

    move/from16 v6, v17

    move/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    goto/16 :goto_98

    .line 364
    .end local v18    # "type":I
    .end local v19    # "depth":I
    .end local v20    # "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v21    # "permission":Ljava/lang/String;
    .local v1, "type":I
    .restart local v2    # "depth":I
    .restart local v3    # "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v4    # "permission":Ljava/lang/String;
    :cond_1c8
    move-object/from16 v0, p2

    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    const/16 v17, 0x0

    .line 432
    .end local v1    # "type":I
    .end local v2    # "depth":I
    .end local v3    # "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4    # "permission":Ljava/lang/String;
    .restart local v18    # "type":I
    .restart local v19    # "depth":I
    .restart local v20    # "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v21    # "permission":Ljava/lang/String;
    :goto_1d4
    if-nez p7, :cond_1ff

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getLaunchMode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1ff

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "android.activity.launch_mode"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ff

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "launchMode":Ljava/lang/String;
    if-eqz v1, :cond_1ff

    const-string/jumbo v3, "singleInstancePerTask"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ff

    .line 438
    invoke-virtual {v7, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 442
    .end local v1    # "launchMode":Ljava/lang/String;
    :cond_1ff
    if-nez p7, :cond_220

    .line 445
    const/16 v1, 0x3b

    invoke-virtual {v11, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 447
    .local v1, "canDisplayOnRemoteDevices":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.can_display_on_remote_devices"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_214

    .line 449
    const/4 v1, 0x0

    .line 451
    :cond_214
    if-eqz v1, :cond_220

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    invoke-virtual {v7, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 457
    .end local v1    # "canDisplayOnRemoteDevices":Z
    :cond_220
    nop

    .line 458
    invoke-static {v7, v12}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->resolveActivityWindowLayout(Lcom/android/server/pm/pkg/component/ParsedActivity;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 459
    .local v1, "layoutResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/ActivityInfo$WindowLayout;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_230

    .line 460
    invoke-interface {v12, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 462
    :cond_230
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v7, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 464
    if-nez v16, :cond_283

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_246

    goto :goto_248

    :cond_246
    move/from16 v6, v17

    :goto_248
    move v2, v6

    .line 466
    .local v2, "hasIntentFilters":Z
    if-eqz v2, :cond_280

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Targeting S+ (version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and above) requires that an explicit value for android:exported be defined when intent filters are present"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0x8f45e27

    .line 467
    invoke-interface {v12, v3, v4, v5}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 472
    .local v3, "exportedCheckResult":Landroid/content/pm/parsing/result/ParseResult;
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_280

    .line 473
    invoke-interface {v12, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 476
    .end local v3    # "exportedCheckResult":Landroid/content/pm/parsing/result/ParseResult;
    :cond_280
    invoke-virtual {v7, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 479
    .end local v2    # "hasIntentFilters":Z
    :cond_283
    invoke-interface {v12, v7}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method public static parseActivityOrReceiver([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
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
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    move-object/from16 v9, p1

    move-object/from16 v8, p7

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "packageName":Ljava/lang/String;
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;-><init>()V

    move-object v6, v0

    .line 93
    .local v6, "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "receiver"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 94
    .local v22, "receiver":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 95
    .local v23, "tag":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 97
    .local v3, "sa":Landroid/content/res/TypedArray;
    const/16 v10, 0x1e

    const/16 v11, 0x11

    const/16 v12, 0x2a

    const/4 v13, 0x5

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x17

    const/16 v17, 0x3

    const/16 v18, 0x7

    const/16 v19, 0x2c

    const/16 v20, 0x30

    const/16 v21, 0x39

    .line 98
    move-object v1, v6

    move-object/from16 v2, v23

    move-object/from16 v24, v3

    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .local v24, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v24

    move-object/from16 v25, v6

    .end local v6    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .local v25, "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    move/from16 v6, p4

    move-object/from16 v26, v7

    .end local v7    # "packageName":Ljava/lang/String;
    .local v26, "packageName":Ljava/lang/String;
    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    :try_start_6c
    invoke-static/range {v1 .. v21}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 112
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivityImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_324

    if-eqz v1, :cond_89

    .line 113
    move-object/from16 v14, p7

    :try_start_78
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_80

    .line 229
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    return-object v1

    .line 229
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivityImpl;>;"
    :catchall_80
    move-exception v0

    move-object/from16 v18, v24

    move-object/from16 v17, v25

    move-object/from16 v15, v26

    goto/16 :goto_32d

    .line 116
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivityImpl;>;"
    :cond_89
    move-object/from16 v14, p7

    if-eqz v22, :cond_b9

    :try_start_8d
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isCantSaveState()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 118
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getProcessName()Ljava/lang/String;

    move-result-object v1
    :try_end_97
    .catchall {:try_start_8d .. :try_end_97} :catchall_b0

    move-object/from16 v15, v26

    .end local v26    # "packageName":Ljava/lang/String;
    .local v15, "packageName":Ljava/lang/String;
    :try_start_99
    invoke-static {v1, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 119
    const-string v1, "Heavy-weight applications can not have receivers in main process"

    invoke-interface {v14, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_a5
    .catchall {:try_start_99 .. :try_end_a5} :catchall_a9

    .line 229
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    return-object v1

    .line 229
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivityImpl;>;"
    :catchall_a9
    move-exception v0

    move-object/from16 v18, v24

    move-object/from16 v17, v25

    goto/16 :goto_32d

    .end local v15    # "packageName":Ljava/lang/String;
    .restart local v26    # "packageName":Ljava/lang/String;
    :catchall_b0
    move-exception v0

    move-object/from16 v15, v26

    move-object/from16 v18, v24

    move-object/from16 v17, v25

    .end local v26    # "packageName":Ljava/lang/String;
    .restart local v15    # "packageName":Ljava/lang/String;
    goto/16 :goto_32d

    .line 116
    .end local v15    # "packageName":Ljava/lang/String;
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivityImpl;>;"
    .restart local v26    # "packageName":Ljava/lang/String;
    :cond_b9
    move-object/from16 v15, v26

    .line 128
    .end local v26    # "packageName":Ljava/lang/String;
    .restart local v15    # "packageName":Ljava/lang/String;
    :cond_bb
    const/4 v1, 0x0

    move-object/from16 v13, v24

    .end local v24    # "sa":Landroid/content/res/TypedArray;
    .local v13, "sa":Landroid/content/res/TypedArray;
    :try_start_be
    invoke-virtual {v13, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2
    :try_end_c2
    .catchall {:try_start_be .. :try_end_c2} :catchall_31e

    move-object/from16 v12, v25

    .end local v25    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .local v12, "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    :try_start_c4
    invoke-virtual {v12, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setTheme(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    const/16 v3, 0x1a

    .line 129
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getUiOptions()I

    move-result v4

    invoke-virtual {v13, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setUiOptions(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 131
    invoke-virtual {v12}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v2

    const/16 v3, 0x40

    const/16 v4, 0x13

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isAllowTaskReparenting()Z

    move-result v5

    invoke-static {v3, v4, v5, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v3

    const/16 v4, 0x12

    .line 132
    const/16 v5, 0x8

    invoke-static {v5, v4, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0xb

    .line 133
    const/4 v6, 0x4

    invoke-static {v6, v4, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0xd

    .line 134
    const/16 v7, 0x20

    invoke-static {v7, v4, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x100

    const/16 v8, 0x16

    .line 135
    invoke-static {v4, v8, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0xa

    .line 136
    const/4 v8, 0x2

    invoke-static {v8, v4, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x800

    const/16 v9, 0x18

    .line 137
    invoke-static {v4, v9, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x9

    .line 138
    const/4 v9, 0x1

    invoke-static {v9, v4, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x80

    const/16 v10, 0x15

    .line 139
    invoke-static {v4, v10, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x27

    .line 140
    const/16 v10, 0x400

    invoke-static {v10, v4, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x1d

    .line 141
    invoke-static {v10, v4, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0xc

    .line 142
    const/16 v11, 0x10

    invoke-static {v11, v4, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x20000000

    const/16 v5, 0x3f

    .line 143
    invoke-static {v4, v5, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 131
    invoke-virtual {v12, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    :try_end_150
    .catchall {:try_start_c4 .. :try_end_150} :catchall_318

    .line 145
    if-nez v22, :cond_28d

    .line 146
    :try_start_152
    invoke-virtual {v12}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v2

    const/16 v3, 0x200

    const/16 v4, 0x19

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isBaseHardwareAccelerated()Z

    move-result v5

    invoke-static {v3, v4, v5, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v3

    const/high16 v4, -0x80000000

    const/16 v5, 0x1f

    .line 147
    invoke-static {v4, v5, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x40000

    const/16 v5, 0x3e

    .line 148
    invoke-static {v4, v5, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x2000

    const/16 v5, 0x23

    .line 149
    invoke-static {v4, v5, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x1000

    const/16 v5, 0x24

    .line 150
    invoke-static {v4, v5, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x4000

    const/16 v5, 0x25

    .line 151
    invoke-static {v4, v5, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x800000

    const/16 v5, 0x33

    .line 152
    invoke-static {v4, v5, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x400000

    const/16 v5, 0x29

    .line 153
    invoke-static {v4, v5, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x1000000

    const/16 v5, 0x34

    .line 154
    invoke-static {v4, v5, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x2000000

    const/16 v5, 0x38

    .line 155
    invoke-static {v4, v5, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    const/high16 v3, 0x10000000

    const/16 v4, 0x3c

    .line 156
    invoke-static {v3, v4, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v3

    or-int/2addr v2, v3

    .line 146
    invoke-virtual {v12, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 158
    invoke-virtual {v12}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getPrivateFlags()I

    move-result v2

    const/16 v3, 0x36

    invoke-static {v9, v3, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v3

    const/16 v4, 0x3a

    .line 160
    invoke-static {v8, v4, v9, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 158
    invoke-virtual {v12, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setPrivateFlags(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 163
    const/16 v2, 0x31

    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setColorMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    const/16 v3, 0x21

    .line 164
    invoke-virtual {v13, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setDocumentLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    const/16 v3, 0xe

    .line 165
    invoke-virtual {v13, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    const/16 v3, 0x26

    .line 166
    invoke-virtual {v13, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setLockTaskLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    const/16 v3, 0x22

    .line 167
    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v4

    invoke-virtual {v13, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setMaxRecents(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    .line 168
    invoke-virtual {v13, v7, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setPersistableMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    const/16 v3, 0x2b

    .line 169
    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setRequestedVrComponent(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    const/16 v3, 0x2e

    .line 170
    const/4 v4, -0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setRotationAnimation(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    const/16 v3, 0x14

    .line 171
    invoke-virtual {v13, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setSoftInputMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    .line 173
    invoke-virtual {v13, v11, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/16 v5, 0x2f

    .line 174
    invoke-virtual {v13, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 172
    invoke-static {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->getActivityConfigChanges(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setConfigChanges(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 177
    const/16 v2, 0xf

    invoke-virtual {v13, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2
    :try_end_249
    .catchall {:try_start_152 .. :try_end_249} :catchall_284

    .line 178
    .local v2, "screenOrientation":I
    move-object/from16 v11, p1

    :try_start_24b
    invoke-static {v11, v13, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->getActivityResizeMode(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;I)I

    move-result v3

    .line 179
    .local v3, "resizeMode":I
    invoke-virtual {v12, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setScreenOrientation(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v4

    .line 180
    invoke-virtual {v4, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setResizeMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 182
    const/16 v4, 0x32

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_26d

    .line 183
    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v5

    if-ne v5, v6, :cond_26d

    .line 185
    nop

    .line 186
    invoke-virtual {v13, v4, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 185
    invoke-virtual {v12, v3, v4}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setMaxAspectRatio(IF)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 190
    :cond_26d
    const/16 v4, 0x35

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_283

    .line 191
    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v5

    if-ne v5, v6, :cond_283

    .line 193
    nop

    .line 194
    invoke-virtual {v13, v4, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 193
    invoke-virtual {v12, v3, v4}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setMinAspectRatio(IF)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    :try_end_283
    .catchall {:try_start_24b .. :try_end_283} :catchall_2c6

    .line 197
    .end local v2    # "screenOrientation":I
    .end local v3    # "resizeMode":I
    :cond_283
    goto :goto_2a7

    .line 229
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivityImpl;>;"
    :catchall_284
    move-exception v0

    move-object/from16 v11, p1

    :goto_287
    move-object/from16 v17, v12

    move-object/from16 v18, v13

    goto/16 :goto_32d

    .line 198
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivityImpl;>;"
    :cond_28d
    move-object/from16 v11, p1

    :try_start_28f
    invoke-virtual {v12, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    .line 199
    invoke-virtual {v2, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setConfigChanges(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    .line 200
    invoke-virtual {v12}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/16 v5, 0x1c

    invoke-static {v4, v5, v13}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 204
    :goto_2a7
    const/16 v2, 0x8

    invoke-virtual {v13, v2, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .line 208
    .local v10, "taskAffinity":Ljava/lang/String;
    nop

    .line 209
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTaskAffinity()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-static {v15, v2, v10, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move-object v8, v2

    .line 210
    .local v8, "affinityNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2
    :try_end_2bc
    .catchall {:try_start_28f .. :try_end_2bc} :catchall_318

    if-eqz v2, :cond_2c8

    .line 211
    :try_start_2be
    invoke-interface {v14, v8}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_2c2
    .catchall {:try_start_2be .. :try_end_2c2} :catchall_2c6

    .line 229
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    return-object v1

    .line 229
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivityImpl;>;"
    .end local v8    # "affinityNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .end local v10    # "taskAffinity":Ljava/lang/String;
    :catchall_2c6
    move-exception v0

    goto :goto_287

    .line 214
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivityImpl;>;"
    .restart local v8    # "affinityNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .restart local v10    # "taskAffinity":Ljava/lang/String;
    :cond_2c8
    :try_start_2c8
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 216
    const/16 v2, 0x2d

    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_2d7
    .catchall {:try_start_2c8 .. :try_end_2d7} :catchall_318

    move/from16 v16, v1

    .line 217
    .local v16, "visibleToEphemeral":Z
    if-eqz v16, :cond_2e8

    .line 218
    :try_start_2db
    invoke-virtual {v12}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v1

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    invoke-virtual {v12, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 219
    invoke-interface {v11, v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_2e8
    .catchall {:try_start_2db .. :try_end_2e8} :catchall_2c6

    .line 222
    :cond_2e8
    const/4 v9, 0x0

    const/16 v17, 0x1b

    const/16 v18, 0x4

    const/16 v19, 0x6

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, v23

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v13

    move/from16 v7, v22

    move-object/from16 v20, v8

    .end local v8    # "affinityNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .local v20, "affinityNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    move v8, v9

    move/from16 v9, v16

    move-object/from16 v21, v10

    .end local v10    # "taskAffinity":Ljava/lang/String;
    .local v21, "taskAffinity":Ljava/lang/String;
    move-object/from16 v10, p7

    move/from16 v11, v17

    move-object/from16 v17, v12

    .end local v12    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .local v17, "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    move/from16 v12, v18

    move-object/from16 v18, v13

    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .local v18, "sa":Landroid/content/res/TypedArray;
    move/from16 v13, v19

    :try_start_30e
    invoke-static/range {v1 .. v13}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityOrAlias(Lcom/android/server/pm/pkg/component/ParsedActivityImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_312
    .catchall {:try_start_30e .. :try_end_312} :catchall_316

    .line 229
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    return-object v1

    .line 229
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivityImpl;>;"
    .end local v16    # "visibleToEphemeral":Z
    .end local v20    # "affinityNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .end local v21    # "taskAffinity":Ljava/lang/String;
    :catchall_316
    move-exception v0

    goto :goto_32d

    .end local v17    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v12    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    :catchall_318
    move-exception v0

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    .end local v12    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .restart local v17    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    goto :goto_32d

    .end local v17    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    :catchall_31e
    move-exception v0

    move-object/from16 v18, v13

    move-object/from16 v17, v25

    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v25    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .restart local v17    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    goto :goto_32d

    .end local v15    # "packageName":Ljava/lang/String;
    .end local v17    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v24    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .restart local v26    # "packageName":Ljava/lang/String;
    :catchall_324
    move-exception v0

    move-object/from16 v14, p7

    move-object/from16 v18, v24

    move-object/from16 v17, v25

    move-object/from16 v15, v26

    .end local v24    # "sa":Landroid/content/res/TypedArray;
    .end local v25    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .end local v26    # "packageName":Ljava/lang/String;
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v17    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :goto_32d
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    throw v0
.end method

.method private static parseActivityWindowLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 26
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ">;"
        }
    .end annotation

    .line 547
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 549
    .local v3, "sw":Landroid/content/res/TypedArray;
    const/4 v0, -0x1

    .line 550
    .local v0, "width":I
    const/high16 v4, -0x40800000    # -1.0f

    .line 551
    .local v4, "widthFraction":F
    const/4 v5, -0x1

    .line 552
    .local v5, "height":I
    const/high16 v6, -0x40800000    # -1.0f

    .line 553
    .local v6, "heightFraction":F
    const/4 v7, 0x3

    :try_start_11
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v8

    .line 554
    .local v8, "widthType":I
    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ne v8, v10, :cond_23

    .line 555
    invoke-virtual {v3, v7, v13, v13, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v7

    move v4, v7

    goto :goto_2a

    .line 557
    :cond_23
    if-ne v8, v11, :cond_2a

    .line 558
    invoke-virtual {v3, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    move v0, v7

    .line 561
    :cond_2a
    :goto_2a
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v14

    move v15, v14

    .line 562
    .local v15, "heightType":I
    if-ne v15, v10, :cond_38

    .line 563
    invoke-virtual {v3, v7, v13, v13, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v7

    move v6, v7

    goto :goto_3f

    .line 565
    :cond_38
    if-ne v15, v11, :cond_3f

    .line 566
    invoke-virtual {v3, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    move v5, v7

    .line 569
    :cond_3f
    :goto_3f
    const/16 v7, 0x11

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .line 570
    .local v19, "gravity":I
    invoke-virtual {v3, v13, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    .line 571
    .local v20, "minWidth":I
    const/4 v7, 0x2

    invoke-virtual {v3, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    .line 573
    .local v21, "minHeight":I
    nop

    .line 574
    invoke-virtual {v3, v11, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 576
    .local v22, "windowLayoutAffinity":Ljava/lang/String;
    new-instance v7, Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v14, v7

    move v9, v15

    .end local v15    # "heightType":I
    .local v9, "heightType":I
    move v15, v0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-direct/range {v14 .. v22}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;)V
    :try_end_62
    .catchall {:try_start_11 .. :try_end_62} :catchall_6e

    .line 579
    .local v7, "windowLayout":Landroid/content/pm/ActivityInfo$WindowLayout;
    move-object/from16 v10, p2

    :try_start_64
    invoke-interface {v10, v7}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v11
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_6c

    .line 581
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 579
    return-object v11

    .line 581
    .end local v0    # "width":I
    .end local v4    # "widthFraction":F
    .end local v5    # "height":I
    .end local v6    # "heightFraction":F
    .end local v7    # "windowLayout":Landroid/content/pm/ActivityInfo$WindowLayout;
    .end local v8    # "widthType":I
    .end local v9    # "heightType":I
    .end local v19    # "gravity":I
    .end local v20    # "minWidth":I
    .end local v21    # "minHeight":I
    .end local v22    # "windowLayoutAffinity":Ljava/lang/String;
    :catchall_6c
    move-exception v0

    goto :goto_71

    :catchall_6e
    move-exception v0

    move-object/from16 v10, p2

    :goto_71
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 582
    throw v0
.end method

.method private static parseIntentFilter(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 19
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p1, "activity"    # Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .param p2, "allowImplicitEphemeralVisibility"    # Z
    .param p3, "visibleToEphemeral"    # Z
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p6, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Lcom/android/server/pm/pkg/component/ParsedActivityImpl;",
            "ZZ",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
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

    .line 487
    move-object v10, p1

    move-object/from16 v11, p6

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move v4, p3

    move v7, p2

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 491
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 492
    invoke-interface {v11, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 495
    :cond_1f
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 496
    .local v1, "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    if-eqz v1, :cond_4c

    .line 497
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 498
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v2}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 499
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v3

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 501
    :cond_3b
    invoke-virtual {v2}, Landroid/content/IntentFilter;->isImplicitlyVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 502
    nop

    .line 503
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v3

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    .line 502
    invoke-virtual {p1, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 507
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_4c
    invoke-interface {v11, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private static resolveActivityWindowLayout(Lcom/android/server/pm/pkg/component/ParsedActivity;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .param p0, "activity"    # Lcom/android/server/pm/pkg/component/ParsedActivity;
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ">;"
        }
    .end annotation

    .line 594
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.activity_window_layout_affinity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 596
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 600
    :cond_15
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 601
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 604
    :cond_2c
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "windowLayoutAffinity":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v1

    .line 607
    .local v1, "layout":Landroid/content/pm/ActivityInfo$WindowLayout;
    if-nez v1, :cond_4c

    .line 608
    new-instance v11, Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v2, v11

    move-object v10, v0

    invoke-direct/range {v2 .. v10}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;)V

    move-object v1, v11

    goto :goto_4e

    .line 612
    :cond_4c
    iput-object v0, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 614
    :goto_4e
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method
