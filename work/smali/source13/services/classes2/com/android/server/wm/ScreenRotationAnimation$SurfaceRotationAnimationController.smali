.class Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenRotationAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceRotationAnimationController"
.end annotation


# instance fields
.field private mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field final synthetic this$0:Lcom/android/server/wm/ScreenRotationAnimation;


# direct methods
.method public static synthetic $r8$lambda$wJe6NDrB63BnRyvW-E-a-FgRopM(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->onAnimationEnd(ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ScreenRotationAnimation;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .line 856
    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createDisplayRotationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1059
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmMiuiScreenRotation(Lcom/android/server/wm/ScreenRotationAnimation;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmMiuiScreenRotation(Lcom/android/server/wm/ScreenRotationAnimation;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    goto :goto_18

    .line 1064
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v0

    return-object v0

    .line 1061
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSRAImpl:Lcom/android/server/wm/ScreenRotationAnimationStub;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmOriginalWidth(Lcom/android/server/wm/ScreenRotationAnimation;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmOriginalHeight(Lcom/android/server/wm/ScreenRotationAnimation;)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimationStub;->createScreenRotationSpec(Landroid/view/animation/Animation;II)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    move-result-object v0

    return-object v0
.end method

.method private createScreenShotRotationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1068
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmMiuiScreenRotation(Lcom/android/server/wm/ScreenRotationAnimation;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmMiuiScreenRotation(Lcom/android/server/wm/ScreenRotationAnimation;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    goto :goto_18

    .line 1073
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v0

    return-object v0

    .line 1070
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSRAImpl:Lcom/android/server/wm/ScreenRotationAnimationStub;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmOriginalWidth(Lcom/android/server/wm/ScreenRotationAnimation;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmOriginalHeight(Lcom/android/server/wm/ScreenRotationAnimation;)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimationStub;->createScreenRotationSpec(Landroid/view/animation/Animation;II)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    move-result-object v0

    return-object v0
.end method

.method private createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;
    .registers 6
    .param p1, "mAnimation"    # Landroid/view/animation/Animation;

    .line 1053
    new-instance v0, Lcom/android/server/wm/WindowAnimationSpec;

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    return-object v0
.end method

.method private initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .registers 4

    .line 914
    new-instance v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    invoke-direct {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 915
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSyncTransactionSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 916
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setPendingTransactionSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 917
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setCommitTransactionRunnable(Ljava/lang/Runnable;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 918
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    .line 914
    return-object v0
.end method

.method private onAnimationEnd(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 19
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 1101
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1102
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->isAnimating()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_8a

    .line 1103
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_dc

    if-eqz v0, :cond_83

    move/from16 v6, p1

    int-to-long v7, v6

    .local v7, "protoLogParam0":J
    :try_start_1e
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2c

    :cond_2b
    move-object v0, v5

    :goto_2c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam1":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v9, :cond_3d

    invoke-virtual {v9}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_3e

    :cond_3d
    move-object v9, v5

    :goto_3e
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam2":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v10, :cond_4f

    invoke-virtual {v10}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_50

    :cond_4f
    move-object v10, v5

    :goto_50
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam3":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v11, :cond_61

    invoke-virtual {v11}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_62

    :cond_61
    move-object v11, v5

    :goto_62
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam4":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, 0x5047ffcc

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v4

    aput-object v0, v14, v3

    const/4 v4, 0x2

    aput-object v9, v14, v4

    const/4 v4, 0x3

    aput-object v10, v14, v4

    const/4 v4, 0x4

    aput-object v11, v14, v4

    invoke-static {v12, v13, v3, v5, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_85

    .end local v0    # "protoLogParam1":Ljava/lang/String;
    .end local v7    # "protoLogParam0":J
    .end local v9    # "protoLogParam2":Ljava/lang/String;
    .end local v10    # "protoLogParam3":Ljava/lang/String;
    .end local v11    # "protoLogParam4":Ljava/lang/String;
    :cond_83
    move/from16 v6, p1

    .line 1119
    :goto_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_1e .. :try_end_86} :catchall_e4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1121
    :cond_8a
    move/from16 v6, p1

    :try_start_8c
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_9b

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0xbf86b21

    move-object v8, v5

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v4, v5, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1122
    :cond_9b
    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 1123
    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 1124
    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 1125
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v7, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/2addr v3, v7

    iput v3, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1126
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    if-ne v0, v3, :cond_c4

    .line 1128
    invoke-static {v3}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayContent;->setRotationAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)V

    goto :goto_c7

    .line 1130
    :cond_c4
    invoke-virtual {v3}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 1132
    :goto_c7
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 1133
    monitor-exit v2
    :try_end_d1
    .catchall {:try_start_8c .. :try_end_d1} :catchall_e4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1135
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerServiceStub;->onScreenRotationAnimationEnd()V

    .line 1137
    return-void

    .line 1133
    :catchall_dc
    move-exception v0

    move/from16 v6, p1

    :goto_df
    :try_start_df
    monitor-exit v2
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_e4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_e4
    move-exception v0

    goto :goto_df
.end method

.method private startAnimation(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;
    .registers 9
    .param p1, "animatable"    # Lcom/android/server/wm/SurfaceAnimator$Animatable;
    .param p2, "animationSpec"    # Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .param p3, "animationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 1090
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-direct {v0, p1, p3, v1}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    .line 1093
    .local v0, "animator":Lcom/android/server/wm/SurfaceAnimator;
    new-instance v1, Lcom/android/server/wm/LocalAnimationAdapter;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v1, p2, v2}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 1095
    .local v1, "localAnimationAdapter":Lcom/android/server/wm/LocalAnimationAdapter;
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 1097
    return-object v0
.end method

.method private startBlackCoverAlphaAnimation()Lcom/android/server/wm/SurfaceAnimator;
    .registers 4

    .line 948
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmBlackCoverLayer(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v1

    .line 949
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 950
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 951
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setWidth(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 952
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setHeight(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    .line 953
    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmRotateAlphaAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 954
    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)V

    .line 948
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startAnimation(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    return-object v0
.end method

.method private startColorAnimation()V
    .registers 20

    .line 1004
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmContext(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 1006
    .local v10, "colorTransitionMs":I
    iget-object v0, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 1007
    .local v11, "runner":Lcom/android/server/wm/SurfaceAnimationRunner;
    const/4 v0, 0x3

    new-array v12, v0, [F

    .line 1008
    .local v12, "rgbTmpFloat":[F
    iget-object v0, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmStartLuma(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v0

    iget-object v1, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmStartLuma(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v1

    iget-object v2, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmStartLuma(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(FFF)I

    move-result v13

    .line 1009
    .local v13, "startColor":I
    iget-object v0, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmEndLuma(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v0

    iget-object v1, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmEndLuma(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v1

    iget-object v2, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmEndLuma(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(FFF)I

    move-result v14

    .line 1010
    .local v14, "endColor":I
    int-to-long v0, v10

    iget-object v2, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v2

    float-to-long v2, v2

    mul-long v15, v0, v2

    .line 1011
    .local v15, "duration":J
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v17

    .line 1012
    .local v17, "va":Landroid/animation/ArgbEvaluator;
    new-instance v8, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-wide v2, v15

    move-object/from16 v4, v17

    move v5, v13

    move v6, v14

    move-object v7, v12

    move-object/from16 v18, v12

    move-object v12, v8

    .end local v12    # "rgbTmpFloat":[F
    .local v18, "rgbTmpFloat":[F
    move v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;JLandroid/animation/ArgbEvaluator;II[FI)V

    iget-object v0, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmBackColorSurface(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1049
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 1012
    const/4 v2, 0x0

    invoke-virtual {v11, v12, v0, v1, v2}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    .line 1050
    return-void
.end method

.method private startDisplayRotation()Lcom/android/server/wm/SurfaceAnimator;
    .registers 4

    .line 934
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 935
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 936
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 937
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setParentSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 938
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setWidth(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 939
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setHeight(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    .line 940
    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmRotateEnterAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 941
    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createDisplayRotationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)V

    .line 934
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startAnimation(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    return-object v0
.end method

.method private startEnterBlackFrameAnimation()Lcom/android/server/wm/SurfaceAnimator;
    .registers 4

    .line 971
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmEnterBlackFrameLayer(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v1

    .line 972
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 973
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    .line 974
    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmRotateEnterAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 975
    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)V

    .line 971
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startAnimation(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    return-object v0
.end method

.method private startScreenshotAlphaAnimation()Lcom/android/server/wm/SurfaceAnimator;
    .registers 4

    .line 960
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmScreenshotLayer(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v1

    .line 961
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 962
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 963
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setWidth(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 964
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setHeight(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    .line 965
    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmRotateAlphaAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 966
    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)V

    .line 960
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startAnimation(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    return-object v0
.end method

.method private startScreenshotRotationAnimation()Lcom/android/server/wm/SurfaceAnimator;
    .registers 4

    .line 989
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmScreenshotLayer(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v1

    .line 990
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 991
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    .line 992
    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmRotateExitAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 993
    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createScreenShotRotationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)V

    .line 989
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startAnimation(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 1140
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_7

    .line 1141
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 1143
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_e

    .line 1144
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 1147
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_15

    .line 1148
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 1151
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_1c

    .line 1152
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 1155
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmBackColorSurface(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 1156
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmBackColorSurface(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 1158
    :cond_35
    return-void
.end method

.method public isAnimating()Z
    .registers 2

    .line 1161
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_28

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_14

    .line 1162
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_28

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_1e

    .line 1163
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_28

    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_2a

    .line 1165
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 1161
    :goto_2b
    return v0
.end method

.method startBlackCoverAnimation()V
    .registers 3

    .line 877
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    .line 878
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startBlackCoverAlphaAnimation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 879
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startDisplayRotation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 880
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmEnteringBlackFrame(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/BlackFrame;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 881
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startEnterBlackFrameAnimation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_32

    .line 884
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 885
    nop

    .line 886
    return-void

    .line 884
    :catchall_32
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 885
    throw v0
.end method

.method startCustomAnimation()V
    .registers 3

    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    .line 865
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startScreenshotAlphaAnimation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 866
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startDisplayRotation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 867
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmEnteringBlackFrame(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/BlackFrame;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 868
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startEnterBlackFrameAnimation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_32

    .line 871
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 872
    nop

    .line 873
    return-void

    .line 871
    :catchall_32
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 872
    throw v0
.end method

.method startScreenRotationAnimation()V
    .registers 3

    .line 894
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmBackColorSurface(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_9

    .line 895
    return-void

    .line 899
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    .line 900
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startDisplayRotation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 901
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startScreenshotRotationAnimation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 904
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmMiuiScreenRotation(Lcom/android/server/wm/ScreenRotationAnimation;)I

    move-result v0

    if-nez v0, :cond_2b

    .line 905
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startColorAnimation()V
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_38

    .line 909
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 910
    nop

    .line 911
    return-void

    .line 909
    :catchall_38
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 910
    throw v0
.end method
