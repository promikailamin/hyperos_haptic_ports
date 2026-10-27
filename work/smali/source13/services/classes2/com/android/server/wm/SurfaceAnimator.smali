.class Lcom/android/server/wm/SurfaceAnimator;
.super Ljava/lang/Object;
.source "SurfaceAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SurfaceAnimator$Animatable;,
        Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;,
        Lcom/android/server/wm/SurfaceAnimator$AnimationType;
    }
.end annotation


# static fields
.field public static final ANIMATION_TYPE_ALL:I = -0x1

.field public static final ANIMATION_TYPE_APP_TRANSITION:I = 0x1

.field public static final ANIMATION_TYPE_DIMMER:I = 0x4

.field static final ANIMATION_TYPE_FREEFORM_CONTROL:I = 0x40000000

.field public static final ANIMATION_TYPE_INSETS_CONTROL:I = 0x20

.field public static final ANIMATION_TYPE_NONE:I = 0x0

.field public static final ANIMATION_TYPE_RECENTS:I = 0x8

.field public static final ANIMATION_TYPE_SCREEN_ROTATION:I = 0x2

.field public static final ANIMATION_TYPE_STARTING_REVEAL:I = 0x80

.field public static final ANIMATION_TYPE_TOKEN_TRANSFORM:I = 0x40

.field public static final ANIMATION_TYPE_WINDOW_ANIMATION:I = 0x10

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field final mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

.field private mAnimation:Lcom/android/server/wm/AnimationAdapter;

.field private mAnimationCancelledCallback:Ljava/lang/Runnable;

.field private mAnimationFinished:Z

.field private mAnimationStartDelayed:Z

.field private mAnimationType:I

.field final mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field mLeash:Landroid/view/SurfaceControl;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

.field final mStaticAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field private mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1, "animatable"    # Lcom/android/server/wm/SurfaceAnimator$Animatable;
    .param p2, "staticAnimationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .param p3, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 105
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 106
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mStaticAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 107
    invoke-direct {p0, p2}, Lcom/android/server/wm/SurfaceAnimator;->getFinishedCallback(Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 108
    return-void
.end method

.method static animationTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 634
    sparse-switch p0, :sswitch_data_3a

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 643
    :sswitch_18
    const-string/jumbo v0, "starting_reveal"

    return-object v0

    .line 642
    :sswitch_1c
    const-string/jumbo v0, "token_transform"

    return-object v0

    .line 641
    :sswitch_20
    const-string v0, "insets_animation"

    return-object v0

    .line 640
    :sswitch_23
    const-string/jumbo v0, "window_animation"

    return-object v0

    .line 639
    :sswitch_27
    const-string/jumbo v0, "recents_animation"

    return-object v0

    .line 638
    :sswitch_2b
    const-string v0, "dimmer"

    return-object v0

    .line 637
    :sswitch_2e
    const-string/jumbo v0, "screen_rotation"

    return-object v0

    .line 636
    :sswitch_32
    const-string v0, "app_transition"

    return-object v0

    .line 635
    :sswitch_35
    const-string/jumbo v0, "none"

    return-object v0

    nop

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_35
        0x1 -> :sswitch_32
        0x2 -> :sswitch_2e
        0x4 -> :sswitch_2b
        0x8 -> :sswitch_27
        0x10 -> :sswitch_23
        0x20 -> :sswitch_20
        0x40 -> :sswitch_1c
        0x80 -> :sswitch_18
    .end sparse-switch
.end method

.method private cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V
    .registers 13
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "restarting"    # Z
    .param p3, "forwardCancel"    # Z

    .line 352
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    move v0, p2

    .local v0, "protoLogParam0":Z
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x17b6e625

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 354
    .end local v0    # "protoLogParam0":Z
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 355
    .local v0, "leash":Landroid/view/SurfaceControl;
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 356
    .local v2, "animation":Lcom/android/server/wm/AnimationAdapter;
    iget v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 357
    .local v3, "animationType":I
    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 359
    .local v4, "animationFinishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    iget-object v5, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationCancelledCallback:Ljava/lang/Runnable;

    .line 360
    .local v5, "animationCancelledCallback":Ljava/lang/Runnable;
    iget-object v6, p0, Lcom/android/server/wm/SurfaceAnimator;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 361
    .local v6, "snapshot":Lcom/android/server/wm/SurfaceFreezer$Snapshot;
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/SurfaceAnimator;->reset(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 362
    if-eqz v2, :cond_4f

    .line 363
    iget-boolean v7, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    if-nez v7, :cond_41

    if-eqz p3, :cond_41

    .line 364
    invoke-interface {v2, v0}, Lcom/android/server/wm/AnimationAdapter;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 365
    if-eqz v5, :cond_41

    .line 366
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 369
    :cond_41
    if-nez p2, :cond_4f

    .line 370
    iget-object v7, p0, Lcom/android/server/wm/SurfaceAnimator;->mStaticAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    if-eqz v7, :cond_4a

    .line 371
    invoke-interface {v7, v3, v2}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 373
    :cond_4a
    if-eqz v4, :cond_4f

    .line 374
    invoke-interface {v4, v3, v2}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 379
    :cond_4f
    if-eqz p3, :cond_60

    .line 380
    if-eqz v6, :cond_56

    .line 381
    invoke-virtual {v6, p1, v1}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 383
    :cond_56
    if-eqz v0, :cond_60

    .line 384
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 385
    iget-object v7, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 389
    :cond_60
    if-nez p2, :cond_64

    .line 390
    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 392
    :cond_64
    return-void
.end method

.method static createAnimationLeash(Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIIIIZLjava/util/function/Supplier;)Landroid/view/SurfaceControl;
    .registers 21
    .param p0, "animatable"    # Lcom/android/server/wm/SurfaceAnimator$Animatable;
    .param p1, "surface"    # Landroid/view/SurfaceControl;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "type"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "hidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/SurfaceAnimator$Animatable;",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl$Transaction;",
            "IIIIIZ",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)",
            "Landroid/view/SurfaceControl;"
        }
    .end annotation

    .line 484
    .local p9, "transactionFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Transaction;>;"
    move-object v0, p1

    move-object v1, p2

    move/from16 v2, p8

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1b

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0xc6ff8c3

    const/4 v7, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v5, v6, v9, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 485
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_1b
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 486
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - animation-leash of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 487
    invoke-static {p3}, Lcom/android/server/wm/SurfaceAnimator;->animationTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 494
    invoke-virtual {v3, v2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 495
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 496
    const-string v5, "SurfaceAnimator.createAnimationLeash"

    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 497
    .local v3, "builder":Landroid/view/SurfaceControl$Builder;
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v5

    .line 499
    .local v5, "leash":Landroid/view/SurfaceControl;
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v6

    if-eqz v6, :cond_65

    .line 500
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {p2, v5, v6, v4}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 503
    :cond_65
    move v4, p4

    move/from16 v6, p5

    invoke-virtual {p2, v5, p4, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 504
    move/from16 v7, p6

    int-to-float v8, v7

    move/from16 v9, p7

    int-to-float v10, v9

    invoke-virtual {p2, v5, v8, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 505
    invoke-virtual {p2, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 506
    if-eqz v2, :cond_7b

    const/4 v8, 0x0

    goto :goto_7d

    :cond_7b
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_7d
    invoke-virtual {p2, v5, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 508
    invoke-virtual {p2, p1, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 509
    return-object v5
.end method

.method private getFinishedCallback(Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .registers 3
    .param p1, "staticAnimationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 112
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    return-object v0
.end method

.method private static isReparentStartingWindowToTask(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;)Z
    .registers 7
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "animatable"    # Lcom/android/server/wm/SurfaceAnimator$Animatable;
    .param p2, "surface"    # Landroid/view/SurfaceControl;

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "reparentStartingWindowToTask":Z
    instance-of v1, p1, Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 464
    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowState;

    goto :goto_b

    :cond_a
    move-object v1, v2

    .line 465
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    :goto_b
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_45

    .line 466
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    instance-of v3, v3, Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_22

    .line 467
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    goto :goto_23

    :cond_22
    nop

    .line 468
    .local v2, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_23
    if-eqz v2, :cond_45

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->mMiuiEmbeddingEnabled:Z

    if-eqz v3, :cond_45

    .line 470
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-ne v3, v1, :cond_45

    .line 472
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_45

    .line 473
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 474
    const/4 v0, 0x1

    .line 477
    .end local v2    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_45
    return v0
.end method

.method static removeLeash(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Z)Z
    .registers 20
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "animatable"    # Lcom/android/server/wm/SurfaceAnimator$Animatable;
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "destroy"    # Z

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 420
    .local v3, "scheduleAnim":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    .line 421
    .local v4, "surface":Landroid/view/SurfaceControl;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    .line 422
    .local v5, "parent":Landroid/view/SurfaceControl;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 429
    .local v6, "curAnimationLeash":Landroid/view/SurfaceControl;
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_21

    if-eqz v6, :cond_1f

    .line 430
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    :cond_1f
    move v9, v7

    goto :goto_22

    :cond_21
    move v9, v8

    .line 431
    .local v9, "reparent":Z
    :goto_22
    if-eqz v9, :cond_58

    .line 432
    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v10, :cond_40

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam1":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, -0x130e11f3

    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v10, v15, v8

    aput-object v11, v15, v7

    invoke-static {v12, v13, v8, v14, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 436
    .end local v10    # "protoLogParam0":Ljava/lang/String;
    .end local v11    # "protoLogParam1":Ljava/lang/String;
    :cond_40
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v7

    if-eqz v7, :cond_58

    if-eqz v5, :cond_58

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v7

    if-eqz v7, :cond_58

    .line 439
    invoke-static {v0, v1, v4}, Lcom/android/server/wm/SurfaceAnimator;->isReparentStartingWindowToTask(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;)Z

    move-result v7

    if-nez v7, :cond_57

    .line 440
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 443
    :cond_57
    const/4 v3, 0x1

    .line 446
    :cond_58
    if-eqz p3, :cond_5e

    .line 447
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 448
    const/4 v3, 0x1

    .line 451
    :cond_5e
    if-eqz v9, :cond_64

    .line 454
    invoke-interface {v1, v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 455
    const/4 v3, 0x1

    .line 457
    :cond_64
    return v3
.end method

.method private reset(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "destroyLeash"    # Z

    .line 395
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 397
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 398
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 399
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 400
    .local v2, "snapshot":Lcom/android/server/wm/SurfaceFreezer$Snapshot;
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 401
    if-eqz v2, :cond_1c

    .line 403
    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 405
    :cond_1c
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-nez v3, :cond_21

    .line 406
    return-void

    .line 408
    :cond_21
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 409
    .local v3, "leash":Landroid/view/SurfaceControl;
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 410
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-static {p1, v0, v3, p2}, Lcom/android/server/wm/SurfaceAnimator;->removeLeash(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Z)Z

    move-result v0

    .line 411
    .local v0, "scheduleAnim":Z
    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinished:Z

    .line 412
    if-eqz v0, :cond_34

    .line 413
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 415
    :cond_34
    return-void
.end method


# virtual methods
.method cancelAnimation()V
    .registers 4

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->commitPendingTransaction()V

    .line 270
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 533
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLeash="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAnimationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    invoke-static {v1}, Lcom/android/server/wm/SurfaceAnimator;->animationTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 535
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    if-eqz v0, :cond_30

    const-string v0, " mAnimationStartDelayed=true"

    goto :goto_32

    :cond_30
    const-string v0, ""

    :goto_32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Animation: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 537
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz v0, :cond_5c

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/server/wm/AnimationAdapter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 540
    :cond_5c
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 521
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 522
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz v2, :cond_10

    .line 523
    const-wide v3, 0x10b00000003L

    invoke-interface {v2, p1, v3, v4}, Lcom/android/server/wm/AnimationAdapter;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 525
    :cond_10
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_1c

    .line 526
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 528
    :cond_1c
    const-wide v2, 0x10800000002L

    iget-boolean v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 529
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 530
    return-void
.end method

.method endDelayingAnimationStart()V
    .registers 7

    .line 234
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 235
    .local v0, "delayed":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 236
    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz v1, :cond_1f

    .line 237
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v3}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    iget-object v5, p0, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 239
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->commitPendingTransaction()V

    .line 241
    :cond_1f
    return-void
.end method

.method getAnimation()Lcom/android/server/wm/AnimationAdapter;
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    return-object v0
.end method

.method getAnimationType()I
    .registers 2

    .line 253
    iget v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    return v0
.end method

.method hasLeash()Z
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isAnimating()Z
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isAnimationStartDelayed()Z
    .registers 2

    .line 339
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    return v0
.end method

.method synthetic lambda$getFinishedCallback$0$com-android-server-wm-SurfaceAnimator(Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V
    .registers 7
    .param p1, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p2, "staticAnimationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .param p3, "type"    # I

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eq p1, v0, :cond_5

    .line 127
    return-void

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 131
    .local v0, "animationFinishCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;->reset(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 132
    if-eqz p2, :cond_16

    .line 133
    invoke-interface {p2, p3, p1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 135
    :cond_16
    if-eqz v0, :cond_1b

    .line 136
    invoke-interface {v0, p3, p1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 138
    :cond_1b
    return-void
.end method

.method synthetic lambda$getFinishedCallback$1$com-android-server-wm-SurfaceAnimator(Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 8
    .param p1, "staticAnimationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .param p2, "type"    # I
    .param p3, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 114
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceAnimator;

    .line 115
    .local v1, "target":Lcom/android/server/wm/SurfaceAnimator;
    if-eqz v1, :cond_1e

    .line 116
    iget-object v2, v1, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    invoke-interface {v2, p2, p3}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 117
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 120
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eq p3, v2, :cond_27

    .line 121
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 123
    :cond_27
    :try_start_27
    new-instance v2, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V

    .line 141
    .local v2, "resetAndInvokeFinish":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v3, v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 142
    invoke-interface {p3, v2}, Lcom/android/server/wm/AnimationAdapter;->shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 143
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 145
    :cond_3d
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinished:Z

    .line 146
    .end local v1    # "target":Lcom/android/server/wm/SurfaceAnimator;
    .end local v2    # "resetAndInvokeFinish":Ljava/lang/Runnable;
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_27 .. :try_end_41} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 147
    return-void

    .line 146
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method reparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "newParent"    # Landroid/view/SurfaceControl;

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_b
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 298
    return-void
.end method

.method setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_b
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 280
    return-void
.end method

.method setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "layer"    # I

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_b
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 289
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V
    .registers 14
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "hidden"    # Z
    .param p4, "type"    # I

    .line 213
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceFreezer;)V

    .line 215
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceFreezer;)V
    .registers 30
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "hidden"    # Z
    .param p4, "type"    # I
    .param p5, "animationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .param p6, "animationCancelledCallback"    # Ljava/lang/Runnable;
    .param p7, "snapshotAnim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p8, "freezer"    # Lcom/android/server/wm/SurfaceFreezer;

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p4

    move-object/from16 v13, p7

    const/4 v14, 0x1

    invoke-direct {v0, v11, v14, v14}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 172
    move-object/from16 v15, p2

    iput-object v15, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 173
    iput v12, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 174
    move-object/from16 v10, p5

    iput-object v10, v0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 175
    move-object/from16 v9, p6

    iput-object v9, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationCancelledCallback:Ljava/lang/Runnable;

    .line 176
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v16

    .line 177
    .local v16, "surface":Landroid/view/SurfaceControl;
    const-string v8, "WindowManager"

    if-nez v16, :cond_2d

    .line 178
    const-string v1, "Unable to start animation, surface is null or no children."

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 180
    return-void

    .line 182
    :cond_2d
    const/4 v7, 0x0

    if-eqz p8, :cond_35

    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/SurfaceFreezer;->takeLeashForAnimation()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_36

    :cond_35
    move-object v1, v7

    :goto_36
    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 183
    if-nez v1, :cond_6c

    .line 184
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 185
    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceWidth()I

    move-result v5

    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceHeight()I

    move-result v6

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 184
    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move-object/from16 v19, v4

    move/from16 v4, p4

    move/from16 v7, v17

    move-object/from16 v20, v8

    move/from16 v8, v18

    move/from16 v9, p3

    move-object/from16 v10, v19

    invoke-static/range {v1 .. v10}, Lcom/android/server/wm/SurfaceAnimator;->createAnimationLeash(Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIIIIZLjava/util/function/Supplier;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 187
    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v2, v11, v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_6e

    .line 183
    :cond_6c
    move-object/from16 v20, v8

    .line 189
    :goto_6e
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v1, v11, v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onLeashAnimationStarting(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 190
    iget-boolean v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_92

    .line 191
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v1, :cond_91

    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0xcd1d1a4

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const/4 v6, 0x0

    invoke-static {v3, v4, v2, v6, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 192
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_91
    return-void

    .line 194
    :cond_92
    const/4 v6, 0x0

    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    iget-object v3, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v4, v0, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    invoke-interface {v1, v3, v11, v12, v4}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 195
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v1}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 196
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 197
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 198
    .local v3, "pw":Ljava/io/PrintWriter;
    iget-object v4, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    const-string v5, ""

    invoke-interface {v4, v3, v5}, Lcom/android/server/wm/AnimationAdapter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 199
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v4, :cond_d2

    iget-object v4, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x756ab7bd

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v2

    aput-object v5, v9, v14

    invoke-static {v7, v8, v2, v6, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 201
    .end local v1    # "sw":Ljava/io/StringWriter;
    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    :cond_d2
    if-eqz v13, :cond_fa

    .line 202
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/SurfaceFreezer;->takeSnapshotForAnimation()Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 203
    if-nez v1, :cond_f7

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No snapshot target to start animation on for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 207
    :cond_f7
    invoke-virtual {v1, v11, v13, v12}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;I)V

    .line 209
    :cond_fa
    return-void
.end method

.method startDelayingAnimationStart()V
    .registers 2

    .line 225
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_9

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 228
    :cond_9
    return-void
.end method

.method transferAnimation(Lcom/android/server/wm/SurfaceAnimator;)V
    .registers 7
    .param p1, "from"    # Lcom/android/server/wm/SurfaceAnimator;

    .line 308
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 309
    return-void

    .line 311
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 312
    .local v0, "surface":Landroid/view/SurfaceControl;
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 313
    .local v1, "parent":Landroid/view/SurfaceControl;
    const-string v2, "WindowManager"

    if-eqz v0, :cond_79

    if-nez v1, :cond_18

    goto :goto_79

    .line 317
    :cond_18
    iget-boolean v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinished:Z

    if-eqz v3, :cond_39

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to transfer animation, because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " animation is finished"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void

    .line 321
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->endDelayingAnimationStart()V

    .line 322
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 323
    .local v2, "t":Landroid/view/SurfaceControl$Transaction;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v3}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 324
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 325
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 326
    iget v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    iput v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 327
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 328
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mAnimationCancelledCallback:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationCancelledCallback:Ljava/lang/Runnable;

    .line 331
    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v3}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 332
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 333
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 334
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v3, v2, v4}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 335
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    invoke-virtual {v3, v4, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    return-void

    .line 314
    .end local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_79
    :goto_79
    const-string v3, "Unable to transfer animation, surface or parent is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 316
    return-void
.end method
