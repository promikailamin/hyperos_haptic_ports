.class final Lcom/android/server/vibrator/VibrationSettings$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "VibrationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UidObserver"
.end annotation


# instance fields
.field private final mProcStatesCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmProcStatesCache(Lcom/android/server/vibrator/VibrationSettings$UidObserver;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/vibrator/VibrationSettings;

    .line 713
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 714
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public isUidForeground(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 717
    monitor-enter p0

    .line 718
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    monitor-exit p0

    return v0

    .line 720
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public onUidActive(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 732
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 747
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 725
    monitor-enter p0

    .line 726
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 727
    monitor-exit p0

    .line 728
    return-void

    .line 727
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public onUidIdle(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 736
    return-void
.end method

.method public onUidProcAdjChanged(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 751
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 740
    monitor-enter p0

    .line 741
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 742
    monitor-exit p0

    .line 743
    return-void

    .line 742
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method
