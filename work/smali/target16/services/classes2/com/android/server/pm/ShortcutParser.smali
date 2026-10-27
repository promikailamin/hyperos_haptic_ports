.class public abstract Lcom/android/server/pm/ShortcutParser;
.super Ljava/lang/Object;
.source "ShortcutParser.java"


# static fields
.field static final METADATA_KEY:Ljava/lang/String; = "android.app.shortcuts"


# direct methods
.method public static createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZLjava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 45

    if-eqz p10, :cond_5

    const/16 v0, 0x20

    goto :goto_7

    :cond_5
    const/16 v0, 0x40

    :goto_7
    or-int/lit16 v0, v0, 0x100

    if-eqz p9, :cond_d

    const/4 v1, 0x4

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    or-int v23, v0, v1

    xor-int/lit8 v28, p10, 0x1

    .line 434
    new-instance v2, Landroid/content/pm/ShortcutInfo;

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v21

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v9, p5

    move/from16 v12, p6

    move/from16 v15, p7

    move/from16 v19, p8

    move/from16 v24, p9

    move-object/from16 v31, p11

    invoke-direct/range {v2 .. v32}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V

    return-object v2
.end method

.method public static parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;
    .registers 4

    .line 355
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->ShortcutCategories:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 358
    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e

    .line 359
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_1c

    .line 365
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_1c
    move-exception p1

    goto :goto_2a

    .line 361
    :cond_1e
    :try_start_1e
    const-string p1, "ShortcutService"

    const-string v0, "android:name for shortcut category must be string literal."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1c

    .line 365
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :goto_2a
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 366
    throw p1
.end method

.method public static parseCategory(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;
    .registers 4

    .line 467
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->IntentCategory:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 470
    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    .line 471
    const-string p1, "ShortcutService"

    const-string v0, "android:name must be string literal."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_20

    .line 476
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :catchall_20
    move-exception p1

    goto :goto_2a

    .line 474
    :cond_22
    :try_start_22
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_20

    .line 476
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :goto_2a
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 477
    throw p1
.end method

.method public static parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;
    .registers 4

    .line 482
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->Intent:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x4

    .line 485
    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 486
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 487
    const-string p1, "ShortcutService"

    const-string v0, "android:targetClass must be provided."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_23

    .line 492
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_23
    move-exception p1

    goto :goto_2e

    .line 490
    :cond_25
    :try_start_25
    new-instance v0, Lcom/android/server/pm/ShareTargetInfo;

    invoke-direct {v0, v1, p1, v1}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_23

    .line 492
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :goto_2e
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 493
    throw p1
.end method

.method public static parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;
    .registers 12

    .line 498
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 501
    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    .line 502
    const-string p1, "ShortcutService"

    const-string v0, "android:mimeType must be string literal."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_20

    .line 515
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :catchall_20
    move-exception v0

    move-object p1, v0

    goto :goto_4d

    :cond_23
    const/4 v0, 0x1

    .line 505
    :try_start_24
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    .line 506
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 507
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x4

    .line 508
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x6

    .line 509
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x5

    .line 510
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 511
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 512
    new-instance v2, Lcom/android/server/pm/ShareTargetInfo$TargetData;

    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/ShareTargetInfo$TargetData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_24 .. :try_end_49} :catchall_20

    .line 515
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :goto_4d
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 516
    throw p1
.end method

.method public static parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;
    .registers 18

    .line 372
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Shortcut:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x2

    .line 375
    :try_start_d
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_2f

    const/4 v2, 0x3

    const-string v3, "ShortcutService"

    const/4 v5, 0x0

    if-eq v1, v2, :cond_33

    .line 376
    :try_start_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "android:shortcutId must be string literal. activity="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_2f

    .line 415
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :catchall_2f
    move-exception v0

    move-object p0, v0

    goto/16 :goto_ac

    .line 379
    :cond_33
    :try_start_33
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 380
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/4 v1, 0x0

    .line 381
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 382
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v6, 0x4

    .line 383
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v7, 0x5

    .line 384
    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x6

    .line 386
    invoke-virtual {p1, v8, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_62

    .line 389
    iget-object v8, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    goto :goto_63

    :cond_62
    move-object v11, v5

    .line 392
    :goto_63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 393
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "android:shortcutId must be provided. activity="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_33 .. :try_end_7d} :catchall_2f

    .line 415
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :cond_81
    if-nez v2, :cond_9b

    .line 397
    :try_start_83
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "android:shortcutShortLabel must be provided. activity="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_83 .. :try_end_97} :catchall_2f

    .line 415
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :cond_9b
    move-object v3, p2

    move-object v4, p3

    move/from16 v1, p4

    move/from16 v8, p5

    move v5, v2

    move-object v2, v0

    move-object v0, p0

    .line 401
    :try_start_a4
    invoke-static/range {v0 .. v11}, Lcom/android/server/pm/ShortcutParser;->createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZLjava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_2f

    .line 415
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :goto_ac
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 416
    throw p0
.end method

.method public static parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .registers 14

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_5f

    .line 77
    :cond_f
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 80
    :try_start_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move-object v8, v1

    :goto_18
    if-ge v3, v2, :cond_4a

    .line 82
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_29

    :cond_24
    move-object v4, p0

    move-object v6, p1

    move v7, p2

    move-object v9, p3

    goto :goto_3f

    .line 89
    :cond_29
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 88
    invoke-virtual {p0, v4, p2}, Lcom/android/server/pm/ShortcutService;->getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_31} :catch_46

    if-eqz v5, :cond_24

    move-object v4, p0

    move-object v6, p1

    move v7, p2

    move-object v9, p3

    .line 91
    :try_start_37
    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/ShortcutParser;->parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3b} :catch_3c

    goto :goto_3f

    :catch_3c
    move-exception v0

    :goto_3d
    move-object p0, v0

    goto :goto_4b

    :goto_3f
    add-int/lit8 v3, v3, 0x1

    move-object p0, v4

    move-object p1, v6

    move p2, v7

    move-object p3, v9

    goto :goto_18

    :catch_46
    move-exception v0

    move-object v4, p0

    move-object v6, p1

    goto :goto_3d

    :cond_4a
    return-object v8

    .line 98
    :goto_4b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception caught while parsing shortcut XML for package="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, p0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5f
    :goto_5f
    return-object v1
.end method

.method public static parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    .line 117
    :try_start_4
    const-string v1, "android.app.shortcuts"

    invoke-virtual {v0, v6, v1}, Lcom/android/server/pm/ShortcutService;->injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_393

    if-nez v8, :cond_12

    if-eqz v8, :cond_11

    .line 348
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_11
    return-object p4

    .line 122
    :cond_12
    :try_start_12
    new-instance v3, Landroid/content/ComponentName;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v2, p2

    invoke-direct {v3, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 129
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v9

    .line 144
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v13, p4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 150
    :goto_35
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_38b

    const/4 v12, 0x1

    if-eq v7, v12, :cond_46

    const/4 v12, 0x3

    if-ne v7, v12, :cond_4e

    .line 151
    :try_start_3f
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_4a

    if-lez v18, :cond_46

    goto :goto_4e

    :cond_46
    move-object v4, v8

    move-object v7, v13

    goto/16 :goto_38f

    :catchall_4a
    move-exception v0

    move-object v7, v8

    goto/16 :goto_395

    .line 152
    :cond_4e
    :goto_4e
    :try_start_4e
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 153
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_38b

    .line 156
    const-string/jumbo v0, "shortcut"

    move-object/from16 v19, v8

    const/4 v8, 0x2

    move-object/from16 v20, v13

    const-string v13, "ShortcutService"

    move-object/from16 v21, v1

    const/4 v1, 0x3

    if-ne v7, v1, :cond_12c

    if-ne v12, v8, :cond_12c

    :try_start_67
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12c

    if-nez v14, :cond_73

    move/from16 v17, v9

    goto/16 :goto_13f

    .line 164
    :cond_73
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 165
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shortcut "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has no intent. Skipping it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto/16 :goto_123

    :catchall_9f
    move-exception v0

    move-object/from16 v7, v19

    goto/16 :goto_395

    .line 171
    :cond_a4
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b1
    if-lt v15, v9, :cond_dc

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "More than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " shortcuts found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Skipping the rest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catchall {:try_start_67 .. :try_end_d8} :catchall_9f

    .line 348
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v20

    :cond_dc
    const/4 v1, 0x0

    .line 182
    :try_start_dd
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const v6, 0x1000c000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_e9
    .catchall {:try_start_dd .. :try_end_e9} :catchall_9f

    .line 187
    :try_start_e9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/Intent;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    invoke-virtual {v14, v0}, Landroid/content/pm/ShortcutInfo;->setIntents([Landroid/content/Intent;)V
    :try_end_f8
    .catch Ljava/lang/RuntimeException; {:try_start_e9 .. :try_end_f8} :catch_11e
    .catchall {:try_start_e9 .. :try_end_f8} :catchall_9f

    .line 195
    :try_start_f8
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    if-eqz v5, :cond_101

    .line 198
    invoke-virtual {v14, v5}, Landroid/content/pm/ShortcutInfo;->setCategories(Ljava/util/Set;)V

    const/4 v5, 0x0

    :cond_101
    if-nez v20, :cond_10a

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    goto :goto_10c

    :cond_10a
    move-object/from16 v13, v20

    .line 205
    :goto_10c
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v8, v19

    :goto_119
    move-object/from16 v1, v21

    :goto_11b
    const/4 v14, 0x0

    goto/16 :goto_35

    .line 192
    :catch_11e
    const-string v0, "Shortcut\'s extras contain un-persistable values. Skipping it."

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123
    .catchall {:try_start_f8 .. :try_end_123} :catchall_9f

    :goto_123
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v8, v19

    move-object/from16 v13, v20

    goto :goto_119

    :cond_12c
    const/4 v1, 0x0

    move/from16 v17, v9

    .line 215
    const-string/jumbo v9, "share-target"

    const/4 v1, 0x3

    if-ne v7, v1, :cond_19c

    if-ne v12, v8, :cond_19c

    .line 216
    :try_start_137
    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19c

    if-nez v4, :cond_14d

    :goto_13f
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v9, v17

    move-object/from16 v8, v19

    move-object/from16 v13, v20

    move-object/from16 v1, v21

    goto/16 :goto_35

    :cond_14d
    if-eqz v5, :cond_15b

    .line 224
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15b

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15e

    :cond_15b
    move-object/from16 v8, p5

    goto :goto_18b

    .line 229
    :cond_15e
    new-instance v1, Lcom/android/server/pm/ShareTargetInfo;

    .line 230
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    iget-object v4, v4, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    .line 231
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v1, v8, v4, v2}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v8, p5

    .line 232
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_189
    const/4 v1, 0x2

    goto :goto_1a3

    :goto_18b
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move/from16 v9, v17

    move-object/from16 v8, v19

    move-object/from16 v13, v20

    move-object/from16 v1, v21

    const/4 v4, 0x0

    goto/16 :goto_35

    :cond_19c
    move-object/from16 v8, p5

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    goto :goto_189

    :goto_1a3
    if-eq v7, v1, :cond_1b3

    :goto_1a5
    move-object/from16 v0, p0

    move/from16 v5, v16

    move-object/from16 v4, v19

    move-object/from16 v7, v20

    move-object/from16 v1, v21

    const/16 v22, 0x0

    goto/16 :goto_37b

    :cond_1b3
    const/4 v1, 0x1

    if-ne v12, v1, :cond_1c0

    .line 245
    const-string/jumbo v1, "shortcuts"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c0

    goto :goto_1a5

    :cond_1c0
    const/4 v1, 0x2

    if-ne v12, v1, :cond_222

    .line 248
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_222

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v5, v16

    move-object/from16 v1, v21

    const/16 v22, 0x0

    .line 249
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ShortcutParser;->parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    if-nez v6, :cond_1e1

    move-object/from16 v4, v19

    move-object/from16 v7, v20

    goto/16 :goto_37b

    :cond_1e1
    if-eqz v20, :cond_20f

    .line 259
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_1e9
    if-ltz v2, :cond_20f

    .line 260
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, v20

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20a

    .line 261
    const-string v2, "Duplicate shortcut ID detected. Skipping it."

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_206
    move-object/from16 v4, v19

    goto/16 :goto_37b

    :cond_20a
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v20, v7

    goto :goto_1e9

    :cond_20f
    move-object/from16 v7, v20

    move-object/from16 v2, p2

    move/from16 v16, v5

    move-object v14, v6

    move-object v13, v7

    move/from16 v9, v17

    move-object/from16 v8, v19

    move-object/from16 v4, v23

    const/4 v5, 0x0

    move-object/from16 v6, p1

    goto/16 :goto_35

    :cond_222
    move-object/from16 v0, p0

    move/from16 v5, v16

    move-object/from16 v7, v20

    move-object/from16 v1, v21

    const/16 v22, 0x0

    const/4 v2, 0x2

    if-ne v12, v2, :cond_24d

    .line 270
    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24d

    .line 271
    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;

    move-result-object v4

    if-nez v4, :cond_23c

    goto :goto_206

    .line 278
    :cond_23c
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_23f
    .catchall {:try_start_137 .. :try_end_23f} :catchall_9f

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move/from16 v16, v5

    move-object v13, v7

    move/from16 v9, v17

    move-object/from16 v8, v19

    const/4 v5, 0x0

    goto/16 :goto_35

    :cond_24d
    const/4 v2, 0x3

    if-ne v12, v2, :cond_2b1

    .line 281
    :try_start_250
    const-string v2, "intent"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b1

    if-eqz v14, :cond_260

    .line 283
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_263

    :cond_260
    move-object/from16 v4, v19

    goto :goto_2aa

    .line 288
    :cond_263
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2
    :try_end_269
    .catchall {:try_start_250 .. :try_end_269} :catchall_2a6

    move-object/from16 v4, v19

    :try_start_26b
    invoke-static {v2, v4, v1}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v2

    .line 290
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2a1

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shortcut intent action must be provided. activity="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move-object v8, v4

    move/from16 v16, v5

    move-object v13, v7

    move/from16 v9, v17

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto/16 :goto_11b

    :catchall_29d
    move-exception v0

    :goto_29e
    move-object v7, v4

    goto/16 :goto_395

    .line 295
    :cond_2a1
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_37b

    :catchall_2a6
    move-exception v0

    move-object/from16 v4, v19

    goto :goto_29e

    .line 284
    :goto_2aa
    const-string v2, "Ignoring excessive intent tag."

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2af
    .catchall {:try_start_26b .. :try_end_2af} :catchall_29d

    goto/16 :goto_37b

    :cond_2b1
    move-object/from16 v4, v19

    .line 298
    const-string v2, "Empty category found. activity="

    const/4 v9, 0x3

    if-ne v12, v9, :cond_305

    :try_start_2b8
    const-string v9, "categories"

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_304

    if-eqz v14, :cond_37b

    .line 300
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_2ca

    goto/16 :goto_37b

    .line 303
    :cond_2ca
    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutParser;->parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    .line 304
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2e8

    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37b

    :cond_2e8
    if-nez v24, :cond_2f0

    .line 310
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    goto :goto_2f2

    :cond_2f0
    move-object/from16 v2, v24

    .line 312
    :goto_2f2
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2f5
    move-object/from16 v6, p1

    move-object v8, v4

    move/from16 v16, v5

    move-object v13, v7

    move/from16 v9, v17

    move-object/from16 v4, v23

    move-object v5, v2

    move-object/from16 v2, p2

    goto/16 :goto_35

    :cond_304
    const/4 v9, 0x3

    :cond_305
    if-ne v12, v9, :cond_33e

    .line 315
    const-string v9, "category"

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33d

    if-nez v23, :cond_312

    goto :goto_37b

    .line 319
    :cond_312
    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutParser;->parseCategory(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    .line 320
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_32f

    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37b

    :cond_32f
    if-nez v24, :cond_337

    .line 326
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    goto :goto_339

    :cond_337
    move-object/from16 v2, v24

    .line 328
    :goto_339
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2f5

    :cond_33d
    const/4 v9, 0x3

    :cond_33e
    if-ne v12, v9, :cond_36a

    .line 331
    const-string v2, "data"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36a

    if-nez v23, :cond_34b

    goto :goto_37b

    .line 335
    :cond_34b
    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move-result-object v2

    if-nez v2, :cond_366

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid data tag found. activity="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37b

    .line 340
    :cond_366
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37b

    .line 344
    :cond_36a
    const-string v2, "Invalid tag \'%s\' found at depth %d"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v6, v9}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37b
    .catchall {:try_start_2b8 .. :try_end_37b} :catchall_29d

    :cond_37b
    :goto_37b
    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move-object v8, v4

    move/from16 v16, v5

    move-object v13, v7

    move/from16 v9, v17

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto/16 :goto_35

    :catchall_38b
    move-exception v0

    move-object v4, v8

    goto/16 :goto_29e

    .line 348
    :goto_38f
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v7

    :catchall_393
    move-exception v0

    const/4 v7, 0x0

    :goto_395
    if-eqz v7, :cond_39a

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 350
    :cond_39a
    throw v0
.end method
