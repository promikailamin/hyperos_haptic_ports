.class public Lcom/android/server/wm/WindowToken;
.super Lcom/android/server/wm/WindowContainer;
.source "WindowToken.java"


# instance fields
.field public mClientVisible:Z

.field public mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

.field public mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

.field public final mFromClientToken:Z

.field public mIsExiting:Z

.field public final mOptions:Landroid/os/Bundle;

.field public final mOwnerCanManageAppTokens:Z

.field public mPersistOnEmpty:Z

.field public final mRoundedCornerOverlay:Z

.field public final mWindowComparator:Ljava/util/Comparator;

.field public paused:Z

.field public stringName:Ljava/lang/String;

.field public final token:Landroid/os/IBinder;

.field public final windowType:I


# direct methods
.method public static synthetic $r8$lambda$-pSQy6fdr3VlGcmvSVCsObZoXyQ(Lcom/android/server/wm/WindowToken;ZLcom/android/server/wm/WindowState;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->lambda$setInsetsFrozen$1(ZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nGO-xASDAxBQTRuMNfGImeCJxk0(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->lambda$new$0(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V
    .registers 17

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 174
    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZZLandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZZLandroid/os/Bundle;)V
    .registers 10

    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 156
    new-instance p1, Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowToken;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowToken;->mWindowComparator:Ljava/util/Comparator;

    .line 182
    iput-object p2, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 183
    iput p3, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    .line 184
    iput-object p9, p0, Lcom/android/server/wm/WindowToken;->mOptions:Landroid/os/Bundle;

    .line 185
    iput-boolean p4, p0, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    .line 186
    iput-boolean p6, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    .line 187
    iput-boolean p7, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    .line 188
    iput-boolean p8, p0, Lcom/android/server/wm/WindowToken;->mFromClientToken:Z

    if-eqz p5, :cond_20

    .line 190
    invoke-virtual {p5, p2, p0}, Lcom/android/server/wm/DisplayContent;->addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V

    :cond_20
    return-void
.end method


# virtual methods
.method public addWindow(Lcom/android/server/wm/WindowState;)V
    .registers 9

    .line 288
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x2609be4d5e3d39a8L

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v5, v6, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 291
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_65

    .line 297
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_38

    .line 298
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowToken;->createSurfaceControl(Z)V

    .line 301
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 303
    :cond_38
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 304
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_5c

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x211166baa2cf3c09L

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v5, v6, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 305
    :cond_5c
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mWindowComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 306
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    :cond_65
    :goto_65
    return-void
.end method

.method public applyFixedRotationTransform(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V
    .registers 6

    .line 450
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    if-eqz v0, :cond_17

    .line 451
    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v0, v0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget v1, p2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    if-ne v0, v1, :cond_12

    .line 454
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->offset(II)V

    .line 456
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->disassociate(Lcom/android/server/wm/WindowToken;)V

    .line 458
    :cond_17
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 459
    new-instance p3, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    invoke-direct {p3, p1, p2, v0}, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;-><init>(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V

    iput-object p3, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 460
    iget-object p1, p3, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayPolicy;->simulateLayoutDisplay(Lcom/android/server/wm/DisplayFrames;)V

    .line 462
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->onFixedRotationStatePrepared()V

    return-void
.end method

.method public asWindowToken()Lcom/android/server/wm/WindowToken;
    .registers 1

    .line 0
    return-object p0
.end method

.method public assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    .line 366
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v0, :cond_b

    const p2, 0x40000002    # 2.0000005f

    .line 367
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    return-void

    .line 369
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    return-void
.end method

.method public final cancelFixedRotationTransform()V
    .registers 6

    .line 557
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 562
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 563
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 565
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v2, "cancelFixedRot"

    .line 566
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v1

    .line 567
    invoke-virtual {v1}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v2

    if-nez v2, :cond_41

    .line 568
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v3, 0x6

    .line 569
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransitionController;->createTransition(I)Lcom/android/server/wm/Transition;

    move-result-object v2

    .line 568
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActionChain;->attachTransition(Lcom/android/server/wm/Transition;)V

    .line 570
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 573
    :cond_41
    invoke-virtual {v1}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v2

    .line 574
    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 575
    invoke-virtual {v2, p0}, Lcom/android/server/wm/Transition;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 576
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 577
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {v1}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    .line 579
    :cond_5a
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    .line 580
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 581
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowToken;->onCancelFixedRotationTransform(I)V

    return-void
.end method

.method public createSurfaceControl(Z)V
    .registers 3

    .line 313
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mFromClientToken:Z

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    goto :goto_8

    :cond_7
    return-void

    .line 314
    :cond_8
    :goto_8
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->createSurfaceControl(Z)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 4

    .line 749
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 750
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "windows="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 751
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "windowType="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 752
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 753
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result p3

    if-eqz p3, :cond_35

    .line 754
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 755
    const-string p3, "fixedRotationConfig="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 756
    iget-object p3, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object p3, p3, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 758
    :cond_35
    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken;->mIsExiting:Z

    if-eqz p0, :cond_41

    .line 759
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "isExiting=true"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_41
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 7

    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    .line 732
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 736
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000001L

    .line 737
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v0, 0x10500000002L

    .line 738
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000006L

    .line 739
    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 740
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public finishFixedRotationTransform()V
    .registers 2

    const/4 v0, 0x0

    .line 524
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishFixedRotationTransform(Ljava/lang/Runnable;)V
    .registers 5

    .line 532
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    if-nez p0, :cond_5

    goto :goto_2d

    .line 536
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->resetTransform()V

    const/4 v0, 0x0

    .line 539
    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mIsTransforming:Z

    if-eqz p1, :cond_10

    .line 541
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 545
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_18
    if-ltz v0, :cond_2d

    .line 546
    iget-object v1, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    const/4 v2, 0x0

    .line 547
    iput-object v2, v1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    if-nez p1, :cond_2a

    .line 550
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->cancelFixedRotationTransform()V

    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_2d
    :goto_2d
    return-void
.end method

.method public getCompatScale()F
    .registers 1

    .line 267
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    return p0
.end method

.method public getFixedRotationLeash()Landroid/view/SurfaceControl;
    .registers 1

    .line 623
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;
    .registers 2

    .line 435
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 437
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;
    .registers 2

    .line 424
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFixedRotationTransformInsetsState()Landroid/view/InsetsState;
    .registers 2

    .line 442
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 443
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object p0, p0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFixedRotationTransformMaxBounds()Landroid/graphics/Rect;
    .registers 2

    .line 428
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 430
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 774
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateFixedRotationLeash(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .registers 7

    .line 591
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 592
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayRotation()I

    move-result v0

    if-nez v0, :cond_13

    .line 593
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    return-object p0

    .line 594
    :cond_13
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_18

    return-object v2

    .line 595
    :cond_18
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 597
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 596
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransitionController;->getWindowingModeAtStart(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_32

    return-object v1

    .line 602
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 603
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - rotation-leash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 605
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "WindowToken.getOrCreateFixedRotationLeash"

    .line 606
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 607
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 608
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 609
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 610
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    .line 611
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v4

    .line 610
    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/wm/DisplayContent;->setFixedTransformHint(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 612
    iput-object v1, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    .line 613
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowToken;->updateSurfaceRotation(Landroid/view/SurfaceControl$Transaction;ILandroid/view/SurfaceControl;)V

    .line 614
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getParentBoundsForSurfaceRotation(Z)Landroid/graphics/Rect;
    .registers 5

    .line 691
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    if-nez v0, :cond_9

    .line 692
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getParentBoundsForSurfaceRotation(Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_9
    if-nez p1, :cond_10

    .line 697
    iget-object p0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object p0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    return-object p0

    .line 699
    :cond_10
    iget-object p1, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    .line 700
    iget p1, p1, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    .line 701
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 702
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getProtoFieldId()J
    .registers 3

    .line 0
    const-wide v0, 0x10b00000007L

    return-wide v0
.end method

.method public getWindowLayerFromType()I
    .registers 4

    .line 783
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v1, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v2, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    move-result p0

    return p0
.end method

.method public getWindowType()I
    .registers 1

    .line 806
    iget p0, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    return p0
.end method

.method public handleCompleteDeferredRemoval()Z
    .registers 2

    .line 251
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mIsExiting:Z

    if-eqz v0, :cond_7

    .line 252
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->removeIfPossible()V

    .line 254
    :cond_7
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    move-result p0

    return p0
.end method

.method public hasAnimatingFixedRotationTransition()Z
    .registers 6

    .line 508
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 512
    :cond_6
    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_e
    if-ltz v0, :cond_32

    .line 513
    iget-object v3, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v3, v3, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    .line 514
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 516
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v3

    if-nez v3, :cond_2f

    return v2

    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_32
    return v1
.end method

.method public hasFillingContent()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public hasFixedRotationTransform()Z
    .registers 1

    .line 398
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasFixedRotationTransform(Lcom/android/server/wm/WindowToken;)Z
    .registers 4

    .line 403
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    if-nez p1, :cond_8

    goto :goto_12

    :cond_8
    if-eq p0, p1, :cond_10

    .line 406
    iget-object p0, p1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    if-ne v0, p0, :cond_f

    goto :goto_10

    :cond_f
    return v1

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0

    :cond_12
    :goto_12
    return v1
.end method

.method public hasSizeCompatBounds()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isClientVisible()Z
    .registers 1

    .line 383
    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 320
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isFinishingFixedRotationTransform()Z
    .registers 1

    .line 410
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mIsTransforming:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 284
    iget p0, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget p1, p2, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt p0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isFixedRotationTransforming()Z
    .registers 1

    .line 415
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mIsTransforming:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isFromClient()Z
    .registers 1

    .line 788
    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken;->mFromClientToken:Z

    return p0
.end method

.method public final synthetic lambda$new$0(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 6

    .line 159
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const-string v1, " is not a child of token="

    if-ne v0, p0, :cond_31

    .line 164
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v0, p0, :cond_14

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, -0x1

    return p0

    .line 165
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "existingWindow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_31
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newWindow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic lambda$setInsetsFrozen$1(ZLcom/android/server/wm/WindowState;)V
    .registers 4

    .line 794
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v0, p0, :cond_d

    if-eqz p1, :cond_a

    .line 796
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->freezeInsetsState()V

    return-void

    .line 798
    :cond_a
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->clearFrozenInsetsState()V

    :cond_d
    return-void
.end method

.method public linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V
    .registers 4

    .line 470
    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    if-eqz p1, :cond_2a

    .line 471
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    if-ne v0, p1, :cond_9

    goto :goto_2a

    :cond_9
    if-eqz v0, :cond_20

    .line 475
    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v0, v0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v1, p1, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v1, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    if-ne v0, v1, :cond_1b

    .line 479
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->offset(II)V

    .line 481
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->disassociate(Lcom/android/server/wm/WindowToken;)V

    .line 483
    :cond_20
    iput-object p1, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 484
    iget-object p1, p1, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->onFixedRotationStatePrepared()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public makeSurface()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 375
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 376
    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    .line 377
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    :cond_c
    return-object v0
.end method

.method public onCancelFixedRotationTransform(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    if-nez v0, :cond_b

    .line 353
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->reParentWindowToken(Lcom/android/server/wm/WindowToken;)V

    .line 361
    :cond_b
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public final onFixedRotationStatePrepared()V
    .registers 2

    .line 494
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 495
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 496
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    :cond_1c
    return-void
.end method

.method public prepareSync()Z
    .registers 2

    .line 716
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 717
    invoke-static {p0}, Lcom/android/server/wm/AsyncRotationController;->canBeAsync(Lcom/android/server/wm/WindowToken;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x0

    return p0

    .line 720
    :cond_12
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    move-result p0

    return p0
.end method

.method public removeAllWindowsIfPossible()V
    .registers 8

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_40

    .line 196
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 197
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_2c

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v4, 0x0

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v5, 0x7170f134731034f9L    # 2.758078073791782E238

    invoke-static {v3, v5, v6, v4, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 199
    :cond_2c
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 200
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_3d

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_40
    return-void
.end method

.method public removeFixedRotationLeash()V
    .registers 4

    .line 627
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    .line 628
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_14

    .line 630
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 632
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    .line 633
    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method public removeIfPossible()V
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->isPlayingTarget(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mIsExiting:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mIsExiting:Z

    .line 245
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->removeAllWindowsIfPossible()V

    .line 246
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    return-void
.end method

.method public removeImmediately()V
    .registers 4

    .line 337
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_a

    .line 338
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowToken;

    .line 342
    :cond_a
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    return-void
.end method

.method public resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 709
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-nez v0, :cond_9

    .line 710
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V

    :cond_9
    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 4

    .line 646
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 647
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 650
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v1, v1, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 653
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_29

    .line 656
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_29

    .line 658
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 659
    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/WindowState;->applySizeOverride(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    :cond_29
    return-void
.end method

.method public setClientVisible(Z)V
    .registers 7

    .line 387
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 390
    :cond_5
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2d

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v3, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, -0x658403d259a8ce7dL    # -4.215111242450243E-181

    const/16 v1, 0xc

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 393
    :cond_2d
    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 394
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    return-void
.end method

.method public setExiting(Z)V
    .registers 7

    .line 210
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 211
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    .line 218
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_3c

    .line 222
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    move v3, v2

    :goto_1c
    if-ge v2, v1, :cond_2e

    .line 225
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 226
    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowState;->onSetAppExiting(Z)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2e
    if-eqz v3, :cond_3c

    .line 230
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 231
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_3c
    :goto_3c
    return-void
.end method

.method public setInsetsFrozen(Z)V
    .registers 3

    .line 793
    new-instance v0, Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowToken;Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 765
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    if-nez v0, :cond_38

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    .line 769
    :cond_38
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    return-object p0
.end method

.method public updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 666
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 667
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 670
    :cond_d
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public updateSurfaceRotation(Landroid/view/SurfaceControl$Transaction;ILandroid/view/SurfaceControl;)V
    .registers 6

    .line 676
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 678
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 681
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TransitionController;->getWindowingModeAtStart(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    return-void

    .line 686
    :cond_16
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->updateSurfaceRotation(Landroid/view/SurfaceControl$Transaction;ILandroid/view/SurfaceControl;)V

    return-void
.end method

.method public updateSurfaceVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 0
    return-void
.end method

.method public windowsCanBeWallpaperTarget()Z
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 326
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 327
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method
