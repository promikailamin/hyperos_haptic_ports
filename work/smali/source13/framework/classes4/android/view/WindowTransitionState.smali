.class Landroid/view/WindowTransitionState;
.super Ljava/lang/Object;
.source "WindowTransitionState.java"


# static fields
.field private static final blacklist EXITING_MAPPED_FROM:Ljava/lang/String; = "android:exitingMappedFrom"

.field private static final blacklist EXITING_MAPPED_TO:Ljava/lang/String; = "android:exitingMappedTo"

.field private static final blacklist PENDING_EXIT_SHARED_ELEMENTS:Ljava/lang/String; = "android:pendingExitSharedElements"


# instance fields
.field private blacklist mCalledExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

.field private blacklist mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

.field private blacklist mEnterWindowOptions:Landroid/view/WindowOptions;

.field private blacklist mExitTransitionCoordinators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/WindowExitTransitionCoordinator;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mExitTransitionCoordinatorsKey:I

.field private blacklist mExitingFrom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExitingTo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExitingToView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasExited:Z

.field private blacklist mIsEnterPostponed:Z

.field private blacklist mIsEnterTriggered:Z

.field private blacklist mPendingExitNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReturnExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/WindowTransitionState;->mExitTransitionCoordinatorsKey:I

    .line 91
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

    .line 128
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    if-eqz v0, :cond_e

    .line 129
    invoke-virtual {v0}, Landroid/view/WindowEnterTransitionCoordinator;->getPendingExitSharedElementNames()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    .line 131
    :cond_e
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method private blacklist restoreExitedViews()V
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mCalledExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

    if-eqz v0, :cond_a

    .line 237
    invoke-virtual {v0}, Landroid/view/WindowExitTransitionCoordinator;->resetViews()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowTransitionState;->mCalledExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

    .line 240
    :cond_a
    return-void
.end method

.method private blacklist startEnter()V
    .registers 6

    .line 194
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/view/WindowEnterTransitionCoordinator;->isReturning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 195
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mExitingToView:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 196
    iget-object v2, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    iget-object v3, p0, Landroid/view/WindowTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/view/WindowTransitionState;->mExitingTo:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/WindowEnterTransitionCoordinator;->viewInstancesReady(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_28

    .line 199
    :cond_17
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    iget-object v2, p0, Landroid/view/WindowTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/view/WindowTransitionState;->mExitingTo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/view/WindowEnterTransitionCoordinator;->namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_28

    .line 202
    :cond_21
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-virtual {v0, v1, v1}, Landroid/view/WindowEnterTransitionCoordinator;->namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 203
    iput-object v1, p0, Landroid/view/WindowTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    .line 206
    :goto_28
    iput-object v1, p0, Landroid/view/WindowTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 207
    iput-object v1, p0, Landroid/view/WindowTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 208
    iput-object v1, p0, Landroid/view/WindowTransitionState;->mExitingToView:Ljava/util/ArrayList;

    .line 209
    iput-object v1, p0, Landroid/view/WindowTransitionState;->mEnterWindowOptions:Landroid/view/WindowOptions;

    .line 210
    return-void
.end method


# virtual methods
.method public blacklist addExitTransitionCoordinator(Landroid/view/WindowExitTransitionCoordinator;)I
    .registers 6
    .param p1, "exitTransitionCoordinator"    # Landroid/view/WindowExitTransitionCoordinator;

    .line 94
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/WindowTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    .line 97
    :cond_b
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 99
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/WindowExitTransitionCoordinator;>;"
    iget-object v1, p0, Landroid/view/WindowTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_18
    if-ltz v1, :cond_31

    .line 100
    iget-object v2, p0, Landroid/view/WindowTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    .line 101
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 102
    .local v2, "oldRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/WindowExitTransitionCoordinator;>;"
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 103
    iget-object v3, p0, Landroid/view/WindowTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 99
    .end local v2    # "oldRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/WindowExitTransitionCoordinator;>;"
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 106
    .end local v1    # "i":I
    :cond_31
    iget v1, p0, Landroid/view/WindowTransitionState;->mExitTransitionCoordinatorsKey:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/view/WindowTransitionState;->mExitTransitionCoordinatorsKey:I

    .line 107
    .local v1, "newKey":I
    iget-object v2, p0, Landroid/view/WindowTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 108
    return v1
.end method

.method public blacklist clear()V
    .registers 2

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    .line 226
    iput-object v0, p0, Landroid/view/WindowTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 227
    iput-object v0, p0, Landroid/view/WindowTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 228
    iput-object v0, p0, Landroid/view/WindowTransitionState;->mExitingToView:Ljava/util/ArrayList;

    .line 229
    iput-object v0, p0, Landroid/view/WindowTransitionState;->mCalledExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

    .line 230
    iput-object v0, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    .line 231
    iput-object v0, p0, Landroid/view/WindowTransitionState;->mEnterWindowOptions:Landroid/view/WindowOptions;

    .line 232
    iput-object v0, p0, Landroid/view/WindowTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    .line 233
    return-void
.end method

.method public blacklist enterReady(Landroid/view/ViewRootImpl;)V
    .registers 7
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 160
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mEnterWindowOptions:Landroid/view/WindowOptions;

    if-eqz v0, :cond_40

    iget-boolean v1, p0, Landroid/view/WindowTransitionState;->mIsEnterTriggered:Z

    if-eqz v1, :cond_9

    goto :goto_40

    .line 163
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowTransitionState;->mIsEnterTriggered:Z

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/WindowTransitionState;->mHasExited:Z

    .line 165
    invoke-virtual {v0}, Landroid/view/WindowOptions;->getSharedElementNames()Ljava/util/ArrayList;

    move-result-object v0

    .line 166
    .local v0, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/view/WindowTransitionState;->mEnterWindowOptions:Landroid/view/WindowOptions;

    invoke-virtual {v2}, Landroid/view/WindowOptions;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v2

    .line 167
    .local v2, "resultReceiver":Landroid/os/ResultReceiver;
    iget-object v3, p0, Landroid/view/WindowTransitionState;->mEnterWindowOptions:Landroid/view/WindowOptions;

    invoke-virtual {v3}, Landroid/view/WindowOptions;->isReturning()Z

    move-result v3

    .line 168
    .local v3, "isReturning":Z
    if-eqz v3, :cond_2b

    .line 169
    invoke-direct {p0}, Landroid/view/WindowTransitionState;->restoreExitedViews()V

    .line 170
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :cond_2b
    new-instance v1, Landroid/view/WindowEnterTransitionCoordinator;

    iget-object v4, p0, Landroid/view/WindowTransitionState;->mEnterWindowOptions:Landroid/view/WindowOptions;

    .line 173
    invoke-virtual {v4}, Landroid/view/WindowOptions;->isReturning()Z

    move-result v4

    invoke-direct {v1, p1, v2, v0, v4}, Landroid/view/WindowEnterTransitionCoordinator;-><init>(Landroid/view/ViewRootImpl;Landroid/os/ResultReceiver;Ljava/util/ArrayList;Z)V

    iput-object v1, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    .line 175
    iget-boolean v1, p0, Landroid/view/WindowTransitionState;->mIsEnterPostponed:Z

    if-nez v1, :cond_3f

    .line 176
    invoke-direct {p0}, Landroid/view/WindowTransitionState;->startEnter()V

    .line 178
    :cond_3f
    return-void

    .line 161
    .end local v0    # "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local v3    # "isReturning":Z
    :cond_40
    :goto_40
    return-void
.end method

.method public blacklist isTransitionRunning()Z
    .registers 3

    .line 286
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 287
    invoke-virtual {v0}, Landroid/view/WindowEnterTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 288
    return v1

    .line 291
    :cond_c
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mCalledExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

    if-eqz v0, :cond_17

    .line 292
    invoke-virtual {v0}, Landroid/view/WindowExitTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 293
    return v1

    .line 296
    :cond_17
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mReturnExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

    if-eqz v0, :cond_22

    .line 297
    invoke-virtual {v0}, Landroid/view/WindowExitTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 298
    return v1

    .line 301
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method synthetic blacklist lambda$startExitBackTransition$0$android-view-WindowTransitionState(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 272
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mReturnExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

    if-eqz v0, :cond_7

    .line 273
    invoke-virtual {v0, p1}, Landroid/view/WindowExitTransitionCoordinator;->startExit(Landroid/view/ViewRootImpl;)V

    .line 275
    :cond_7
    return-void
.end method

.method public blacklist onStop()V
    .registers 3

    .line 213
    invoke-direct {p0}, Landroid/view/WindowTransitionState;->restoreExitedViews()V

    .line 214
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 215
    invoke-virtual {v0}, Landroid/view/WindowEnterTransitionCoordinator;->stop()V

    .line 216
    iput-object v1, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    .line 218
    :cond_d
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mReturnExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

    if-eqz v0, :cond_16

    .line 219
    invoke-virtual {v0}, Landroid/view/WindowExitTransitionCoordinator;->stop()V

    .line 220
    iput-object v1, p0, Landroid/view/WindowTransitionState;->mReturnExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

    .line 222
    :cond_16
    return-void
.end method

.method public blacklist postponeEnterTransition()V
    .registers 2

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowTransitionState;->mIsEnterPostponed:Z

    .line 182
    return-void
.end method

.method public blacklist readState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 112
    if-eqz p1, :cond_28

    .line 113
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/WindowEnterTransitionCoordinator;->isReturning()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 114
    :cond_c
    const-string v0, "android:pendingExitSharedElements"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    .line 116
    :cond_14
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    if-nez v0, :cond_28

    .line 117
    const-string v0, "android:exitingMappedFrom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 118
    const-string v0, "android:exitingMappedTo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 121
    :cond_28
    return-void
.end method

.method public blacklist saveState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 135
    invoke-direct {p0}, Landroid/view/WindowTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    move-result-object v0

    .line 136
    .local v0, "pendingExitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_b

    .line 137
    const-string v1, "android:pendingExitSharedElements"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 139
    :cond_b
    iget-object v1, p0, Landroid/view/WindowTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    .line 140
    const-string v2, "android:exitingMappedFrom"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 141
    iget-object v1, p0, Landroid/view/WindowTransitionState;->mExitingTo:Ljava/util/ArrayList;

    const-string v2, "android:exitingMappedTo"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 143
    :cond_1b
    return-void
.end method

.method public blacklist setEnterWindowOptions(Landroid/view/WindowOptions;)V
    .registers 4
    .param p1, "options"    # Landroid/view/WindowOptions;

    .line 147
    if-eqz p1, :cond_1f

    iget-object v0, p0, Landroid/view/WindowTransitionState;->mEnterWindowOptions:Landroid/view/WindowOptions;

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    if-nez v0, :cond_1f

    .line 149
    invoke-virtual {p1}, Landroid/view/WindowOptions;->getAnimationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 150
    iput-object p1, p0, Landroid/view/WindowTransitionState;->mEnterWindowOptions:Landroid/view/WindowOptions;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowTransitionState;->mIsEnterTriggered:Z

    .line 152
    invoke-virtual {p1}, Landroid/view/WindowOptions;->isReturning()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 153
    invoke-direct {p0}, Landroid/view/WindowTransitionState;->restoreExitedViews()V

    .line 157
    :cond_1f
    return-void
.end method

.method public blacklist startExitBackTransition(Landroid/view/ViewRootImpl;)Z
    .registers 16
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 243
    invoke-direct {p0}, Landroid/view/WindowTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    move-result-object v8

    .line 244
    .local v8, "pendingExitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_6a

    iget-object v0, p0, Landroid/view/WindowTransitionState;->mCalledExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

    if-eqz v0, :cond_c

    goto/16 :goto_6a

    .line 247
    :cond_c
    iget-boolean v0, p0, Landroid/view/WindowTransitionState;->mHasExited:Z

    const/4 v9, 0x1

    if-nez v0, :cond_69

    .line 248
    iput-boolean v9, p0, Landroid/view/WindowTransitionState;->mHasExited:Z

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "enterViewsTransition":Landroid/transition/Transition;
    const/4 v1, 0x0

    .line 251
    .local v1, "decor":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 252
    .local v2, "delayExitBack":Z
    iget-object v3, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    if-eqz v3, :cond_38

    .line 253
    invoke-virtual {v3}, Landroid/view/WindowEnterTransitionCoordinator;->getEnterViewsTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 254
    iget-object v3, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-virtual {v3}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 255
    iget-object v3, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-virtual {v3}, Landroid/view/WindowEnterTransitionCoordinator;->cancelEnter()Z

    move-result v2

    .line 256
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    .line 257
    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    .line 258
    invoke-virtual {v0, v1}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    .line 262
    :cond_34
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    goto :goto_3b

    .line 252
    :cond_38
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    .line 262
    .end local v0    # "enterViewsTransition":Landroid/transition/Transition;
    .end local v1    # "decor":Landroid/view/ViewGroup;
    .end local v2    # "delayExitBack":Z
    .local v10, "enterViewsTransition":Landroid/transition/Transition;
    .local v11, "decor":Landroid/view/ViewGroup;
    .local v12, "delayExitBack":Z
    :goto_3b
    new-instance v13, Landroid/view/WindowExitTransitionCoordinator;

    new-instance v1, Landroid/view/WindowExitTransitionCoordinator$WindowExitTransitionCallbacks;

    invoke-direct {v1, p1}, Landroid/view/WindowExitTransitionCoordinator$WindowExitTransitionCallbacks;-><init>(Landroid/view/ViewRootImpl;)V

    iget-object v3, p1, Landroid/view/ViewRootImpl;->mEnterTransitionListener:Landroid/view/WindowSharedElementCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v13

    move-object v2, p1

    move-object v4, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowExitTransitionCoordinator;-><init>(Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/view/ViewRootImpl;Landroid/view/WindowSharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    iput-object v13, p0, Landroid/view/WindowTransitionState;->mReturnExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

    .line 266
    if-eqz v10, :cond_56

    if-eqz v11, :cond_56

    .line 267
    invoke-virtual {v10, v11}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    .line 269
    :cond_56
    if-eqz v12, :cond_64

    if-eqz v11, :cond_64

    .line 270
    move-object v0, v11

    .line 271
    .local v0, "finalDecor":Landroid/view/ViewGroup;
    new-instance v1, Landroid/view/WindowTransitionState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/WindowTransitionState$$ExternalSyntheticLambda0;-><init>(Landroid/view/WindowTransitionState;Landroid/view/ViewRootImpl;)V

    invoke-static {v11, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 276
    .end local v0    # "finalDecor":Landroid/view/ViewGroup;
    goto :goto_69

    .line 277
    :cond_64
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mReturnExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

    invoke-virtual {v0, p1}, Landroid/view/WindowExitTransitionCoordinator;->startExit(Landroid/view/ViewRootImpl;)V

    .line 280
    .end local v10    # "enterViewsTransition":Landroid/transition/Transition;
    .end local v11    # "decor":Landroid/view/ViewGroup;
    .end local v12    # "delayExitBack":Z
    :cond_69
    :goto_69
    return v9

    .line 245
    :cond_6a
    :goto_6a
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startExitOutTransition(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "options"    # Landroid/os/Bundle;

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    .line 306
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    if-nez v0, :cond_8

    .line 307
    return-void

    .line 309
    :cond_8
    new-instance v0, Landroid/view/WindowOptions;

    invoke-direct {v0, p1}, Landroid/view/WindowOptions;-><init>(Landroid/os/Bundle;)V

    .line 310
    .local v0, "windowOptions":Landroid/view/WindowOptions;
    invoke-virtual {v0}, Landroid/view/WindowOptions;->getAnimationType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_54

    .line 311
    invoke-virtual {v0}, Landroid/view/WindowOptions;->getExitCoordinatorKey()I

    move-result v1

    .line 312
    .local v1, "key":I
    iget-object v2, p0, Landroid/view/WindowTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 313
    .local v2, "index":I
    if-ltz v2, :cond_54

    .line 314
    iget-object v3, p0, Landroid/view/WindowTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowExitTransitionCoordinator;

    iput-object v3, p0, Landroid/view/WindowTransitionState;->mCalledExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

    .line 315
    iget-object v3, p0, Landroid/view/WindowTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 316
    iget-object v3, p0, Landroid/view/WindowTransitionState;->mCalledExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

    if-eqz v3, :cond_54

    .line 317
    invoke-virtual {v3}, Landroid/view/WindowExitTransitionCoordinator;->getAcceptedNames()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/view/WindowTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 318
    iget-object v3, p0, Landroid/view/WindowTransitionState;->mCalledExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

    invoke-virtual {v3}, Landroid/view/WindowExitTransitionCoordinator;->getMappedNames()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/view/WindowTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 319
    iget-object v3, p0, Landroid/view/WindowTransitionState;->mCalledExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

    invoke-virtual {v3}, Landroid/view/WindowExitTransitionCoordinator;->copyMappedViews()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/view/WindowTransitionState;->mExitingToView:Ljava/util/ArrayList;

    .line 320
    iget-object v3, p0, Landroid/view/WindowTransitionState;->mCalledExitCoordinator:Landroid/view/WindowExitTransitionCoordinator;

    invoke-virtual {v3}, Landroid/view/WindowExitTransitionCoordinator;->startExit()V

    .line 324
    .end local v1    # "key":I
    .end local v2    # "index":I
    :cond_54
    return-void
.end method

.method public blacklist startPostponedEnterTransition()V
    .registers 2

    .line 185
    iget-boolean v0, p0, Landroid/view/WindowTransitionState;->mIsEnterPostponed:Z

    if-eqz v0, :cond_e

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowTransitionState;->mIsEnterPostponed:Z

    .line 187
    iget-object v0, p0, Landroid/view/WindowTransitionState;->mEnterTransitionCoordinator:Landroid/view/WindowEnterTransitionCoordinator;

    if-eqz v0, :cond_e

    .line 188
    invoke-direct {p0}, Landroid/view/WindowTransitionState;->startEnter()V

    .line 191
    :cond_e
    return-void
.end method
