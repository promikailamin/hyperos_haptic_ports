.class public final Lcom/android/server/permission/access/permission/PermissionFlags;
.super Ljava/lang/Object;
.source "PermissionFlags.kt"


# static fields
.field public static final INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-direct {v0}, Lcom/android/server/permission/access/permission/PermissionFlags;-><init>()V

    sput-object v0, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final flagToString(I)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_79

    const/4 p0, 0x2

    if-eq p1, p0, :cond_76

    sparse-switch p1, :sswitch_data_7c

    .line 540
    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/UInt;->constructor-impl(I)I

    move-result p0

    const/16 p1, 0x10

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/text/UStringsKt;->toString-V7xB4Y4(II)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "toUpperCase(...)"

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 539
    :sswitch_31
    const-string p0, "PURPOSE_REVOKED"

    return-object p0

    .line 538
    :sswitch_34
    const-string p0, "USER_SELECTED"

    return-object p0

    .line 537
    :sswitch_37
    const-string p0, "HIBERNATION"

    return-object p0

    .line 536
    :sswitch_3a
    const-string p0, "ONE_TIME"

    return-object p0

    .line 535
    :sswitch_3d
    const-string p0, "APP_OP_REVOKED"

    return-object p0

    .line 534
    :sswitch_40
    const-string p0, "SOFT_RESTRICTED"

    return-object p0

    .line 533
    :sswitch_43
    const-string p0, "RESTRICTION_REVOKED"

    return-object p0

    .line 532
    :sswitch_46
    const-string p0, "UPGRADE_EXEMPT"

    return-object p0

    .line 531
    :sswitch_49
    const-string p0, "SYSTEM_EXEMPT"

    return-object p0

    .line 530
    :sswitch_4c
    const-string p0, "INSTALLER_EXEMPT"

    return-object p0

    .line 529
    :sswitch_4f
    const-string p0, "USER_SENSITIVE_WHEN_REVOKED"

    return-object p0

    .line 528
    :sswitch_52
    const-string p0, "USER_SENSITIVE_WHEN_GRANTED"

    return-object p0

    .line 527
    :sswitch_55
    const-string p0, "IMPLICIT"

    return-object p0

    .line 526
    :sswitch_58
    const-string p0, "IMPLICIT_GRANTED"

    return-object p0

    .line 525
    :sswitch_5b
    const-string p0, "LEGACY_GRANTED"

    return-object p0

    .line 524
    :sswitch_5e
    const-string p0, "PREGRANT"

    return-object p0

    .line 523
    :sswitch_61
    const-string p0, "SYSTEM_FIXED"

    return-object p0

    .line 522
    :sswitch_64
    const-string p0, "POLICY_FIXED"

    return-object p0

    .line 521
    :sswitch_67
    const-string p0, "USER_FIXED"

    return-object p0

    .line 520
    :sswitch_6a
    const-string p0, "USER_SET"

    return-object p0

    .line 519
    :sswitch_6d
    const-string p0, "RUNTIME_GRANTED"

    return-object p0

    .line 518
    :sswitch_70
    const-string p0, "ROLE"

    return-object p0

    .line 517
    :sswitch_73
    const-string p0, "PROTECTION_GRANTED"

    return-object p0

    .line 516
    :cond_76
    const-string p0, "INSTALL_REVOKED"

    return-object p0

    .line 515
    :cond_79
    const-string p0, "INSTALL_GRANTED"

    return-object p0

    :sswitch_data_7c
    .sparse-switch
        0x4 -> :sswitch_73
        0x8 -> :sswitch_70
        0x10 -> :sswitch_6d
        0x20 -> :sswitch_6a
        0x40 -> :sswitch_67
        0x80 -> :sswitch_64
        0x100 -> :sswitch_61
        0x200 -> :sswitch_5e
        0x400 -> :sswitch_5b
        0x800 -> :sswitch_58
        0x1000 -> :sswitch_55
        0x2000 -> :sswitch_52
        0x4000 -> :sswitch_4f
        0x8000 -> :sswitch_4c
        0x10000 -> :sswitch_49
        0x20000 -> :sswitch_46
        0x40000 -> :sswitch_43
        0x80000 -> :sswitch_40
        0x100000 -> :sswitch_3d
        0x200000 -> :sswitch_3a
        0x400000 -> :sswitch_37
        0x800000 -> :sswitch_34
        0x1000000 -> :sswitch_31
    .end sparse-switch
.end method

.method public final fromApiFlags(ILcom/android/server/permission/access/permission/Permission;I)I
    .registers 10

    and-int/lit8 p0, p3, 0x7

    const v0, 0x8000

    .line 447
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_d

    or-int/lit8 p0, p0, 0x8

    :cond_d
    and-int/lit8 v1, p3, 0x10

    or-int/2addr p0, v1

    const/4 v1, 0x1

    .line 451
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_19

    or-int/lit8 p0, p0, 0x20

    :cond_19
    const/4 v1, 0x2

    .line 454
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_22

    or-int/lit8 p0, p0, 0x40

    :cond_22
    const/4 v1, 0x4

    .line 457
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_2b

    or-int/lit16 p0, p0, 0x80

    :cond_2b
    const/16 v2, 0x10

    .line 460
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_35

    or-int/lit16 p0, p0, 0x100

    :cond_35
    const/16 v2, 0x20

    .line 463
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_3f

    or-int/lit16 p0, p0, 0x200

    :cond_3f
    and-int/lit16 v2, p3, 0x400

    or-int/2addr p0, v2

    and-int/lit16 v2, p3, 0x800

    or-int/2addr p0, v2

    const/16 v2, 0x40

    .line 469
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-nez v2, :cond_55

    const/16 v2, 0x80

    .line 470
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_57

    :cond_55
    or-int/lit16 p0, p0, 0x1000

    :cond_57
    const/16 v2, 0x100

    .line 474
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_61

    or-int/lit16 p0, p0, 0x2000

    :cond_61
    const/16 v2, 0x200

    .line 477
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_6b

    or-int/lit16 p0, p0, 0x4000

    :cond_6b
    const/16 v2, 0x800

    .line 480
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_74

    or-int/2addr p0, v0

    :cond_74
    const/16 v0, 0x1000

    .line 483
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    const/high16 v2, 0x10000

    if-eqz v0, :cond_7f

    or-int/2addr p0, v2

    :cond_7f
    const/16 v0, 0x2000

    .line 486
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    const/high16 v3, 0x20000

    if-eqz v0, :cond_8a

    or-int/2addr p0, v3

    :cond_8a
    const/16 v0, 0x4000

    .line 489
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    const/high16 v4, 0x80000

    const/16 v5, 0x8

    if-eqz v0, :cond_b2

    .line 133
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_a5

    const/high16 v0, 0x40000

    or-int/2addr p0, v0

    .line 139
    :cond_a5
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {p2, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_b2

    or-int/2addr p0, v4

    .line 497
    :cond_b2
    invoke-static {p1, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_bb

    const/high16 p2, 0x100000

    or-int/2addr p0, p2

    .line 500
    :cond_bb
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_c4

    const/high16 p2, 0x200000

    or-int/2addr p0, p2

    .line 503
    :cond_c4
    invoke-static {p1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_cd

    const/high16 p2, 0x400000

    or-int/2addr p0, p2

    .line 506
    :cond_cd
    invoke-static {p1, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-eqz p1, :cond_d6

    const/high16 p1, 0x800000

    or-int/2addr p0, p1

    :cond_d6
    const/high16 p1, 0x1000000

    and-int/2addr p1, p3

    or-int/2addr p0, p1

    return p0
.end method

.method public final isAppOpGranted(I)Z
    .registers 3

    .line 359
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    const/high16 p0, 0xc0000

    .line 362
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result p0

    if-eqz p0, :cond_11

    return v0

    :cond_11
    const/high16 p0, 0x100000

    .line 365
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_1a

    return v0

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method public final isPermissionGranted(I)Z
    .registers 4

    const/high16 p0, 0x1000000

    .line 337
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x1

    .line 340
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_12

    return p0

    :cond_12
    const/4 v1, 0x2

    .line 343
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    const/4 v1, 0x4

    .line 346
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_22

    return p0

    :cond_22
    const/16 v1, 0x400

    .line 349
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-nez v1, :cond_42

    const/16 v1, 0x800

    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_42

    :cond_33
    const/high16 p0, 0x40000

    .line 352
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_3c

    return v0

    :cond_3c
    const/16 p0, 0x10

    .line 355
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    :cond_42
    :goto_42
    return p0
.end method

.method public final toApiFlags(I)I
    .registers 7

    const/16 p0, 0x20

    .line 373
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    const/16 v0, 0x40

    .line 376
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_10

    or-int/lit8 p0, p0, 0x2

    :cond_10
    const/16 v1, 0x80

    .line 379
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_1a

    or-int/lit8 p0, p0, 0x4

    :cond_1a
    const/16 v2, 0x100

    .line 382
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_24

    or-int/lit8 p0, p0, 0x10

    :cond_24
    const/16 v2, 0x200

    .line 385
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_2e

    or-int/lit8 p0, p0, 0x20

    :cond_2e
    const/16 v2, 0x1000

    .line 388
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_41

    const/16 v2, 0x400

    .line 391
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, v1

    :goto_40
    or-int/2addr p0, v0

    :cond_41
    const/16 v0, 0x2000

    .line 397
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_4b

    or-int/lit16 p0, p0, 0x100

    :cond_4b
    const/16 v0, 0x4000

    .line 400
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_55

    or-int/lit16 p0, p0, 0x200

    :cond_55
    const v0, 0x8000

    .line 403
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_60

    or-int/lit16 p0, p0, 0x800

    :cond_60
    const/high16 v1, 0x10000

    .line 406
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_6a

    or-int/lit16 p0, p0, 0x1000

    :cond_6a
    const/high16 v2, 0x20000

    .line 409
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_74

    or-int/lit16 p0, p0, 0x2000

    :cond_74
    const/high16 v3, 0x40000

    .line 412
    invoke-static {p1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    const/high16 v4, 0x80000

    if-nez v3, :cond_84

    invoke-static {p1, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_86

    :cond_84
    or-int/lit16 p0, p0, 0x4000

    :cond_86
    const/16 v3, 0x8

    .line 415
    invoke-static {p1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_8f

    or-int/2addr p0, v0

    :cond_8f
    const/high16 v0, 0x100000

    .line 418
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_99

    or-int/lit8 p0, p0, 0x8

    :cond_99
    const/high16 v0, 0x200000

    .line 421
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_a2

    or-int/2addr p0, v1

    :cond_a2
    const/high16 v0, 0x400000

    .line 424
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_ab

    or-int/2addr p0, v2

    :cond_ab
    const/high16 v0, 0x800000

    .line 427
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-eqz p1, :cond_b4

    or-int/2addr p0, v4

    :cond_b4
    return p0
.end method

.method public final toString(I)Ljava/lang/String;
    .registers 4

    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_a
    if-eqz p1, :cond_27

    const/4 v0, 0x1

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int/2addr v0, v1

    .line 31
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result p1

    .line 543
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->flagToString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_a

    const/16 v0, 0x7c

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 37
    :cond_27
    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I
    .registers 6

    .line 437
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    move-result v0

    .line 438
    invoke-static {v0, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v0

    and-int/2addr p3, p4

    or-int/2addr p3, v0

    .line 439
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/permission/access/permission/PermissionFlags;->fromApiFlags(ILcom/android/server/permission/access/permission/Permission;I)I

    move-result p0

    return p0
.end method

.method public final updateRuntimePermissionGranted(IZ)I
    .registers 3

    const/16 p0, 0x10

    if-eqz p2, :cond_6

    or-int/2addr p0, p1

    return p0

    .line 434
    :cond_6
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result p0

    return p0
.end method
