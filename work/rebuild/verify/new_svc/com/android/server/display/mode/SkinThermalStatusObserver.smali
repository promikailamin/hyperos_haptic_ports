.class public final Lcom/android/server/display/mode/SkinThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "SkinThermalStatusObserver.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public mLoggingEnabled:Z

.field public mStatus:I

.field public final mThermalObserverLock:Ljava/lang/Object;

.field public final mThermalThrottlingByDisplay:Landroid/util/SparseArray;

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public static synthetic $r8$lambda$2JiTk7i2BQKkJt51qs77kJyS4uw(Lcom/android/server/display/mode/SkinThermalStatusObserver;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->updateVotes()V

    return-void
.end method

.method public static synthetic $r8$lambda$HMJT7YFVLnmHC9esWPjr6wLo4y8(Lcom/android/server/display/mode/SkinThermalStatusObserver;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->lambda$updateThermalRefreshRateThrottling$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SsLgruNT-NHGekse-w2y7avspzU(Lcom/android/server/display/mode/SkinThermalStatusObserver;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->lambda$onDisplayRemoved$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;)V
    .registers 4

    .line 56
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/mode/SkinThermalStatusObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;Landroid/os/Handler;)V
    .registers 5

    .line 61
    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mStatus:I

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalThrottlingByDisplay:Landroid/util/SparseArray;

    .line 62
    iput-object p1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 63
    iput-object p2, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 64
    iput-object p3, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static findBestMatchingRefreshRateRange(ILandroid/util/SparseArray;)Landroid/view/SurfaceControl$RefreshRateRange;
    .registers 3

    const/4 v0, 0x0

    :goto_1
    if-ltz p0, :cond_f

    .line 73
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$RefreshRateRange;

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_f
    return-object v0
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 5

    .line 265
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    iget v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mStatus:I

    .line 267
    iget-object p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalThrottlingByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p0

    .line 268
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_3a

    .line 270
    const-string v0, "  SkinThermalStatusObserver:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mThermalThrottlingByDisplay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_3a
    move-exception p0

    .line 268
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final fallbackReportThrottlingIfNeeded(II)V
    .registers 5

    const/4 v0, 0x4

    if-lt p2, v0, :cond_b

    const/4 p2, 0x0

    const/high16 v0, 0x42700000    # 60.0f

    .line 252
    invoke-static {p2, v0}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object p2

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    .line 254
    :goto_c
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v1, 0x15

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 255
    iget-boolean p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz p0, :cond_35

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Voted(fallback): vote="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", display ="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SkinThermalStatusObserver"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-void
.end method

.method public final synthetic lambda$onDisplayRemoved$0(I)V
    .registers 4

    .line 132
    iget-object p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method

.method public final synthetic lambda$updateThermalRefreshRateThrottling$1(I)V
    .registers 2

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->updateVoteForDisplay(I)V

    return-void
.end method

.method public notifyThrottling(Landroid/os/Temperature;)V
    .registers 5

    .line 103
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    .line 105
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_7
    iget v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mStatus:I

    if-ne v1, p1, :cond_f

    .line 107
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_37

    .line 109
    :cond_f
    iput p1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mStatus:I

    .line 110
    iget-object v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/mode/SkinThermalStatusObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_d

    .line 113
    iget-boolean p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz p0, :cond_36

    .line 114
    const-string p0, "SkinThermalStatusObserver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New thermal throttling status , current thermal status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void

    .line 111
    :goto_37
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_d

    throw p0
.end method

.method public observe()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v0, p0}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerThermalServiceListener(Landroid/os/IThermalEventListener;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 86
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->registerDisplayListener()V

    .line 87
    invoke-virtual {p0}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->populateInitialDisplayInfo()V

    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 3

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->updateThermalRefreshRateThrottling(I)V

    .line 123
    iget-boolean p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz p0, :cond_1d

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Display added:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SkinThermalStatusObserver"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->updateThermalRefreshRateThrottling(I)V

    .line 143
    iget-boolean p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz p0, :cond_1d

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Display changed:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SkinThermalStatusObserver"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 5

    .line 130
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalThrottlingByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 132
    iget-object v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/mode/SkinThermalStatusObserver;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_2e

    .line 135
    iget-boolean p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz p0, :cond_2d

    .line 136
    const-string p0, "SkinThermalStatusObserver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display removed and voted: displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void

    :catchall_2e
    move-exception p0

    .line 134
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public final populateInitialDisplayInfo()V
    .registers 10

    .line 150
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    .line 152
    array-length v2, v1

    .line 153
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 155
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_14
    if-ge v6, v4, :cond_27

    aget-object v7, v1, v6

    .line 156
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    .line 157
    invoke-virtual {v7, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 158
    iget-object v7, v0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    invoke-virtual {v3, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 160
    :cond_27
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_2a
    if-ge v5, v2, :cond_40

    .line 162
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalThrottlingByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :catchall_3e
    move-exception p0

    goto :goto_5c

    .line 164
    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_3e

    .line 165
    iget-boolean p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz p0, :cond_5b

    .line 166
    const-string p0, "SkinThermalStatusObserver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display initial info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    return-void

    .line 164
    :goto_5c
    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_3e

    throw p0
.end method

.method public final registerDisplayListener()V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iget-object v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void
.end method

.method public final reportThrottlingIfNeeded(IILandroid/util/SparseArray;)V
    .registers 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    goto :goto_47

    .line 230
    :cond_4
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->fallbackReportThrottlingIfNeeded(II)V

    return-void

    .line 235
    :cond_e
    invoke-static {p2, p3}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->findBestMatchingRefreshRateRange(ILandroid/util/SparseArray;)Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object p2

    if-eqz p2, :cond_1d

    .line 240
    iget p3, p2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget p2, p2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {p3, p2}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object p2

    goto :goto_1e

    :cond_1d
    const/4 p2, 0x0

    .line 242
    :goto_1e
    iget-object p3, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v0, 0x15

    invoke-virtual {p3, p1, v0, p2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 243
    iget-boolean p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz p0, :cond_47

    .line 244
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Voted: vote="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", display ="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SkinThermalStatusObserver"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :goto_47
    return-void
.end method

.method public setLoggingEnabled(Z)V
    .registers 2

    .line 98
    iput-boolean p1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    return-void
.end method

.method public final updateThermalRefreshRateThrottling(I)V
    .registers 6

    .line 171
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v1, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplayInfo(ILandroid/view/DisplayInfo;)Z

    .line 173
    iget-object v0, v0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 176
    iget-object v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_f
    iget-object v2, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalThrottlingByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    iget-object v2, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/SkinThermalStatusObserver;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_42

    .line 180
    iget-boolean p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz p0, :cond_41

    .line 181
    const-string p0, "SkinThermalStatusObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thermal throttling updated: display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", map="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    return-void

    :catchall_42
    move-exception p0

    .line 179
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public final updateVoteForDisplay(I)V
    .registers 7

    .line 208
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_3
    iget v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mStatus:I

    .line 210
    iget-object v2, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalThrottlingByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 211
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_55

    if-nez v2, :cond_27

    .line 213
    const-string p0, "SkinThermalStatusObserver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating votes, display already removed, display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 216
    :cond_27
    iget-boolean v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_51

    .line 217
    const-string v0, "SkinThermalStatusObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating votes for status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", display ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", map="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_51
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->reportThrottlingIfNeeded(IILandroid/util/SparseArray;)V

    return-void

    :catchall_55
    move-exception p0

    .line 211
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public final updateVotes()V
    .registers 7

    .line 191
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_3
    iget v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mStatus:I

    .line 193
    iget-object v2, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalThrottlingByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 194
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_46

    .line 195
    iget-boolean v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_2e

    .line 196
    const-string v0, "SkinThermalStatusObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating votes for status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", map="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_2e
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_33
    if-ge v3, v0, :cond_45

    .line 200
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {p0, v4, v1, v5}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->reportThrottlingIfNeeded(IILandroid/util/SparseArray;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_45
    return-void

    :catchall_46
    move-exception p0

    .line 194
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method
