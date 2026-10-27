.class Lcom/android/server/wm/WallpaperAnimationAdapter;
.super Ljava/lang/Object;
.source "WallpaperAnimationAdapter.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperAnimationAdapter"


# instance fields
.field private mAnimationCanceledRunnable:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mCapturedLeash:Landroid/view/SurfaceControl;

.field private mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field private mDurationHint:J

.field private mLastAnimationType:I

.field private mStatusBarTransitionDelay:J

.field private mTarget:Landroid/view/RemoteAnimationTarget;

.field private final mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WallpaperWindowToken;JJLjava/util/function/Consumer;)V
    .registers 7
    .param p1, "wallpaperToken"    # Lcom/android/server/wm/WallpaperWindowToken;
    .param p2, "durationHint"    # J
    .param p4, "statusBarTransitionDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WallpaperWindowToken;",
            "JJ",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p6, "animationCanceledRunnable":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WallpaperAnimationAdapter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    .line 58
    iput-wide p2, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mDurationHint:J

    .line 59
    iput-wide p4, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mStatusBarTransitionDelay:J

    .line 60
    iput-object p6, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mAnimationCanceledRunnable:Ljava/util/function/Consumer;

    .line 61
    return-void
.end method

.method static synthetic lambda$startWallpaperAnimations$0(JJLjava/util/function/Consumer;Ljava/util/ArrayList;Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;Lcom/android/server/wm/WallpaperWindowToken;)V
    .registers 17
    .param p0, "durationHint"    # J
    .param p2, "statusBarTransitionDelay"    # J
    .param p4, "animationCanceledRunnable"    # Ljava/util/function/Consumer;
    .param p5, "targets"    # Ljava/util/ArrayList;
    .param p6, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p7, "adaptersOut"    # Ljava/util/ArrayList;
    .param p8, "wallpaperWindow"    # Lcom/android/server/wm/WallpaperWindowToken;

    .line 79
    new-instance v0, Lcom/android/server/wm/WallpaperAnimationAdapter;

    move-object v1, v0

    move-object/from16 v2, p8

    move-wide v3, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/WallpaperAnimationAdapter;-><init>(Lcom/android/server/wm/WallpaperWindowToken;JJLjava/util/function/Consumer;)V

    .line 82
    .local v1, "wallpaperAdapter":Lcom/android/server/wm/WallpaperAnimationAdapter;
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/WallpaperWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x10

    move-object/from16 v4, p8

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/wm/WallpaperWindowToken;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 84
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperAnimationAdapter;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    move-object v2, p5

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    move-object v3, p6

    iget-object v0, v3, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_33

    .line 87
    move-object v6, p7

    :try_start_29
    invoke-virtual {p7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 89
    return-void

    .line 88
    :catchall_31
    move-exception v0

    goto :goto_35

    :catchall_33
    move-exception v0

    move-object v6, p7

    :goto_35
    :try_start_35
    monitor-exit v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method static shouldStartWallpaperAnimation(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2
    .param p0, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v0

    return v0
.end method

.method public static startWallpaperAnimations(Lcom/android/server/wm/DisplayContent;JJLjava/util/function/Consumer;Ljava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;
    .registers 18
    .param p0, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p1, "durationHint"    # J
    .param p3, "statusBarTransitionDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent;",
            "JJ",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    .line 72
    .local p5, "animationCanceledRunnable":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WallpaperAnimationAdapter;>;"
    .local p6, "adaptersOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WallpaperAnimationAdapter;>;"
    invoke-static {p0}, Lcom/android/server/wm/WallpaperAnimationAdapter;->shouldStartWallpaperAnimation(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 73
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x78ab5340

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_1d
    new-array v0, v1, [Landroid/view/RemoteAnimationTarget;

    return-object v0

    .line 77
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    new-instance v10, Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;

    move-object v1, v10

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object v7, v0

    move-object v8, p0

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;-><init>(JJLjava/util/function/Consumer;Ljava/util/ArrayList;Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    move-object v1, p0

    invoke-virtual {p0, v10}, Lcom/android/server/wm/DisplayContent;->forAllWallpaperWindows(Ljava/util/function/Consumer;)V

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/RemoteAnimationTarget;

    return-object v2
.end method


# virtual methods
.method createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .registers 20

    .line 101
    move-object/from16 v0, p0

    new-instance v15, Landroid/view/RemoteAnimationTarget;

    move-object v1, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    iget-object v2, v0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    .line 102
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->getPrefixOrderIndex()I

    move-result v8

    new-instance v2, Landroid/graphics/Point;

    move-object v9, v2

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v2, v0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    .line 103
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v12

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    move-object/from16 v1, v18

    iput-object v1, v0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 104
    return-object v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 173
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v0, "token="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_33

    .line 177
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    const-string v0, "Target:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3b

    .line 181
    :cond_33
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    const-string v0, "Target: null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    :goto_3b
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 188
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 189
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v2, :cond_15

    .line 190
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/RemoteAnimationTarget;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 192
    :cond_15
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 193
    return-void
.end method

.method public getDurationHint()J
    .registers 3

    .line 163
    iget-wide v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mDurationHint:J

    return-wide v0
.end method

.method getLastAnimationType()I
    .registers 2

    .line 126
    iget v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mLastAnimationType:I

    return v0
.end method

.method getLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getLeashFinishedCallback()Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-object v0
.end method

.method public getShowWallpaper()Z
    .registers 2

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTransitionsStartTime()J
    .registers 5

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mStatusBarTransitionDelay:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method getToken()Lcom/android/server/wm/WallpaperWindowToken;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    return-object v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 7
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;

    .line 157
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x2d58e9e4

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mAnimationCanceledRunnable:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 10
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "type"    # I
    .param p4, "finishCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 146
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x3ff83206

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperWindowToken;->getPrefixOrderIndex()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 150
    iput-object p1, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 151
    iput-object p4, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 152
    iput p3, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mLastAnimationType:I

    .line 153
    return-void
.end method
