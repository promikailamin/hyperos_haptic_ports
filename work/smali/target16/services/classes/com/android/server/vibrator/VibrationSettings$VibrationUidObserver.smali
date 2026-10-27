.class final Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;
.super Landroid/app/UidObserver;
.source "VibrationSettings.java"


# instance fields
.field public final mProcStatesCache:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmProcStatesCache(Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 2

    .line 895
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 896
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public isUidForeground(I)Z
    .registers 5

    .line 899
    monitor-enter p0

    .line 900
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gt p1, v1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    monitor-exit p0

    return p1

    :catchall_19
    move-exception p1

    .line 902
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public onUidGone(IZ)V
    .registers 3

    .line 907
    monitor-enter p0

    .line 908
    :try_start_1
    iget-object p2, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 909
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public onUidStateChanged(IIJI)V
    .registers 6

    .line 914
    monitor-enter p0

    .line 915
    :try_start_1
    iget-object p3, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 916
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method
