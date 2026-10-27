.class Landroid/app/ActivityTransitionState;
.super Ljava/lang/Object;
.source "ActivityTransitionState.java"


# static fields
.field private static final greylist-max-o EXITING_MAPPED_FROM:Ljava/lang/String; = "android:exitingMappedFrom"

.field private static final greylist-max-o EXITING_MAPPED_TO:Ljava/lang/String; = "android:exitingMappedTo"

.field private static final blacklist PENDING_EXIT_SHARED_ELEMENTS:Ljava/lang/String; = "android:pendingExitSharedElements"


# instance fields
.field private greylist-max-o mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

.field private blacklist mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

.field private greylist-max-o mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

.field private greylist-max-o mExitTransitionCoordinators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/ExitTransitionCoordinator;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mExitTransitionCoordinatorsKey:I

.field private greylist-max-o mExitingFrom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExitingTo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExitingToView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHasExited:Z

.field private greylist-max-o mIsEnterPostponed:Z

.field private greylist-max-o mIsEnterTriggered:Z

.field private blacklist mPendingExitNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method public static synthetic blacklist $r8$lambda$v-gJDskuJB_atXUKetS9hEMmyUI(Landroid/app/ActivityTransitionState;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionState;->lambda$startExitBackTransition$0(Landroid/app/Activity;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnterTransitionCoordinator(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEnterTransitionCoordinator(Landroid/app/ActivityTransitionState;Landroid/app/EnterTransitionCoordinator;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPendingExitNames(Landroid/app/ActivityTransitionState;)Ljava/util/ArrayList;
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrestoreExitedViews(Landroid/app/ActivityTransitionState;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrestoreReenteringViews(Landroid/app/ActivityTransitionState;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreReenteringViews()V

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    .line 112
    return-void
.end method

.method private blacklist getPendingExitNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 151
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    if-nez v0, :cond_18

    .line 153
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getPendingExitSharedElementNames()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    .line 155
    :cond_18
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method private synthetic blacklist lambda$startExitBackTransition$0(Landroid/app/Activity;)V
    .registers 3

    .line 351
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_9

    .line 352
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0, p1}, Landroid/app/ExitTransitionCoordinator;->startExit(Landroid/app/Activity;)V

    .line 354
    :cond_9
    return-void
.end method

.method private greylist-max-o restoreExitedViews()V
    .registers 2

    .line 305
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_c

    .line 306
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    .line 309
    :cond_c
    return-void
.end method

.method private greylist-max-o restoreReenteringViews()V
    .registers 2

    .line 312
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 313
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isCrossTask()Z

    move-result v0

    if-nez v0, :cond_20

    .line 314
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->forceViewsToAppear()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 316
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 317
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    .line 319
    :cond_20
    return-void
.end method

.method private greylist-max-o startEnter()V
    .registers 6

    .line 237
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 238
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 239
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/EnterTransitionCoordinator;->viewInstancesReady(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2a

    .line 242
    :cond_19
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/app/EnterTransitionCoordinator;->namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2a

    .line 245
    :cond_23
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0, v1, v1}, Landroid/app/EnterTransitionCoordinator;->namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 246
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    .line 249
    :goto_2a
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 250
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 251
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    .line 252
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 253
    return-void
.end method


# virtual methods
.method public greylist-max-o addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I
    .registers 5

    .line 115
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    .line 118
    :cond_b
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 120
    iget-object p1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_18
    if-ltz p1, :cond_31

    .line 121
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    .line 122
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 123
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 124
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 120
    :cond_2e
    add-int/lit8 p1, p1, -0x1

    goto :goto_18

    .line 127
    :cond_31
    iget p1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    .line 128
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 129
    return p1
.end method

.method public greylist-max-o clear()V
    .registers 2

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    .line 295
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 296
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 297
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    .line 298
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    .line 299
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 300
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 301
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    .line 302
    return-void
.end method

.method public greylist-max-o enterReady(Landroid/app/Activity;)V
    .registers 10

    .line 196
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-eqz v0, :cond_68

    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    if-eqz v0, :cond_9

    goto :goto_68

    .line 199
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    .line 201
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 202
    invoke-virtual {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getSharedElementNames()Ljava/util/ArrayList;

    move-result-object v5

    .line 203
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v4

    .line 204
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->isReturning()Z

    move-result v1

    .line 205
    if-eqz v1, :cond_31

    .line 206
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    .line 207
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_31
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    .line 210
    new-instance v2, Landroid/app/EnterTransitionCoordinator;

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 211
    invoke-virtual {v0}, Landroid/app/ActivityOptions$SceneTransitionInfo;->isReturning()Z

    move-result v6

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 212
    invoke-virtual {v0}, Landroid/app/ActivityOptions$SceneTransitionInfo;->isCrossTask()Z

    move-result v7

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/app/EnterTransitionCoordinator;-><init>(Landroid/app/Activity;Landroid/os/ResultReceiver;Ljava/util/ArrayList;ZZ)V

    iput-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 213
    iget-object p1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {p1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->isCrossTask()Z

    move-result p1

    if-eqz p1, :cond_60

    if-eqz v5, :cond_60

    .line 214
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 215
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 218
    :cond_60
    iget-boolean p1, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    if-nez p1, :cond_67

    .line 219
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->startEnter()V

    .line 221
    :cond_67
    return-void

    .line 197
    :cond_68
    :goto_68
    return-void
.end method

.method public greylist-max-o isTransitionRunning()Z
    .registers 3

    .line 365
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 366
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 367
    return v1

    .line 370
    :cond_e
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_1b

    .line 371
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 372
    return v1

    .line 375
    :cond_1b
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_28

    .line 376
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 377
    return v1

    .line 380
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onResume(Landroid/app/Activity;)V
    .registers 5

    .line 271
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/app/Activity;->isTopOfTask()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_18

    .line 275
    :cond_b
    iget-object p1, p1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/app/ActivityTransitionState$1;

    invoke-direct {v0, p0}, Landroid/app/ActivityTransitionState$1;-><init>(Landroid/app/ActivityTransitionState;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1e

    .line 272
    :cond_18
    :goto_18
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    .line 273
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreReenteringViews()V

    .line 291
    :goto_1e
    return-void
.end method

.method public blacklist onStop(Landroid/app/Activity;)V
    .registers 4

    .line 256
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    .line 257
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 258
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    .line 259
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->stop()V

    .line 260
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 262
    :cond_12
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_1d

    .line 263
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0, p1}, Landroid/app/ExitTransitionCoordinator;->stop(Landroid/app/Activity;)V

    .line 264
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    .line 266
    :cond_1d
    return-void
.end method

.method public greylist-max-o postponeEnterTransition()V
    .registers 2

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    .line 225
    return-void
.end method

.method public greylist-max-o readState(Landroid/os/Bundle;)V
    .registers 3

    .line 133
    if-eqz p1, :cond_2a

    .line 134
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 135
    :cond_e
    const-string v0, "android:pendingExitSharedElements"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    .line 137
    :cond_16
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-nez v0, :cond_2a

    .line 138
    const-string v0, "android:exitingMappedFrom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 139
    const-string v0, "android:exitingMappedTo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 142
    :cond_2a
    return-void
.end method

.method public greylist-max-o saveState(Landroid/os/Bundle;)V
    .registers 4

    .line 159
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_b

    .line 161
    const-string v1, "android:pendingExitSharedElements"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 163
    :cond_b
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 164
    const-string v0, "android:exitingMappedFrom"

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 165
    const-string v0, "android:exitingMappedTo"

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 167
    :cond_1d
    return-void
.end method

.method public blacklist setEnterSceneTransitionInfo(Landroid/app/Activity;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    .registers 5

    .line 170
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 171
    if-nez v0, :cond_7

    .line 172
    return-void

    .line 175
    :cond_7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 176
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_46

    if-eqz p2, :cond_46

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-nez v0, :cond_46

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-nez v0, :cond_46

    .line 179
    iput-object p2, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 180
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    .line 181
    iget-object p2, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {p2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->isReturning()Z

    move-result p2

    if-eqz p2, :cond_46

    .line 182
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    .line 183
    iget-object p2, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {p2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getResultCode()I

    move-result p2

    .line 184
    if-eqz p2, :cond_46

    .line 185
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v0}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getResultData()Landroid/content/Intent;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_43

    .line 187
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 189
    :cond_43
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->onActivityReenter(ILandroid/content/Intent;)V

    .line 193
    :cond_46
    return-void
.end method

.method public greylist-max-o startExitBackTransition(Landroid/app/Activity;)Z
    .registers 14

    .line 322
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    move-result-object v4

    .line 323
    const/4 v0, 0x0

    if-eqz v4, :cond_6d

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v1, :cond_c

    goto :goto_6d

    .line 326
    :cond_c
    iget-boolean v1, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    const/4 v8, 0x1

    if-nez v1, :cond_6c

    .line 327
    iput-boolean v8, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    .line 328
    nop

    .line 329
    nop

    .line 330
    nop

    .line 331
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    const/4 v2, 0x0

    if-eqz v1, :cond_3a

    .line 332
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getEnterViewsTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 333
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v1}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 334
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v3}, Landroid/app/EnterTransitionCoordinator;->cancelEnter()Z

    move-result v3

    .line 335
    iput-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 336
    if-eqz v0, :cond_36

    if-eqz v1, :cond_36

    .line 337
    invoke-virtual {v0, v1}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    .line 341
    :cond_36
    move-object v10, v0

    move-object v11, v1

    move v9, v3

    goto :goto_3d

    .line 331
    :cond_3a
    move v9, v0

    move-object v10, v2

    move-object v11, v10

    .line 341
    :goto_3d
    new-instance v0, Landroid/app/ExitTransitionCoordinator;

    new-instance v1, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;

    invoke-direct {v1, p1}, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;-><init>(Landroid/app/Activity;)V

    .line 343
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p1, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    .line 345
    if-eqz v10, :cond_59

    if-eqz v11, :cond_59

    .line 346
    invoke-virtual {v10, v11}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    .line 348
    :cond_59
    if-eqz v9, :cond_67

    if-eqz v11, :cond_67

    .line 349
    nop

    .line 350
    new-instance v0, Landroid/app/ActivityTransitionState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/app/ActivityTransitionState$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityTransitionState;Landroid/app/Activity;)V

    invoke-static {v11, v0}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 355
    goto :goto_6c

    .line 356
    :cond_67
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0, p1}, Landroid/app/ExitTransitionCoordinator;->startExit(Landroid/app/Activity;)V

    .line 359
    :cond_6c
    :goto_6c
    return v8

    .line 324
    :cond_6d
    :goto_6d
    return v0
.end method

.method public greylist-max-o startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 384
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 386
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/view/Window;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_65

    iget-object p1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    if-nez p1, :cond_17

    goto :goto_65

    .line 390
    :cond_17
    new-instance p1, Landroid/app/ActivityOptions;

    invoke-direct {p1, p2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 391
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object p1

    .line 392
    if-eqz p1, :cond_64

    .line 393
    invoke-virtual {p1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getExitCoordinatorKey()I

    move-result p1

    .line 394
    iget-object p2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    .line 395
    if-ltz p1, :cond_64

    .line 396
    iget-object p2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ExitTransitionCoordinator;

    iput-object p2, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    .line 397
    iget-object p2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 398
    iget-object p1, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz p1, :cond_64

    .line 399
    iget-object p1, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {p1}, Landroid/app/ExitTransitionCoordinator;->getAcceptedNames()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 400
    iget-object p1, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {p1}, Landroid/app/ExitTransitionCoordinator;->getMappedNames()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 401
    iget-object p1, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {p1}, Landroid/app/ExitTransitionCoordinator;->copyMappedViews()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    .line 402
    iget-object p1, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {p1}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    .line 406
    :cond_64
    return-void

    .line 388
    :cond_65
    :goto_65
    return-void
.end method

.method public greylist-max-o startPostponedEnterTransition()V
    .registers 2

    .line 228
    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    if-eqz v0, :cond_e

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    .line 230
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_e

    .line 231
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->startEnter()V

    .line 234
    :cond_e
    return-void
.end method
