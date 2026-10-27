.class public Landroid/view/ForceDarkHelperStubImpl;
.super Ljava/lang/Object;
.source "ForceDarkHelperStubImpl.java"

# interfaces
.implements Landroid/view/ForceDarkHelperStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist FORCE_DARK_ALGORITHM_DEFAULT:I = 0x0

.field private static final blacklist FORCE_DARK_DEBUG_CONFIG:I = 0x10

.field private static final blacklist FORCE_DARK_DEBUG_DRAW:I = 0x4

.field private static final blacklist FORCE_DARK_DEBUG_GLOBAL_MODE:I = 0x20

.field private static final blacklist FORCE_DARK_DEBUG_TIME:I = 0x2

.field private static final blacklist FORCE_DARK_DEBUG_UPDATE:I = 0x8

.field private static blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAppDarkModeObserverRegisted:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDebugPaint:Landroid/graphics/Paint;

.field private blacklist mDecorActivityName:Ljava/lang/String;

.field private blacklist mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

.field private blacklist mForceDarkDebug:I

.field private blacklist mForceDarkOrigin:Z

.field private blacklist mHardwareAccelerationExcluded:Z

.field private blacklist mInterceptRelaunch:Z

.field private blacklist mIsAppDarkModeEnable:Z

.field private blacklist mIsBlackAppDarkMode:Z

.field private blacklist mIsDarkModeEnabled:Z

.field private blacklist mIsDarkModeSupported:Z

.field private blacklist mIsInputMethod:Z

.field private blacklist mIsWhiteAppDarkMode:Z

.field private blacklist mLabToRgb:Landroid/graphics/ColorSpace$Connector;

.field private blacklist mMainThreadHandler:Landroid/os/Handler;

.field private blacklist mRgbToLab:Landroid/graphics/ColorSpace$Connector;

.field private blacklist mSplashScreenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/view/ForceDarkHelperStubImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/view/ForceDarkHelperStubImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDecorActivityName(Landroid/view/ForceDarkHelperStubImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/ForceDarkHelperStubImpl;->mDecorActivityName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForceDarkAppConfig(Landroid/view/ForceDarkHelperStubImpl;)Landroid/config/ForceDarkAppConfig;
    .registers 1

    iget-object p0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForceDarkDebug(Landroid/view/ForceDarkHelperStubImpl;)I
    .registers 1

    iget p0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkDebug:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForceDarkOrigin(Landroid/view/ForceDarkHelperStubImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAppDarkModeEnable(Landroid/view/ForceDarkHelperStubImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsAppDarkModeEnable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsBlackAppDarkMode(Landroid/view/ForceDarkHelperStubImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsBlackAppDarkMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDarkModeEnabled(Landroid/view/ForceDarkHelperStubImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsDarkModeEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDarkModeSupported(Landroid/view/ForceDarkHelperStubImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsDarkModeSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsInputMethod(Landroid/view/ForceDarkHelperStubImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsInputMethod:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsWhiteAppDarkMode(Landroid/view/ForceDarkHelperStubImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsWhiteAppDarkMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAppDarkModeEnable(Landroid/view/ForceDarkHelperStubImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsAppDarkModeEnable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSplashScreenMap(Landroid/view/ForceDarkHelperStubImpl;Ljava/util/HashMap;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ForceDarkHelperStubImpl;->mSplashScreenMap:Ljava/util/HashMap;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrefreshForceDarkMode(Landroid/view/ForceDarkHelperStubImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ForceDarkHelperStubImpl;->refreshForceDarkMode(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    const-string v0, "ForceDarkHelperStubImpl"

    sput-object v0, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkDebug:I

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsAppDarkModeEnable:Z

    .line 120
    const-string v0, ""

    iput-object v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mDecorActivityName:Ljava/lang/String;

    .line 1016
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    .line 1017
    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 1016
    invoke-static {v0, v1}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mRgbToLab:Landroid/graphics/ColorSpace$Connector;

    .line 1018
    sget-object v0, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1019
    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 1018
    invoke-static {v0, v1}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mLabToRgb:Landroid/graphics/ColorSpace$Connector;

    return-void
.end method

.method private blacklist applyForceDarkConfigDecorView(Ljava/lang/String;Landroid/view/View;Z)V
    .registers 9
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "forceUpdate"    # Z

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "forceDarkActivityConfig":Landroid/config/ForceDarkActivityConfig;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    iget-object v1, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    if-eqz v1, :cond_64

    .line 422
    invoke-virtual {v1}, Landroid/config/ForceDarkAppConfig;->getForceDarkActivityConfigList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_64

    .line 424
    iget-object v1, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    invoke-virtual {v1}, Landroid/config/ForceDarkAppConfig;->getForceDarkActivityConfigList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/config/ForceDarkActivityConfig;

    .line 426
    .local v2, "activityConfig":Landroid/config/ForceDarkActivityConfig;
    invoke-virtual {v2}, Landroid/config/ForceDarkActivityConfig;->getActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 428
    invoke-virtual {v2}, Landroid/config/ForceDarkActivityConfig;->getForceDark()Z

    move-result v3

    if-nez v3, :cond_62

    .line 429
    new-instance v3, Landroid/config/ForceDarkViewConfig;

    invoke-direct {v3}, Landroid/config/ForceDarkViewConfig;-><init>()V

    .line 430
    .local v3, "viewConfig":Landroid/config/ForceDarkViewConfig;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/config/ForceDarkViewConfig;->setForceDark(Z)V

    .line 431
    invoke-virtual {v2}, Landroid/config/ForceDarkActivityConfig;->hasBlackMask()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/config/ForceDarkViewConfig;->setBlackMask(Z)V

    .line 432
    invoke-direct {p0, p2, v3}, Landroid/view/ForceDarkHelperStubImpl;->applyForceDarkViewConfig(Landroid/view/View;Landroid/config/ForceDarkViewConfig;)V

    .line 433
    invoke-virtual {p2}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewForceDarkStateImpl;

    if-eqz v4, :cond_62

    .line 434
    nop

    .line 435
    invoke-virtual {p2}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v4

    check-cast v4, Landroid/view/ViewForceDarkStateImpl;

    .line 436
    .local v4, "impl":Landroid/view/ViewForceDarkStateImpl;
    invoke-virtual {v4}, Landroid/view/ViewForceDarkStateImpl;->markApplyForceDarkConfig()V

    .line 437
    invoke-virtual {v4}, Landroid/view/ViewForceDarkStateImpl;->cleanForceDarkViewTreeDirty()V

    .line 439
    invoke-virtual {v4}, Landroid/view/ViewForceDarkStateImpl;->markForceDarkViewTreeDirty()V

    .line 442
    .end local v3    # "viewConfig":Landroid/config/ForceDarkViewConfig;
    .end local v4    # "impl":Landroid/view/ViewForceDarkStateImpl;
    :cond_62
    move-object v0, v2

    .line 444
    .end local v2    # "activityConfig":Landroid/config/ForceDarkActivityConfig;
    :cond_63
    goto :goto_1b

    .line 448
    :cond_64
    invoke-direct {p0, p2, p3, v0}, Landroid/view/ForceDarkHelperStubImpl;->applyUpdateForceDarkViewRecursion(Landroid/view/View;ZLandroid/config/ForceDarkActivityConfig;)V

    .line 449
    return-void
.end method

.method private blacklist applyForceDarkConfigView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/config/ForceDarkActivityConfig;)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "activityConfig"    # Landroid/config/ForceDarkActivityConfig;

    .line 669
    const/4 v0, 0x0

    if-eqz p2, :cond_3e

    if-eqz p3, :cond_3e

    iget-object v1, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    if-nez v1, :cond_a

    goto :goto_3e

    .line 674
    :cond_a
    if-eqz p4, :cond_33

    invoke-virtual {p4}, Landroid/config/ForceDarkActivityConfig;->getActivityName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 675
    invoke-virtual {p4}, Landroid/config/ForceDarkActivityConfig;->getActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 677
    invoke-virtual {p4}, Landroid/config/ForceDarkActivityConfig;->getForceDark()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_27

    .line 678
    invoke-virtual {p1, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 679
    return v2

    .line 682
    :cond_27
    nop

    .line 683
    invoke-virtual {p4}, Landroid/config/ForceDarkActivityConfig;->getForceDarkViewConfigList()Ljava/util/List;

    move-result-object v0

    .line 682
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ForceDarkHelperStubImpl;->applyForceDarkViewConfigList(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 684
    return v2

    .line 689
    :cond_33
    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    .line 690
    invoke-virtual {v0}, Landroid/config/ForceDarkAppConfig;->getForceDarkViewGlobalConfigList()Ljava/util/List;

    move-result-object v0

    .line 689
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ForceDarkHelperStubImpl;->applyForceDarkViewConfigList(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0

    .line 670
    :cond_3e
    :goto_3e
    return v0
.end method

.method private blacklist applyForceDarkViewConfig(Landroid/view/View;Landroid/config/ForceDarkViewConfig;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "forceDarkViewConfig"    # Landroid/config/ForceDarkViewConfig;

    .line 732
    invoke-static {p1, p2}, Landroid/view/ForceDarkViewTagUtils;->setForceDarkViewConfig(Landroid/view/View;Landroid/config/ForceDarkViewConfig;)V

    .line 733
    invoke-virtual {p2}, Landroid/config/ForceDarkViewConfig;->getForceDark()Z

    move-result v0

    if-nez v0, :cond_e

    .line 734
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    goto :goto_22

    .line 736
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 737
    invoke-virtual {p2}, Landroid/config/ForceDarkViewConfig;->getUsage()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    .line 738
    iget-object v0, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p2}, Landroid/config/ForceDarkViewConfig;->getUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    .line 741
    :cond_22
    :goto_22
    return-void
.end method

.method private blacklist applyForceDarkViewConfigList(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/config/ForceDarkViewConfig;",
            ">;)Z"
        }
    .end annotation

    .line 702
    .local p3, "forceDarkViewConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewConfig;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_3b

    if-eqz p2, :cond_3b

    if-nez p3, :cond_8

    goto :goto_3b

    .line 706
    :cond_8
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/config/ForceDarkViewConfig;

    .line 707
    .local v2, "forceDarkViewConfig":Landroid/config/ForceDarkViewConfig;
    invoke-direct {p0, p1, v2}, Landroid/view/ForceDarkHelperStubImpl;->checkForceDarkViewConfigSuccess(Landroid/view/View;Landroid/config/ForceDarkViewConfig;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 708
    invoke-virtual {v2}, Landroid/config/ForceDarkViewConfig;->getForceDarkViewPositionInfoList()Ljava/util/List;

    move-result-object v3

    .line 711
    .local v3, "forceDarkViewPositionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewPositionInfo;>;"
    const/4 v4, 0x1

    if-eqz v3, :cond_35

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_35

    .line 713
    invoke-direct {p0, p1, v3}, Landroid/view/ForceDarkHelperStubImpl;->checkViewConditionSuccess(Landroid/view/View;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 715
    invoke-direct {p0, p1, v2}, Landroid/view/ForceDarkHelperStubImpl;->applyForceDarkViewConfig(Landroid/view/View;Landroid/config/ForceDarkViewConfig;)V

    .line 716
    return v4

    .line 720
    :cond_35
    invoke-direct {p0, p1, v2}, Landroid/view/ForceDarkHelperStubImpl;->applyForceDarkViewConfig(Landroid/view/View;Landroid/config/ForceDarkViewConfig;)V

    .line 721
    return v4

    .line 724
    .end local v2    # "forceDarkViewConfig":Landroid/config/ForceDarkViewConfig;
    .end local v3    # "forceDarkViewPositionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewPositionInfo;>;"
    :cond_39
    goto :goto_c

    .line 725
    :cond_3a
    return v0

    .line 703
    :cond_3b
    :goto_3b
    return v0
.end method

.method private blacklist applyUpdateForceDarkViewRecursion(Landroid/view/View;ZLandroid/config/ForceDarkActivityConfig;)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "forceUpdate"    # Z
    .param p3, "activityConfig"    # Landroid/config/ForceDarkActivityConfig;

    .line 480
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewForceDarkStateStub;->isForceDarkViewTreeDirty()Z

    move-result v0

    if-nez v0, :cond_d

    if-nez p2, :cond_d

    .line 481
    return-void

    .line 484
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewForceDarkStateStub;->isForceDarkViewDirtyRoot()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 485
    const/4 p2, 0x1

    .line 488
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    .line 489
    .local v0, "forceDarkState":Landroid/view/ViewForceDarkStateStub;
    instance-of v1, v0, Landroid/view/ViewForceDarkStateImpl;

    if-eqz v1, :cond_3b

    move-object v1, v0

    check-cast v1, Landroid/view/ViewForceDarkStateImpl;

    .line 490
    invoke-virtual {v1}, Landroid/view/ViewForceDarkStateImpl;->isApplyForceDarkConfig()Z

    move-result v1

    if-eqz v1, :cond_2b

    if-eqz p2, :cond_3b

    .line 491
    :cond_2b
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewForceDarkStateStub;->resetForceDarkState()V

    .line 492
    invoke-direct {p0, p1, p3}, Landroid/view/ForceDarkHelperStubImpl;->updateForceDarkForView(Landroid/view/View;Landroid/config/ForceDarkActivityConfig;)V

    .line 493
    move-object v1, v0

    check-cast v1, Landroid/view/ViewForceDarkStateImpl;

    invoke-virtual {v1}, Landroid/view/ViewForceDarkStateImpl;->markApplyForceDarkConfig()V

    .line 496
    :cond_3b
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_95

    .line 497
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 498
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 499
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4a
    if-ge v3, v2, :cond_95

    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewForceDarkStateStub;->getLayoutXmlName()Ljava/lang/String;

    move-result-object v4

    .line 501
    .local v4, "layoutXmlName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 502
    .local v5, "childView":Landroid/view/View;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8f

    invoke-virtual {v5}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewForceDarkStateStub;->getXmlIndex()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8f

    .line 503
    invoke-virtual {v5}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 504
    invoke-virtual {v5}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewForceDarkStateStub;->getXmlIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 503
    invoke-virtual {v6, v7}, Landroid/view/ViewForceDarkStateStub;->setLayoutXmlName(Ljava/lang/String;)V

    .line 506
    :cond_8f
    invoke-direct {p0, v5, p2, p3}, Landroid/view/ForceDarkHelperStubImpl;->applyUpdateForceDarkViewRecursion(Landroid/view/View;ZLandroid/config/ForceDarkActivityConfig;)V

    .line 499
    .end local v4    # "layoutXmlName":Ljava/lang/String;
    .end local v5    # "childView":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 510
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_95
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewForceDarkStateStub;->cleanForceDarkViewTreeDirty()V

    .line 511
    return-void
.end method

.method private blacklist checkForceDarkViewConfigSuccess(Landroid/view/View;Landroid/config/ForceDarkViewConfig;)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "forceDarkViewConfig"    # Landroid/config/ForceDarkViewConfig;

    .line 744
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "viewName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/config/ForceDarkViewConfig;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 747
    return v2

    .line 750
    :cond_14
    invoke-static {p1}, Landroid/view/ForceDarkViewTagUtils;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, "idName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/config/ForceDarkViewConfig;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-virtual {p2}, Landroid/config/ForceDarkViewConfig;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 752
    return v2

    .line 755
    :cond_2d
    invoke-virtual {p2}, Landroid/config/ForceDarkViewConfig;->getXmlIndexId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 756
    invoke-virtual {p2}, Landroid/config/ForceDarkViewConfig;->getXmlIndexId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewForceDarkStateStub;->getLayoutXmlName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 757
    return v2

    .line 759
    :cond_4a
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist checkViewConditionSuccess(Landroid/view/View;Ljava/util/List;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/config/ForceDarkViewPositionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 776
    .local p2, "forceDarkViewPositionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewPositionInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/config/ForceDarkViewPositionInfo;

    .line 779
    .local v1, "viewPositionInfo":Landroid/config/ForceDarkViewPositionInfo;
    invoke-virtual {v1}, Landroid/config/ForceDarkViewPositionInfo;->getParent()I

    move-result v2

    .line 780
    .local v2, "parentIndex":I
    invoke-virtual {v1}, Landroid/config/ForceDarkViewPositionInfo;->getIndex()I

    move-result v3

    .line 781
    .local v3, "childIndex":I
    invoke-direct {p0, p1, v2}, Landroid/view/ForceDarkHelperStubImpl;->getParentView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 783
    .local v4, "parentView":Landroid/view/View;
    const/4 v5, 0x0

    if-nez v4, :cond_20

    .line 784
    return v5

    .line 786
    :cond_20
    const/4 v6, -0x1

    if-ne v3, v6, :cond_25

    .line 787
    move-object v6, v4

    .local v6, "conditionView":Landroid/view/View;
    goto :goto_2c

    .line 789
    .end local v6    # "conditionView":Landroid/view/View;
    :cond_25
    move-object v6, v4

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 792
    .restart local v6    # "conditionView":Landroid/view/View;
    :goto_2c
    if-nez v6, :cond_2f

    .line 793
    return v5

    .line 796
    :cond_2f
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/config/ForceDarkViewPositionInfo;->getViewName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_42

    .line 797
    return v5

    .line 800
    :cond_42
    invoke-virtual {v1}, Landroid/config/ForceDarkViewPositionInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_62

    .line 801
    invoke-static {v6}, Landroid/view/ForceDarkViewTagUtils;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    .line 802
    .local v7, "idName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 803
    return v5

    .line 804
    :cond_57
    invoke-virtual {v1}, Landroid/config/ForceDarkViewPositionInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_62

    .line 805
    return v5

    .line 809
    .end local v7    # "idName":Ljava/lang/String;
    :cond_62
    invoke-virtual {v1}, Landroid/config/ForceDarkViewPositionInfo;->getXmlIndexId()Ljava/lang/String;

    move-result-object v7

    .line 810
    .local v7, "xmlIndexId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7b

    .line 811
    invoke-virtual {v6}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewForceDarkStateStub;->getLayoutXmlName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7b

    .line 812
    return v5

    .line 815
    .end local v1    # "viewPositionInfo":Landroid/config/ForceDarkViewPositionInfo;
    .end local v2    # "parentIndex":I
    .end local v3    # "childIndex":I
    .end local v4    # "parentView":Landroid/view/View;
    .end local v6    # "conditionView":Landroid/view/View;
    .end local v7    # "xmlIndexId":Ljava/lang/String;
    :cond_7b
    goto :goto_4

    .line 817
    :cond_7c
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist drawDebugRect(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 604
    iget v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkDebug:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_7

    .line 605
    return-void

    .line 607
    :cond_7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 609
    .local v0, "rectF":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1d

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v1, v2, :cond_1d

    .line 610
    const/16 v1, 0xa

    .local v1, "strokeWidth":I
    goto :goto_1e

    .line 612
    .end local v1    # "strokeWidth":I
    :cond_1d
    const/4 v1, 0x4

    .line 614
    .restart local v1    # "strokeWidth":I
    :goto_1e
    iget-object v2, p0, Landroid/view/ForceDarkHelperStubImpl;->mDebugPaint:Landroid/graphics/Paint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 615
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 616
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 617
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 618
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 619
    iget-object v2, p0, Landroid/view/ForceDarkHelperStubImpl;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 620
    return-void
.end method

.method private blacklist getActivityName(Landroid/view/View;)Ljava/lang/String;
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .line 452
    const-string v0, ""

    if-nez p1, :cond_5

    .line 453
    return-object v0

    .line 456
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 457
    .local v1, "context":Landroid/content/Context;
    instance-of v2, p1, Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_14

    .line 458
    move-object v2, p1

    check-cast v2, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getWindowContext()Landroid/content/Context;

    move-result-object v1

    .line 461
    :cond_14
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 462
    .local v2, "contextSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/Context;>;"
    :goto_19
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_50

    .line 463
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_26

    .line 464
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 466
    :cond_26
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 467
    sget-object v3, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cycle when get activity name for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    goto :goto_50

    .line 470
    :cond_45
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 471
    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_19

    .line 475
    :cond_50
    :goto_50
    return-object v0
.end method

.method private blacklist getAllForceDarkSettingsForSplashScreen()Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1143
    const-string v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1144
    .local v0, "mService":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1145
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1147
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_e
    const-string v3, "android.app.IUiModeManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1148
    if-eqz v0, :cond_37

    const v3, 0xfffff7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1150
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1151
    const-class v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v3
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_30} :catch_41
    .catchall {:try_start_e .. :try_end_30} :catchall_3f

    .line 1158
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1159
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1151
    return-object v3

    .line 1158
    :cond_37
    nop

    :goto_38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1159
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1160
    goto :goto_5c

    .line 1158
    :catchall_3f
    move-exception v3

    goto :goto_62

    .line 1153
    :catch_41
    move-exception v3

    .line 1154
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_42
    sget-object v4, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callBinderTransact android.app.IUiModeManager 16777207 failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_42 .. :try_end_5a} :catchall_3f

    .line 1158
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_38

    .line 1161
    :goto_5c
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    return-object v3

    .line 1158
    :goto_62
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1159
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1160
    throw v3
.end method

.method private blacklist getDarkModeAppSetting(Ljava/lang/String;)Z
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;

    .line 324
    iget v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkDebug:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 325
    const/4 v0, 0x1

    return v0

    .line 328
    :cond_8
    const-string v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 329
    .local v0, "mService":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 330
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 332
    .local v2, "reply":Landroid/os/Parcel;
    const/4 v3, 0x0

    :try_start_17
    const-string v4, "android.app.IUiModeManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    if-eqz v0, :cond_3b

    const v4, 0xfffffd

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 337
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 338
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_34} :catch_56
    .catchall {:try_start_17 .. :try_end_34} :catchall_54

    .line 347
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    return v3

    .line 340
    :cond_3b
    :try_start_3b
    sget-object v4, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDarkModeAppSetting transact failed , mService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_53} :catch_56
    .catchall {:try_start_3b .. :try_end_53} :catchall_54

    .line 347
    goto :goto_70

    :catchall_54
    move-exception v3

    goto :goto_78

    .line 342
    :catch_56
    move-exception v4

    .line 343
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_57
    sget-object v5, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callBinderTransact android.app.IUiModeManager 16777213 failed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_57 .. :try_end_6f} :catchall_54

    .line 347
    nop

    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_70
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    nop

    .line 350
    return v3

    .line 347
    :goto_78
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    throw v3
.end method

.method private blacklist getForceDarkAppConfig(Ljava/lang/String;)Landroid/config/ForceDarkAppConfig;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1068
    const-string v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1069
    .local v0, "mService":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1070
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1072
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_e
    const-string v3, "android.app.IUiModeManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1074
    if-eqz v0, :cond_36

    const v3, 0xfffffb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1076
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1077
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1078
    .local v3, "forceDarkAppConfigJsonString":Ljava/lang/String;
    nop

    .line 1079
    invoke-static {v3}, Landroid/config/ForceDarkConfigUtils;->parseForceDarkAppConfig(Ljava/lang/String;)Landroid/config/ForceDarkAppConfig;

    move-result-object v4
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2e} :catch_40
    .catchall {:try_start_e .. :try_end_2e} :catchall_3e

    .line 1080
    .local v4, "forceDarkAppConfig":Landroid/config/ForceDarkAppConfig;
    nop

    .line 1087
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1080
    return-object v4

    .line 1087
    .end local v3    # "forceDarkAppConfigJsonString":Ljava/lang/String;
    .end local v4    # "forceDarkAppConfig":Landroid/config/ForceDarkAppConfig;
    :cond_36
    nop

    :goto_37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1089
    goto :goto_5b

    .line 1087
    :catchall_3e
    move-exception v3

    goto :goto_5d

    .line 1082
    :catch_40
    move-exception v3

    .line 1083
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_41
    sget-object v4, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callBinderTransact android.app.IUiModeManager 16777211 failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_41 .. :try_end_59} :catchall_3e

    .line 1087
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_37

    .line 1090
    :goto_5b
    const/4 v3, 0x0

    return-object v3

    .line 1087
    :goto_5d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1089
    throw v3
.end method

.method private blacklist getForceDarkForSplashScreen(Ljava/lang/String;)I
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1135
    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mSplashScreenMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 1136
    return v1

    .line 1138
    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private blacklist getForceDarkOriginState(Ljava/lang/String;)Z
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;

    .line 295
    iget v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkDebug:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 296
    return v1

    .line 299
    :cond_8
    const-string v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 300
    .local v0, "mService":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 301
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 303
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_16
    const-string v4, "android.app.IUiModeManager"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    if-eqz v0, :cond_37

    const v4, 0xfffff9

    invoke-interface {v0, v4, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 307
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 308
    invoke-virtual {v3}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_30} :catch_52
    .catchall {:try_start_16 .. :try_end_30} :catchall_50

    .line 317
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 318
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 308
    return v1

    .line 310
    :cond_37
    :try_start_37
    sget-object v1, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getForceDarkOriginState transact failed , mService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_4f} :catch_52
    .catchall {:try_start_37 .. :try_end_4f} :catchall_50

    .line 317
    goto :goto_6c

    :catchall_50
    move-exception v1

    goto :goto_75

    .line 312
    :catch_52
    move-exception v1

    .line 313
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_53
    sget-object v4, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callBinderTransact android.app.IUiModeManager 16777209 failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_53 .. :try_end_6b} :catchall_50

    .line 317
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_6c
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 318
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 319
    nop

    .line 320
    const/4 v1, 0x1

    return v1

    .line 317
    :goto_75
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 318
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 319
    throw v1
.end method

.method private blacklist getParentView(Landroid/view/View;I)Landroid/view/View;
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parentIndex"    # I

    .line 763
    if-gez p2, :cond_3

    .line 764
    return-object p1

    .line 767
    :cond_3
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 768
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 769
    .local v0, "parentView":Landroid/view/View;
    add-int/lit8 p2, p2, -0x1

    .line 770
    invoke-direct {p0, v0, p2}, Landroid/view/ForceDarkHelperStubImpl;->getParentView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 772
    .end local v0    # "parentView":Landroid/view/View;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getShouldInterceptRelaunch(Ljava/lang/String;)Z
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;

    .line 354
    const-string v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 355
    .local v0, "mService":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 356
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 358
    .local v2, "reply":Landroid/os/Parcel;
    const/4 v3, 0x0

    :try_start_f
    const-string v4, "android.app.IUiModeManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    if-eqz v0, :cond_33

    const v4, 0xfffff8

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 363
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 364
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2c} :catch_3d
    .catchall {:try_start_f .. :try_end_2c} :catchall_3b

    .line 371
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 364
    return v3

    .line 371
    :cond_33
    nop

    :goto_34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 373
    goto :goto_58

    .line 371
    :catchall_3b
    move-exception v3

    goto :goto_59

    .line 366
    :catch_3d
    move-exception v4

    .line 367
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3e
    sget-object v5, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callBinderTransact android.app.IUiModeManager 16777208 failed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_3b

    .line 371
    nop

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_34

    .line 374
    :goto_58
    return v3

    .line 371
    :goto_59
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 373
    throw v3
.end method

.method private blacklist isSystemUiProcess(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 211
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist refreshForceDarkMode(Z)V
    .registers 7
    .param p1, "forceUpdateConfig"    # Z

    .line 864
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManagerGlobal;->getWindowViews()Ljava/util/ArrayList;

    move-result-object v0

    .line 865
    .local v0, "windowViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 866
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_3e

    iget-object v3, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_3e

    iget-object v3, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eqz v3, :cond_3e

    .line 869
    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 870
    .local v3, "handler":Landroid/os/Handler;
    if-eqz v3, :cond_3e

    .line 871
    new-instance v4, Landroid/view/ForceDarkHelperStubImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, v2}, Landroid/view/ForceDarkHelperStubImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/ForceDarkHelperStubImpl;ZLandroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 879
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_3e
    goto :goto_c

    .line 880
    :cond_3f
    return-void
.end method

.method private blacklist setViewRootImplForceDark(Landroid/view/ViewRootImpl;ZLjava/lang/String;)V
    .registers 8
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p2, "forceDark"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 279
    invoke-virtual {p1, p2}, Landroid/view/ViewRootImpl;->setUseForceDark(Z)V

    .line 280
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_10

    .line 281
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p2}, Landroid/view/ThreadedRenderer;->setForceDark(Z)Z

    .line 283
    :cond_10
    const/4 v0, 0x0

    .line 284
    .local v0, "activityName":Ljava/lang/String;
    iget-object v1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_20

    .line 285
    iget-object v1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    .line 286
    iget-object v1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/view/ForceDarkHelperStubImpl;->getActivityName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_20
    if-eqz p3, :cond_54

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 289
    sget-object v1, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setViewRootImplForceDark: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_54
    return-void
.end method

.method private blacklist updateForceDarkForView(Landroid/view/View;Landroid/config/ForceDarkActivityConfig;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activityConfig"    # Landroid/config/ForceDarkActivityConfig;

    .line 623
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Landroid/view/ForceDarkHelperStubImpl;->mDecorActivityName:Ljava/lang/String;

    .line 625
    .local v1, "activityName":Ljava/lang/String;
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/view/ForceDarkHelperStubImpl;->applyForceDarkConfigView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/config/ForceDarkActivityConfig;)Z

    move-result v2

    if-nez v2, :cond_b7

    .line 627
    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->getInstance()Landroid/graphics/MiuiForceDarkConfigManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->getMainRule()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_91

    .line 629
    iget v2, p1, Landroid/view/View;->mID:I

    const/4 v4, -0x1

    const/16 v5, 0x65

    if-eq v2, v4, :cond_62

    .line 631
    :try_start_23
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, p1, Landroid/view/View;->mID:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, "entryName":Ljava/lang/String;
    if-eqz v2, :cond_60

    .line 633
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 634
    const-string v4, "bg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5b

    const-string v4, "background"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_45

    goto :goto_5b

    .line 636
    :cond_45
    const-string v4, "btn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string v4, "button"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 637
    :cond_55
    iget-object v4, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    goto :goto_60

    .line 635
    :cond_5b
    :goto_5b
    iget-object v4, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4, v3}, Landroid/graphics/RenderNode;->setUsageHint(I)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_60} :catch_61

    .line 641
    .end local v2    # "entryName":Ljava/lang/String;
    :cond_60
    :goto_60
    goto :goto_62

    .line 640
    :catch_61
    move-exception v2

    .line 643
    :cond_62
    :goto_62
    const-string v2, "Blur"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 644
    iget-object v2, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    goto :goto_b7

    .line 645
    :cond_70
    instance-of v2, p1, Landroid/widget/TextView;

    if-nez v2, :cond_8b

    const-string v2, "Button"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7d

    goto :goto_8b

    .line 647
    :cond_7d
    const-string v2, "LottieAnimationView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 648
    iget-object v2, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    goto :goto_b7

    .line 646
    :cond_8b
    :goto_8b
    iget-object v2, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v5}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    goto :goto_b7

    .line 650
    :cond_91
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_b7

    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerStub;->getMainRule()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_b7

    .line 652
    move-object v2, p1

    check-cast v2, Landroid/widget/ImageView;

    .line 653
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 654
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_b7

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isLoadedFromResources()Z

    move-result v4

    if-eqz v4, :cond_b7

    instance-of v4, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v4, :cond_b7

    .line 656
    iget-object v4, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    const/16 v5, 0x67

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    .line 660
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_b7
    :goto_b7
    return-void
.end method


# virtual methods
.method public blacklist addForceDarkProperty(Landroid/view/View;Landroid/view/ViewHierarchyEncoder;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 1209
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewForceDarkStateStub;->getViewClass()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui:viewClasses"

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewForceDarkStateStub;->getBackgroundDrawableName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui:backgroundDrawableName"

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewForceDarkStateStub;->getBackgroundBitmapPalette()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui:backgroundPalette"

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewForceDarkStateStub;->isBackgroundLoadedFromResources()Z

    move-result v0

    const-string v1, "miui:backgroundFromRes"

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1213
    invoke-virtual {p1}, Landroid/view/View;->isForceDarkAllowed()Z

    move-result v0

    const-string v1, "miui:isForceDarkAllowed"

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1215
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1216
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_57

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_57

    .line 1217
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 1218
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1217
    const-string v2, "miui:backgroundColor"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :cond_57
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewForceDarkStateStub;->getUsageHint()I

    move-result v1

    const-string v2, "miui:usageHint"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1222
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewForceDarkStateStub;->getForceDarkUsageHint()I

    move-result v1

    const-string v2, "miui:forceDarkUsageHint"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1223
    iget-object v1, p1, Landroid/view/View;->mBackgroundRenderNode:Landroid/graphics/RenderNode;

    if-eqz v1, :cond_80

    .line 1224
    iget-object v1, p1, Landroid/view/View;->mBackgroundRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->getUsageHint()I

    move-result v1

    const-string v2, "miui:backgroundUsageHint"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1226
    :cond_80
    invoke-virtual {p1}, Landroid/view/View;->getForegroundBitmapStreams()I

    move-result v1

    const-string v2, "miui:foregroundBitmapStreams"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1227
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundBitmapStreams()I

    move-result v1

    const-string v2, "miui:backgroundBitmapStreams"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1228
    iget v1, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkDebug:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a6

    .line 1229
    nop

    .line 1230
    invoke-static {p1}, Landroid/view/ForceDarkViewTagUtils;->generateViewConditions(Landroid/view/View;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1229
    const-string v2, "miui:conditions"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    :cond_a6
    return-void
.end method

.method public blacklist changePaintWhenDrawPatch(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/MiuiCanvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 984
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 985
    return v1

    .line 987
    :cond_6
    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->getInstance()Landroid/graphics/MiuiForceDarkConfigManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->getMainRule()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_13

    .line 989
    return v1

    .line 992
    :cond_13
    invoke-virtual {p1}, Landroid/graphics/MiuiCanvas;->isForceDark()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroid/graphics/MiuiCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_24

    .line 993
    invoke-virtual {p0, p2}, Landroid/view/ForceDarkHelperStubImpl;->makeDark(Landroid/graphics/Paint;)Z

    move-result v0

    return v0

    .line 995
    :cond_24
    return v1
.end method

.method public blacklist changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/MiuiCanvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 999
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1000
    return v1

    .line 1002
    :cond_6
    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->getInstance()Landroid/graphics/MiuiForceDarkConfigManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->getMainRule()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_13

    .line 1004
    return v1

    .line 1007
    :cond_13
    invoke-virtual {p1}, Landroid/graphics/MiuiCanvas;->isForceDark()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Landroid/graphics/MiuiCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1008
    invoke-virtual {p0, p2}, Landroid/view/ForceDarkHelperStubImpl;->makeDark(Landroid/graphics/Paint;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1009
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/MiuiCanvas;->setHasForceDark(Z)V

    .line 1010
    return v0

    .line 1013
    :cond_2a
    return v1
.end method

.method public blacklist changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/MiuiCanvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 969
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 970
    return v1

    .line 972
    :cond_6
    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->getInstance()Landroid/graphics/MiuiForceDarkConfigManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->getMainRule()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_13

    .line 974
    return v1

    .line 977
    :cond_13
    invoke-virtual {p1}, Landroid/graphics/MiuiCanvas;->isForceDark()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroid/graphics/MiuiCanvas;->hasForceDark()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 978
    invoke-virtual {p0, p2}, Landroid/view/ForceDarkHelperStubImpl;->makeLight(Landroid/graphics/Paint;)Z

    move-result v0

    return v0

    .line 980
    :cond_24
    return v1
.end method

.method public blacklist dispatchDraw(Landroid/view/View;Landroid/graphics/Canvas;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 559
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_26

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 560
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isForceDark()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_26

    .line 564
    :cond_16
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    if-eqz v0, :cond_1b

    .line 565
    return v1

    .line 568
    :cond_1b
    invoke-static {p1}, Landroid/view/ForceDarkViewTagUtils;->getForceDarkViewConfig(Landroid/view/View;)Landroid/config/ForceDarkViewConfig;

    move-result-object v0

    .line 569
    .local v0, "forceDarkViewConfig":Landroid/config/ForceDarkViewConfig;
    if-eqz v0, :cond_24

    .line 570
    invoke-direct {p0, p1, p2}, Landroid/view/ForceDarkHelperStubImpl;->drawDebugRect(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 572
    :cond_24
    const/4 v1, 0x1

    return v1

    .line 561
    .end local v0    # "forceDarkViewConfig":Landroid/config/ForceDarkViewConfig;
    :cond_26
    :goto_26
    return v1
.end method

.method public blacklist drawBlackMask(Landroid/view/View;Landroid/graphics/Canvas;)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 576
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_5b

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 577
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isForceDark()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_5b

    .line 580
    :cond_16
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    if-eqz v0, :cond_1b

    .line 581
    return v1

    .line 584
    :cond_1b
    invoke-static {p1}, Landroid/view/ForceDarkViewTagUtils;->getForceDarkViewConfig(Landroid/view/View;)Landroid/config/ForceDarkViewConfig;

    move-result-object v0

    .line 585
    .local v0, "forceDarkViewConfig":Landroid/config/ForceDarkViewConfig;
    if-eqz v0, :cond_24

    .line 586
    invoke-direct {p0, p1, p2}, Landroid/view/ForceDarkHelperStubImpl;->drawDebugRect(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 589
    :cond_24
    const/4 v2, 0x1

    const-string v3, "#50000000"

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroid/config/ForceDarkViewConfig;->getForceDark()Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-virtual {v0}, Landroid/config/ForceDarkViewConfig;->hasBlackMask()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 590
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 591
    return v2

    .line 594
    :cond_3d
    if-nez v0, :cond_5a

    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->getInstance()Landroid/graphics/MiuiForceDarkConfigManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->getSecondaryRule()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_5a

    instance-of v4, p1, Landroid/webkit/WebView;

    if-eqz v4, :cond_5a

    .line 596
    invoke-virtual {p1, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 597
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 598
    return v2

    .line 600
    :cond_5a
    return v1

    .line 578
    .end local v0    # "forceDarkViewConfig":Landroid/config/ForceDarkViewConfig;
    :cond_5b
    :goto_5b
    return v1
.end method

.method public blacklist enableHardwareAccelerationIfNeeded(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 7
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 378
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    .line 380
    .local v0, "hardwareAccelerated":Z
    :goto_c
    iget-boolean v3, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    if-eqz v3, :cond_11

    .line 381
    return v0

    .line 383
    :cond_11
    if-nez v0, :cond_52

    iget-boolean v3, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsDarkModeEnabled:Z

    if-eqz v3, :cond_52

    iget-boolean v3, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsDarkModeSupported:Z

    if-nez v3, :cond_52

    iget-object v3, p0, Landroid/view/ForceDarkHelperStubImpl;->mContext:Landroid/content/Context;

    .line 384
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_52

    iget-object v3, p0, Landroid/view/ForceDarkHelperStubImpl;->mContext:Landroid/content/Context;

    .line 385
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_52

    .line 386
    sget-object v2, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/ForceDarkHelperStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " force enable hardware acceleration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return v1

    .line 390
    :cond_52
    iget-boolean v1, p0, Landroid/view/ForceDarkHelperStubImpl;->mHardwareAccelerationExcluded:Z

    if-eqz v1, :cond_59

    .line 391
    iput-boolean v2, p0, Landroid/view/ForceDarkHelperStubImpl;->mHardwareAccelerationExcluded:Z

    .line 392
    return v2

    .line 395
    :cond_59
    return v0
.end method

.method public blacklist initialize(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 127
    .local v0, "trackTime":J
    iput-object p1, p0, Landroid/view/ForceDarkHelperStubImpl;->mContext:Landroid/content/Context;

    .line 128
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/view/ForceDarkHelperStubImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 129
    const-string v2, "sys.forcedark.debug"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkDebug:I

    .line 130
    and-int/lit8 v2, v2, 0x4

    const/4 v4, 0x1

    if-eqz v2, :cond_37

    .line 131
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/view/ForceDarkHelperStubImpl;->mDebugPaint:Landroid/graphics/Paint;

    .line 132
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    iget-object v2, p0, Landroid/view/ForceDarkHelperStubImpl;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x10000

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v2, p0, Landroid/view/ForceDarkHelperStubImpl;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    :cond_37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v5, 0x20

    if-ne v2, v5, :cond_49

    move v2, v4

    goto :goto_4a

    :cond_49
    move v2, v3

    :goto_4a
    iput-boolean v2, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsDarkModeEnabled:Z

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "packageName":Ljava/lang/String;
    :try_start_50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 144
    .local v5, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_6c

    .line 145
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "force_dark_google"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_50 .. :try_end_6c} :catch_6d

    .line 149
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6c
    goto :goto_71

    .line 147
    :catch_6d
    move-exception v5

    .line 148
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 151
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_71
    iget-boolean v5, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    if-nez v5, :cond_7e

    invoke-direct {p0, v2}, Landroid/view/ForceDarkHelperStubImpl;->getForceDarkOriginState(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    goto :goto_7e

    :cond_7c
    move v5, v3

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v5, v4

    :goto_7f
    iput-boolean v5, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    .line 153
    const-string v6, "initialize for "

    if-nez v5, :cond_c5

    .line 154
    invoke-direct {p0, v2}, Landroid/view/ForceDarkHelperStubImpl;->getDarkModeAppSetting(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsAppDarkModeEnable:Z

    .line 155
    invoke-direct {p0, v2}, Landroid/view/ForceDarkHelperStubImpl;->getForceDarkAppConfig(Ljava/lang/String;)Landroid/config/ForceDarkAppConfig;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    .line 156
    if-eqz v5, :cond_a2

    .line 157
    invoke-virtual {v5}, Landroid/config/ForceDarkAppConfig;->isForceDark()Z

    move-result v5

    xor-int/2addr v5, v4

    iput-boolean v5, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsBlackAppDarkMode:Z

    .line 158
    iget-object v5, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    invoke-virtual {v5}, Landroid/config/ForceDarkAppConfig;->isForceDark()Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsWhiteAppDarkMode:Z

    .line 160
    :cond_a2
    sget-object v5, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , ForceDarkAppConfig: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8

    .line 163
    :cond_c5
    new-instance v5, Landroid/config/ForceDarkAppConfig;

    invoke-direct {v5}, Landroid/config/ForceDarkAppConfig;-><init>()V

    iput-object v5, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    .line 164
    sget-object v5, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , ForceDarkOrigin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_e8
    const-string v5, "baidu.input"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_103

    const-string v5, ".inputmethod"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_103

    .line 168
    const-string v5, "com.tencent.qqpinyin"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_101

    goto :goto_103

    :cond_101
    move v4, v3

    goto :goto_104

    :cond_103
    :goto_103
    nop

    :goto_104
    iput-boolean v4, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsInputMethod:Z

    .line 170
    if-nez v4, :cond_141

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 172
    .local v4, "assetManager":Ljava/lang/Object;
    instance-of v5, v4, Landroid/content/res/AssetManager;

    if-eqz v5, :cond_141

    .line 173
    move-object v5, v4

    check-cast v5, Landroid/content/res/AssetManager;

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->isDarkModeSupported()Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsDarkModeSupported:Z

    .line 174
    if-eqz v5, :cond_141

    .line 175
    sget-object v5, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mIsDarkModeSupported = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsDarkModeSupported:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v4    # "assetManager":Ljava/lang/Object;
    :cond_141
    iget v4, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkDebug:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_197

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 183
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_197

    .line 184
    sget-object v4, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " initialize time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isAppDarkModeEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsAppDarkModeEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isInWhiteAppDarkModeList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsWhiteAppDarkMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isInBlackAppDarkModeList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsBlackAppDarkMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 193
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    if-eqz v5, :cond_1bf

    .line 194
    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->getInstance()Landroid/graphics/MiuiForceDarkConfigManagerImpl;

    move-result-object v3

    iget v5, v4, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    .line 195
    invoke-virtual {v6}, Landroid/config/ForceDarkAppConfig;->getMainRule()I

    move-result v6

    iget-object v7, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    invoke-virtual {v7}, Landroid/config/ForceDarkAppConfig;->getSecondaryRule()I

    move-result v7

    iget-object v8, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    .line 196
    invoke-virtual {v8}, Landroid/config/ForceDarkAppConfig;->getTertiaryRule()I

    move-result v8

    .line 194
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->setConfig(FIII)V

    goto :goto_1ce

    .line 198
    :cond_1bf
    const-string v5, "sys.forcedark.mainrule"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 199
    .local v5, "mainRule":I
    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->getInstance()Landroid/graphics/MiuiForceDarkConfigManagerImpl;

    move-result-object v6

    iget v7, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v6, v7, v5, v3, v3}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->setConfig(FIII)V

    .line 203
    .end local v5    # "mainRule":I
    :goto_1ce
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/view/ForceDarkHelperStubImpl;->isSystemUiProcess(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1de

    .line 204
    invoke-direct {p0}, Landroid/view/ForceDarkHelperStubImpl;->getAllForceDarkSettingsForSplashScreen()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Landroid/view/ForceDarkHelperStubImpl;->mSplashScreenMap:Ljava/util/HashMap;

    .line 207
    :cond_1de
    invoke-direct {p0, v2}, Landroid/view/ForceDarkHelperStubImpl;->getShouldInterceptRelaunch(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/ForceDarkHelperStubImpl;->mInterceptRelaunch:Z

    .line 208
    return-void
.end method

.method synthetic blacklist lambda$refreshForceDarkMode$0$android-view-ForceDarkHelperStubImpl(ZLandroid/view/View;)V
    .registers 4
    .param p1, "forceUpdateConfig"    # Z
    .param p2, "view"    # Landroid/view/View;

    .line 872
    if-eqz p1, :cond_9

    .line 873
    invoke-virtual {p2}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewForceDarkStateStub;->markForceDarkDirtyRoot()V

    .line 875
    :cond_9
    iget-object v0, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {p0, v0}, Landroid/view/ForceDarkHelperStubImpl;->updateForceDarkMode(Landroid/view/ViewRootImpl;)Z

    .line 876
    return-void
.end method

.method public blacklist loadForceDarkConfig(Landroid/view/ViewRootImpl;)V
    .registers 11
    .param p1, "root"    # Landroid/view/ViewRootImpl;

    .line 1164
    if-nez p1, :cond_a

    .line 1165
    sget-object v0, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    const-string v1, "can not debug load config without a ViewRoot"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    return-void

    .line 1169
    :cond_a
    iget v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkDebug:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_18

    .line 1170
    sget-object v0, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    const-string v1, "loading debug config is not allowed except debugging config"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return-void

    .line 1173
    :cond_18
    const/4 v0, 0x0

    .line 1174
    .local v0, "configJson":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 1175
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1176
    .local v1, "debugFilePath":Ljava/lang/String;
    :try_start_42
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_47} :catch_69
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_64

    .line 1177
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_47
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 1178
    .local v3, "len":I
    new-array v4, v3, [B

    .line 1179
    .local v4, "buffer":[B
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 1180
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_5a

    move-object v0, v5

    .line 1181
    .end local v3    # "len":I
    .end local v4    # "buffer":[B
    :try_start_56
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_59} :catch_69
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_64

    goto :goto_6d

    .line 1176
    :catchall_5a
    move-exception v3

    :try_start_5b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_63

    :catchall_5f
    move-exception v4

    :try_start_60
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "configJson":Ljava/lang/String;
    .end local v1    # "debugFilePath":Ljava/lang/String;
    .end local p0    # "this":Landroid/view/ForceDarkHelperStubImpl;
    .end local p1    # "root":Landroid/view/ViewRootImpl;
    :goto_63
    throw v3
    :try_end_64
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_64} :catch_69
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_64} :catch_64

    .line 1183
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "configJson":Ljava/lang/String;
    .restart local v1    # "debugFilePath":Ljava/lang/String;
    .restart local p0    # "this":Landroid/view/ForceDarkHelperStubImpl;
    .restart local p1    # "root":Landroid/view/ViewRootImpl;
    :catch_64
    move-exception v2

    .line 1184
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6e

    .line 1181
    .end local v2    # "e":Ljava/io/IOException;
    :catch_69
    move-exception v2

    .line 1182
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1185
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_6d
    nop

    .line 1187
    :goto_6e
    if-nez v0, :cond_89

    .line 1188
    sget-object v2, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    return-void

    .line 1192
    :cond_89
    nop

    .line 1193
    invoke-static {v0}, Landroid/config/ForceDarkConfigUtils;->parseForceDarkAppConfig(Ljava/lang/String;)Landroid/config/ForceDarkAppConfig;

    move-result-object v2

    .line 1194
    .local v2, "forceDarkAppConfig":Landroid/config/ForceDarkAppConfig;
    if-eqz v2, :cond_e0

    .line 1195
    iget-object v3, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const-string v5, "apply debug config"

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1196
    iput-object v2, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    .line 1197
    iget-object v3, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1198
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->getInstance()Landroid/graphics/MiuiForceDarkConfigManagerImpl;

    move-result-object v4

    iget v5, v3, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    .line 1199
    invoke-virtual {v6}, Landroid/config/ForceDarkAppConfig;->getMainRule()I

    move-result v6

    iget-object v7, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    invoke-virtual {v7}, Landroid/config/ForceDarkAppConfig;->getSecondaryRule()I

    move-result v7

    iget-object v8, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    .line 1200
    invoke-virtual {v8}, Landroid/config/ForceDarkAppConfig;->getTertiaryRule()I

    move-result v8

    .line 1198
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->setConfig(FIII)V

    .line 1201
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Landroid/view/ForceDarkHelperStubImpl;->refreshForceDarkMode(Z)V

    .line 1202
    sget-object v4, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load debug config from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    .end local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    goto :goto_e7

    .line 1204
    :cond_e0
    sget-object v3, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    const-string v4, "can not load null config"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :goto_e7
    return-void
.end method

.method public blacklist makeDark(I)I
    .registers 11
    .param p1, "colorInt"    # I

    .line 1056
    invoke-static {p1}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    .line 1057
    .local v0, "color":J
    iget-object v2, p0, Landroid/view/ForceDarkHelperStubImpl;->mRgbToLab:Landroid/graphics/ColorSpace$Connector;

    invoke-static {v0, v1}, Landroid/graphics/Color;->red(J)F

    move-result v3

    invoke-static {v0, v1}, Landroid/graphics/Color;->green(J)F

    move-result v4

    invoke-static {v0, v1}, Landroid/graphics/Color;->blue(J)F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object v2

    .line 1058
    .local v2, "lab":[F
    const/4 v3, 0x0

    aget v4, v2, v3

    const/high16 v5, 0x42dc0000    # 110.0f

    sub-float/2addr v5, v4

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1059
    .local v4, "invertedL":F
    aget v5, v2, v3

    cmpg-float v5, v4, v5

    if-gez v5, :cond_45

    .line 1060
    aput v4, v2, v3

    .line 1061
    iget-object v5, p0, Landroid/view/ForceDarkHelperStubImpl;->mLabToRgb:Landroid/graphics/ColorSpace$Connector;

    invoke-virtual {v5, v2}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    move-result-object v5

    .line 1062
    .local v5, "rgb":[F
    aget v3, v5, v3

    const/4 v6, 0x1

    aget v6, v5, v6

    const/4 v7, 0x2

    aget v7, v5, v7

    invoke-static {v0, v1}, Landroid/graphics/Color;->alpha(J)F

    move-result v8

    invoke-static {v3, v6, v7, v8}, Landroid/graphics/Color;->pack(FFFF)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/graphics/Color;->toArgb(J)I

    move-result v3

    return v3

    .line 1064
    .end local v5    # "rgb":[F
    :cond_45
    return p1
.end method

.method public blacklist makeDark(Landroid/graphics/Paint;)Z
    .registers 12
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 1039
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1040
    return v0

    .line 1043
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v1

    .line 1044
    .local v1, "color":J
    iget-object v3, p0, Landroid/view/ForceDarkHelperStubImpl;->mRgbToLab:Landroid/graphics/ColorSpace$Connector;

    invoke-static {v1, v2}, Landroid/graphics/Color;->red(J)F

    move-result v4

    invoke-static {v1, v2}, Landroid/graphics/Color;->green(J)F

    move-result v5

    invoke-static {v1, v2}, Landroid/graphics/Color;->blue(J)F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object v3

    .line 1045
    .local v3, "lab":[F
    const/high16 v4, 0x42dc0000    # 110.0f

    aget v5, v3, v0

    sub-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1046
    .local v4, "invertedL":F
    aget v5, v3, v0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_47

    .line 1047
    aput v4, v3, v0

    .line 1048
    iget-object v5, p0, Landroid/view/ForceDarkHelperStubImpl;->mLabToRgb:Landroid/graphics/ColorSpace$Connector;

    invoke-virtual {v5, v3}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    move-result-object v5

    .line 1049
    .local v5, "rgb":[F
    aget v0, v5, v0

    const/4 v6, 0x1

    aget v7, v5, v6

    const/4 v8, 0x2

    aget v8, v5, v8

    invoke-static {v1, v2}, Landroid/graphics/Color;->alpha(J)F

    move-result v9

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Color;->pack(FFFF)J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Paint;->setColor(J)V

    .line 1050
    return v6

    .line 1052
    .end local v5    # "rgb":[F
    :cond_47
    return v0
.end method

.method public blacklist makeLight(Landroid/graphics/Paint;)Z
    .registers 12
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 1022
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1023
    return v0

    .line 1026
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v1

    .line 1027
    .local v1, "color":J
    iget-object v3, p0, Landroid/view/ForceDarkHelperStubImpl;->mRgbToLab:Landroid/graphics/ColorSpace$Connector;

    invoke-static {v1, v2}, Landroid/graphics/Color;->red(J)F

    move-result v4

    invoke-static {v1, v2}, Landroid/graphics/Color;->green(J)F

    move-result v5

    invoke-static {v1, v2}, Landroid/graphics/Color;->blue(J)F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object v3

    .line 1028
    .local v3, "lab":[F
    const/high16 v4, 0x42dc0000    # 110.0f

    aget v5, v3, v0

    sub-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1029
    .local v4, "invertedL":F
    aget v5, v3, v0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_47

    .line 1030
    aput v4, v3, v0

    .line 1031
    iget-object v5, p0, Landroid/view/ForceDarkHelperStubImpl;->mLabToRgb:Landroid/graphics/ColorSpace$Connector;

    invoke-virtual {v5, v3}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    move-result-object v5

    .line 1032
    .local v5, "rgb":[F
    aget v0, v5, v0

    const/4 v6, 0x1

    aget v7, v5, v6

    const/4 v8, 0x2

    aget v8, v5, v8

    invoke-static {v1, v2}, Landroid/graphics/Color;->alpha(J)F

    move-result v9

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Color;->pack(FFFF)J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Paint;->setColor(J)V

    .line 1033
    return v6

    .line 1035
    .end local v5    # "rgb":[F
    :cond_47
    return v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 215
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iput-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsDarkModeEnabled:Z

    .line 217
    return-void
.end method

.method public blacklist onForceDarkConfigChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "forceDarkAppConfigString"    # Ljava/lang/String;

    .line 854
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    if-eqz v0, :cond_5

    .line 855
    return-void

    .line 858
    :cond_5
    sget-object v0, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    const-string v1, "onForceDarkConfigChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    nop

    .line 860
    invoke-static {p1}, Landroid/config/ForceDarkConfigUtils;->parseForceDarkAppConfig(Ljava/lang/String;)Landroid/config/ForceDarkAppConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkAppConfig:Landroid/config/ForceDarkAppConfig;

    .line 861
    return-void
.end method

.method public blacklist registerAppDarkModeObserver(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 883
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ForceDarkHelperStubImpl;->isSystemUiProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    :cond_e
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mAppDarkModeObserverRegisted:Z

    if-nez v0, :cond_a3

    if-nez p1, :cond_16

    goto/16 :goto_a3

    .line 887
    :cond_16
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-nez v0, :cond_25

    goto :goto_68

    .line 892
    :cond_25
    new-instance v0, Landroid/os/MiuiBinderProxy;

    .line 893
    const-string v1, "uimode"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.app.IUiModeManager"

    invoke-direct {v0, v1, v2}, Landroid/os/MiuiBinderProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 895
    .local v0, "uiModeManagerServiceProxy":Landroid/os/MiuiBinderProxy;
    const v1, 0xfffffc

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;-><init>(Landroid/view/ForceDarkHelperStubImpl;Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver-IA;)V

    .line 897
    invoke-virtual {v4}, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    .line 898
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    .line 899
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 895
    invoke-virtual {v0, v1, v2}, Landroid/os/MiuiBinderProxy;->callOneWayTransact(I[Ljava/lang/Object;)I

    .line 900
    iput-boolean v4, p0, Landroid/view/ForceDarkHelperStubImpl;->mAppDarkModeObserverRegisted:Z

    .line 901
    return-void

    .line 888
    .end local v0    # "uiModeManagerServiceProxy":Landroid/os/MiuiBinderProxy;
    :cond_68
    :goto_68
    sget-object v0, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registAppDarkModeObserver, packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " processName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 889
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 888
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    return-void

    .line 885
    :cond_a3
    :goto_a3
    return-void
.end method

.method public blacklist shouldInterceptUiModeRelaunch(Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changes"    # I
    .param p3, "newConfig"    # Landroid/content/res/Configuration;
    .param p4, "lastConfig"    # Landroid/content/res/Configuration;

    .line 1237
    const/4 v0, 0x0

    const/16 v1, 0x200

    if-ne p2, v1, :cond_34

    iget v1, p3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_34

    iget v1, p3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x31

    iget v2, p4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    if-ne v1, v2, :cond_34

    .line 1240
    iget-object v1, p0, Landroid/view/ForceDarkHelperStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1241
    iget-boolean v1, p0, Landroid/view/ForceDarkHelperStubImpl;->mInterceptRelaunch:Z

    if-eqz v1, :cond_2e

    iget-boolean v1, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsAppDarkModeEnable:Z

    if-eqz v1, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    return v0

    .line 1243
    :cond_2f
    invoke-direct {p0, p1}, Landroid/view/ForceDarkHelperStubImpl;->getShouldInterceptRelaunch(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1246
    :cond_34
    return v0
.end method

.method public blacklist updateAfterViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 955
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    if-eqz v0, :cond_5

    .line 956
    return-void

    .line 960
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Canvas;->hasForceDark()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_29

    .line 961
    iget-object v0, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    .line 962
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewForceDarkStateImpl;

    if-eqz v0, :cond_29

    .line 963
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    check-cast v0, Landroid/view/ViewForceDarkStateImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewForceDarkStateImpl;->setUseSoftwareForceDark(Z)V

    .line 966
    :cond_29
    return-void
.end method

.method public blacklist updateBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)Z
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 527
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 528
    return v1

    .line 531
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v0

    .line 532
    .local v0, "renderer":Landroid/view/ThreadedRenderer;
    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isForceDark()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    .line 533
    invoke-virtual {v3}, Landroid/graphics/RenderNode;->isForceDarkAllowed()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 534
    invoke-virtual {p3, v2}, Landroid/graphics/Canvas;->setForceDark(Z)V

    .line 537
    :cond_1e
    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerStub;->getMainRule()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_4a

    instance-of v3, p1, Landroid/widget/ImageView;

    if-eqz v3, :cond_4a

    move-object v3, p1

    check-cast v3, Landroid/widget/ImageView;

    .line 539
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_4a

    .line 541
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewForceDarkStateStub;->getBackgroundBitmapPalette()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Dark"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 542
    iget-object v1, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    .line 543
    return v2

    .line 546
    :cond_4a
    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerStub;->getMainRule()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_66

    .line 548
    if-eqz p2, :cond_65

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isLoadedFromResources()Z

    move-result v1

    if-eqz v1, :cond_65

    instance-of v1, p2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_65

    .line 550
    iget-object v1, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    const/16 v3, 0x67

    invoke-virtual {v1, v3}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    .line 552
    :cond_65
    return v2

    .line 555
    :cond_66
    return v1
.end method

.method public blacklist updateBackgroundRenderNode(Landroid/view/View;Landroid/graphics/RenderNode;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "renderNode"    # Landroid/graphics/RenderNode;

    .line 514
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 515
    return v1

    .line 518
    :cond_6
    invoke-static {p1}, Landroid/view/ForceDarkViewTagUtils;->getForceDarkViewConfig(Landroid/view/View;)Landroid/config/ForceDarkViewConfig;

    move-result-object v0

    .line 519
    .local v0, "forceDarkViewConfig":Landroid/config/ForceDarkViewConfig;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/config/ForceDarkViewConfig;->getBackgroundUsage()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    .line 520
    invoke-virtual {v0}, Landroid/config/ForceDarkViewConfig;->getBackgroundUsage()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    .line 521
    const/4 v1, 0x1

    return v1

    .line 523
    :cond_1c
    return v1
.end method

.method public blacklist updateBeforeViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 938
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    if-eqz v0, :cond_5

    .line 939
    return-void

    .line 942
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 943
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getUseForceDark()Z

    move-result v3

    if-eqz v3, :cond_15

    move v3, v1

    goto :goto_16

    :cond_15
    move v3, v2

    .line 944
    .local v3, "viewRootForceDark":Z
    :goto_16
    invoke-virtual {p1}, Landroid/view/View;->isForceDarkAllowed()Z

    move-result v4

    .line 946
    .local v4, "viewForceDark":Z
    if-nez v4, :cond_34

    invoke-virtual {p2}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v5

    if-nez v5, :cond_34

    .line 947
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewForceDarkStateImpl;

    if-eqz v5, :cond_34

    .line 948
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v5

    check-cast v5, Landroid/view/ViewForceDarkStateImpl;

    invoke-virtual {v5}, Landroid/view/ViewForceDarkStateImpl;->isUseSoftwareForceDark()Z

    move-result v4

    .line 950
    :cond_34
    iget-boolean v5, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsAppDarkModeEnable:Z

    if-eqz v5, :cond_41

    iget-boolean v5, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsDarkModeEnabled:Z

    if-eqz v5, :cond_41

    if-eqz v3, :cond_41

    if-eqz v4, :cond_41

    goto :goto_42

    :cond_41
    move v1, v2

    :goto_42
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setForceDark(Z)V

    .line 952
    return-void
.end method

.method public blacklist updateForceDarkAllowedAttr(Landroid/view/View;Landroid/content/res/TypedArray;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .line 1094
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    if-eqz v0, :cond_6

    .line 1095
    const/4 v0, 0x0

    return v0

    .line 1097
    :cond_6
    const/16 v0, 0x66

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 1098
    .local v0, "forceDark":Z
    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerStub;->getMainRule()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_17

    .line 1100
    const/4 v0, 0x1

    goto :goto_34

    .line 1101
    :cond_17
    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerStub;->getMainRule()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_34

    instance-of v2, p1, Landroid/widget/TextView;

    if-nez v2, :cond_33

    .line 1103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1104
    :cond_33
    const/4 v0, 0x1

    .line 1106
    :cond_34
    :goto_34
    iget-object v2, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v0}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    .line 1107
    return v1
.end method

.method public blacklist updateForceDarkBeforeDrawPath(Ljava/lang/Boolean;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "isForceDark"    # Ljava/lang/Boolean;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 1251
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_90

    if-eqz p2, :cond_90

    if-nez p3, :cond_c

    goto/16 :goto_90

    .line 1255
    :cond_c
    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerStub;->getSecondaryRule()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_1d

    .line 1257
    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerStub;->getMainRule()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1d

    .line 1259
    return-void

    .line 1261
    :cond_1d
    invoke-virtual {p2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    .line 1262
    .local v0, "shader":Landroid/graphics/Shader;
    if-nez v0, :cond_24

    .line 1263
    return-void

    .line 1265
    :cond_24
    instance-of v1, v0, Landroid/graphics/BitmapShader;

    if-nez v1, :cond_29

    .line 1266
    return-void

    .line 1269
    :cond_29
    move-object v1, v0

    check-cast v1, Landroid/graphics/BitmapShader;

    invoke-virtual {v1}, Landroid/graphics/BitmapShader;->getBitmapForDarkMode()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1270
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_33

    .line 1271
    return-void

    .line 1274
    :cond_33
    const/4 v2, 0x0

    .line 1275
    .local v2, "renderNode":Landroid/graphics/RenderNode;
    instance-of v3, p3, Landroid/graphics/RecordingCanvas;

    if-eqz v3, :cond_3d

    .line 1276
    move-object v3, p3

    check-cast v3, Landroid/graphics/RecordingCanvas;

    iget-object v2, v3, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    .line 1278
    :cond_3d
    if-nez v2, :cond_40

    .line 1279
    return-void

    .line 1282
    :cond_40
    const/4 v3, 0x0

    .line 1283
    .local v3, "shouldInvert":Z
    invoke-virtual {v2}, Landroid/graphics/RenderNode;->getUsageHint()I

    move-result v4

    .line 1284
    .local v4, "usageHint":I
    new-instance v5, Landroid/graphics/ColorMatrix;

    const/16 v6, 0x14

    new-array v6, v6, [F

    fill-array-data v6, :array_92

    invoke-direct {v5, v6}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 1291
    .local v5, "reverseTranslate":Landroid/graphics/ColorMatrix;
    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerStub;->getMainRule()I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    const/4 v7, 0x1

    if-eqz v6, :cond_6b

    .line 1293
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isAsset()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->palette()I

    move-result v6

    if-ne v6, v7, :cond_6b

    const/16 v6, 0x6b

    if-ne v4, v6, :cond_6b

    .line 1295
    const/4 v3, 0x1

    .line 1298
    :cond_6b
    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerStub;->getMainRule()I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_7c

    .line 1300
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    const/high16 v8, -0x1000000

    if-ne v6, v8, :cond_7c

    .line 1301
    const/4 v3, 0x1

    .line 1304
    :cond_7c
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->palette()I

    move-result v6

    if-ne v6, v7, :cond_85

    if-ne v4, v7, :cond_85

    .line 1306
    const/4 v3, 0x1

    .line 1309
    :cond_85
    if-eqz v3, :cond_8f

    .line 1310
    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v6, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1312
    :cond_8f
    return-void

    .line 1252
    .end local v0    # "shader":Landroid/graphics/Shader;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "renderNode":Landroid/graphics/RenderNode;
    .end local v3    # "shouldInvert":Z
    .end local v4    # "usageHint":I
    .end local v5    # "reverseTranslate":Landroid/graphics/ColorMatrix;
    :cond_90
    :goto_90
    return-void

    nop

    :array_92
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public blacklist updateForceDarkBeginRecording(Landroid/view/View;ZLandroid/graphics/RecordingCanvas;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "allow"    # Z
    .param p3, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 904
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    if-eqz v0, :cond_5

    .line 905
    return-void

    .line 908
    :cond_5
    if-eqz p1, :cond_28

    if-nez p3, :cond_a

    goto :goto_28

    .line 912
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 913
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_11

    .line 914
    return-void

    .line 917
    :cond_11
    iget-boolean v1, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsAppDarkModeEnable:Z

    if-eqz v1, :cond_23

    iget-boolean v1, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsDarkModeEnabled:Z

    if-eqz v1, :cond_23

    if-eqz p2, :cond_23

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getUseForceDark()Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    invoke-virtual {p3, v1}, Landroid/graphics/RecordingCanvas;->setForceDark(Z)V

    .line 918
    return-void

    .line 909
    .end local v0    # "root":Landroid/view/ViewRootImpl;
    :cond_28
    :goto_28
    return-void
.end method

.method public blacklist updateForceDarkDecorView(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 399
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    if-eqz v0, :cond_5

    .line 400
    return-void

    .line 402
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 403
    .local v0, "trackTime":J
    iget-object v2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_3d

    iget-object v2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v2, :cond_3d

    iget-object v2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 404
    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->isForceDark()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 405
    invoke-direct {p0, p1}, Landroid/view/ForceDarkHelperStubImpl;->getActivityName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/view/ForceDarkHelperStubImpl;->mDecorActivityName:Ljava/lang/String;

    .line 406
    iget v2, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkDebug:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    .line 407
    .local v2, "forceUpdate":Z
    :goto_2c
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewForceDarkStateStub;->isForceDarkViewTreeDirty()Z

    move-result v3

    if-nez v3, :cond_38

    if-eqz v2, :cond_3d

    .line 408
    :cond_38
    iget-object v3, p0, Landroid/view/ForceDarkHelperStubImpl;->mDecorActivityName:Ljava/lang/String;

    invoke-direct {p0, v3, p1, v2}, Landroid/view/ForceDarkHelperStubImpl;->applyForceDarkConfigDecorView(Ljava/lang/String;Landroid/view/View;Z)V

    .line 411
    .end local v2    # "forceUpdate":Z
    :cond_3d
    iget v2, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkDebug:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6d

    .line 412
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 413
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_6d

    .line 414
    sget-object v2, Landroid/view/ForceDarkHelperStubImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/ForceDarkHelperStubImpl;->mDecorActivityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " updateForceDarkDecorView time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_6d
    return-void
.end method

.method public blacklist updateForceDarkEndRecording(Landroid/view/View;ZLandroid/graphics/RecordingCanvas;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "allow"    # Z
    .param p3, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 921
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    if-eqz v0, :cond_5

    .line 922
    return-void

    .line 925
    :cond_5
    if-eqz p1, :cond_15

    if-nez p3, :cond_a

    goto :goto_15

    .line 929
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 930
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_11

    .line 931
    return-void

    .line 934
    :cond_11
    invoke-virtual {p0, p1, p3}, Landroid/view/ForceDarkHelperStubImpl;->drawBlackMask(Landroid/view/View;Landroid/graphics/Canvas;)Z

    .line 935
    return-void

    .line 926
    .end local v0    # "root":Landroid/view/ViewRootImpl;
    :cond_15
    :goto_15
    return-void
.end method

.method public blacklist updateForceDarkMode(Landroid/view/ViewRootImpl;)Z
    .registers 8
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 220
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mForceDarkOrigin:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 221
    return v1

    .line 224
    :cond_6
    if-nez p1, :cond_9

    .line 225
    return v1

    .line 228
    :cond_9
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsInputMethod:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    .line 230
    const-string v0, "InputMethod"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/ForceDarkHelperStubImpl;->setViewRootImplForceDark(Landroid/view/ViewRootImpl;ZLjava/lang/String;)V

    .line 231
    return v2

    .line 234
    :cond_14
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsDarkModeEnabled:Z

    if-nez v0, :cond_1e

    .line 236
    const-string v0, "DarkModeEnabled"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/ForceDarkHelperStubImpl;->setViewRootImplForceDark(Landroid/view/ViewRootImpl;ZLjava/lang/String;)V

    .line 237
    return v2

    .line 240
    :cond_1e
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsAppDarkModeEnable:Z

    if-nez v0, :cond_28

    .line 242
    const-string v0, "AppDarkModeEnable"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/ForceDarkHelperStubImpl;->setViewRootImplForceDark(Landroid/view/ViewRootImpl;ZLjava/lang/String;)V

    .line 243
    return v2

    .line 246
    :cond_28
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsBlackAppDarkMode:Z

    if-eqz v0, :cond_32

    .line 248
    const-string v0, "BlackAppDarkMode"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/ForceDarkHelperStubImpl;->setViewRootImplForceDark(Landroid/view/ViewRootImpl;ZLjava/lang/String;)V

    .line 249
    return v2

    .line 252
    :cond_32
    iget-boolean v0, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsWhiteAppDarkMode:Z

    if-eqz v0, :cond_3c

    .line 254
    const-string v0, "WhiteAppDarkMode"

    invoke-direct {p0, p1, v2, v0}, Landroid/view/ForceDarkHelperStubImpl;->setViewRootImplForceDark(Landroid/view/ViewRootImpl;ZLjava/lang/String;)V

    .line 255
    return v2

    .line 258
    :cond_3c
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 259
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_55

    .line 260
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_55

    :cond_53
    move v3, v1

    goto :goto_56

    :cond_55
    :goto_55
    move v3, v2

    .line 261
    .local v3, "isSystemApp":Z
    :goto_56
    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 262
    .local v4, "a":Landroid/content/res/TypedArray;
    if-eqz v3, :cond_6f

    const/16 v5, 0x117

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_6f

    .line 264
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 265
    const-string v5, "LightTheme"

    invoke-direct {p0, p1, v1, v5}, Landroid/view/ForceDarkHelperStubImpl;->setViewRootImplForceDark(Landroid/view/ViewRootImpl;ZLjava/lang/String;)V

    .line 266
    return v2

    .line 270
    :cond_6f
    const/16 v1, 0x116

    iget-boolean v5, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsDarkModeSupported:Z

    xor-int/2addr v5, v2

    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 271
    .local v1, "forceDark":Z
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    const-string v5, "forceDarkAllowed"

    invoke-direct {p0, p1, v1, v5}, Landroid/view/ForceDarkHelperStubImpl;->setViewRootImplForceDark(Landroid/view/ViewRootImpl;ZLjava/lang/String;)V

    .line 273
    return v2
.end method

.method public blacklist updateForceDarkSplashScreen(Landroid/window/SplashScreenView;Landroid/graphics/drawable/Drawable;ILjava/lang/String;)Z
    .registers 8
    .param p1, "view"    # Landroid/window/SplashScreenView;
    .param p2, "mOverlayDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "mBackgroundColor"    # I
    .param p4, "mPackageName"    # Ljava/lang/String;

    .line 1113
    invoke-direct {p0, p4}, Landroid/view/ForceDarkHelperStubImpl;->getForceDarkForSplashScreen(Ljava/lang/String;)I

    move-result v0

    .line 1115
    .local v0, "forceDarkForSplashScreen":I
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    .line 1116
    return v1

    .line 1118
    :cond_9
    iget-boolean v2, p0, Landroid/view/ForceDarkHelperStubImpl;->mIsDarkModeEnabled:Z

    if-nez v2, :cond_e

    .line 1119
    return v1

    .line 1121
    :cond_e
    if-eqz p2, :cond_2c

    .line 1122
    instance-of v1, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_23

    .line 1123
    move-object v1, p2

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 1124
    .local v1, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ForceDarkHelperStubImpl;->makeDark(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 1125
    .end local v1    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    goto :goto_33

    .line 1126
    :cond_23
    const v1, -0xbbbbbc

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_33

    .line 1129
    :cond_2c
    invoke-virtual {p0, p3}, Landroid/view/ForceDarkHelperStubImpl;->makeDark(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/window/SplashScreenView;->setBackgroundColor(I)V

    .line 1131
    :goto_33
    const/4 v1, 0x1

    return v1
.end method
