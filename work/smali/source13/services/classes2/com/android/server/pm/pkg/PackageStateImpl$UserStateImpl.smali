.class public Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;
.super Ljava/lang/Object;
.source "PackageStateImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageUserState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/pkg/PackageStateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserStateImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl$Booleans;
    }
.end annotation


# instance fields
.field private mBooleans:I

.field private final mCeDataInode:J

.field private final mDisabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDistractionFlags:I

.field private final mEnabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledState:I

.field private final mFirstInstallTime:J

.field private final mHarmfulAppWarning:Ljava/lang/String;

.field private final mInstallReason:I

.field private final mLastDisableAppCaller:Ljava/lang/String;

.field private final mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

.field private final mSharedLibraryOverlayPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;"
        }
    .end annotation
.end field

.field private final mSplashScreenTheme:Ljava/lang/String;

.field private final mUninstallReason:I


# direct methods
.method private constructor <init>(Lcom/android/server/pm/pkg/PackageUserState;)V
    .registers 4
    .param p1, "userState"    # Lcom/android/server/pm/pkg/PackageUserState;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mCeDataInode:J

    .line 357
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mDisabledComponents:Landroid/util/ArraySet;

    .line 358
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mDistractionFlags:I

    .line 359
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mEnabledComponents:Landroid/util/ArraySet;

    .line 360
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mEnabledState:I

    .line 361
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 362
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mInstallReason:I

    .line 363
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 364
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 365
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getSharedLibraryOverlayPaths()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mSharedLibraryOverlayPaths:Ljava/util/Map;

    .line 366
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mUninstallReason:I

    .line 367
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 368
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->setBoolean(IZ)V

    .line 369
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->setBoolean(IZ)V

    .line 370
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->setBoolean(IZ)V

    .line 371
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->setBoolean(IZ)V

    .line 372
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v0

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->setBoolean(IZ)V

    .line 373
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v0

    const/16 v1, 0x20

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->setBoolean(IZ)V

    .line 374
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v0

    const/16 v1, 0x40

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->setBoolean(IZ)V

    .line 375
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mFirstInstallTime:J

    .line 376
    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 536
    return-void
.end method

.method public static copy(Lcom/android/server/pm/pkg/PackageUserState;)Lcom/android/server/pm/pkg/PackageUserState;
    .registers 2
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;

    .line 292
    new-instance v0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;-><init>(Lcom/android/server/pm/pkg/PackageUserState;)V

    return-object v0
.end method

.method private getBoolean(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 328
    iget v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mBooleans:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private setBoolean(IZ)V
    .registers 5
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 320
    if-eqz p2, :cond_8

    .line 321
    iget v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mBooleans:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mBooleans:I

    goto :goto_e

    .line 323
    :cond_8
    iget v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mBooleans:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mBooleans:I

    .line 325
    :goto_e
    return-void
.end method


# virtual methods
.method public getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 4

    .line 425
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mSharedLibraryOverlayPaths:Ljava/util/Map;

    if-nez v0, :cond_a

    .line 426
    const/4 v0, 0x0

    return-object v0

    .line 428
    :cond_a
    new-instance v0, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    .line 429
    .local v0, "newPaths":Landroid/content/pm/overlay/OverlayPaths$Builder;
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-virtual {v0, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 430
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mSharedLibraryOverlayPaths:Ljava/util/Map;

    if-eqz v1, :cond_30

    .line 431
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/overlay/OverlayPaths;

    .line 432
    .local v2, "libOverlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    invoke-virtual {v0, v2}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 433
    .end local v2    # "libOverlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    goto :goto_20

    .line 435
    :cond_30
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v1

    return-object v1
.end method

.method public getBooleans()I
    .registers 2

    .line 455
    iget v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mBooleans:I

    return v0
.end method

.method public getCeDataInode()J
    .registers 3

    .line 460
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mCeDataInode:J

    return-wide v0
.end method

.method public getDisabledComponents()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mDisabledComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getDistractionFlags()I
    .registers 2

    .line 471
    iget v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mDistractionFlags:I

    return v0
.end method

.method public getEnabledComponents()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mEnabledComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getEnabledState()I
    .registers 2

    .line 481
    iget v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mEnabledState:I

    return v0
.end method

.method public getFirstInstallTime()J
    .registers 3

    .line 521
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mFirstInstallTime:J

    return-wide v0
.end method

.method public getHarmfulAppWarning()Ljava/lang/String;
    .registers 2

    .line 486
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallReason()I
    .registers 2

    .line 491
    iget v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mInstallReason:I

    return v0
.end method

.method public getLastDisableAppCaller()Ljava/lang/String;
    .registers 2

    .line 496
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 2

    .line 501
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    return-object v0
.end method

.method public getSharedLibraryOverlayPaths()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mSharedLibraryOverlayPaths:Ljava/util/Map;

    return-object v0
.end method

.method public getSplashScreenTheme()Ljava/lang/String;
    .registers 2

    .line 516
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUninstallReason()I
    .registers 2

    .line 511
    iget v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mUninstallReason:I

    return v0
.end method

.method public isComponentDisabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "componentName"    # Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mDisabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isComponentEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "componentName"    # Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mEnabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .registers 2

    .line 380
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isInstalled()Z
    .registers 2

    .line 385
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isInstantApp()Z
    .registers 2

    .line 390
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isNotLaunched()Z
    .registers 2

    .line 395
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isStopped()Z
    .registers 2

    .line 400
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSuspended()Z
    .registers 2

    .line 405
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isVirtualPreload()Z
    .registers 2

    .line 410
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public setBooleans(I)Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;
    .registers 2
    .param p1, "value"    # I

    .line 526
    iput p1, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mBooleans:I

    .line 527
    return-object p0
.end method
