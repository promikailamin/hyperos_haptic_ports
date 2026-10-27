.class Lcom/android/server/wm/RemoteAnimationController;
.super Ljava/lang/Object;
.source "RemoteAnimationController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;,
        Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;,
        Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TIMEOUT_MS:J = 0x2710L


# instance fields
.field private final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mCanceled:Z

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mLinkedToDeathOfRunner:Z

.field private mOnRemoteAnimationReady:Ljava/lang/Runnable;

.field private final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingNonAppAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/NonAppWindowAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingWallpaperAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/RemoteAnimationController;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RemoteAnimationController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoteAnimationAdapter(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/RemoteAnimationController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monAnimationFinished(Lcom/android/server/wm/RemoteAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingNonAppAnimations:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 95
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 96
    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 97
    iput-object p3, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 98
    iput-object p4, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    .line 100
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 101
    return-void
.end method

.method private createAppAnimations()[Landroid/view/RemoteAnimationTarget;
    .registers 14

    .line 223
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x26ee615e

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 228
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_bb

    .line 229
    :try_start_21
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_29
    if-ltz v5, :cond_a6

    .line 230
    iget-object v7, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 231
    .local v7, "wrappers":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    invoke-virtual {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v8

    .line 232
    .local v8, "target":Landroid/view/RemoteAnimationTarget;
    if-eqz v8, :cond_53

    .line 233
    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v9, :cond_4f

    iget-object v9, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam0":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x4a6cd2bb

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v9, v12, v2

    invoke-static {v10, v11, v2, v1, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 235
    .end local v9    # "protoLogParam0":Ljava/lang/String;
    :cond_4f
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 237
    :cond_53
    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v9, :cond_69

    iget-object v9, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "protoLogParam0":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x260da918

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v9, v12, v2

    invoke-static {v10, v11, v2, v1, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 242
    .end local v9    # "protoLogParam0":Ljava/lang/String;
    :cond_69
    iget-object v9, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v9, :cond_86

    iget-object v9, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v9}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->-$$Nest$fgetmCapturedFinishCallback(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v9

    if-eqz v9, :cond_86

    .line 244
    iget-object v9, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v9}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->-$$Nest$fgetmCapturedFinishCallback(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v10}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->-$$Nest$fgetmAnimationType(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v10

    iget-object v11, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 245
    invoke-interface {v9, v10, v11}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 248
    :cond_86
    iget-object v9, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v9, :cond_a3

    iget-object v9, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v9}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->-$$Nest$fgetmCapturedFinishCallback(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v9

    if-eqz v9, :cond_a3

    .line 250
    iget-object v9, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v9}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->-$$Nest$fgetmCapturedFinishCallback(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v10}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->-$$Nest$fgetmAnimationType(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v10

    iget-object v11, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 251
    invoke-interface {v9, v10, v11}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 229
    .end local v7    # "wrappers":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .end local v8    # "target":Landroid/view/RemoteAnimationTarget;
    :cond_a3
    :goto_a3
    add-int/lit8 v5, v5, -0x1

    goto :goto_29

    .line 256
    .end local v5    # "i":I
    :cond_a6
    monitor-exit v4
    :try_end_a7
    .catchall {:try_start_21 .. :try_end_a7} :catchall_b8

    .line 257
    :try_start_a7
    monitor-exit v3
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_bb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 259
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    return-object v1

    .line 256
    :catchall_b8
    move-exception v1

    :try_start_b9
    monitor-exit v4
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    .end local v0    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    .end local p0    # "this":Lcom/android/server/wm/RemoteAnimationController;
    :try_start_ba
    throw v1

    .line 257
    .restart local v0    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    .restart local p0    # "this":Lcom/android/server/wm/RemoteAnimationController;
    :catchall_bb
    move-exception v1

    monitor-exit v3
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_bb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private createNonAppWindowAnimations(I)[Landroid/view/RemoteAnimationTarget;
    .registers 15
    .param p1, "transit"    # I

    .line 277
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x6d53e5fb

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 278
    :cond_11
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 281
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 282
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v10

    iget-object v12, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingNonAppAnimations:Ljava/util/ArrayList;

    .line 278
    move v7, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->startNonAppWindowAnimations(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;IJJLjava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    return-object v0
.end method

.method private createWallpaperAnimations()[Landroid/view/RemoteAnimationTarget;
    .registers 13

    .line 263
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x236bb261

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_11
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 265
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 266
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v8

    new-instance v10, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v10, p0}, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iget-object v11, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    .line 264
    invoke-static/range {v5 .. v11}, Lcom/android/server/wm/WallpaperAnimationAdapter;->startWallpaperAnimations(Lcom/android/server/wm/DisplayContent;JJLjava/util/function/Consumer;Ljava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    return-object v0
.end method

.method private invokeAnimationCancelled(Ljava/lang/String;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 388
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x70be04df

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v5, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 389
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardOccluded()Z

    move-result v0

    .line 392
    .local v0, "isKeyguardOccluded":Z
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v2}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled(Z)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_27

    .line 395
    goto :goto_2f

    .line 393
    :catch_27
    move-exception v2

    .line 394
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "Failed to notify cancel"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2f
    iput-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mOnRemoteAnimationReady:Ljava/lang/Runnable;

    .line 397
    return-void
.end method

.method static synthetic lambda$onAnimationFinished$3(Ljava/lang/Object;)V
    .registers 3
    .param p0, "w"    # Ljava/lang/Object;

    .line 325
    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 326
    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 328
    :cond_10
    return-void
.end method

.method static synthetic lambda$onAnimationFinished$4(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setDropInputForAnimation(Z)V

    return-void
.end method

.method private linkToDeathOfRunner()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    if-nez v0, :cond_15

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    .line 443
    :cond_15
    return-void
.end method

.method private onAnimationFinished()V
    .registers 12

    .line 287
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v4, v0

    .local v4, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x59472ff0

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v0, v6, v3, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 289
    .end local v4    # "protoLogParam0":J
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 291
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/SmartPowerServiceStub;->onRemoteAnimationEnd()V

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 294
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->unlinkToDeathOfRunner()V

    .line 295
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->releaseFinishedCallback()V

    .line 296
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_18b

    .line 298
    :try_start_3f
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v4, :cond_4e

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x21369e24

    move-object v6, v1

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v2, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 301
    :cond_4e
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_51} :catch_178
    .catchall {:try_start_3f .. :try_end_51} :catchall_176

    .line 302
    :try_start_51
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "i":I
    :goto_58
    if-ltz v5, :cond_b3

    .line 303
    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 306
    .local v6, "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    iget-object v7, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v7, :cond_7f

    iget-object v7, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->-$$Nest$fgetmCapturedFinishCallback(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v7

    if-eqz v7, :cond_7f

    .line 309
    iget-object v7, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->-$$Nest$fgetmCapturedFinishCallback(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v7

    iget-object v8, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v8}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->-$$Nest$fgetmAnimationType(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v8

    iget-object v9, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 310
    invoke-interface {v7, v8, v9}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 315
    :cond_7f
    iget-object v7, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v7, :cond_9c

    iget-object v7, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->-$$Nest$fgetmCapturedFinishCallback(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v7

    if-eqz v7, :cond_9c

    .line 318
    iget-object v7, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->-$$Nest$fgetmCapturedFinishCallback(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v7

    iget-object v8, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v8}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->-$$Nest$fgetmAnimationType(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v8

    iget-object v9, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 319
    invoke-interface {v7, v8, v9}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 323
    :cond_9c
    iget-object v7, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v7, :cond_b0

    invoke-virtual {v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->getMode()I

    move-result v7

    if-ne v7, v3, :cond_b0

    .line 324
    iget-object v7, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    new-instance v8, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 302
    .end local v6    # "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    :cond_b0
    add-int/lit8 v5, v5, -0x1

    goto :goto_58

    .line 332
    .end local v5    # "i":I
    :cond_b3
    monitor-exit v4
    :try_end_b4
    .catchall {:try_start_51 .. :try_end_b4} :catchall_173

    .line 334
    :try_start_b4
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_bb
    if-ltz v4, :cond_f3

    .line 335
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WallpaperAnimationAdapter;

    .line 339
    .local v5, "adapter":Lcom/android/server/wm/WallpaperAnimationAdapter;
    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLeashFinishedCallback()Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v6

    .line 340
    .local v6, "leashFinishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    if-eqz v6, :cond_d3

    .line 341
    nop

    .line 342
    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLastAnimationType()I

    move-result v7

    .line 341
    invoke-interface {v6, v7, v5}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 345
    :cond_d3
    iget-object v7, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 346
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v7, :cond_f0

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x32ddec5b

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v7, v10, v2

    invoke-static {v8, v9, v2, v1, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 334
    .end local v5    # "adapter":Lcom/android/server/wm/WallpaperAnimationAdapter;
    .end local v6    # "leashFinishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    :cond_f0
    add-int/lit8 v4, v4, -0x1

    goto :goto_bb

    .line 349
    .end local v4    # "i":I
    :cond_f3
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingNonAppAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .restart local v4    # "i":I
    :goto_fa
    if-ltz v4, :cond_132

    .line 350
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingNonAppAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/NonAppWindowAnimationAdapter;

    .line 354
    .local v5, "adapter":Lcom/android/server/wm/NonAppWindowAnimationAdapter;
    invoke-virtual {v5}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->getLeashFinishedCallback()Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v6

    .line 355
    .restart local v6    # "leashFinishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    if-eqz v6, :cond_112

    .line 356
    nop

    .line 357
    invoke-virtual {v5}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->getLastAnimationType()I

    move-result v7

    .line 356
    invoke-interface {v6, v7, v5}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 360
    :cond_112
    iget-object v7, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingNonAppAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 361
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v7, :cond_12f

    invoke-virtual {v5}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->getWindowContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x731b7367

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v7, v10, v2

    invoke-static {v8, v9, v2, v1, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_12f} :catch_178
    .catchall {:try_start_b4 .. :try_end_12f} :catchall_176

    .line 349
    .end local v5    # "adapter":Lcom/android/server/wm/NonAppWindowAnimationAdapter;
    .end local v6    # "leashFinishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    :cond_12f
    add-int/lit8 v4, v4, -0x1

    goto :goto_fa

    .line 368
    .end local v4    # "i":I
    :cond_132
    :try_start_132
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "RemoteAnimationController#finished"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 369
    nop

    .line 370
    monitor-exit v0
    :try_end_13b
    .catchall {:try_start_132 .. :try_end_13b} :catchall_18b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 372
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda4;-><init>()V

    move-object v3, v0

    .line 376
    .local v3, "updateActivities":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_149
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 378
    monitor-exit v4
    :try_end_152
    .catchall {:try_start_149 .. :try_end_152} :catchall_16d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 380
    invoke-direct {p0, v2}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    .line 381
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_167

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0xecb62ed

    move-object v5, v1

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v2, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 384
    :cond_167
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->onRemoteAnimationEnd()V

    .line 385
    return-void

    .line 378
    :catchall_16d
    move-exception v0

    :try_start_16e
    monitor-exit v4
    :try_end_16f
    .catchall {:try_start_16e .. :try_end_16f} :catchall_16d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 332
    .end local v3    # "updateActivities":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    :catchall_173
    move-exception v1

    :try_start_174
    monitor-exit v4
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_173

    .end local p0    # "this":Lcom/android/server/wm/RemoteAnimationController;
    :try_start_175
    throw v1
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_176} :catch_178
    .catchall {:try_start_175 .. :try_end_176} :catchall_176

    .line 368
    .restart local p0    # "this":Lcom/android/server/wm/RemoteAnimationController;
    :catchall_176
    move-exception v1

    goto :goto_182

    .line 364
    :catch_178
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/Exception;
    :try_start_179
    const-string v2, "WindowManager"

    const-string v3, "Failed to finish remote animation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    nop

    .end local p0    # "this":Lcom/android/server/wm/RemoteAnimationController;
    throw v1
    :try_end_182
    .catchall {:try_start_179 .. :try_end_182} :catchall_176

    .line 368
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/wm/RemoteAnimationController;
    :goto_182
    :try_start_182
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v3, "RemoteAnimationController#finished"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 369
    nop

    .end local p0    # "this":Lcom/android/server/wm/RemoteAnimationController;
    throw v1

    .line 370
    .restart local p0    # "this":Lcom/android/server/wm/RemoteAnimationController;
    :catchall_18b
    move-exception v1

    monitor-exit v0
    :try_end_18d
    .catchall {:try_start_182 .. :try_end_18d} :catchall_18b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private releaseFinishedCallback()V
    .registers 2

    .line 400
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    if-eqz v0, :cond_a

    .line 401
    invoke-virtual {v0}, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;->release()V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    .line 404
    :cond_a
    return-void
.end method

.method private setRunningRemoteAnimation(Z)V
    .registers 9
    .param p1, "running"    # Z

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    move-result v0

    .line 408
    .local v0, "pid":I
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v1}, Landroid/view/RemoteAnimationAdapter;->getCallingUid()I

    move-result v1

    .line 410
    .local v1, "uid":I
    const-string v2, "WindowManager"

    if-nez v0, :cond_21

    .line 413
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    const-string v4, "Calling pid of remote animation was null"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    return-void

    .line 417
    :cond_21
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 418
    .local v3, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-nez v3, :cond_4c

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find process with pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void

    .line 422
    :cond_4c
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    .line 424
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 425
    .local v2, "homeProcess":Lcom/android/server/wm/WindowProcessController;
    if-eqz v2, :cond_82

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v4

    if-ne v0, v4, :cond_82

    .line 426
    if-eqz p1, :cond_74

    .line 427
    nop

    .line 428
    invoke-static {}, Lcom/android/server/am/MiuiProcessStub;->getInstance()Lcom/android/server/am/MiuiProcessStub;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/am/MiuiProcessStub;->getSchedModeAnimatorRt()I

    move-result v4

    .line 429
    invoke-static {}, Lcom/android/server/am/MiuiProcessStub;->getInstance()Lcom/android/server/am/MiuiProcessStub;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/am/MiuiProcessStub;->getLaunchRtSchedDurationMs()J

    move-result-wide v5

    .line 427
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/wm/WindowProcessController;->setSchedMode(IJ)V

    goto :goto_82

    .line 431
    :cond_74
    nop

    .line 432
    invoke-static {}, Lcom/android/server/am/MiuiProcessStub;->getInstance()Lcom/android/server/am/MiuiProcessStub;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/am/MiuiProcessStub;->getSchedModeNormal()I

    move-result v4

    const-wide/16 v5, 0x0

    .line 431
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/wm/WindowProcessController;->setSchedMode(IJ)V

    .line 436
    :cond_82
    :goto_82
    return-void
.end method

.method private unlinkToDeathOfRunner()V
    .registers 3

    .line 446
    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    if-eqz v0, :cond_14

    .line 447
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 448
    iput-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    .line 450
    :cond_14
    return-void
.end method

.method private writeStartDebugStatement()V
    .registers 9

    .line 212
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x7518e37a

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 213
    :cond_11
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 214
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 215
    .local v3, "pw":Lcom/android/internal/util/FastPrintWriter;
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_23
    if-ltz v4, :cond_37

    .line 216
    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v6, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    const-string v7, ""

    invoke-virtual {v6, v3, v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 215
    add-int/lit8 v4, v4, -0x1

    goto :goto_23

    .line 218
    .end local v4    # "i":I
    :cond_37
    invoke-virtual {v3}, Lcom/android/internal/util/FastPrintWriter;->close()V

    .line 219
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v4, :cond_52

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x31d185c0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v6, v7, v2, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 220
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_52
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 454
    const-string v0, "binderDied"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method cancelAnimation(Ljava/lang/String;)V
    .registers 9
    .param p1, "reason"    # Ljava/lang/String;

    .line 200
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x70be04df

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 201
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 202
    :try_start_1e
    iget-boolean v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    if-eqz v2, :cond_24

    .line 203
    monitor-exit v0

    return-void

    .line 205
    :cond_24
    iput-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    .line 206
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2e

    .line 207
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled(Ljava/lang/String;)V

    .line 209
    return-void

    .line 206
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method createRemoteAnimationRecord(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .registers 14
    .param p1, "windowContainer"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "localBounds"    # Landroid/graphics/Rect;
    .param p4, "endBounds"    # Landroid/graphics/Rect;
    .param p5, "startBounds"    # Landroid/graphics/Rect;

    .line 115
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_17

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x788bb79d

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_17
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 121
    .local v1, "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    monitor-enter v2

    .line 122
    :try_start_26
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    monitor-exit v2

    .line 125
    return-object v1

    .line 123
    :catchall_2d
    move-exception v0

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method goodToGo(I)V
    .registers 14
    .param p1, "transit"    # I

    .line 137
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x3416e054

    move-object v4, v2

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    if-eqz v0, :cond_2d

    .line 139
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_24

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x10178441

    move-object v4, v2

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_24
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 142
    const-string v0, "already_cancelled"

    invoke-direct {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled(Ljava/lang/String;)V

    .line 143
    return-void

    .line 147
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const v4, 0x461c4000    # 10000.0f

    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 148
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-long v4, v5

    .line 147
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    .line 152
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->createAppAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    .line 153
    .local v0, "appTargets":[Landroid/view/RemoteAnimationTarget;
    array-length v3, v0

    const/4 v9, 0x1

    if-nez v3, :cond_79

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardOccludeTransitOld(I)Z

    move-result v3

    if-nez v3, :cond_79

    .line 157
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v3, :cond_6f

    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    .local v3, "protoLogParam0":J
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x69eddc66

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5, v6, v9, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 160
    .end local v3    # "protoLogParam0":J
    :cond_6f
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 161
    const-string/jumbo v1, "no_app_targets"

    invoke-direct {p0, v1}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled(Ljava/lang/String;)V

    .line 162
    return-void

    .line 165
    :cond_79
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mOnRemoteAnimationReady:Ljava/lang/Runnable;

    if-eqz v1, :cond_82

    .line 166
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 167
    iput-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mOnRemoteAnimationReady:Ljava/lang/Runnable;

    .line 170
    :cond_82
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/am/SmartPowerServiceStub;->onRemoteAnimationStart([Landroid/view/RemoteAnimationTarget;)V

    .line 173
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->createWallpaperAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    .line 176
    .local v1, "wallpaperTargets":[Landroid/view/RemoteAnimationTarget;
    invoke-direct {p0, p1}, Lcom/android/server/wm/RemoteAnimationController;->createNonAppWindowAnimations(I)[Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    .line 178
    .local v2, "nonAppTargets":[Landroid/view/RemoteAnimationTarget;
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v3, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v11, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;

    move-object v3, v11

    move-object v4, p0

    move v5, p1

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/RemoteAnimationController;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 196
    invoke-direct {p0, v9}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    .line 197
    return-void
.end method

.method synthetic lambda$createWallpaperAnimations$2$com-android-server-wm-RemoteAnimationController(Lcom/android/server/wm/WallpaperAnimationAdapter;)V
    .registers 4
    .param p1, "adapter"    # Lcom/android/server/wm/WallpaperAnimationAdapter;

    .line 268
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 270
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 271
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 272
    return-void

    .line 271
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$goodToGo$1$com-android-server-wm-RemoteAnimationController(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .registers 23
    .param p1, "transit"    # I
    .param p2, "appTargets"    # [Landroid/view/RemoteAnimationTarget;
    .param p3, "wallpaperTargets"    # [Landroid/view/RemoteAnimationTarget;
    .param p4, "nonAppTargets"    # [Landroid/view/RemoteAnimationTarget;

    move-object/from16 v1, p0

    .line 180
    const/4 v2, 0x0

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RemoteAnimationController;->linkToDeathOfRunner()V

    .line 181
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_4b

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_12} :catch_67

    move-object/from16 v10, p2

    .local v0, "protoLogParam0":Ljava/lang/String;
    :try_start_14
    array-length v4, v10
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_15} :catch_49

    int-to-long v4, v4

    move-object/from16 v11, p3

    .local v4, "protoLogParam1":J
    :try_start_18
    array-length v6, v11
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_19} :catch_47

    int-to-long v6, v6

    move-object/from16 v12, p4

    .local v6, "protoLogParam2":J
    :try_start_1c
    array-length v8, v12

    int-to-long v8, v8

    .local v8, "protoLogParam3":J
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, 0x21c21b3

    const/16 v15, 0x54

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const/16 v16, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v3, v16

    const/16 v16, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v3, v16

    const/16 v16, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v3, v16

    const/4 v2, 0x0

    invoke-static {v13, v14, v15, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_51

    .line 187
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":J
    .end local v6    # "protoLogParam2":J
    .end local v8    # "protoLogParam3":J
    :catch_47
    move-exception v0

    goto :goto_6c

    :catch_49
    move-exception v0

    goto :goto_6a

    .line 181
    :cond_4b
    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 185
    :goto_51
    iget-object v0, v1, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v4

    iget-object v9, v1, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-interface/range {v4 .. v9}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_64} :catch_65

    .line 190
    goto :goto_78

    .line 187
    :catch_65
    move-exception v0

    goto :goto_6e

    :catch_67
    move-exception v0

    move-object/from16 v10, p2

    :goto_6a
    move-object/from16 v11, p3

    :goto_6c
    move-object/from16 v12, p4

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    :goto_6e
    const-string v2, "WindowManager"

    const-string v3, "Failed to start remote animation"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 191
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_78
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 192
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_91

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x77f5446b

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :cond_91
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RemoteAnimationController;->writeStartDebugStatement()V

    .line 195
    :cond_94
    return-void
.end method

.method synthetic lambda$new$0$com-android-server-wm-RemoteAnimationController()V
    .registers 2

    .line 83
    const-string/jumbo v0, "timeoutRunnable"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    return-void
.end method

.method setOnRemoteAnimationReady(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "onRemoteAnimationReady"    # Ljava/lang/Runnable;

    .line 130
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController;->mOnRemoteAnimationReady:Ljava/lang/Runnable;

    .line 131
    return-void
.end method
