.class Lcom/android/server/wm/Transition;
.super Landroid/os/Binder;
.source "Transition.java"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Transition$Targets;,
        Lcom/android/server/wm/Transition$ReadyTracker;,
        Lcom/android/server/wm/Transition$ChangeInfo;,
        Lcom/android/server/wm/Transition$TransitionState;
    }
.end annotation


# static fields
.field private static final DEFAULT_PACKAGE:Ljava/lang/String; = "android"

.field private static final STATE_ABORT:I = 0x3

.field private static final STATE_COLLECTING:I = 0x0

.field private static final STATE_PENDING:I = -0x1

.field private static final STATE_PLAYING:I = 0x2

.field private static final STATE_STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Transition"

.field private static final TRACE_NAME_PLAY_TRANSITION:Ljava/lang/String; = "PlayTransition"


# instance fields
.field private mCanPipOnFinish:Z

.field final mChanges:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

.field private mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

.field private final mController:Lcom/android/server/wm/TransitionController;

.field private mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mFlags:I

.field private mNavBarAttachedToApp:Z

.field private mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

.field final mParticipants:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

.field private mRecentsDisplayId:I

.field private mRemoteTransition:Landroid/window/RemoteTransition;

.field private mStartTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mState:I

.field private final mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

.field private mSyncId:I

.field private final mTargetDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayContent;",
            ">;"
        }
    .end annotation
.end field

.field private mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientLaunches:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field final mType:I

.field private final mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smisReadyGroup(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Transition;->isReadyGroup(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisWallpaper(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smoccludesKeyguard(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Transition;->occludesKeyguard(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "flags"    # I
    .param p3, "controller"    # Lcom/android/server/wm/TransitionController;
    .param p4, "syncEngine"    # Lcom/android/server/wm/BLASTSyncEngine;

    .line 196
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 148
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 149
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 156
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 159
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 171
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    .line 177
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 181
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    .line 182
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    .line 184
    iput v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 185
    new-instance v2, Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-direct {v2, v1}, Lcom/android/server/wm/Transition$ReadyTracker;-><init>(Lcom/android/server/wm/Transition$ReadyTracker-IA;)V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 189
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/Transition;->mNavBarAttachedToApp:Z

    .line 190
    iput v0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    .line 197
    iput p1, p0, Lcom/android/server/wm/Transition;->mType:I

    .line 198
    iput p2, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 199
    iput-object p3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 200
    iput-object p4, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 201
    return-void
.end method

.method private applyReady()V
    .registers 12

    .line 387
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    return-void

    .line 388
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyTracker;->allReady()Z

    move-result v0

    .line 389
    .local v0, "ready":Z
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_2f

    move v2, v0

    .local v2, "protoLogParam0":Z
    iget v3, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v3, v3

    .local v3, "protoLogParam1":J
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x3425bbc3    # -2.8608634E7f

    const/4 v7, 0x7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v1

    const-string v1, "Set transition ready=%b %d"

    invoke-static {v5, v6, v7, v1, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 391
    .end local v2    # "protoLogParam0":Z
    .end local v3    # "protoLogParam1":J
    :cond_2f
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)V

    .line 392
    return-void
.end method

.method private buildFinishTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 16
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "rootLeash"    # Landroid/view/SurfaceControl;

    .line 416
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 418
    .local v0, "tmpPos":Landroid/graphics/Point;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 419
    .local v1, "displays":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/DisplayContent;>;"
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_12
    if-ltz v2, :cond_a0

    .line 420
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 421
    .local v3, "target":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-eqz v4, :cond_9c

    .line 422
    invoke-static {v3}, Lcom/android/server/wm/Transition;->getLeashSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    move-result-object v4

    .line 423
    .local v4, "targetLeash":Landroid/view/SurfaceControl;
    invoke-static {v3}, Lcom/android/server/wm/Transition;->getOrigParentSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    move-result-object v11

    .line 425
    .local v11, "origParent":Landroid/view/SurfaceControl;
    invoke-virtual {p1, v4, v11}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 426
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 427
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 428
    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 432
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_49

    .line 433
    const/4 v5, 0x0

    move-object v12, v5

    .local v5, "clipRect":Landroid/graphics/Rect;
    goto :goto_70

    .line 434
    .end local v5    # "clipRect":Landroid/graphics/Rect;
    :cond_49
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_62

    .line 437
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 438
    .restart local v5    # "clipRect":Landroid/graphics/Rect;
    iget v6, v0, Landroid/graphics/Point;->x:I

    neg-int v6, v6

    iget v7, v0, Landroid/graphics/Point;->y:I

    neg-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    move-object v12, v5

    goto :goto_70

    .line 440
    .end local v5    # "clipRect":Landroid/graphics/Rect;
    :cond_62
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 441
    .restart local v5    # "clipRect":Landroid/graphics/Rect;
    iget v6, v0, Landroid/graphics/Point;->x:I

    neg-int v6, v6

    iget v7, v0, Landroid/graphics/Point;->y:I

    neg-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    move-object v12, v5

    .line 443
    .end local v5    # "clipRect":Landroid/graphics/Rect;
    .local v12, "clipRect":Landroid/graphics/Rect;
    :goto_70
    invoke-virtual {p1, v4, v12}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 444
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 445
    invoke-virtual {p1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 446
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v5, p1

    move-object v6, v4

    invoke-virtual/range {v5 .. v10}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 451
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->matchParentBounds()Z

    move-result v5

    if-eqz v5, :cond_95

    .line 452
    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 454
    :cond_95
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v3    # "target":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "targetLeash":Landroid/view/SurfaceControl;
    .end local v11    # "origParent":Landroid/view/SurfaceControl;
    .end local v12    # "clipRect":Landroid/graphics/Rect;
    :cond_9c
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_12

    .line 459
    .end local v2    # "i":I
    :cond_a0
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_a6
    if-ltz v2, :cond_bb

    .line 460
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_af

    goto :goto_b8

    .line 461
    :cond_af
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 459
    :goto_b8
    add-int/lit8 v2, v2, -0x1

    goto :goto_a6

    .line 463
    .end local v2    # "i":I
    :cond_bb
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 464
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 466
    :cond_c5
    return-void
.end method

.method static calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation

    .line 1141
    .local p0, "participants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p1, "changes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$ChangeInfo;>;"
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0xb00f028

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string v6, "Start calculating TransitionInfo based on participants: %s"

    invoke-static {v3, v4, v2, v6, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1145
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_18
    new-instance v0, Lcom/android/server/wm/Transition$Targets;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/wm/Transition$Targets;-><init>(Lcom/android/server/wm/Transition$Targets-IA;)V

    .line 1146
    .local v0, "targets":Lcom/android/server/wm/Transition$Targets;
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_23
    if-ltz v3, :cond_78

    .line 1147
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 1148
    .local v4, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-nez v5, :cond_48

    .line 1149
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_75

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x591676b9

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v5, v8, v2

    const-string v9, "  Rejecting as detached: %s"

    invoke-static {v6, v7, v2, v9, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1150
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    goto :goto_75

    .line 1154
    :cond_48
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_4f

    goto :goto_75

    .line 1156
    :cond_4f
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1159
    .local v5, "changeInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    invoke-virtual {v5, v4}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-nez v6, :cond_72

    .line 1160
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v6, :cond_75

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x2813544e

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v6, v9, v2

    const-string v10, "  Rejecting as no-op: %s"

    invoke-static {v7, v8, v2, v10, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    goto :goto_75

    .line 1164
    :cond_72
    invoke-virtual {v0, v4}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/WindowContainer;)V

    .line 1146
    .end local v4    # "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v5    # "changeInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    :cond_75
    :goto_75
    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    .line 1166
    .end local v3    # "i":I
    :cond_78
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_90

    iget-object v3, v0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x6df17644

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    const-string v7, "  Initial targets: %s"

    invoke-static {v4, v5, v2, v7, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_90
    invoke-static {v0, p1}, Lcom/android/server/wm/Transition;->tryPromote(Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)V

    .line 1171
    invoke-static {v0, p1}, Lcom/android/server/wm/Transition;->populateParentChanges(Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)V

    .line 1173
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$Targets;->getListSortedByZ()Ljava/util/ArrayList;

    move-result-object v3

    .line 1174
    .local v3, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_b0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x18260c6e

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    const-string v7, "  Final targets: %s"

    invoke-static {v5, v6, v2, v7, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_b0
    return-object v3
.end method

.method static calculateTransitionInfo(IILjava/util/ArrayList;Landroid/util/ArrayMap;)Landroid/window/TransitionInfo;
    .registers 27
    .param p0, "type"    # I
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)",
            "Landroid/window/TransitionInfo;"
        }
    .end annotation

    .line 1277
    .local p2, "sortedTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    .local p3, "changes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$ChangeInfo;>;"
    move/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroid/window/TransitionInfo;

    move/from16 v3, p1

    invoke-direct {v2, v0, v3}, Landroid/window/TransitionInfo;-><init>(II)V

    .line 1279
    .local v2, "out":Landroid/window/TransitionInfo;
    const/4 v4, 0x0

    .line 1280
    .local v4, "topApp":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_24

    .line 1281
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 1282
    .local v6, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-static {v6}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 1283
    move-object v4, v6

    .line 1284
    goto :goto_24

    .line 1280
    .end local v6    # "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 1287
    .end local v5    # "i":I
    :cond_24
    :goto_24
    const/4 v5, 0x0

    if-nez v4, :cond_30

    .line 1288
    new-instance v6, Landroid/view/SurfaceControl;

    invoke-direct {v6}, Landroid/view/SurfaceControl;-><init>()V

    invoke-virtual {v2, v6, v5, v5}, Landroid/window/TransitionInfo;->setRootLeash(Landroid/view/SurfaceControl;II)V

    .line 1289
    return-object v2

    .line 1293
    :cond_30
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 1296
    .local v6, "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :goto_34
    const/4 v7, 0x1

    if-eqz v6, :cond_58

    .line 1297
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    .local v8, "i":I
    :goto_3c
    if-ltz v8, :cond_58

    .line 1298
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowContainer;

    .line 1299
    .local v9, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-static {v9}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v10

    if-nez v10, :cond_55

    invoke-virtual {v9, v6}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v10

    if-nez v10, :cond_55

    .line 1300
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 1301
    goto :goto_34

    .line 1297
    .end local v9    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_55
    add-int/lit8 v8, v8, -0x1

    goto :goto_3c

    .line 1308
    .end local v8    # "i":I
    :cond_58
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 1309
    .local v8, "leashReference":Lcom/android/server/wm/WindowContainer;
    :goto_5e
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    if-eq v9, v6, :cond_69

    .line 1310
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    goto :goto_5e

    .line 1312
    :cond_69
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transition Root: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1313
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1312
    invoke-virtual {v9, v10}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    .line 1313
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v9

    .line 1314
    .local v9, "rootLeash":Landroid/view/SurfaceControl;
    iget-object v10, v6, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v10}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/SurfaceControl$Transaction;

    .line 1315
    .local v10, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v11

    invoke-virtual {v10, v9, v11}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1316
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1317
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 1318
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v9, v11, v12}, Landroid/window/TransitionInfo;->setRootLeash(Landroid/view/SurfaceControl;II)V

    .line 1321
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1322
    .local v11, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_b7
    if-ge v12, v11, :cond_1f7

    .line 1323
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowContainer;

    .line 1324
    .local v14, "target":Lcom/android/server/wm/WindowContainer;
    move-object/from16 v15, p3

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1325
    .local v5, "info":Lcom/android/server/wm/Transition$ChangeInfo;
    new-instance v13, Landroid/window/TransitionInfo$Change;

    .line 1326
    iget-object v7, v14, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-eqz v7, :cond_d6

    iget-object v7, v14, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v7

    goto :goto_d7

    .line 1327
    :cond_d6
    const/4 v7, 0x0

    :goto_d7
    invoke-static {v14}, Lcom/android/server/wm/Transition;->getLeashSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-direct {v13, v7, v3}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    move-object v3, v13

    .line 1329
    .local v3, "change":Landroid/window/TransitionInfo$Change;
    iget-object v7, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v7, :cond_ee

    .line 1330
    iget-object v7, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    iget-object v7, v7, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    .line 1332
    :cond_ee
    invoke-virtual {v5, v14}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    .line 1333
    iget-object v7, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    .line 1334
    invoke-virtual {v5, v14}, Lcom/android/server/wm/Transition$ChangeInfo;->getChangeFlags(Lcom/android/server/wm/WindowContainer;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 1335
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 1336
    .local v7, "task":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_167

    .line 1337
    new-instance v13, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v13}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 1338
    .local v13, "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v7, v13}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 1339
    invoke-virtual {v3, v13}, Landroid/window/TransitionInfo$Change;->setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 1340
    move-object/from16 v17, v4

    .end local v4    # "topApp":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v17, "topApp":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-static {v7}, Lcom/android/server/wm/Transition;->getTaskRotationAnimation(Lcom/android/server/wm/Task;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/window/TransitionInfo$Change;->setRotationAnimation(I)V

    .line 1341
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1342
    .local v4, "topMostActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_12b

    .line 1343
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result v16

    if-eqz v16, :cond_12b

    move-object/from16 v16, v4

    const/4 v4, 0x1

    goto :goto_12e

    :cond_12b
    move-object/from16 v16, v4

    const/4 v4, 0x0

    .line 1342
    .end local v4    # "topMostActivity":Lcom/android/server/wm/ActivityRecord;
    .local v16, "topMostActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_12e
    invoke-virtual {v3, v4}, Landroid/window/TransitionInfo$Change;->setAllowEnterPip(Z)V

    .line 1344
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1345
    .local v4, "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_161

    move-object/from16 v18, v6

    .end local v6    # "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v18, "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    iget-object v6, v7, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v6, :cond_15e

    .line 1349
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v6

    if-nez v6, :cond_15b

    .line 1352
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v6

    .line 1353
    .local v6, "taskRotation":I
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v19

    .line 1354
    move-object/from16 v20, v4

    .end local v4    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    .local v20, "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {v19 .. v19}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v4

    .line 1355
    .local v4, "activityRotation":I
    if-eq v6, v4, :cond_165

    .line 1356
    invoke-virtual {v3, v4}, Landroid/window/TransitionInfo$Change;->setEndFixedRotation(I)V

    goto :goto_165

    .line 1349
    .end local v6    # "taskRotation":I
    .end local v20    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    .local v4, "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_15b
    move-object/from16 v20, v4

    .end local v4    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_165

    .line 1345
    .end local v20    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_15e
    move-object/from16 v20, v4

    .end local v4    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_165

    .end local v18    # "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v20    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    .local v6, "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_161
    move-object/from16 v20, v4

    move-object/from16 v18, v6

    .line 1359
    .end local v4    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v13    # "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v16    # "topMostActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v18    # "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_165
    :goto_165
    const/4 v6, 0x1

    goto :goto_175

    .end local v17    # "topApp":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v18    # "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v4, "topApp":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v6    # "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_167
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    .end local v4    # "topApp":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v6    # "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v17    # "topApp":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v18    # "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    iget v4, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    const/4 v6, 0x1

    and-int/2addr v4, v6

    if-eqz v4, :cond_175

    .line 1360
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/window/TransitionInfo$Change;->setRotationAnimation(I)V

    .line 1363
    :cond_175
    :goto_175
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 1364
    .local v4, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 1365
    .local v13, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 1366
    .local v6, "parentBounds":Landroid/graphics/Rect;
    move-object/from16 v16, v7

    .end local v7    # "task":Lcom/android/server/wm/Task;
    .local v16, "task":Lcom/android/server/wm/Task;
    iget v7, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v19, v8

    .end local v8    # "leashReference":Lcom/android/server/wm/WindowContainer;
    .local v19, "leashReference":Lcom/android/server/wm/WindowContainer;
    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget v8, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v20, v9

    .end local v9    # "rootLeash":Landroid/view/SurfaceControl;
    .local v20, "rootLeash":Landroid/view/SurfaceControl;
    iget v9, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    invoke-virtual {v3, v7, v8}, Landroid/window/TransitionInfo$Change;->setEndRelOffset(II)V

    .line 1368
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v7

    .line 1369
    .local v7, "endRotation":I
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 1370
    .local v8, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_1da

    .line 1371
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    .line 1372
    .local v9, "arTask":Lcom/android/server/wm/Task;
    nop

    .line 1373
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v21

    move/from16 v22, v7

    .end local v7    # "endRotation":I
    .local v22, "endRotation":I
    invoke-virtual/range {v21 .. v21}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v7

    move-object/from16 v21, v9

    .end local v9    # "arTask":Lcom/android/server/wm/Task;
    .local v21, "arTask":Lcom/android/server/wm/Task;
    const/16 v9, 0xff

    .line 1372
    invoke-static {v7, v9}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    .line 1374
    .local v7, "backgroundColor":I
    invoke-virtual {v3, v7}, Landroid/window/TransitionInfo$Change;->setBackgroundColor(I)V

    .line 1378
    invoke-virtual {v3, v6}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 1379
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getRelativeDisplayRotation()I

    move-result v9

    if-eqz v9, :cond_1d7

    iget-object v9, v8, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1380
    invoke-virtual {v9}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v9

    if-nez v9, :cond_1d7

    .line 1382
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v9

    move v7, v9

    .end local v22    # "endRotation":I
    .local v9, "endRotation":I
    goto :goto_1d9

    .line 1384
    .end local v7    # "backgroundColor":I
    .end local v9    # "endRotation":I
    .end local v21    # "arTask":Lcom/android/server/wm/Task;
    .restart local v22    # "endRotation":I
    :cond_1d7
    move/from16 v7, v22

    .end local v22    # "endRotation":I
    .local v7, "endRotation":I
    :goto_1d9
    goto :goto_1df

    .line 1385
    :cond_1da
    move/from16 v22, v7

    .end local v7    # "endRotation":I
    .restart local v22    # "endRotation":I
    invoke-virtual {v3, v13}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 1387
    .end local v22    # "endRotation":I
    .restart local v7    # "endRotation":I
    :goto_1df
    iget v9, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    invoke-virtual {v3, v9, v7}, Landroid/window/TransitionInfo$Change;->setRotation(II)V

    .line 1389
    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    .line 1322
    .end local v3    # "change":Landroid/window/TransitionInfo$Change;
    .end local v4    # "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v5    # "info":Lcom/android/server/wm/Transition$ChangeInfo;
    .end local v6    # "parentBounds":Landroid/graphics/Rect;
    .end local v7    # "endRotation":I
    .end local v8    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "bounds":Landroid/graphics/Rect;
    .end local v14    # "target":Lcom/android/server/wm/WindowContainer;
    .end local v16    # "task":Lcom/android/server/wm/Task;
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, p1

    move-object/from16 v4, v17

    move-object/from16 v6, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_b7

    .end local v17    # "topApp":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v18    # "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v19    # "leashReference":Lcom/android/server/wm/WindowContainer;
    .end local v20    # "rootLeash":Landroid/view/SurfaceControl;
    .local v4, "topApp":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v6, "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v8, "leashReference":Lcom/android/server/wm/WindowContainer;
    .local v9, "rootLeash":Landroid/view/SurfaceControl;
    :cond_1f7
    move-object/from16 v15, p3

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .line 1392
    .end local v4    # "topApp":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v6    # "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v8    # "leashReference":Lcom/android/server/wm/WindowContainer;
    .end local v9    # "rootLeash":Landroid/view/SurfaceControl;
    .end local v12    # "i":I
    .restart local v17    # "topApp":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v18    # "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v19    # "leashReference":Lcom/android/server/wm/WindowContainer;
    .restart local v20    # "rootLeash":Landroid/view/SurfaceControl;
    nop

    .line 1393
    invoke-static {v0, v1}, Lcom/android/server/wm/Transition;->getLayoutParamsForAnimationsStyle(ILjava/util/ArrayList;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1394
    .local v3, "animLp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v3, :cond_219

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_219

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v4, :cond_219

    .line 1399
    nop

    .line 1400
    invoke-static {v3}, Landroid/window/TransitionInfo$AnimationOptions;->makeAnimOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v4

    .line 1401
    .local v4, "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    invoke-virtual {v2, v4}, Landroid/window/TransitionInfo;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    .line 1404
    .end local v4    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    :cond_219
    return-object v2
.end method

.method private static canPromote(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)Z
    .registers 19
    .param p1, "targets"    # Lcom/android/server/wm/Transition$Targets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Lcom/android/server/wm/Transition$Targets;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1048
    .local p0, "target":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local p2, "changes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$ChangeInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 1049
    .local v2, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1050
    .local v3, "parentChange":Lcom/android/server/wm/Transition$ChangeInfo;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_fa

    if-eqz v3, :cond_fa

    .line 1051
    invoke-virtual {v3, v2}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-nez v4, :cond_22

    move-object/from16 v11, p1

    goto/16 :goto_fc

    .line 1056
    :cond_22
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_3b

    .line 1057
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_3a

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x796524ed

    move-object v8, v7

    check-cast v8, [Ljava/lang/Object;

    const-string v8, "      SKIP: is wallpaper"

    invoke-static {v4, v5, v6, v8, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1058
    :cond_3a
    return v6

    .line 1061
    :cond_3b
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    .line 1062
    .local v4, "mode":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v5

    .local v8, "i":I
    :goto_4a
    if-ltz v8, :cond_f6

    .line 1063
    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    .line 1064
    .local v9, "sibling":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-ne v0, v9, :cond_57

    move-object/from16 v11, p1

    move-object v12, v7

    goto/16 :goto_f0

    .line 1065
    :cond_57
    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v10, :cond_6d

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam0":Ljava/lang/String;
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x29ef387a

    new-array v13, v5, [Ljava/lang/Object;

    aput-object v10, v13, v6

    const-string v14, "      check sibling %s"

    invoke-static {v11, v12, v6, v14, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    .end local v10    # "protoLogParam0":Ljava/lang/String;
    :cond_6d
    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1068
    .local v10, "siblingChange":Lcom/android/server/wm/Transition$ChangeInfo;
    if-eqz v10, :cond_bc

    move-object/from16 v11, p1

    invoke-virtual {v11, v9}, Lcom/android/server/wm/Transition$Targets;->wasParticipated(Lcom/android/server/wm/WindowContainer;)Z

    move-result v12

    if-nez v12, :cond_7e

    goto :goto_be

    .line 1080
    :cond_7e
    invoke-virtual {v10, v9}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v12

    .line 1081
    .local v12, "siblingMode":I
    sget-boolean v13, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v13, :cond_9c

    invoke-static {v12}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam0":Ljava/lang/String;
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v15, -0x2e700ee9

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v13, v7, v6

    const-string v5, "        sibling is a participant with mode %s"

    invoke-static {v14, v15, v6, v5, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1084
    .end local v13    # "protoLogParam0":Ljava/lang/String;
    :cond_9c
    if-eq v4, v12, :cond_ba

    .line 1085
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_b9

    invoke-static {v4}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, 0x5793e434

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v5, v14, v6

    const-string v15, "          SKIP: common mode mismatch. was %s"

    invoke-static {v7, v13, v6, v15, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1088
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_b9
    return v6

    .line 1084
    :cond_ba
    const/4 v12, 0x0

    goto :goto_f0

    .line 1068
    .end local v12    # "siblingMode":I
    :cond_bc
    move-object/from16 v11, p1

    .line 1069
    :goto_be
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 1071
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_d6

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x2f4ce560

    const/4 v12, 0x0

    move-object v13, v12

    check-cast v13, [Ljava/lang/Object;

    const-string v13, "        SKIP: sibling is visible but not part of transition"

    invoke-static {v5, v7, v6, v13, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    :cond_d6
    return v6

    .line 1075
    :cond_d7
    const/4 v12, 0x0

    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_f0

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, -0x670d3691

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v5, v15, v6

    const-string v14, "        unrelated invisible sibling %s"

    invoke-static {v7, v13, v6, v14, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1076
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    nop

    .line 1062
    .end local v9    # "sibling":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v10    # "siblingChange":Lcom/android/server/wm/Transition$ChangeInfo;
    :cond_f0
    :goto_f0
    add-int/lit8 v8, v8, -0x1

    move-object v7, v12

    const/4 v5, 0x1

    goto/16 :goto_4a

    :cond_f6
    move-object/from16 v11, p1

    .line 1091
    .end local v8    # "i":I
    const/4 v5, 0x1

    return v5

    .line 1050
    .end local v4    # "mode":I
    :cond_fa
    move-object/from16 v11, p1

    .line 1052
    :goto_fc
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_127

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parent can\'t be target "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x2c5b2735

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v6

    const-string v9, "      SKIP: %s"

    invoke-static {v5, v7, v6, v9, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1054
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_127
    return v6
.end method

.method private static findAnimLayoutParamsActivityRecord(Ljava/util/List;ILandroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;
    .registers 5
    .param p1, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1439
    .local p0, "sortedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/WindowContainer;>;"
    .local p2, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;-><init>(ILandroid/util/ArraySet;)V

    invoke-static {p0, v0}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1442
    .local v0, "result":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_c

    .line 1443
    return-object v0

    .line 1445
    :cond_c
    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0, v1}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1447
    if-eqz v0, :cond_18

    .line 1448
    return-object v0

    .line 1450
    :cond_18
    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p0, v1}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    return-object v1
.end method

.method static fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;
    .registers 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 1488
    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/Transition;

    return-object v0
.end method

.method private static getLayoutParamsForAnimationsStyle(ILjava/util/ArrayList;)Landroid/view/WindowManager$LayoutParams;
    .registers 7
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)",
            "Landroid/view/WindowManager$LayoutParams;"
        }
    .end annotation

    .line 1411
    .local p1, "sortedTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1412
    .local v0, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1413
    .local v2, "target":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 1414
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 1415
    :cond_28
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v4

    if-nez v4, :cond_35

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_35

    .line 1420
    return-object v3

    .line 1422
    .end local v2    # "target":Lcom/android/server/wm/WindowContainer;
    :cond_35
    :goto_35
    goto :goto_9

    .line 1423
    :cond_36
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1426
    return-object v3

    .line 1428
    :cond_3d
    nop

    .line 1429
    invoke-static {p1, p0, v0}, Lcom/android/server/wm/Transition;->findAnimLayoutParamsActivityRecord(Ljava/util/List;ILandroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1430
    .local v1, "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_49

    .line 1431
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    goto :goto_4a

    :cond_49
    move-object v2, v3

    .line 1432
    .local v2, "mainWindow":Lcom/android/server/wm/WindowState;
    :goto_4a
    if-eqz v2, :cond_4e

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :cond_4e
    return-object v3
.end method

.method private static getLeashSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;
    .registers 4
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1231
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1232
    .local v0, "asDC":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_b

    .line 1235
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 1237
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1238
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v1

    .line 1239
    .local v1, "asToken":Lcom/android/server/wm/WindowToken;
    if-eqz v1, :cond_20

    .line 1242
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->getOrCreateFixedRotationLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 1243
    .local v2, "leash":Landroid/view/SurfaceControl;
    if-eqz v2, :cond_20

    return-object v2

    .line 1246
    .end local v1    # "asToken":Lcom/android/server/wm/WindowToken;
    .end local v2    # "leash":Landroid/view/SurfaceControl;
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method private static getOrigParentSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;
    .registers 2
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1250
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1253
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 1255
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method private static getTaskRotationAnimation(Lcom/android/server/wm/Task;)I
    .registers 6
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 1467
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1468
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 1469
    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 1470
    .local v2, "mainWin":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_10

    return v1

    .line 1471
    :cond_10
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getRotationAnimationHint()I

    move-result v3

    .line 1472
    .local v3, "anim":I
    if-ltz v3, :cond_17

    return v3

    .line 1473
    :cond_17
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v3, v4, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1474
    const/4 v4, 0x3

    if-eq v3, v4, :cond_21

    return v3

    .line 1475
    :cond_21
    iget-object v4, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-ne v2, v4, :cond_3b

    .line 1476
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_3b

    .line 1480
    :cond_34
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    return v1

    .line 1478
    :cond_3b
    :goto_3b
    return v1
.end method

.method private handleLegacyRecentsStartBehavior(Lcom/android/server/wm/DisplayContent;Landroid/window/TransitionInfo;)V
    .registers 14
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "info"    # Landroid/window/TransitionInfo;

    .line 799
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_7

    .line 800
    return-void

    .line 802
    :cond_7
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 805
    nop

    .line 806
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    const-string/jumbo v1, "recents_animation_input_consumer"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    .line 807
    .local v0, "recentsAnimationInputConsumer":Lcom/android/server/wm/InputConsumerImpl;
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_8b

    .line 811
    const/4 v4, 0x0

    .line 812
    .local v4, "recentsActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v5, 0x0

    .line 813
    .local v5, "topActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1f
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_75

    .line 814
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionInfo$Change;

    .line 815
    .local v7, "change":Landroid/window/TransitionInfo$Change;
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    if-nez v8, :cond_3a

    goto :goto_72

    .line 816
    :cond_3a
    nop

    .line 817
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 816
    invoke-static {v8}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v8

    .line 818
    .local v8, "task":Lcom/android/server/wm/Task;
    if-nez v8, :cond_52

    goto :goto_72

    .line 819
    :cond_52
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 820
    .local v9, "activityType":I
    if-eq v9, v2, :cond_60

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5e

    goto :goto_60

    :cond_5e
    move v10, v1

    goto :goto_61

    :cond_60
    :goto_60
    move v10, v3

    .line 822
    .local v10, "isRecents":Z
    :goto_61
    if-eqz v10, :cond_6a

    if-nez v4, :cond_6a

    .line 823
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    goto :goto_72

    .line 824
    :cond_6a
    if-nez v10, :cond_72

    if-nez v5, :cond_72

    .line 825
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 813
    .end local v7    # "change":Landroid/window/TransitionInfo$Change;
    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "activityType":I
    .end local v10    # "isRecents":Z
    :cond_72
    :goto_72
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 828
    .end local v6    # "i":I
    :cond_75
    if-eqz v4, :cond_8b

    if-eqz v5, :cond_8b

    .line 829
    iget-object v6, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v6, v6, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 830
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 829
    invoke-virtual {v6, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 831
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/android/server/wm/InputMonitor;->setActiveRecents(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 836
    .end local v4    # "recentsActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_8b
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isImeAttachedToApp()Z

    move-result v4

    if-nez v4, :cond_ab

    .line 840
    const-class v4, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 841
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 842
    .local v4, "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    if-eqz v4, :cond_aa

    .line 843
    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    .line 846
    .end local v4    # "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    :cond_aa
    goto :goto_b2

    .line 851
    :cond_ab
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(Z)V

    .line 857
    :goto_b2
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->shouldAttachNavBarToAppDuringTransition()Z

    move-result v4

    if-eqz v4, :cond_171

    .line 859
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v4

    if-eqz v4, :cond_c4

    goto/16 :goto_171

    .line 863
    :cond_c4
    const/4 v4, 0x0

    .line 865
    .local v4, "topWC":Lcom/android/server/wm/WindowContainer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c6
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_112

    .line 866
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    .line 867
    .local v6, "c":Landroid/window/TransitionInfo$Change;
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    if-eqz v7, :cond_10f

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v8, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    if-ne v7, v8, :cond_10f

    .line 868
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v7

    if-ne v7, v3, :cond_10f

    .line 869
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    if-eq v7, v2, :cond_102

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_102

    .line 870
    goto :goto_10f

    .line 872
    :cond_102
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 873
    goto :goto_112

    .line 865
    .end local v6    # "c":Landroid/window/TransitionInfo$Change;
    :cond_10f
    :goto_10f
    add-int/lit8 v5, v5, 0x1

    goto :goto_c6

    .line 875
    .end local v5    # "i":I
    :cond_112
    :goto_112
    if-eqz v4, :cond_170

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_11b

    goto :goto_170

    .line 879
    :cond_11b
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 880
    .local v2, "navWindow":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_16f

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-nez v5, :cond_12a

    goto :goto_16f

    .line 883
    :cond_12a
    iput-boolean v3, p0, Lcom/android/server/wm/Transition;->mNavBarAttachedToApp:Z

    .line 884
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowToken;->cancelAnimation()V

    .line 885
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    .line 886
    .local v5, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 887
    .local v6, "navSurfaceControl":Landroid/view/SurfaceControl;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 888
    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 890
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v7

    .line 891
    .local v7, "imeContainer":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_159

    .line 892
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {v5, v6, v8, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_15f

    .line 895
    :cond_159
    const v3, 0x7fffffff

    invoke-virtual {v5, v6, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 897
    :goto_15f
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v3, :cond_16e

    .line 898
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget v8, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    invoke-interface {v3, v8, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNavigationBarLumaSamplingEnabled(IZ)V

    .line 900
    :cond_16e
    return-void

    .line 881
    .end local v5    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v6    # "navSurfaceControl":Landroid/view/SurfaceControl;
    .end local v7    # "imeContainer":Lcom/android/server/wm/WindowContainer;
    :cond_16f
    :goto_16f
    return-void

    .line 876
    .end local v2    # "navWindow":Lcom/android/server/wm/WindowState;
    :cond_170
    :goto_170
    return-void

    .line 860
    .end local v4    # "topWC":Lcom/android/server/wm/WindowContainer;
    :cond_171
    :goto_171
    return-void
.end method

.method private handleNonAppWindowsInTransition(Lcom/android/server/wm/DisplayContent;II)V
    .registers 10
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "transit"    # I
    .param p3, "flags"    # I

    .line 950
    const/4 v0, 0x1

    const/4 v1, 0x7

    if-eq p2, v1, :cond_8

    and-int/lit16 v1, p3, 0x100

    if-eqz v1, :cond_6b

    :cond_8
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    if-nez v1, :cond_6b

    .line 953
    and-int/lit8 v1, p3, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_40

    and-int/lit8 v1, p3, 0x8

    if-nez v1, :cond_40

    .line 956
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_27

    move v3, v0

    goto :goto_28

    :cond_27
    move v3, v2

    .line 957
    :goto_28
    invoke-interface {v1, v3}, Lcom/android/server/policy/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v1

    .line 959
    .local v1, "anim":Landroid/view/animation/Animation;
    if-eqz v1, :cond_40

    .line 960
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 961
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v3

    .line 960
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 962
    iget-object v3, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    .line 965
    .end local v1    # "anim":Landroid/view/animation/Animation;
    :cond_40
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_46

    move v1, v0

    goto :goto_47

    :cond_46
    move v1, v2

    :goto_47
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_4d

    move v3, v0

    goto :goto_4e

    :cond_4d
    move v3, v2

    :goto_4e
    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_53

    move v2, v0

    :cond_53
    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZZ)V

    .line 969
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    if-nez v1, :cond_6b

    .line 973
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 974
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 973
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/policy/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 977
    :cond_6b
    and-int/lit8 v1, p3, 0x40

    if-eqz v1, :cond_7a

    .line 978
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->applyKeyguardOcclusionChange(Z)I

    .line 981
    :cond_7a
    return-void
.end method

.method private static isReadyGroup(Lcom/android/server/wm/WindowContainer;)Z
    .registers 2
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1264
    instance-of v0, p0, Lcom/android/server/wm/DisplayContent;

    return v0
.end method

.method private static isWallpaper(Lcom/android/server/wm/WindowContainer;)Z
    .registers 2
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1020
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsActivityRecord$1(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p0, "transit"    # I
    .param p1, "activityTypes"    # Landroid/util/ArraySet;
    .param p2, "w"    # Lcom/android/server/wm/ActivityRecord;

    .line 1440
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1441
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1440
    :goto_13
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsActivityRecord$2(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/ActivityRecord;

    .line 1446
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsActivityRecord$3(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/ActivityRecord;

    .line 1450
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$sendRemoteCallback$0(Landroid/os/IRemoteCallback;)V
    .registers 2
    .param p0, "cb"    # Landroid/os/IRemoteCallback;

    .line 352
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 353
    :goto_4
    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_4

    .line 354
    :goto_7
    return-void
.end method

.method private static lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1455
    .local p0, "sortedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/WindowContainer;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1456
    .local v1, "target":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1457
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_23

    .line 1458
    :cond_1f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    :goto_23
    nop

    .line 1459
    .local v2, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_2d

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1460
    return-object v2

    .line 1462
    .end local v1    # "target":Lcom/android/server/wm/WindowContainer;
    .end local v2    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_2d
    goto :goto_4

    .line 1463
    :cond_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method private static occludesKeyguard(Lcom/android/server/wm/WindowContainer;)Z
    .registers 6
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1025
    .local v0, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_b

    .line 1026
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v1

    return v1

    .line 1028
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1029
    .local v1, "t":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 1033
    new-instance v3, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1034
    .local v3, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_24

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 v2, 0x1

    :cond_24
    return v2

    .line 1036
    .end local v3    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_25
    return v2
.end method

.method private static populateParentChanges(Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)V
    .registers 12
    .param p0, "targets"    # Lcom/android/server/wm/Transition$Targets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Transition$Targets;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1181
    .local p1, "changes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$ChangeInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1183
    .local v0, "intermediates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer<*>;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1184
    .local v1, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer<*>;>;"
    iget-object v2, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_28

    .line 1185
    iget-object v3, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1187
    .end local v2    # "i":I
    :cond_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_2e
    if-ltz v2, :cond_ce

    .line 1188
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1190
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-static {v3}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    .line 1191
    .local v4, "skipIntermediateReports":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1192
    const/4 v5, 0x0

    .line 1194
    .local v5, "foundParentInTargets":Z
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .local v6, "p":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :goto_42
    if-eqz v6, :cond_8d

    .line 1195
    invoke-virtual {p1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1196
    .local v7, "parentChange":Lcom/android/server/wm/Transition$ChangeInfo;
    if-eqz v7, :cond_8d

    invoke-virtual {v7, v6}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v8

    if-nez v8, :cond_53

    goto :goto_8d

    .line 1197
    :cond_53
    iget-object v8, v6, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-nez v8, :cond_58

    .line 1199
    goto :goto_88

    .line 1201
    :cond_58
    iget-object v8, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v8, :cond_67

    if-nez v4, :cond_67

    .line 1202
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    iput-object v6, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 1204
    goto :goto_8d

    .line 1206
    :cond_67
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 1207
    if-eqz v4, :cond_78

    .line 1208
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    iput-object v6, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    goto :goto_7b

    .line 1210
    :cond_78
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    :goto_7b
    const/4 v5, 0x1

    .line 1213
    goto :goto_8d

    .line 1214
    :cond_7d
    invoke-static {v6}, Lcom/android/server/wm/Transition;->reportIfNotTop(Lcom/android/server/wm/WindowContainer;)Z

    move-result v8

    if-eqz v8, :cond_88

    if-nez v4, :cond_88

    .line 1215
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    .end local v7    # "parentChange":Lcom/android/server/wm/Transition$ChangeInfo;
    :cond_88
    :goto_88
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    goto :goto_42

    .line 1218
    .end local v6    # "p":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_8d
    :goto_8d
    if-eqz v5, :cond_ca

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_96

    goto :goto_ca

    .line 1220
    :cond_96
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    iput-object v7, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 1221
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_a6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_ca

    .line 1222
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    .line 1223
    .local v7, "intermediate":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {p1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowContainer;

    iput-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 1224
    invoke-virtual {p0, v7}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/WindowContainer;)V

    .line 1221
    .end local v7    # "intermediate":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_a6

    .line 1187
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v4    # "skipIntermediateReports":Z
    .end local v5    # "foundParentInTargets":Z
    .end local v6    # "j":I
    :cond_ca
    :goto_ca
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2e

    .line 1227
    .end local v2    # "i":I
    :cond_ce
    return-void
.end method

.method private static reportIfNotTop(Lcom/android/server/wm/WindowContainer;)Z
    .registers 2
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1016
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v0

    return v0
.end method

.method private reportStartReasonsToLogger()V
    .registers 6

    .line 986
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 987
    .local v0, "reasons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_39

    .line 988
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 989
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_36

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v4, :cond_22

    goto :goto_36

    .line 992
    :cond_22
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    instance-of v4, v4, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v4, :cond_2e

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mLastAllReadyAtSync:Z

    if-nez v4, :cond_2e

    .line 994
    move v4, v2

    goto :goto_2f

    :cond_2e
    const/4 v4, 0x2

    .line 992
    :goto_2f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 996
    .end local v1    # "i":I
    :cond_39
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyTransitionStarting(Landroid/util/ArrayMap;)V

    .line 998
    return-void
.end method

.method private sendRemoteCallback(Landroid/os/IRemoteCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/os/IRemoteCallback;

    .line 349
    if-nez p1, :cond_3

    return-void

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 355
    return-void
.end method

.method private static tryPromote(Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)V
    .registers 13
    .param p0, "targets"    # Lcom/android/server/wm/Transition$Targets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Transition$Targets;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1100
    .local p1, "changes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$ChangeInfo;>;"
    const/4 v0, 0x0

    .line 1102
    .local v0, "lastNonPromotableParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    iget-object v1, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_a8

    .line 1103
    iget-object v3, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1104
    .local v3, "target":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2a

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x1e5fe76a

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v4, v8, v5

    const-string v9, "    checking %s"

    invoke-static {v6, v7, v5, v9, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1105
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_2a
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 1106
    .local v4, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-ne v4, v0, :cond_43

    .line 1107
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v6, :cond_a4

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x6af3632

    const/4 v8, 0x0

    move-object v9, v8

    check-cast v9, [Ljava/lang/Object;

    const-string v9, "      SKIP: its sibling was rejected"

    invoke-static {v6, v7, v5, v9, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a4

    .line 1111
    :cond_43
    invoke-static {v3, p0, p1}, Lcom/android/server/wm/Transition;->canPromote(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)Z

    move-result v6

    if-nez v6, :cond_4b

    .line 1112
    move-object v0, v4

    .line 1113
    goto :goto_a4

    .line 1115
    :cond_4b
    invoke-static {v3}, Lcom/android/server/wm/Transition;->reportIfNotTop(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 1116
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v6, :cond_81

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x1f7aee4c

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v5

    const-string v10, "        keep as target %s"

    invoke-static {v7, v8, v5, v10, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1117
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    goto :goto_81

    .line 1119
    :cond_68
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v6, :cond_7e

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0xaddf948

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v5

    const-string v10, "        remove from targets %s"

    invoke-static {v7, v8, v5, v10, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1121
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_7e
    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/Transition$Targets;->remove(ILcom/android/server/wm/WindowContainer;)V

    .line 1123
    :cond_81
    :goto_81
    iget-object v6, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_a4

    .line 1124
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v6, :cond_9f

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x568ff406

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v5

    const-string v10, "      CAN PROMOTE: promoting to parent %s"

    invoke-static {v7, v8, v5, v10, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1127
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_9f
    add-int/lit8 v1, v1, 0x1

    .line 1128
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/WindowContainer;)V

    .line 1102
    .end local v3    # "target":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v4    # "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_a4
    :goto_a4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_9

    .line 1131
    .end local v1    # "i":I
    :cond_a8
    return-void
.end method


# virtual methods
.method abort()V
    .registers 10

    .line 621
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    return-void

    .line 622
    :cond_6
    if-nez v0, :cond_32

    .line 625
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    .local v2, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x337704d6    # -7.181755E7f

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "Aborting Transition: %d"

    invoke-static {v0, v4, v5, v7, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 626
    .end local v2    # "protoLogParam0":J
    :cond_23
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->abort(I)V

    .line 629
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionCancelled()V

    .line 630
    return-void

    .line 623
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too late to abort."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addFlag(I)V
    .registers 3
    .param p1, "flag"    # I

    .line 204
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 205
    return-void
.end method

.method allReady()Z
    .registers 2

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyTracker;->allReady()Z

    move-result v0

    return v0
.end method

.method cleanUpOnFailure()V
    .registers 3

    .line 786
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    return-void

    .line 788
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_d

    .line 789
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 791
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_14

    .line 792
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 794
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->finishTransition(Landroid/os/IBinder;)V

    .line 795
    return-void
.end method

.method collect(Lcom/android/server/wm/WindowContainer;)V
    .registers 13
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 281
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    if-ltz v0, :cond_ce

    .line 284
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_9

    return-void

    .line 285
    :cond_9
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v4, v0

    .local v4, "protoLogParam0":J
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x5d73beb3

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v1

    aput-object v0, v8, v3

    const-string v9, "Collecting in transition %d: %s"

    invoke-static {v6, v7, v3, v9, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 289
    .end local v0    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam0":J
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .local v0, "curr":Lcom/android/server/wm/WindowContainer;
    :goto_2f
    if-eqz v0, :cond_72

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_72

    .line 291
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    new-instance v5, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-direct {v5, v0}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-static {v0}, Lcom/android/server/wm/Transition;->isReadyGroup(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 293
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/Transition$ReadyTracker;->addGroup(Lcom/android/server/wm/WindowContainer;)V

    .line 294
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_6d

    iget v4, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v4, v4

    .restart local v4    # "protoLogParam0":J
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam1":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x55fc89b0

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v1

    aput-object v6, v9, v3

    const-string v10, " Creating Ready-group for Transition %d with root=%s"

    invoke-static {v7, v8, v3, v10, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 290
    .end local v4    # "protoLogParam0":J
    .end local v6    # "protoLogParam1":Ljava/lang/String;
    :cond_6d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_2f

    .line 298
    .end local v0    # "curr":Lcom/android/server/wm/WindowContainer;
    :cond_72
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    return-void

    .line 299
    :cond_7b
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 301
    .local v0, "info":Lcom/android/server/wm/Transition$ChangeInfo;
    if-nez v0, :cond_97

    .line 302
    new-instance v1, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-direct {v1, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    move-object v0, v1

    .line 303
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_97
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    .line 307
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_b7
    iget-boolean v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    if-eqz v1, :cond_cd

    .line 311
    nop

    .line 312
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 313
    .local v1, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_cd

    .line 314
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 317
    .end local v1    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_cd
    return-void

    .line 282
    .end local v0    # "info":Lcom/android/server/wm/Transition$ChangeInfo;
    :cond_ce
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transition hasn\'t started collecting."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V
    .registers 11
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 329
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_5

    return-void

    .line 330
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    .local v2, "protoLogParam0":J
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam1":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x152255b1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    aput-object v0, v6, v1

    const-string v7, "Existence Changed in transition %d: %s"

    invoke-static {v4, v5, v1, v7, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 332
    .end local v0    # "protoLogParam1":Ljava/lang/String;
    .end local v2    # "protoLogParam0":J
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 333
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    iput-boolean v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 334
    return-void
.end method

.method finishTransition()V
    .registers 15

    .line 482
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 483
    nop

    .line 484
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 483
    const-string v3, "PlayTransition"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 486
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 487
    iget v1, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1d1

    .line 492
    const/4 v1, 0x0

    .line 493
    .local v1, "activitiesWentInvisible":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_126

    .line 494
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 495
    .local v4, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_ed

    .line 496
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 503
    .local v7, "visibleAtTransitionEnd":Z
    if-nez v7, :cond_df

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v8

    if-nez v8, :cond_df

    .line 504
    const/4 v8, 0x1

    .line 505
    .local v8, "commitVisibility":Z
    iget-boolean v9, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    if-eqz v9, :cond_ac

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_ac

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_ac

    .line 506
    iget-object v9, v4, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    if-eqz v9, :cond_8d

    iget-object v9, v4, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 507
    invoke-virtual {v9}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 508
    iget-object v9, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v9, :cond_82

    .line 509
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_66
    iget-object v10, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_82

    .line 510
    iget-object v10, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v10

    if-eqz v10, :cond_7f

    .line 513
    iput-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 514
    goto :goto_82

    .line 509
    :cond_7f
    add-int/lit8 v9, v9, 0x1

    goto :goto_66

    .line 518
    .end local v9    # "j":I
    :cond_82
    :goto_82
    iget-object v9, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v9, v9, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v4, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v9, v4, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z

    .line 521
    const/4 v8, 0x0

    goto :goto_ac

    .line 522
    :cond_8d
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getDeferHidingClient()Z

    move-result v9

    if-eqz v9, :cond_ac

    .line 524
    iget-object v9, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v9, v9, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v6, v9, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 525
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v9

    const-string v10, "finishTransition"

    invoke-virtual {v9, v5, v0, v10}, Lcom/android/server/wm/TaskFragment;->startPausing(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 527
    iget-object v9, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v9, v9, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v5, v9, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 530
    :cond_ac
    :goto_ac
    if-eqz v8, :cond_df

    .line 531
    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v9, :cond_c4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam0":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x1fb6ed11

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v9, v12, v5

    const-string v13, "  Commit activity becoming invisible: %s"

    invoke-static {v10, v11, v5, v13, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 533
    .end local v9    # "protoLogParam0":Ljava/lang/String;
    :cond_c4
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    .line 534
    .local v9, "task":Lcom/android/server/wm/Task;
    if-eqz v9, :cond_db

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isVisibleRequested()Z

    move-result v10

    if-nez v10, :cond_db

    iget-object v10, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v10, :cond_db

    .line 538
    iget-object v10, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v10, v10, Lcom/android/server/wm/TransitionController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v10, v9, v5}, Lcom/android/server/wm/TaskSnapshotController;->recordTaskSnapshot(Lcom/android/server/wm/Task;Z)V

    .line 541
    :cond_db
    invoke-virtual {v4, v5, v5, v6}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    .line 543
    const/4 v1, 0x1

    .line 546
    .end local v8    # "commitVisibility":Z
    .end local v9    # "task":Lcom/android/server/wm/Task;
    :cond_df
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-boolean v8, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-eq v8, v7, :cond_ed

    .line 548
    iput-boolean v7, v4, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    .line 551
    .end local v7    # "visibleAtTransitionEnd":Z
    :cond_ed
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v7, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v7

    .line 552
    .local v7, "wt":Lcom/android/server/wm/WallpaperWindowToken;
    if-eqz v7, :cond_122

    .line 553
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 554
    .local v8, "visibleAtTransitionEnd":Z
    if-nez v8, :cond_122

    invoke-virtual {v7}, Lcom/android/server/wm/WallpaperWindowToken;->isVisibleRequested()Z

    move-result v9

    if-nez v9, :cond_122

    .line 555
    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v9, :cond_11f

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam0":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x2937b08e

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v9, v6, v5

    const-string v12, "  Commit wallpaper becoming invisible: %s"

    invoke-static {v10, v11, v5, v12, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 557
    .end local v9    # "protoLogParam0":Ljava/lang/String;
    :cond_11f
    invoke-virtual {v7, v5}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    .line 493
    .end local v4    # "ar":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "wt":Lcom/android/server/wm/WallpaperWindowToken;
    .end local v8    # "visibleAtTransitionEnd":Z
    :cond_122
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1e

    .line 564
    .end local v3    # "i":I
    :cond_126
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_127
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_145

    .line 565
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 566
    .restart local v4    # "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_142

    .line 567
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7, v4}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionFinished(Lcom/android/server/wm/ActivityRecord;)V

    .line 564
    .end local v4    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_142
    add-int/lit8 v3, v3, 0x1

    goto :goto_127

    .line 570
    .end local v3    # "i":I
    :cond_145
    if-eqz v1, :cond_150

    .line 573
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 574
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleProcessStoppingAndFinishingActivitiesIfNeeded()V

    .line 577
    :cond_150
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v3}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 579
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->legacyRestoreNavigationBarFromApp()V

    .line 581
    iget v3, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_170

    .line 583
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v7, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 584
    invoke-virtual {v3, v7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 585
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    invoke-virtual {v7, v0, v0}, Lcom/android/server/wm/InputMonitor;->setActiveRecents(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 588
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_171
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1d0

    .line 589
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 590
    .restart local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v7

    .line 591
    .local v7, "asyncRotationController":Lcom/android/server/wm/AsyncRotationController;
    if-eqz v7, :cond_192

    iget-object v8, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_192

    .line 592
    invoke-virtual {v7}, Lcom/android/server/wm/AsyncRotationController;->onTransitionFinished()V

    .line 594
    :cond_192
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v8, :cond_1c7

    .line 595
    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v8

    .line 597
    .local v8, "prevImeTarget":Lcom/android/server/wm/InsetsControlTarget;
    const/4 v9, 0x0

    .line 600
    .local v9, "newImeTarget":Lcom/android/server/wm/InsetsControlTarget;
    const/4 v10, 0x0

    .local v10, "t":I
    :goto_19c
    iget-object v11, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v10, v11, :cond_1ba

    .line 601
    iget-object v11, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    if-ne v11, v3, :cond_1b7

    .line 602
    invoke-virtual {v3, v6}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v9

    .line 603
    goto :goto_1ba

    .line 600
    :cond_1b7
    add-int/lit8 v10, v10, 0x1

    goto :goto_19c

    .line 606
    .end local v10    # "t":I
    :cond_1ba
    :goto_1ba
    iget v10, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    if-eq v10, v4, :cond_1c7

    if-ne v8, v9, :cond_1c7

    .line 610
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(Z)V

    .line 614
    .end local v8    # "prevImeTarget":Lcom/android/server/wm/InsetsControlTarget;
    .end local v9    # "newImeTarget":Lcom/android/server/wm/InsetsControlTarget;
    :cond_1c7
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceImmediately()V

    .line 615
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->handleCompleteDeferredRemoval()Z

    .line 588
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v7    # "asyncRotationController":Lcom/android/server/wm/AsyncRotationController;
    add-int/lit8 v0, v0, 0x1

    goto :goto_171

    .line 617
    .end local v0    # "i":I
    :cond_1d0
    return-void

    .line 488
    .end local v1    # "activitiesWentInvisible":Z
    :cond_1d1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t finish a non-playing transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getFlags()I
    .registers 2

    .line 248
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    return v0
.end method

.method getLegacyIsReady()Z
    .registers 3

    .line 1484
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    if-nez v0, :cond_c

    :cond_7
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-ltz v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method getRemoteTransition()Landroid/window/RemoteTransition;
    .registers 2

    .line 637
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method getSyncId()I
    .registers 2

    .line 243
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    return v0
.end method

.method getTransientLaunchRestoreTarget(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;
    .registers 5
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 223
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 224
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 225
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    return-object v1

    .line 223
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 228
    .end local v0    # "i":I
    :cond_29
    return-object v1
.end method

.method isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method legacyRestoreNavigationBarFromApp()V
    .registers 11

    .line 904
    iget-boolean v0, p0, Lcom/android/server/wm/Transition;->mNavBarAttachedToApp:Z

    if-nez v0, :cond_5

    return-void

    .line 905
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mNavBarAttachedToApp:Z

    .line 907
    iget v1, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    .line 908
    const-string v1, "Transition"

    const-string v2, "Reparented navigation bar without a valid display"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iput v0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 912
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    const/4 v2, 0x1

    if-eqz v1, :cond_26

    .line 913
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget v3, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    invoke-interface {v1, v3, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNavigationBarLumaSamplingEnabled(IZ)V

    .line 916
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v3, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 917
    invoke-virtual {v1, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 918
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 919
    .local v3, "navWindow":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_3d

    return-void

    .line 920
    :cond_3d
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowState;->setSurfaceTranslationY(I)V

    .line 922
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 923
    .local v0, "navToken":Lcom/android/server/wm/WindowToken;
    if-nez v0, :cond_45

    return-void

    .line 924
    :cond_45
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    .line 925
    .local v4, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 926
    .local v5, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getLastLayer()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 928
    const/4 v6, 0x0

    .line 931
    .local v6, "animate":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5a
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_7f

    .line 932
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 933
    .local v8, "task":Lcom/android/server/wm/Task;
    if-eqz v8, :cond_7c

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isActivityTypeHomeOrRecents()Z

    move-result v9

    if-nez v9, :cond_77

    goto :goto_7c

    .line 934
    :cond_77
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isVisibleRequested()Z

    move-result v6

    .line 935
    goto :goto_7f

    .line 931
    .end local v8    # "task":Lcom/android/server/wm/Task;
    :cond_7c
    :goto_7c
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    .line 938
    .end local v7    # "i":I
    :cond_7f
    :goto_7f
    if-eqz v6, :cond_8a

    .line 939
    new-instance v7, Lcom/android/server/wm/NavBarFadeAnimationController;

    invoke-direct {v7, v1}, Lcom/android/server/wm/NavBarFadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 941
    .local v7, "controller":Lcom/android/server/wm/NavBarFadeAnimationController;
    invoke-virtual {v7, v2}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeWindowToken(Z)V

    .line 942
    .end local v7    # "controller":Lcom/android/server/wm/NavBarFadeAnimationController;
    goto :goto_95

    .line 944
    :cond_8a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 946
    :goto_95
    return-void
.end method

.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 14
    .param p1, "syncId"    # I
    .param p2, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 642
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-eq p1, v0, :cond_29

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected Sync ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Transition"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void

    .line 646
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 647
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_40
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 654
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget v2, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v2, v3, :cond_61

    .line 655
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->abort(Lcom/android/server/wm/Transition;)V

    .line 656
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 657
    iput v5, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 658
    iput-object v4, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 659
    return-void

    .line 662
    :cond_61
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_69
    if-ltz v2, :cond_8b

    .line 663
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 664
    .local v6, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-static {v6}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-eqz v7, :cond_88

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    if-eqz v7, :cond_88

    .line 665
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v7}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 662
    .end local v6    # "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_88
    add-int/lit8 v2, v2, -0x1

    goto :goto_69

    .line 669
    .end local v2    # "i":I
    :cond_8b
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 670
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/TransitionController;->moveToPlaying(Lcom/android/server/wm/Transition;)V

    .line 672
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 673
    iget v2, p0, Lcom/android/server/wm/Transition;->mFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 677
    :cond_9f
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-static {v2, v6}, Lcom/android/server/wm/Transition;->calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 678
    iget v6, p0, Lcom/android/server/wm/Transition;->mType:I

    iget v7, p0, Lcom/android/server/wm/Transition;->mFlags:I

    iget-object v8, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-static {v6, v7, v2, v8}, Lcom/android/server/wm/Transition;->calculateTransitionInfo(IILjava/util/ArrayList;Landroid/util/ArrayMap;)Landroid/window/TransitionInfo;

    move-result-object v2

    .line 679
    .local v2, "info":Landroid/window/TransitionInfo;
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz v6, :cond_ba

    .line 680
    invoke-virtual {v2, v6}, Landroid/window/TransitionInfo;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    .line 684
    :cond_ba
    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/Transition;->handleLegacyRecentsStartBehavior(Lcom/android/server/wm/DisplayContent;Landroid/window/TransitionInfo;)V

    .line 686
    iget v6, p0, Lcom/android/server/wm/Transition;->mType:I

    iget v7, p0, Lcom/android/server/wm/Transition;->mFlags:I

    invoke-direct {p0, v0, v6, v7}, Lcom/android/server/wm/Transition;->handleNonAppWindowsInTransition(Lcom/android/server/wm/DisplayContent;II)V

    .line 688
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->reportStartReasonsToLogger()V

    .line 691
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v6}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 700
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v3

    .local v6, "i":I
    :goto_d3
    if-ltz v6, :cond_112

    .line 701
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 702
    .local v7, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_10f

    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v8, :cond_e8

    goto :goto_10f

    .line 703
    :cond_e8
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 717
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    .local v8, "p":Lcom/android/server/wm/WindowContainer;
    :goto_f3
    if-eqz v8, :cond_10f

    iget-object v9, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10f

    .line 719
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v9

    if-eqz v9, :cond_10a

    .line 720
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 718
    :cond_10a
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    goto :goto_f3

    .line 700
    .end local v7    # "ar":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "p":Lcom/android/server/wm/WindowContainer;
    :cond_10f
    :goto_10f
    add-int/lit8 v6, v6, -0x1

    goto :goto_d3

    .line 728
    .end local v6    # "i":I
    :cond_112
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v3

    .restart local v6    # "i":I
    :goto_119
    if-ltz v6, :cond_13c

    .line 729
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    .line 730
    .local v7, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v8

    if-eqz v8, :cond_139

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-nez v8, :cond_130

    goto :goto_139

    .line 731
    :cond_130
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 728
    .end local v7    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_139
    :goto_139
    add-int/lit8 v6, v6, -0x1

    goto :goto_119

    .line 737
    .end local v6    # "i":I
    :cond_13c
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-nez v6, :cond_17c

    .line 738
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v3

    .restart local v6    # "i":I
    :goto_147
    if-ltz v6, :cond_17c

    .line 739
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 740
    .local v7, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_179

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v8

    if-nez v8, :cond_179

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_179

    .line 741
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isVisibleRequested()Z

    move-result v8

    if-eqz v8, :cond_16e

    goto :goto_179

    .line 742
    :cond_16e
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v8, v8, Lcom/android/server/wm/TransitionController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 743
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    .line 742
    invoke-virtual {v8, v9, v1}, Lcom/android/server/wm/TaskSnapshotController;->recordTaskSnapshot(Lcom/android/server/wm/Task;Z)V

    .line 738
    .end local v7    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_179
    :goto_179
    add-int/lit8 v6, v6, -0x1

    goto :goto_147

    .line 749
    .end local v6    # "i":I
    :cond_17c
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v6

    .line 750
    .local v6, "controller":Lcom/android/server/wm/AsyncRotationController;
    if-eqz v6, :cond_18d

    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18d

    .line 751
    invoke-virtual {v6, p2}, Lcom/android/server/wm/AsyncRotationController;->setupStartTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 753
    :cond_18d
    iput-object p2, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 754
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v7, v7, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v7}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceControl$Transaction;

    iput-object v7, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 755
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/wm/Transition;->buildFinishTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 756
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v7

    if-eqz v7, :cond_1eb

    .line 757
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7, v2}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionStarting(Landroid/window/TransitionInfo;)V

    .line 759
    :try_start_1b3
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v7, :cond_1c9

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x427958e9

    const-string v10, "Calling onTransitionReady: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v1

    invoke-static {v8, v9, v1, v10, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 761
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    :cond_1c9
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v1, p0, v2, p2, v3}, Landroid/window/ITransitionPlayer;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 763
    const-wide/16 v7, 0x20

    invoke-static {v7, v8}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_1ea

    .line 764
    const-string v1, "PlayTransition"

    .line 765
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 764
    invoke-static {v7, v8, v1, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V
    :try_end_1e5
    .catch Landroid/os/RemoteException; {:try_start_1b3 .. :try_end_1e5} :catch_1e6

    goto :goto_1ea

    .line 767
    :catch_1e6
    move-exception v1

    .line 770
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->cleanUpOnFailure()V

    .line 771
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1ea
    :goto_1ea
    goto :goto_1ee

    .line 774
    :cond_1eb
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->cleanUpOnFailure()V

    .line 776
    :goto_1ee
    iput v5, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 777
    iput-object v4, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 778
    return-void
.end method

.method setAllReady()V
    .registers 2

    .line 399
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_5

    return-void

    .line 400
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyTracker;->setAllReady()V

    .line 401
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 402
    return-void
.end method

.method setCanPipOnFinish(Z)V
    .registers 2
    .param p1, "canPipOnFinish"    # Z

    .line 474
    iput-boolean p1, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    .line 475
    return-void
.end method

.method setKnownConfigChanges(Lcom/android/server/wm/WindowContainer;I)V
    .registers 4
    .param p2, "changes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;I)V"
        }
    .end annotation

    .line 342
    .local p1, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 343
    .local v0, "changeInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    if-eqz v0, :cond_c

    .line 344
    iput p2, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    .line 346
    :cond_c
    return-void
.end method

.method setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V
    .registers 5
    .param p1, "options"    # Landroid/window/TransitionInfo$AnimationOptions;
    .param p2, "startCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "finishCallback"    # Landroid/os/IRemoteCallback;

    .line 363
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_5

    return-void

    .line 364
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 365
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v0}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 366
    iput-object p2, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    .line 367
    iput-object p3, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    .line 368
    return-void
.end method

.method setReady(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 4
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "ready"    # Z

    .line 381
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_5

    return-void

    .line 382
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Transition$ReadyTracker;->setReadyFrom(Lcom/android/server/wm/WindowContainer;Z)V

    .line 383
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 384
    return-void
.end method

.method setRemoteTransition(Landroid/window/RemoteTransition;)V
    .registers 2
    .param p1, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 633
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 634
    return-void
.end method

.method setSeamlessRotation(Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 237
    .local v0, "info":Lcom/android/server/wm/Transition$ChangeInfo;
    if-nez v0, :cond_b

    return-void

    .line 238
    :cond_b
    iget v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 239
    return-void
.end method

.method setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .registers 11
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "restoreBelow"    # Lcom/android/server/wm/Task;

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 210
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 212
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v0, v0

    .local v0, "protoLogParam0":J
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x2e76c55e

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const-string v7, "Transition %d: Set %s as transient-launch"

    invoke-static {v3, v4, v6, v7, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 215
    .end local v0    # "protoLogParam0":J
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    :cond_32
    return-void
.end method

.method start()V
    .registers 9

    .line 266
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    if-ltz v0, :cond_41

    .line 268
    const/4 v1, 0x1

    if-lt v0, v1, :cond_21

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition already started: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Transition"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_21
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 272
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_3d

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    .local v2, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x3b6c688c

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "Starting Transition %d"

    invoke-static {v0, v4, v1, v6, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 274
    .end local v2    # "protoLogParam0":J
    :cond_3d
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 275
    return-void

    .line 267
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t start Transition which isn\'t collecting."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startCollecting(J)V
    .registers 5
    .param p1, "timeoutMs"    # J

    .line 253
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 257
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const-string v1, "Transition"

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;JLjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 258
    return-void

    .line 254
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to re-use a transition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1003
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TransitionRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Transition;->mType:I

    invoke-static {v2}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Transition;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
