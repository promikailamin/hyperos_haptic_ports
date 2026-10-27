.class public final Lcom/android/server/pm/UserTypeDetails$Builder;
.super Ljava/lang/Object;
.source "UserTypeDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserTypeDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBadgeColors:[I

.field private mBadgeLabels:[I

.field private mBadgeNoBackground:I

.field private mBadgePlain:I

.field private mBaseType:I

.field private mDarkThemeBadgeColors:[I

.field private mDefaultCrossProfileIntentFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/DefaultCrossProfileIntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultRestrictions:Landroid/os/Bundle;

.field private mDefaultSecureSettings:Landroid/os/Bundle;

.field private mDefaultSystemSettings:Landroid/os/Bundle;

.field private mDefaultUserInfoPropertyFlags:I

.field private mEnabled:I

.field private mIconBadge:I

.field private mIsCredentialSharableWithParent:Z

.field private mIsMediaSharedWithParent:Z

.field private mLabel:I

.field private mMaxAllowed:I

.field private mMaxAllowedPerParent:I

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    .line 406
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    .line 407
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    .line 408
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 409
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSystemSettings:Landroid/os/Bundle;

    .line 410
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    .line 411
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    .line 413
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    .line 414
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabel:I

    .line 415
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    .line 416
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    .line 417
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    .line 418
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    .line 419
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    .line 420
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    .line 421
    iput-boolean v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIsMediaSharedWithParent:Z

    .line 422
    iput-boolean v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIsCredentialSharableWithParent:Z

    return-void
.end method

.method private hasBadge()Z
    .registers 2

    .line 578
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private hasValidBaseType()Z
    .registers 3

    .line 587
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    const/16 v1, 0x400

    if-eq v0, v1, :cond_15

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_15

    const/16 v1, 0x800

    if-eq v0, v1, :cond_15

    const/16 v1, 0xc00

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private hasValidPropertyFlags()Z
    .registers 3

    .line 595
    const/16 v0, 0x1c93

    .line 603
    .local v0, "forbiddenMask":I
    iget v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    and-int/lit16 v1, v1, 0x1c93

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private isProfile()Z
    .registers 2

    .line 582
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public createUserTypeDetails()Lcom/android/server/pm/UserTypeDetails;
    .registers 28

    .line 536
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    :goto_b
    const-string v4, "Cannot create a UserTypeDetails with no name."

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 538
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserTypeDetails$Builder;->hasValidBaseType()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserTypeDetails "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " has invalid baseType: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 540
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserTypeDetails$Builder;->hasValidPropertyFlags()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " has invalid flags: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    .line 542
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 540
    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 543
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserTypeDetails$Builder;->hasBadge()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 544
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    if-eqz v1, :cond_71

    array-length v1, v1

    if-eqz v1, :cond_71

    move v1, v2

    goto :goto_72

    :cond_71
    move v1, v3

    :goto_72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " has badge but no badgeLabels."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 546
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    if-eqz v1, :cond_97

    array-length v1, v1

    if-eqz v1, :cond_97

    move v1, v2

    goto :goto_98

    :cond_97
    move v1, v3

    :goto_98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has badge but no badgeColors."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 549
    :cond_b4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserTypeDetails$Builder;->isProfile()Z

    move-result v1

    if-nez v1, :cond_d3

    .line 550
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    if-eqz v1, :cond_c7

    .line 551
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c5

    goto :goto_c7

    :cond_c5
    move v1, v3

    goto :goto_c8

    :cond_c7
    :goto_c7
    move v1, v2

    :goto_c8
    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 550
    const-string v5, "UserTypeDetails %s has a non empty defaultCrossProfileIntentFilters"

    invoke-static {v1, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 555
    :cond_d3
    new-instance v1, Lcom/android/server/pm/UserTypeDetails;

    iget-object v7, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    if-eqz v4, :cond_dd

    move v8, v2

    goto :goto_de

    :cond_dd
    move v8, v3

    :goto_de
    iget v9, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    iget v10, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    iget v11, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    iget v12, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabel:I

    iget v13, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    iget v14, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    iget v15, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    iget v2, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    iget-object v3, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    iget-object v4, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    .line 568
    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    if-nez v5, :cond_f9

    move-object/from16 v19, v4

    goto :goto_fb

    :cond_f9
    move-object/from16 v19, v5

    :goto_fb
    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    move-object/from16 v20, v5

    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSystemSettings:Landroid/os/Bundle;

    move-object/from16 v21, v5

    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    move-object/from16 v22, v5

    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    move-object/from16 v23, v5

    iget-boolean v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIsMediaSharedWithParent:Z

    move/from16 v24, v5

    iget-boolean v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIsCredentialSharableWithParent:Z

    move/from16 v25, v5

    const/16 v26, 0x0

    move-object v6, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v6 .. v26}, Lcom/android/server/pm/UserTypeDetails;-><init>(Ljava/lang/String;ZIIIIIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ZZLcom/android/server/pm/UserTypeDetails-IA;)V

    .line 555
    return-object v1
.end method

.method getBaseType()I
    .registers 2

    .line 532
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    return v0
.end method

.method public varargs setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "badgeColors"    # [I

    .line 460
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    .line 461
    return-object p0
.end method

.method public varargs setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "badgeLabels"    # [I

    .line 455
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    .line 456
    return-object p0
.end method

.method public setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "badgeNoBackground"    # I

    .line 483
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    .line 484
    return-object p0
.end method

.method public setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "badgePlain"    # I

    .line 478
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    .line 479
    return-object p0
.end method

.method public setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "baseType"    # I

    .line 445
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 446
    return-object p0
.end method

.method public varargs setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "darkThemeBadgeColors"    # [I

    .line 468
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    .line 469
    return-object p0
.end method

.method public setDefaultCrossProfileIntentFilters(Ljava/util/List;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/DefaultCrossProfileIntentFilter;",
            ">;)",
            "Lcom/android/server/pm/UserTypeDetails$Builder;"
        }
    .end annotation

    .line 509
    .local p1, "intentFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/DefaultCrossProfileIntentFilter;>;"
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    .line 510
    return-object p0
.end method

.method public setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .line 493
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 494
    return-object p0
.end method

.method public setDefaultSecureSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "settings"    # Landroid/os/Bundle;

    .line 503
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    .line 504
    return-object p0
.end method

.method public setDefaultSystemSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "settings"    # Landroid/os/Bundle;

    .line 498
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSystemSettings:Landroid/os/Bundle;

    .line 499
    return-object p0
.end method

.method public setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "flags"    # I

    .line 450
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    .line 451
    return-object p0
.end method

.method public setEnabled(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "enabled"    # I

    .line 430
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    .line 431
    return-object p0
.end method

.method public setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "badgeIcon"    # I

    .line 473
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    .line 474
    return-object p0
.end method

.method public setIsCredentialSharableWithParent(Z)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "isCredentialSharableWithParent"    # Z

    .line 527
    iput-boolean p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIsCredentialSharableWithParent:Z

    .line 528
    return-object p0
.end method

.method public setIsMediaSharedWithParent(Z)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "isMediaSharedWithParent"    # Z

    .line 518
    iput-boolean p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIsMediaSharedWithParent:Z

    .line 519
    return-object p0
.end method

.method public setLabel(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "label"    # I

    .line 488
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabel:I

    .line 489
    return-object p0
.end method

.method public setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "maxAllowed"    # I

    .line 435
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    .line 436
    return-object p0
.end method

.method public setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "maxAllowedPerParent"    # I

    .line 440
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    .line 441
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 425
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 426
    return-object p0
.end method
