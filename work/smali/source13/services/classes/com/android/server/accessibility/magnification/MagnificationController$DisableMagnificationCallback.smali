.class final Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Landroid/view/accessibility/MagnificationAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisableMagnificationCallback"
.end annotation


# instance fields
.field private final mAnimate:Z

.field private final mCurrentCenter:Landroid/graphics/PointF;

.field private final mCurrentMode:I

.field private final mCurrentScale:F

.field private final mDisplayId:I

.field private mExpired:Z

.field private final mTargetMode:I

.field private final mTransitionCallBack:Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;

.field final synthetic this$0:Lcom/android/server/accessibility/magnification/MagnificationController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentMode(Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentMode:I

    return p0
.end method

.method constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;IIFLandroid/graphics/PointF;Z)V
    .registers 9
    .param p2, "transitionCallBack"    # Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;
    .param p3, "displayId"    # I
    .param p4, "targetMode"    # I
    .param p5, "scale"    # F
    .param p6, "currentCenter"    # Landroid/graphics/PointF;
    .param p7, "animate"    # Z

    .line 801
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mExpired:Z

    .line 797
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    .line 802
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTransitionCallBack:Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;

    .line 803
    iput p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 804
    iput p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTargetMode:I

    .line 805
    xor-int/lit8 v0, p4, 0x3

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentMode:I

    .line 806
    iput p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentScale:F

    .line 807
    invoke-virtual {p1, p6}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 808
    iput-boolean p7, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mAnimate:Z

    .line 809
    return-void
.end method

.method private adjustCurrentCenterIfNeededLocked()V
    .registers 6

    .line 856
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTargetMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 857
    return-void

    .line 859
    :cond_6
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 860
    .local v0, "outRegion":Landroid/graphics/Region;
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getMagnificationRegion(ILandroid/graphics/Region;)V

    .line 861
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 862
    return-void

    .line 864
    :cond_27
    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 865
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 866
    return-void
.end method

.method private applyMagnificationModeLocked(I)V
    .registers 10
    .param p1, "mode"    # I

    .line 889
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2a

    .line 890
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 891
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    .line 892
    .local v0, "fullScreenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 893
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    .line 895
    :cond_16
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentScale:F

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget-boolean v6, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mAnimate:Z

    const/4 v7, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    .line 898
    .end local v0    # "fullScreenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    goto :goto_49

    .line 899
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentScale:F

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->y:F

    .line 901
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mAnimate:Z

    if-eqz v0, :cond_43

    sget-object v0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    :goto_44
    move-object v6, v0

    const/4 v7, 0x0

    .line 899
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    .line 904
    :goto_49
    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .registers 9
    .param p1, "success"    # Z

    .line 813
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/MagnificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 817
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mExpired:Z

    if-eqz v1, :cond_d

    .line 818
    monitor-exit v0

    return-void

    .line 820
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->setExpiredAndRemoveFromListLocked()V

    .line 821
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$msetTransitionState(Lcom/android/server/accessibility/magnification/MagnificationController;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 823
    if-eqz p1, :cond_27

    .line 824
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->adjustCurrentCenterIfNeededLocked()V

    .line 825
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTargetMode:I

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->applyMagnificationModeLocked(I)V

    goto :goto_79

    .line 832
    :cond_27
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 833
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    .line 834
    .local v1, "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_79

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 835
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isMagnifying(I)Z

    move-result v2

    if-nez v2, :cond_79

    .line 836
    new-instance v2, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 838
    .local v2, "configBuilder":Landroid/accessibilityservice/MagnificationConfig$Builder;
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    .line 839
    .local v4, "region":Landroid/graphics/Region;
    invoke-virtual {v2, v3}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 840
    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 841
    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 842
    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 843
    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getMagnificationRegion(ILandroid/graphics/Region;)V

    .line 845
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-static {v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$fgetmAms(Lcom/android/server/accessibility/magnification/MagnificationController;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v3

    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-virtual {v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v6

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 848
    .end local v1    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .end local v2    # "configBuilder":Landroid/accessibilityservice/MagnificationConfig$Builder;
    .end local v4    # "region":Landroid/graphics/Region;
    :cond_79
    :goto_79
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTargetMode:I

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$mupdateMagnificationButton(Lcom/android/server/accessibility/magnification/MagnificationController;II)V

    .line 849
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTransitionCallBack:Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;

    if-eqz v1, :cond_8b

    .line 850
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-interface {v1, v2, p1}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    .line 852
    :cond_8b
    monitor-exit v0

    .line 853
    return-void

    .line 852
    :catchall_8d
    move-exception v1

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_7 .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method restoreToCurrentMagnificationMode()V
    .registers 5

    .line 869
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/MagnificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 870
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mExpired:Z

    if-eqz v1, :cond_d

    .line 871
    monitor-exit v0

    return-void

    .line 873
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->setExpiredAndRemoveFromListLocked()V

    .line 874
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$msetTransitionState(Lcom/android/server/accessibility/magnification/MagnificationController;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 875
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentMode:I

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->applyMagnificationModeLocked(I)V

    .line 876
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentMode:I

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$mupdateMagnificationButton(Lcom/android/server/accessibility/magnification/MagnificationController;II)V

    .line 877
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTransitionCallBack:Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;

    if-eqz v1, :cond_34

    .line 878
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    .line 880
    :cond_34
    monitor-exit v0

    .line 881
    return-void

    .line 880
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v1
.end method

.method setExpiredAndRemoveFromListLocked()V
    .registers 4

    .line 884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mExpired:Z

    .line 885
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$msetDisableMagnificationCallbackLocked(Lcom/android/server/accessibility/magnification/MagnificationController;ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    .line 886
    return-void
.end method
