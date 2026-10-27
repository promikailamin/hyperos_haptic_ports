.class final Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsItem"
.end annotation


# instance fields
.field private mBaseCodePath:Ljava/lang/String;

.field private mCache:Landroid/content/om/OverlayInfo;

.field private mCategory:Ljava/lang/String;

.field private mIsEnabled:Z

.field private mIsFabricated:Z

.field private mIsMutable:Z

.field private final mOverlay:Landroid/content/om/OverlayIdentifier;

.field private mPriority:I

.field private mState:I

.field private final mTargetOverlayableName:Ljava/lang/String;

.field private final mTargetPackageName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBaseCodePath(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCategory(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEnabled(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFabricated(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsFabricated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMutable(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverlay(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayIdentifier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPriority(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    iget p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    iget p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetOverlayableName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetPackageName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    iget p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetBaseCodePath(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getBaseCodePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getOverlayInfo()Landroid/content/om/OverlayInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPriority(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getPriority()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetState(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getState()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetTargetOverlayableName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetOverlayableName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTargetPackageName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUserId(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getUserId()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEnabled(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misMutable(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isMutable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetBaseCodePath(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setBaseCodePath(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetCategory(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetEnabled(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setEnabled(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetPriority(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setPriority(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetState(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setState(I)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILjava/lang/String;Z)V
    .registers 13
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "userId"    # I
    .param p3, "targetPackageName"    # Ljava/lang/String;
    .param p4, "targetOverlayableName"    # Ljava/lang/String;
    .param p5, "baseCodePath"    # Ljava/lang/String;
    .param p6, "state"    # I
    .param p7, "isEnabled"    # Z
    .param p8, "isMutable"    # Z
    .param p9, "priority"    # I
    .param p10, "category"    # Ljava/lang/String;
    .param p11, "isFabricated"    # Z

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    .line 584
    iput p2, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    .line 585
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    .line 586
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    .line 587
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 588
    iput p6, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 589
    iput-boolean p7, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 590
    iput-object p10, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 592
    iput-boolean p8, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    .line 593
    iput p9, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    .line 594
    iput-boolean p11, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsFabricated:Z

    .line 595
    return-void
.end method

.method private getBaseCodePath()Ljava/lang/String;
    .registers 2

    .line 610
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method private getOverlayInfo()Landroid/content/om/OverlayInfo;
    .registers 14

    .line 662
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    if-nez v0, :cond_2a

    .line 663
    new-instance v0, Landroid/content/om/OverlayInfo;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v1}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    iget v9, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    iget v10, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    iget-boolean v11, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    iget-boolean v12, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsFabricated:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 667
    :cond_2a
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    return-object v0
.end method

.method private getPriority()I
    .registers 2

    .line 684
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    return v0
.end method

.method private getState()I
    .registers 2

    .line 623
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    return v0
.end method

.method private getTargetOverlayableName()Ljava/lang/String;
    .registers 2

    .line 602
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    return-object v0
.end method

.method private getTargetPackageName()Ljava/lang/String;
    .registers 2

    .line 598
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private getUserId()I
    .registers 2

    .line 606
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    return v0
.end method

.method private invalidateCache()V
    .registers 2

    .line 676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 677
    return-void
.end method

.method private isEnabled()Z
    .registers 2

    .line 636
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    return v0
.end method

.method private isMutable()Z
    .registers 2

    .line 680
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    return v0
.end method

.method private setBaseCodePath(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 615
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 616
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 617
    const/4 v0, 0x1

    return v0

    .line 619
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private setCategory(Ljava/lang/String;)Z
    .registers 3
    .param p1, "category"    # Ljava/lang/String;

    .line 653
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 654
    if-nez p1, :cond_c

    const/4 v0, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    .line 655
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 656
    const/4 v0, 0x1

    return v0

    .line 658
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method private setEnabled(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 640
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 641
    return v1

    .line 644
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    if-eq v0, p1, :cond_11

    .line 645
    iput-boolean p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 646
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 647
    const/4 v0, 0x1

    return v0

    .line 649
    :cond_11
    return v1
.end method

.method private setPriority(I)V
    .registers 2
    .param p1, "priority"    # I

    .line 671
    iput p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    .line 672
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 673
    return-void
.end method

.method private setState(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 627
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    if-eq v0, p1, :cond_b

    .line 628
    iput p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 629
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 630
    const/4 v0, 0x1

    return v0

    .line 632
    :cond_b
    const/4 v0, 0x0

    return v0
.end method
