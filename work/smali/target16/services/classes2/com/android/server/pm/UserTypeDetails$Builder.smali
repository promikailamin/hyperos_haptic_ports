.class public final Lcom/android/server/pm/UserTypeDetails$Builder;
.super Ljava/lang/Object;
.source "UserTypeDetails.java"


# instance fields
.field public mAccessibilityString:I

.field public mBadgeColors:[I

.field public mBadgeLabels:[I

.field public mBadgeNoBackground:I

.field public mBadgePlain:I

.field public mBaseType:I

.field public mDarkThemeBadgeColors:[I

.field public mDefaultCrossProfileIntentFilters:Ljava/util/List;

.field public mDefaultRestrictions:Landroid/os/Bundle;

.field public mDefaultSecureSettings:Landroid/os/Bundle;

.field public mDefaultSystemSettings:Landroid/os/Bundle;

.field public mDefaultUserInfoPropertyFlags:I

.field public mDefaultUserProperties:Landroid/content/pm/UserProperties;

.field public mEnabled:I

.field public mIconBadge:I

.field public mLabels:[I

.field public mMaxAllowed:I

.field public mMaxAllowedPerParent:I

.field public mName:Ljava/lang/String;

.field public mProfileParentRequired:Z

.field public mStatusBarIcon:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 427
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    .line 428
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    .line 429
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    const/4 v1, 0x0

    .line 430
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 431
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSystemSettings:Landroid/os/Bundle;

    .line 432
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    .line 433
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    const/4 v2, 0x1

    .line 435
    iput v2, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    .line 436
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    .line 437
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    .line 438
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    .line 439
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    .line 440
    iput-boolean v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    .line 441
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    .line 442
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    .line 443
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    .line 444
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    .line 445
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mAccessibilityString:I

    .line 448
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    return-void
.end method


# virtual methods
.method public final checkSystemAndMainUserPreconditions()V
    .registers 6

    .line 658
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    and-int/lit16 v0, v0, 0x800

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    iget v3, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_12

    move v3, v2

    goto :goto_13

    :cond_12
    move v3, v1

    :goto_13
    if-ne v0, v3, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    iget-object v3, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "UserTypeDetails %s cannot be SYSTEM xor PRIMARY."

    invoke-static {v0, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 663
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    if-ne v0, v2, :cond_2e

    :cond_2d
    move v1, v2

    :cond_2e
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "UserTypeDetails %s must not sanction more than one MainUser."

    invoke-static {v1, v0, p0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public createUserTypeDetails()Lcom/android/server/pm/UserTypeDetails;
    .registers 30

    move-object/from16 v0, p0

    .line 575
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    const-string v4, "Cannot create a UserTypeDetails with no name."

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 577
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->hasValidBaseType()Z

    move-result v1

    iget-object v4, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 578
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 577
    const-string v5, "UserTypeDetails %s has invalid baseType: %d"

    invoke-static {v1, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 579
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->hasValidPropertyFlags()Z

    move-result v1

    iget-object v4, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    .line 581
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 579
    const-string v5, "UserTypeDetails %s has invalid flags: %s"

    invoke-static {v1, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 582
    iget v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    if-ltz v1, :cond_40

    move v4, v3

    goto :goto_41

    :cond_40
    move v4, v2

    :goto_41
    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 584
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 582
    const-string v5, "UserTypeDetails %s has negative maxAllowed: %d"

    invoke-static {v4, v5, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 585
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->checkSystemAndMainUserPreconditions()V

    .line 586
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 587
    iget v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    if-ltz v1, :cond_5f

    move v4, v3

    goto :goto_60

    :cond_5f
    move v4, v2

    :goto_60
    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 589
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 587
    const-string v5, "UserTypeDetails %s has negative mMaxAllowedPerParent: %d"

    invoke-static {v4, v5, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 591
    :cond_6f
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->hasBadge()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 592
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    if-eqz v1, :cond_7e

    array-length v1, v1

    if-eqz v1, :cond_7e

    move v1, v3

    goto :goto_7f

    :cond_7e
    move v1, v2

    :goto_7f
    iget-object v4, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "UserTypeDetails %s has badge but no badgeLabels."

    invoke-static {v1, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 594
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    if-eqz v1, :cond_93

    array-length v1, v1

    if-eqz v1, :cond_93

    move v1, v3

    goto :goto_94

    :cond_93
    move v1, v2

    :goto_94
    iget-object v4, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "UserTypeDetails %s has badge but no badgeColors."

    invoke-static {v1, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 597
    :cond_9f
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->isProfile()Z

    move-result v1

    if-nez v1, :cond_cc

    .line 598
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    if-eqz v1, :cond_b2

    .line 599
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b0

    goto :goto_b2

    :cond_b0
    move v1, v2

    goto :goto_b3

    :cond_b2
    :goto_b2
    move v1, v3

    :goto_b3
    iget-object v4, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 598
    const-string v5, "UserTypeDetails %s has a non empty defaultCrossProfileIntentFilters"

    invoke-static {v1, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 602
    iget-boolean v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    xor-int/2addr v1, v3

    iget-object v4, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "UserTypeDetails %s requires a parent but isn\'t a profile"

    invoke-static {v1, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 605
    :cond_cc
    new-instance v6, Lcom/android/server/pm/UserTypeDetails;

    iget-object v7, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iget v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    if-eqz v1, :cond_d6

    move v8, v3

    goto :goto_d7

    :cond_d6
    move v8, v2

    :goto_d7
    iget v9, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    iget v10, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    iget v11, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    iget-object v12, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    iget v13, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    iget-boolean v14, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    iget v15, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    iget v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    iget v2, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    iget v3, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    iget-object v4, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    move/from16 v16, v1

    .line 620
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    if-nez v1, :cond_f8

    move-object/from16 v21, v5

    goto :goto_fa

    :cond_f8
    move-object/from16 v21, v1

    :goto_fa
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSystemSettings:Landroid/os/Bundle;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    move-object/from16 v25, v1

    iget v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mAccessibilityString:I

    .line 626
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->getDefaultUserProperties()Landroid/content/pm/UserProperties;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v26, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-direct/range {v6 .. v28}, Lcom/android/server/pm/UserTypeDetails;-><init>(Ljava/lang/String;ZIII[IIZIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ILandroid/content/pm/UserProperties;Lcom/android/server/pm/UserTypeDetails-IA;)V

    return-object v6
.end method

.method public getBaseType()I
    .registers 1

    .line 571
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    return p0
.end method

.method public getDefaultUserProperties()Landroid/content/pm/UserProperties;
    .registers 2

    .line 564
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    if-nez v0, :cond_f

    .line 565
    new-instance v0, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v0}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    .line 567
    :cond_f
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    return-object p0
.end method

.method public final hasBadge()Z
    .registers 1

    .line 630
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final hasValidBaseType()Z
    .registers 2

    .line 639
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    const/16 v0, 0x400

    if-eq p0, v0, :cond_15

    const/16 v0, 0x1000

    if-eq p0, v0, :cond_15

    const/16 v0, 0x800

    if-eq p0, v0, :cond_15

    const/16 v0, 0xc00

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public final hasValidPropertyFlags()Z
    .registers 1

    .line 653
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    and-int/lit16 p0, p0, 0x1c90

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isProfile()Z
    .registers 1

    .line 634
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public setAccessibilityString(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 549
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mAccessibilityString:I

    return-object p0
.end method

.method public varargs setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 486
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    return-object p0
.end method

.method public varargs setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 481
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    return-object p0
.end method

.method public setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 512
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    return-object p0
.end method

.method public setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 507
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    return-object p0
.end method

.method public setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 471
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    return-object p0
.end method

.method public varargs setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 492
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    return-object p0
.end method

.method public setDefaultCrossProfileIntentFilters(Ljava/util/List;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 543
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 527
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    return-object p0
.end method

.method public setDefaultSecureSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 537
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    return-object p0
.end method

.method public setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 476
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    return-object p0
.end method

.method public setDefaultUserProperties(Landroid/content/pm/UserProperties$Builder;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 559
    invoke-virtual {p1}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    return-object p0
.end method

.method public setEnabled(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 456
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    return-object p0
.end method

.method public setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 502
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    return-object p0
.end method

.method public varargs setLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 522
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    return-object p0
.end method

.method public setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 461
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    return-object p0
.end method

.method public setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 466
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 451
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 497
    iput-boolean p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    return-object p0
.end method

.method public setStatusBarIcon(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 517
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    return-object p0
.end method
