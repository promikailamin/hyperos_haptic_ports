.class public final Landroid/content/om/OverlayInfo;
.super Ljava/lang/Object;
.source "OverlayInfo.java"

# interfaces
.implements Landroid/content/om/CriticalOverlayInfo;
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/OverlayInfo$State;
    }
.end annotation


# static fields
.field public static final greylist-max-o CATEGORY_THEME:Ljava/lang/String; = "android.theme"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o STATE_DISABLED:I = 0x2

.field public static final greylist-max-o STATE_ENABLED:I = 0x3

.field public static final blacklist STATE_ENABLED_IMMUTABLE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STATE_MISSING_TARGET:I = 0x0

.field public static final greylist-max-o STATE_NO_IDMAP:I = 0x1

.field public static final blacklist STATE_OVERLAY_IS_BEING_REPLACED:I = 0x5

.field public static final blacklist STATE_TARGET_IS_BEING_REPLACED:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STATE_UNKNOWN:I = -0x1


# instance fields
.field public final greylist-max-o baseCodePath:Ljava/lang/String;

.field public final greylist-max-o category:Ljava/lang/String;

.field public final blacklist isFabricated:Z

.field public final blacklist isMutable:Z

.field private blacklist mIdentifierCached:Landroid/content/om/OverlayIdentifier;

.field public final blacklist overlayName:Ljava/lang/String;

.field public final blacklist packageName:Ljava/lang/String;

.field public final greylist-max-o priority:I

.field public final greylist-max-r state:I

.field public final blacklist targetOverlayableName:Ljava/lang/String;

.field public final blacklist targetPackageName:Ljava/lang/String;

.field public final greylist-max-o userId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 423
    new-instance v0, Landroid/content/om/OverlayInfo$1;

    invoke-direct {v0}, Landroid/content/om/OverlayInfo$1;-><init>()V

    sput-object v0, Landroid/content/om/OverlayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/om/OverlayInfo;I)V
    .registers 15
    .param p1, "source"    # Landroid/content/om/OverlayInfo;
    .param p2, "state"    # I

    .line 231
    iget-object v1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget v8, p1, Landroid/content/om/OverlayInfo;->userId:I

    iget v9, p1, Landroid/content/om/OverlayInfo;->priority:I

    iget-boolean v10, p1, Landroid/content/om/OverlayInfo;->isMutable:Z

    iget-boolean v11, p1, Landroid/content/om/OverlayInfo;->isFabricated:Z

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v11}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 234
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/om/OverlayInfo;->state:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/om/OverlayInfo;->userId:I

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/om/OverlayInfo;->priority:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/om/OverlayInfo;->isMutable:Z

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/om/OverlayInfo;->isFabricated:Z

    .line 278
    invoke-direct {p0}, Landroid/content/om/OverlayInfo;->ensureValidState()V

    .line 279
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .param p3, "targetOverlayableName"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "baseCodePath"    # Ljava/lang/String;
    .param p6, "state"    # I
    .param p7, "userId"    # I
    .param p8, "priority"    # I
    .param p9, "isMutable"    # Z

    .line 241
    const/4 v2, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 244
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "overlayName"    # Ljava/lang/String;
    .param p3, "targetPackageName"    # Ljava/lang/String;
    .param p4, "targetOverlayableName"    # Ljava/lang/String;
    .param p5, "category"    # Ljava/lang/String;
    .param p6, "baseCodePath"    # Ljava/lang/String;
    .param p7, "state"    # I
    .param p8, "userId"    # I
    .param p9, "priority"    # I
    .param p10, "isMutable"    # Z
    .param p11, "isFabricated"    # Z

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 252
    iput-object p2, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    .line 253
    iput-object p3, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 254
    iput-object p4, p0, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    .line 255
    iput-object p5, p0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    .line 256
    iput-object p6, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 257
    iput p7, p0, Landroid/content/om/OverlayInfo;->state:I

    .line 258
    iput p8, p0, Landroid/content/om/OverlayInfo;->userId:I

    .line 259
    iput p9, p0, Landroid/content/om/OverlayInfo;->priority:I

    .line 260
    iput-boolean p10, p0, Landroid/content/om/OverlayInfo;->isMutable:Z

    .line 261
    iput-boolean p11, p0, Landroid/content/om/OverlayInfo;->isFabricated:Z

    .line 262
    invoke-direct {p0}, Landroid/content/om/OverlayInfo;->ensureValidState()V

    .line 263
    return-void
.end method

.method private greylist-max-o ensureValidState()V
    .registers 4

    .line 379
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_45

    .line 382
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    if-eqz v0, :cond_3c

    .line 385
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 388
    iget v0, p0, Landroid/content/om/OverlayInfo;->state:I

    packed-switch v0, :pswitch_data_4e

    .line 399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/om/OverlayInfo;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :pswitch_32
    nop

    .line 401
    return-void

    .line 386
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseCodePath must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetPackageName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_4e
    .packed-switch -0x1
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method

.method public static greylist-max-o stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 464
    packed-switch p0, :pswitch_data_1e

    .line 482
    const-string v0, "<unknown state>"

    return-object v0

    .line 476
    :pswitch_6
    const-string v0, "STATE_ENABLED_IMMUTABLE"

    return-object v0

    .line 480
    :pswitch_9
    const-string v0, "STATE_OVERLAY_IS_BEING_REPLACED"

    return-object v0

    .line 478
    :pswitch_c
    const-string v0, "STATE_TARGET_IS_BEING_REPLACED"

    return-object v0

    .line 474
    :pswitch_f
    const-string v0, "STATE_ENABLED"

    return-object v0

    .line 472
    :pswitch_12
    const-string v0, "STATE_DISABLED"

    return-object v0

    .line 470
    :pswitch_15
    const-string v0, "STATE_NO_IDMAP"

    return-object v0

    .line 468
    :pswitch_18
    const-string v0, "STATE_MISSING_TARGET"

    return-object v0

    .line 466
    :pswitch_1b
    const-string v0, "STATE_UNKNOWN"

    return-object v0

    :pswitch_data_1e
    .packed-switch -0x1
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 504
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 505
    return v0

    .line 507
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 508
    return v1

    .line 510
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 511
    return v1

    .line 513
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/content/om/OverlayInfo;

    .line 514
    .local v2, "other":Landroid/content/om/OverlayInfo;
    iget v3, p0, Landroid/content/om/OverlayInfo;->userId:I

    iget v4, v2, Landroid/content/om/OverlayInfo;->userId:I

    if-eq v3, v4, :cond_1d

    .line 515
    return v1

    .line 517
    :cond_1d
    iget v3, p0, Landroid/content/om/OverlayInfo;->state:I

    iget v4, v2, Landroid/content/om/OverlayInfo;->state:I

    if-eq v3, v4, :cond_24

    .line 518
    return v1

    .line 520
    :cond_24
    iget-object v3, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 521
    return v1

    .line 523
    :cond_2f
    iget-object v3, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 524
    return v1

    .line 526
    :cond_3a
    iget-object v3, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 527
    return v1

    .line 529
    :cond_45
    iget-object v3, p0, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 530
    return v1

    .line 532
    :cond_50
    iget-object v3, p0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 533
    return v1

    .line 535
    :cond_5b
    iget-object v3, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 536
    return v1

    .line 538
    :cond_66
    return v0
.end method

.method public blacklist getBaseCodePath()Ljava/lang/String;
    .registers 2

    .line 361
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCategory()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 321
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;
    .registers 4

    .line 371
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->mIdentifierCached:Landroid/content/om/OverlayIdentifier;

    if-nez v0, :cond_f

    .line 372
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    iget-object v1, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->mIdentifierCached:Landroid/content/om/OverlayIdentifier;

    .line 374
    :cond_f
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->mIdentifierCached:Landroid/content/om/OverlayIdentifier;

    return-object v0
.end method

.method public blacklist getOverlayName()Ljava/lang/String;
    .registers 2

    .line 299
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 289
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTargetOverlayableName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 343
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTargetPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 310
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUserId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 332
    iget v0, p0, Landroid/content/om/OverlayInfo;->userId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 488
    const/16 v0, 0x1f

    .line 489
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 490
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/content/om/OverlayInfo;->userId:I

    add-int/2addr v2, v3

    .line 491
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/content/om/OverlayInfo;->state:I

    add-int/2addr v1, v3

    .line 492
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_16

    move v3, v4

    goto :goto_1a

    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1a
    add-int/2addr v2, v3

    .line 493
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    if-nez v3, :cond_23

    move v3, v4

    goto :goto_27

    :cond_23
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_27
    add-int/2addr v1, v3

    .line 494
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    if-nez v3, :cond_30

    move v3, v4

    goto :goto_34

    :cond_30
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_34
    add-int/2addr v2, v3

    .line 495
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    if-nez v3, :cond_3d

    move v3, v4

    goto :goto_41

    .line 496
    :cond_3d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_41
    add-int/2addr v1, v3

    .line 497
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    if-nez v3, :cond_4a

    move v3, v4

    goto :goto_4e

    :cond_4a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4e
    add-int/2addr v2, v3

    .line 498
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    if-nez v3, :cond_56

    goto :goto_5a

    :cond_56
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_5a
    add-int/2addr v1, v4

    .line 499
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist isEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 447
    iget v0, p0, Landroid/content/om/OverlayInfo;->state:I

    sparse-switch v0, :sswitch_data_a

    .line 452
    const/4 v0, 0x0

    return v0

    .line 450
    :sswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_a
    .sparse-switch
        0x3 -> :sswitch_7
        0x6 -> :sswitch_7
    .end sparse-switch
.end method

.method public blacklist isFabricated()Z
    .registers 2

    .line 352
    iget-boolean v0, p0, Landroid/content/om/OverlayInfo;->isFabricated:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OverlayInfo {packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overlayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetOverlayable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/om/OverlayInfo;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/om/OverlayInfo;->state:I

    .line 549
    invoke-static {v1}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "),, userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 410
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 416
    iget v0, p0, Landroid/content/om/OverlayInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget v0, p0, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget v0, p0, Landroid/content/om/OverlayInfo;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget-boolean v0, p0, Landroid/content/om/OverlayInfo;->isMutable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 420
    iget-boolean v0, p0, Landroid/content/om/OverlayInfo;->isFabricated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 421
    return-void
.end method
