.class public Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# instance fields
.field public mAnimatedScale:F

.field public volatile mAnimationCompleted:Z

.field public mAnimator:Landroid/animation/ValueAnimator;

.field public mCallingTaskIdToHide:I

.field public mCrossProfileCopyAllowed:Z

.field public final mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field public mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mCurrentDisplayX:F

.field public mCurrentDisplayY:F

.field public mData:Landroid/content/ClipData;

.field public mDataDescription:Landroid/content/ClipDescription;

.field public final mDisplaySize:Landroid/graphics/Point;

.field public final mDragDropController:Lcom/android/server/wm/DragDropController;

.field public mDragInProgress:Z

.field public mDragResult:Z

.field public mFlags:I

.field public mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

.field public mInputSurface:Landroid/view/SurfaceControl;

.field public mIsClosing:Z

.field public mLocalWin:Landroid/os/IBinder;

.field public mNotifiedWindows:Ljava/util/ArrayList;

.field public mPid:I

.field public mRelinquishDragSurfaceToDropTarget:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mSourceUserId:I

.field public mStartDragAlpha:F

.field public mStartDragDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mStartDragDisplayX:F

.field public mStartDragDisplayY:F

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mThumbOffsetX:F

.field public mThumbOffsetY:F

.field public final mTmpClipRect:Landroid/graphics/Rect;

.field public mToken:Landroid/os/IBinder;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mUid:I

.field public mUnhandledDropEvent:Landroid/view/DragEvent;


# direct methods
.method public static synthetic $r8$lambda$MlPZji_R9BXfQU8PSK0J4X2swSs(Landroid/animation/ValueAnimator;)V
    .registers 1

    .line 898
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic $r8$lambda$P9DIUXjyorEY8LWyHYsvoeb7Zm4(Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$RZgNOGYZMNjrQ_9TyJK9tLnFLeg(Lcom/android/server/wm/DragState;FFZLcom/android/server/wm/WindowState;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DragState;->lambda$broadcastDragStartedLocked$1(FFZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VKHOxpMDX4IY28xXIQdDb165VGM(Landroid/animation/ValueAnimator;)V
    .registers 1

    .line 867
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .registers 9

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 118
    iput v0, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    .line 148
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 149
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    .line 171
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 172
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 173
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 174
    iput-object p4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 175
    iput p5, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 176
    iput-object p6, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 177
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 178
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public broadcastDragStartedLocked(FF)V
    .registers 7

    const-wide/16 v0, 0x20

    .line 502
    const-string v2, "DragDropController#DRAG_STARTED"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 503
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iput p1, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayX:F

    .line 504
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayY:F

    .line 508
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 509
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 510
    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 512
    iget v1, p0, Lcom/android/server/wm/DragState;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 514
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 515
    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    const-string v3, "no_cross_profile_copy_paste"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcasting DRAG_STARTED at ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragState;->containsApplicationExtras(Landroid/content/ClipDescription;)Z

    move-result v0

    .line 523
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DragState;FFZ)V

    const/4 p0, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public cancelDragLocked(Z)V
    .registers 3

    .line 703
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    return-void

    .line 706
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_19

    if-nez p1, :cond_19

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAccessibilityDragDrop()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_19

    .line 715
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createCancelAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    return-void

    .line 712
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    return-void
.end method

.method public closeLocked()V
    .registers 13

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    .line 232
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    const-string v2, "WindowManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    .line 233
    const-string v1, "Unregistering drag input channel"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-virtual {v1, v0, v4}, Lcom/android/server/wm/DragDropController;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 238
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 242
    :cond_18
    iget-boolean v1, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_a5

    .line 243
    const-string v1, "Broadcasting DRAG_ENDED"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v5

    :cond_2a
    :goto_2a
    if-ge v7, v6, :cond_97

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 248
    iget-boolean v9, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v9, :cond_56

    iget-object v9, v8, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v9, v9, Lcom/android/server/wm/Session;->mPid:I

    iget v10, p0, Lcom/android/server/wm/DragState;->mPid:I

    if-ne v9, v10, :cond_56

    .line 250
    iget v9, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v9

    .line 251
    iget v10, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    invoke-virtual {v8, v10}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v10

    .line 252
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result v11

    if-eqz v11, :cond_54

    move v11, v0

    goto :goto_59

    :cond_54
    :goto_54
    move v11, v5

    goto :goto_59

    :cond_56
    move v9, v4

    move v10, v9

    goto :goto_54

    .line 258
    :goto_59
    invoke-virtual {p0, v9, v10, v11}, Lcom/android/server/wm/DragState;->obtainDragEndedEvent(FFZ)Landroid/view/DragEvent;

    move-result-object v9

    .line 260
    :try_start_5d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending DRAG_ENDED to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v10, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_76} :catch_77

    goto :goto_8b

    .line 263
    :catch_77
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to drag-end window "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_8b
    sget v10, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v8, v8, Lcom/android/server/wm/Session;->mPid:I

    if-eq v10, v8, :cond_2a

    .line 268
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    goto :goto_2a

    .line 271
    :cond_97
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 272
    iput-boolean v5, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    const-wide/16 v0, 0x20

    .line 273
    const-string v6, "DragDropController#DRAG_ENDED"

    invoke-static {v0, v1, v6}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 277
    :cond_a5
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b4

    .line 278
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 279
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 281
    :cond_b4
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_da

    .line 282
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    if-nez v0, :cond_ce

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_d8

    .line 285
    :cond_ce
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-wide/16 v6, 0x1388

    const/4 v8, 0x3

    invoke-virtual {v0, v8, v1, v6, v7}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V

    .line 288
    :goto_d8
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 290
    :cond_da
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e7

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    if-nez v0, :cond_e7

    .line 291
    const-string v0, "Unexpectedly destroying mSurfaceControl while animation is running"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_e7
    iput v5, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 295
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 296
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 297
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 298
    iput v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iput v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 299
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    if-eqz v0, :cond_fe

    .line 301
    invoke-virtual {v0}, Landroid/view/DragEvent;->recycle()V

    .line 302
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    .line 306
    :cond_fe
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DragDropController;->onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V

    return-void
.end method

.method public final containsApplicationExtras(Landroid/content/ClipDescription;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 600
    :cond_4
    const-string v0, "application/vnd.android.activity"

    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "application/vnd.android.shortcut"

    .line 601
    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "application/vnd.android.task"

    .line 602
    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    return p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    return p0
.end method

.method public final createCancelAnimationLocked()Landroid/animation/ValueAnimator;
    .registers 14

    .line 873
    iget v0, p0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    const/4 v1, -0x1

    const-string v2, "alpha"

    const/4 v3, 0x3

    const-string v4, "scale"

    const/4 v5, 0x2

    const-string v6, "y"

    const/4 v7, 0x1

    const-string v8, "x"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-eq v0, v1, :cond_52

    .line 874
    new-array v0, v10, [Landroid/animation/PropertyValuesHolder;

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    new-array v10, v5, [F

    aput v1, v10, v9

    aput v1, v10, v7

    .line 875
    invoke-static {v8, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v9

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    new-array v8, v5, [F

    aput v1, v8, v9

    aput v1, v8, v7

    .line 877
    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v7

    iget v1, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    new-array v6, v5, [F

    aput v1, v6, v9

    aput v1, v6, v7

    .line 879
    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    iget v1, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    new-array v4, v5, [F

    aput v1, v4, v9

    aput v11, v4, v7

    .line 881
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v3

    .line 874
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_98

    .line 883
    :cond_52
    new-array v0, v10, [Landroid/animation/PropertyValuesHolder;

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v10, v1, v10

    new-array v12, v5, [F

    aput v10, v12, v9

    aput v1, v12, v7

    .line 884
    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v9

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v8, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v8, v1, v8

    new-array v10, v5, [F

    aput v8, v10, v9

    aput v1, v10, v7

    .line 886
    invoke-static {v6, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v7

    iget v1, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    new-array v6, v5, [F

    aput v1, v6, v9

    aput v11, v6, v7

    .line 888
    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    iget v1, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    new-array v4, v5, [F

    aput v1, v4, v9

    aput v11, v4, v7

    .line 889
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v3

    .line 883
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 892
    :goto_98
    new-instance v1, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState-IA;)V

    const-wide/16 v2, 0xc3

    .line 893
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 894
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 895
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 896
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 898
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public final createDropEvent(FFLcom/android/server/wm/WindowState;)Landroid/view/DragEvent;
    .registers 14

    .line 323
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 325
    iget v1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_2f

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v1, :cond_2f

    .line 327
    new-instance v2, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v5, p0, Lcom/android/server/wm/DragState;->mUid:I

    .line 328
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    iget v1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v7, v1, 0xc3

    iget v8, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/content/ClipData;ILjava/lang/String;III)V

    :goto_2d
    move-object v8, v2

    goto :goto_31

    :cond_2f
    const/4 v2, 0x0

    goto :goto_2d

    .line 333
    :goto_31
    iget v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    if-eq v1, v9, :cond_3c

    .line 334
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v2, :cond_3c

    .line 335
    invoke-virtual {v2, v1}, Landroid/content/ClipData;->fixUris(I)V

    .line 338
    :cond_3c
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    .line 339
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/4 v1, 0x3

    move v7, v6

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method public final createReturnAnimationLocked()Landroid/animation/ValueAnimator;
    .registers 16

    .line 817
    iget v0, p0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0xc3

    const-string v5, "alpha"

    const/4 v6, 0x3

    const-string v7, "scale"

    const/4 v8, 0x2

    const-string v9, "y"

    const/4 v10, 0x1

    const-string v11, "x"

    const/4 v12, 0x0

    const/4 v13, 0x4

    if-eq v0, v1, :cond_55

    .line 818
    new-array v0, v13, [Landroid/animation/PropertyValuesHolder;

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    new-array v13, v8, [F

    aput v1, v13, v12

    aput v1, v13, v10

    .line 819
    invoke-static {v11, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v12

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    new-array v11, v8, [F

    aput v1, v11, v12

    aput v1, v11, v10

    .line 821
    invoke-static {v9, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v10

    iget v1, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    new-array v9, v8, [F

    aput v1, v9, v12

    aput v1, v9, v10

    .line 823
    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v8

    iget v1, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    new-array v7, v8, [F

    aput v1, v7, v12

    aput v2, v7, v10

    .line 825
    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v6

    .line 818
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto/16 :goto_12e

    .line 827
    :cond_55
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_CONNECTED_DISPLAYS_DND:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 828
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 829
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    if-eq v0, v1, :cond_b7

    .line 830
    new-array v0, v13, [Landroid/animation/PropertyValuesHolder;

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v13, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v14, v1, v13

    sub-float/2addr v1, v13

    new-array v13, v8, [F

    aput v14, v13, v12

    aput v1, v13, v10

    .line 831
    invoke-static {v11, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v12

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v11, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v13, v1, v11

    sub-float/2addr v1, v11

    new-array v11, v8, [F

    aput v13, v11, v12

    aput v1, v11, v10

    .line 833
    invoke-static {v9, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v10

    iget v1, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    const/high16 v9, 0x3f400000    # 0.75f

    mul-float/2addr v9, v1

    new-array v11, v8, [F

    aput v1, v11, v12

    aput v9, v11, v10

    .line 835
    invoke-static {v7, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v8

    iget v1, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    new-array v7, v8, [F

    aput v1, v7, v12

    aput v2, v7, v10

    .line 837
    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v6

    .line 830
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_12e

    .line 840
    :cond_b7
    new-array v0, v13, [Landroid/animation/PropertyValuesHolder;

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v1, v2

    iget v13, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayX:F

    sub-float/2addr v13, v2

    new-array v2, v8, [F

    aput v1, v2, v12

    aput v13, v2, v10

    .line 841
    invoke-static {v11, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v12

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v1, v2

    iget v11, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayY:F

    sub-float/2addr v11, v2

    new-array v2, v8, [F

    aput v1, v2, v12

    aput v11, v2, v10

    .line 843
    invoke-static {v9, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v10

    iget v1, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    new-array v2, v8, [F

    aput v1, v2, v12

    aput v1, v2, v10

    .line 845
    invoke-static {v7, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v8

    iget v1, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    new-array v7, v8, [F

    aput v1, v7, v12

    aput v2, v7, v10

    .line 847
    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v6

    .line 840
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 850
    iget v1, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayX:F

    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    sub-float/2addr v1, v2

    .line 851
    iget v2, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayY:F

    iget v5, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    sub-float/2addr v2, v5

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 853
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 855
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    mul-int/2addr v5, v5

    add-int/2addr v6, v5

    int-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v1, v5

    double-to-long v1, v1

    add-long/2addr v3, v1

    .line 861
    :goto_12e
    new-instance v1, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState-IA;)V

    .line 862
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 863
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 864
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 865
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 867
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public final createUnhandledDropEvent(FF)Landroid/view/DragEvent;
    .registers 12

    .line 313
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x3

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object p0

    return-object p0
.end method

.method public endDragLocked(ZZ)V
    .registers 3

    .line 688
    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 689
    iput-boolean p2, p0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    .line 690
    iget-object p2, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_9

    return-void

    :cond_9
    if-nez p1, :cond_1e

    .line 694
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAccessibilityDragDrop()Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 695
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createReturnAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    return-void

    .line 699
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    return-void
.end method

.method public getInputToken()Landroid/os/IBinder;
    .registers 1

    .line 478
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    if-nez p0, :cond_9

    goto :goto_e

    .line 481
    :cond_9
    invoke-virtual {p0}, Landroid/view/InputEventReceiver;->getToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputWindowHandle()Landroid/view/InputWindowHandle;
    .registers 1

    .line 474
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    return-object p0
.end method

.method public isAccessibilityDragDrop()Z
    .registers 1

    .line 942
    iget p0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isClosing()Z
    .registers 1

    .line 182
    iget-boolean p0, p0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    return p0
.end method

.method public final isValidDropTarget(Lcom/android/server/wm/WindowState;ZZ)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 610
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_11

    move v1, v3

    goto :goto_12

    :cond_11
    move v1, v0

    :goto_12
    if-nez v1, :cond_19

    if-nez p3, :cond_19

    if-eqz p2, :cond_19

    return v0

    .line 616
    :cond_19
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget(Z)Z

    move-result p2

    if-nez p2, :cond_20

    return v0

    .line 620
    :cond_20
    iget p2, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v2, p2, 0x1000

    if-eqz v2, :cond_28

    move v2, v3

    goto :goto_29

    :cond_28
    move v2, v0

    :goto_29
    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_2e

    goto :goto_30

    :cond_2e
    if-eqz v2, :cond_36

    .line 623
    :goto_30
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-nez p2, :cond_39

    :cond_36
    if-nez v1, :cond_39

    return v0

    :cond_39
    if-eqz v2, :cond_46

    if-nez p3, :cond_46

    .line 632
    iget p2, p0, Lcom/android/server/wm/DragState;->mUid:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getUid()I

    move-result v1

    if-eq p2, v1, :cond_46

    return v0

    :cond_46
    if-nez p3, :cond_5a

    .line 637
    iget-boolean p2, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    if-nez p2, :cond_5a

    iget p0, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 639
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_59

    goto :goto_5a

    :cond_59
    return v0

    :cond_5a
    :goto_5a
    return v3
.end method

.method public isWindowNotified(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 675
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_8
    if-ge v2, v0, :cond_16

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/wm/WindowState;

    if-ne v3, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method

.method public final synthetic lambda$broadcastDragStartedLocked$1(FFZLcom/android/server/wm/WindowState;)V
    .registers 5

    .line 524
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V

    return-void
.end method

.method public final obtainDragEndedEvent(FFZ)Landroid/view/DragEvent;
    .registers 14

    const/4 v8, 0x0

    .line 782
    iget-boolean v9, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v6, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object p0

    return-object p0
.end method

.method public final obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;
    .registers 19

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 790
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object p0

    return-object p0
.end method

.method public final obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;
    .registers 23

    .line 808
    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 809
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    if-eqz p7, :cond_10

    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    :goto_e
    move v6, v0

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :goto_12
    if-eqz p6, :cond_18

    .line 811
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    :goto_16
    move-object v10, p0

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    goto :goto_16

    :goto_1a
    const/4 v7, 0x0

    move v0, p1

    move v1, p2

    move/from16 v2, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p8

    move/from16 v12, p9

    .line 808
    invoke-static/range {v0 .. v12}, Landroid/view/DragEvent;->obtain(IFFFFIILjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object p0

    return-object p0
.end method

.method public register(Landroid/view/Display;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 489
    const-string v0, "Registering drag input channel"

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v0, :cond_1b

    .line 491
    const-string p0, "Duplicate register of drag input channel"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 492
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 494
    :cond_1b
    new-instance v0, Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DragState$InputInterceptor;-><init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 495
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->showInputSurface()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final relinquishDragSurfaceToDragSource()Z
    .registers 1

    .line 946
    iget p0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public reportDropWindowLock(Landroid/os/IBinder;FF)Z
    .registers 7

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const-wide/16 v0, 0x20

    .line 358
    :try_start_8
    const-string v2, "DragDropController#DROP"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 359
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DragState;->reportDropWindowLockInner(Landroid/os/IBinder;FF)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_15

    .line 361
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 362
    throw p0
.end method

.method public final reportDropWindowLockInner(Landroid/os/IBinder;FF)Z
    .registers 14

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 370
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_1b

    .line 372
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    goto :goto_1c

    :cond_1b
    move v0, p2

    :goto_1c
    if-eqz p1, :cond_27

    .line 375
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, p3

    goto :goto_28

    :cond_27
    move v2, p3

    .line 377
    :goto_28
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "WindowManager"

    const-wide/16 v6, 0x20

    if-nez v3, :cond_76

    .line 378
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Received drop for unnotified window "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/DragState;->createUnhandledDropEvent(FF)Landroid/view/DragEvent;

    move-result-object p2

    .line 381
    iget-object p3, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const-string v0, "unhandled-drop"

    invoke-virtual {p3, p2, v0}, Lcom/android/server/wm/DragDropController;->notifyUnhandledDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_56

    return v4

    .line 387
    :cond_56
    const-string p2, "DragDropController#noWindow"

    invoke-static {v6, v7, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 390
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/DragState;->endDragLocked(ZZ)V

    .line 391
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Drop outside a valid window "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    .line 396
    :cond_76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending DROP to "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/DragState;->createUnhandledDropEvent(FF)Landroid/view/DragEvent;

    move-result-object v0

    .line 399
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 400
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/DragState;->createDropEvent(FFLcom/android/server/wm/WindowState;)Landroid/view/DragEvent;

    move-result-object p2

    .line 402
    :try_start_98
    const-string p3, "DragDropController#dispatchDrop"

    invoke-static {v6, v7, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 403
    iget-object p3, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p3, p2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 406
    iget-object p3, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const-wide/16 v8, 0x1388

    invoke-virtual {p3, v1, v2, v8, v9}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a9} :catch_be
    .catchall {:try_start_98 .. :try_end_a9} :catchall_bc

    .line 413
    sget p3, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p3, p1, :cond_b4

    .line 414
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    .line 416
    :cond_b4
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 418
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 419
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    return v4

    :catchall_bc
    move-exception p0

    goto :goto_e4

    .line 409
    :catch_be
    :try_start_be
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t send drop notification to win "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/DragState;->endDragLocked(ZZ)V
    :try_end_d5
    .catchall {:try_start_be .. :try_end_d5} :catchall_bc

    .line 413
    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p0, p1, :cond_e0

    .line 414
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    .line 416
    :cond_e0
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    .line 413
    :goto_e4
    sget p3, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p3, p1, :cond_ef

    .line 414
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    .line 416
    :cond_ef
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 417
    throw p0
.end method

.method public sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 664
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_18

    .line 666
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_18

    .line 669
    :cond_b
    iget v0, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 670
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DragState;->containsApplicationExtras(Landroid/content/ClipDescription;)Z

    move-result v2

    .line 669
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V

    :cond_18
    :goto_18
    return-void
.end method

.method public final sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V
    .registers 16

    .line 538
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 539
    iget-boolean v1, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v1, :cond_105

    invoke-virtual {p0, p1, p4, v0}, Lcom/android/server/wm/DragState;->isValidDropTarget(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result p4

    if-eqz p4, :cond_105

    .line 541
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending DRAG_STARTED to new window "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "WindowManager"

    invoke-static {v1, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6c

    .line 545
    iget-object p4, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz p4, :cond_6c

    .line 546
    invoke-virtual {p4}, Landroid/content/ClipData;->copyForTransferWithActivityInfo()Landroid/content/ClipData;

    move-result-object p4

    .line 547
    invoke-virtual {p4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 548
    invoke-virtual {p4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_46

    .line 549
    :cond_41
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 550
    :goto_46
    const-string v2, "android.intent.extra.HIDE_DRAG_SOURCE_TASK_ID"

    iget v3, p0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 552
    invoke-virtual {p4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding EXTRA_HIDE_DRAG_SOURCE_TASK_ID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6a
    move-object v7, p4

    goto :goto_6e

    :cond_6c
    const/4 p4, 0x0

    goto :goto_6a

    :goto_6e
    if-eqz v7, :cond_76

    .line 557
    invoke-virtual {v7}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p4

    :goto_74
    move-object v6, p4

    goto :goto_79

    :cond_76
    iget-object p4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    goto :goto_74

    .line 560
    :goto_79
    new-instance p4, Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result p2

    .line 561
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result p3

    invoke-direct {p4, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 562
    sget-object p2, Landroid/window/DesktopExperienceFlags;->ENABLE_CONNECTED_DISPLAYS_DND:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p2}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p2

    if-eqz p2, :cond_b3

    iget-object p2, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 563
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p3

    if-eq p2, p3, :cond_b3

    .line 570
    new-instance p4, Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    neg-int p2, p2

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    .line 571
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    neg-int p3, p3

    add-int/lit8 p3, p3, -0x1

    int-to-float p3, p3

    invoke-direct {p4, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 574
    :cond_b3
    iget v4, p4, Landroid/graphics/PointF;->x:F

    iget v5, p4, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object p0

    .line 579
    :try_start_c0
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p2, p0}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 581
    iget-object p2, v2, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_ca} :catch_d9
    .catchall {:try_start_c0 .. :try_end_ca} :catchall_d6

    .line 586
    sget p2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p2, p1, :cond_105

    .line 587
    invoke-virtual {p0}, Landroid/view/DragEvent;->recycle()V

    return-void

    :catchall_d6
    move-exception v0

    move-object p2, v0

    goto :goto_f9

    .line 583
    :catch_d9
    :try_start_d9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to drag-start window "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catchall {:try_start_d9 .. :try_end_ed} :catchall_d6

    .line 586
    sget p2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p2, p1, :cond_105

    .line 587
    invoke-virtual {p0}, Landroid/view/DragEvent;->recycle()V

    goto :goto_105

    .line 586
    :goto_f9
    sget p3, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p3, p1, :cond_104

    .line 587
    invoke-virtual {p0}, Landroid/view/DragEvent;->recycle()V

    .line 589
    :cond_104
    throw p2

    :cond_105
    :goto_105
    return-void
.end method

.method public final showInputSurface()Ljava/util/concurrent/CompletableFuture;
    .registers 6

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_2a

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "Drag and Drop Input Consumer"

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "DragState.showInputSurface"

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 194
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 197
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->getInputWindowHandle()Landroid/view/InputWindowHandle;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 199
    const-string p0, "WindowManager"

    const-string v0, "Drag is in progress but there is no drag window handle."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 201
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 205
    :cond_3d
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 210
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/InputWindowHandle;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 211
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 212
    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    const v2, 0x7fffffff

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 218
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 219
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 220
    invoke-virtual {p0, v1}, Landroid/view/SurfaceControl$Transaction;->addWindowInfosReportedListener(Ljava/lang/Runnable;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 221
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-object v0
.end method

.method public targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 656
    :cond_4
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_e

    const/4 p0, 0x1

    :cond_e
    return p0
.end method

.method public final targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 645
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_d

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    const/16 p1, 0x18

    if-lt p0, p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public updateDragSurfaceLocked(ZIFF)V
    .registers 10

    .line 728
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    goto/16 :goto_db

    .line 731
    :cond_6
    iput p3, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    .line 732
    iput p4, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 737
    sget-object v1, Landroid/window/DesktopExperienceFlags;->ENABLE_CONNECTED_DISPLAYS_DND:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v1

    const-string v2, "WindowManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eq v1, p2, :cond_47

    .line 739
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_44

    .line 741
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Target displayId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was not found, ending drag."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {p0, v3, v3}, Lcom/android/server/wm/DragState;->endDragLocked(ZZ)V

    return-void

    .line 747
    :cond_44
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x1

    :cond_47
    if-nez p1, :cond_4b

    goto/16 :goto_db

    :cond_4b
    if-eqz v3, :cond_94

    .line 758
    iget p1, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    int-to-float v4, v3

    mul-float/2addr p1, v4

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    int-to-float v4, v0

    div-float/2addr p1, v4

    iput p1, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    .line 760
    iget p1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    int-to-float v4, v3

    mul-float/2addr p1, v4

    int-to-float v4, v0

    div-float/2addr p1, v4

    iput p1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 762
    iget p1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    int-to-float v3, v3

    mul-float/2addr p1, v3

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 764
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 765
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 767
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->getInputWindowHandle()Landroid/view/InputWindowHandle;

    move-result-object p1

    if-nez p1, :cond_8b

    .line 769
    const-string p0, "Drag is in progress but there is no drag window handle."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 772
    :cond_8b
    iput p2, p1, Landroid/view/InputWindowHandle;->displayId:I

    .line 773
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 775
    :cond_94
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v1, p3, v1

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v2, p4, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 776
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 777
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    const/4 v0, 0x2

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_db

    iget-object p1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    int-to-long v0, p2

    iget p2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr p3, p2

    float-to-int p2, p3

    int-to-long p2, p2

    iget p0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr p4, p0

    float-to-int p0, p4

    int-to-long v2, p0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p1, p4, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-wide p2, -0x19ed2542bcb5cf97L    # -5.007157476380257E183

    const/16 p4, 0x54

    invoke-static {p0, p2, p3, p4, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_db
    :goto_db
    return-void
.end method
