.class public Lcom/android/server/wm/DisplayArea$Tokens;
.super Lcom/android/server/wm/DisplayArea;
.source "DisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tokens"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayArea<",
        "Lcom/android/server/wm/WindowToken;",
        ">;"
    }
.end annotation


# instance fields
.field private final mGetOrientingWindow:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mLastKeyguardForcedOrientation:I

.field private final mWindowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;)V
    .registers 5
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "type"    # Lcom/android/server/wm/DisplayArea$Type;
    .param p3, "name"    # Ljava/lang/String;

    .line 628
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DisplayArea$Tokens;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 629
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V
    .registers 6
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "type"    # Lcom/android/server/wm/DisplayArea$Type;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "featureId"    # I

    .line 632
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 578
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastKeyguardForcedOrientation:I

    .line 580
    new-instance v0, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mWindowComparator:Ljava/util/Comparator;

    .line 585
    new-instance v0, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayArea$Tokens;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mGetOrientingWindow:Ljava/util/function/Predicate;

    .line 633
    return-void
.end method

.method static synthetic lambda$new$0(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowToken;)I
    .registers 3
    .param p0, "token1"    # Lcom/android/server/wm/WindowToken;
    .param p1, "token2"    # Lcom/android/server/wm/WindowToken;

    .line 583
    invoke-static {}, Lcom/android/server/wm/DisplayContentStub;->get()Lcom/android/server/wm/DisplayContentStub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/DisplayContentStub;->compare(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowToken;)I

    move-result v0

    return v0
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 636
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mWindowComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayArea$Tokens;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 637
    return-void
.end method

.method final asTokens()Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 1

    .line 681
    return-object p0
.end method

.method public bridge synthetic commitPendingTransaction()V
    .registers 1

    .line 577
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .registers 2

    .line 577
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getAnimationLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 577
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 577
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 577
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .registers 2

    .line 577
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMiuiConfigFlag()I
    .registers 2

    .line 577
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getMiuiConfigFlag()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMiuiProjection()Z
    .registers 2

    .line 577
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getMiuiProjection()Z

    move-result v0

    return v0
.end method

.method getOrientation(I)I
    .registers 19
    .param p1, "candidate"    # I

    .line 641
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayArea$Tokens;->getIgnoreOrientationRequest()Z

    move-result v2

    const/4 v3, -0x2

    if-eqz v2, :cond_d

    .line 643
    return v3

    .line 647
    :cond_d
    iget-object v2, v0, Lcom/android/server/wm/DisplayArea$Tokens;->mGetOrientingWindow:Ljava/util/function/Predicate;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayArea$Tokens;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 649
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_16

    .line 650
    return p1

    .line 652
    :cond_16
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 653
    .local v4, "req":I
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_49

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    int-to-long v8, v4

    .local v8, "protoLogParam1":J
    iget-object v10, v0, Lcom/android/server/wm/DisplayArea$Tokens;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v10

    int-to-long v10, v10

    .local v10, "protoLogParam2":J
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, 0x63d29d4b

    const/16 v14, 0x14

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v6

    invoke-static {v12, v13, v14, v1, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 655
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":J
    .end local v10    # "protoLogParam2":J
    :cond_49
    iget-object v1, v0, Lcom/android/server/wm/DisplayArea$Tokens;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v5}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 658
    if-eq v4, v3, :cond_79

    const/4 v1, -0x1

    if-eq v4, v1, :cond_79

    .line 660
    sget-boolean v1, Lcom/android/server/wm/MiuiOrientationStub;->IS_FOLD:Z

    if-eqz v1, :cond_76

    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/MiuiOrientationStub;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 661
    iget-object v1, v0, Lcom/android/server/wm/DisplayArea$Tokens;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isDisplayFolded()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 662
    move v6, v7

    goto :goto_75

    :cond_74
    nop

    :goto_75
    move v4, v6

    .line 665
    :cond_76
    iput v4, v0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastKeyguardForcedOrientation:I

    goto :goto_7c

    .line 667
    :cond_79
    iget v1, v0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastKeyguardForcedOrientation:I

    move v4, v1

    .line 670
    :goto_7c
    iget-object v1, v0, Lcom/android/server/wm/DisplayArea$Tokens;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mUpdatingOrientationForSleep:Z

    if-eqz v1, :cond_83

    .line 671
    const/4 v4, 0x5

    .line 675
    :cond_83
    iput-object v2, v0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 676
    return v4
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 577
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 577
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProvidedInsetsSources()Landroid/util/SparseArray;
    .registers 2

    .line 577
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getProvidedInsetsSources()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 577
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .registers 2

    .line 577
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .registers 2

    .line 577
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 577
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$1$com-android-server-wm-DisplayArea$Tokens(Lcom/android/server/wm/WindowState;)Z
    .registers 7
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 587
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpdatingOrientationForSleep:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 588
    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 589
    const-string v0, "WindowManager"

    const-string v2, "Updating orientation for sleep, mGetOrientingWindow return keyguard window"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return v1

    .line 594
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7e

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-nez v0, :cond_27

    goto :goto_7e

    .line 597
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 598
    .local v0, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v3}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 602
    iget-object v3, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v3

    if-nez v3, :cond_4e

    iget-object v3, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 603
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 605
    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate(Z)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 606
    return v2

    .line 610
    :cond_4e
    iget-object v3, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 611
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isUnoccluding()Z

    move-result v3

    if-eqz v3, :cond_64

    iget-object v3, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 612
    invoke-virtual {v3}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v3

    if-eqz v3, :cond_64

    move v3, v1

    goto :goto_65

    :cond_64
    move v3, v2

    .line 615
    .local v3, "isUnoccluding":Z
    :goto_65
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-nez v4, :cond_6d

    if-eqz v3, :cond_6e

    .line 616
    :cond_6d
    return v1

    .line 619
    .end local v3    # "isUnoccluding":Z
    :cond_6e
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 620
    .local v3, "req":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_7d

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7d

    const/4 v4, -0x2

    if-ne v3, v4, :cond_7c

    goto :goto_7d

    .line 624
    :cond_7c
    return v1

    .line 622
    :cond_7d
    :goto_7d
    return v2

    .line 595
    .end local v0    # "policy":Lcom/android/server/policy/WindowManagerPolicy;
    .end local v3    # "req":I
    :cond_7e
    :goto_7e
    return v2
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 577
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    .line 577
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 577
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 577
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onUnfrozen()V
    .registers 1

    .line 577
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->onUnfrozen()V

    return-void
.end method

.method public bridge synthetic setMiuiProjection(Z)V
    .registers 2

    .line 577
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->setMiuiProjection(Z)V

    return-void
.end method
