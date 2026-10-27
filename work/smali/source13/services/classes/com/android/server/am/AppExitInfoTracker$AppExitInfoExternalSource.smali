.class final Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;
.super Ljava/lang/Object;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppExitInfoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AppExitInfoExternalSource"
.end annotation


# static fields
.field private static final APP_EXIT_INFO_FRESHNESS_MS:J = 0x493e0L


# instance fields
.field private final mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mPresetReason:Ljava/lang/Integer;

.field private mProcDiedListener:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/AppExitInfoTracker;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/Integer;

    .line 1694
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1695
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    .line 1696
    iput-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mTag:Ljava/lang/String;

    .line 1697
    iput-object p3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mPresetReason:Ljava/lang/Integer;

    .line 1698
    return-void
.end method

.method private addLocked(IILjava/lang/Object;)V
    .registers 9
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "extra"    # Ljava/lang/Object;

    .line 1702
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1703
    .local v0, "k":Ljava/lang/Integer;
    if-eqz v0, :cond_e

    .line 1704
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1707
    :cond_e
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1708
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;>;"
    if-nez v1, :cond_23

    .line 1709
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 1710
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1712
    :cond_23
    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1713
    return-void
.end method

.method static synthetic lambda$onProcDied$0(Ljava/util/function/BiConsumer;II)V
    .registers 5
    .param p0, "listener"    # Ljava/util/function/BiConsumer;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1800
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onProcDied(IILjava/lang/Integer;)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "status"    # Ljava/lang/Integer;

    .line 1781
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_36

    .line 1782
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": proc died: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :cond_36
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    if-nez v0, :cond_3f

    .line 1787
    return-void

    .line 1792
    :cond_3f
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1793
    :try_start_46
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mPresetReason:Ljava/lang/Integer;

    invoke-static {v1, p1, p2, p3, v2}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$mupdateExitInfoIfNecessaryLocked(Lcom/android/server/am/AppExitInfoTracker;IILjava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 1794
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->addLocked(IILjava/lang/Object;)V

    .line 1798
    :cond_53
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mProcDiedListener:Ljava/util/function/BiConsumer;

    .line 1799
    .local v1, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_67

    .line 1800
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v2}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p1, p2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiConsumer;II)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1802
    .end local v1    # "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_67
    monitor-exit v0

    .line 1803
    return-void

    .line 1802
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_46 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method remove(II)Landroid/util/Pair;
    .registers 11
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1717
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1718
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, v1, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v1, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1719
    .local v1, "k":Ljava/lang/Integer;
    if-eqz v1, :cond_16

    .line 1720
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move p2, v2

    .line 1723
    :cond_16
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1724
    .local v2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    if-eqz v2, :cond_3f

    .line 1725
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1726
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    if-eqz v4, :cond_3f

    .line 1727
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1728
    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/AppExitInfoTracker;->isFresh(J)Z

    move-result v5

    if-eqz v5, :cond_3d

    move-object v3, v4

    :cond_3d
    monitor-exit v0

    return-object v3

    .line 1731
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    :cond_3f
    monitor-exit v0

    return-object v3

    .line 1732
    .end local v1    # "k":Ljava/lang/Integer;
    .end local v2    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;>;"
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_41

    throw v1
.end method

.method removeByUidLocked(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "allUsers"    # Z

    .line 1755
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1756
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1757
    .local v0, "k":Ljava/lang/Integer;
    if-eqz v0, :cond_14

    .line 1758
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1762
    .end local v0    # "k":Ljava/lang/Integer;
    :cond_14
    if-eqz p2, :cond_39

    .line 1763
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 1764
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_22
    if-ltz v0, :cond_38

    .line 1765
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v1, p1, :cond_35

    .line 1766
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1764
    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .end local v0    # "i":I
    :cond_38
    goto :goto_3e

    .line 1770
    :cond_39
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1772
    :goto_3e
    return-void
.end method

.method removeByUserId(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 1736
    const/4 v0, -0x2

    if-ne p1, v0, :cond_f

    .line 1737
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result p1

    .line 1739
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1740
    const/4 v1, -0x1

    if-ne p1, v1, :cond_20

    .line 1741
    :try_start_19
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1742
    monitor-exit v0

    return-void

    .line 1744
    :cond_20
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_28
    if-ltz v1, :cond_3e

    .line 1745
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1746
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_3b

    .line 1747
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1744
    .end local v2    # "uid":I
    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 1750
    .end local v1    # "i":I
    :cond_3e
    monitor-exit v0

    .line 1751
    return-void

    .line 1750
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_19 .. :try_end_42} :catchall_40

    throw v1
.end method

.method setOnProcDiedListener(Ljava/util/function/BiConsumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1775
    .local p1, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1776
    :try_start_7
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mProcDiedListener:Ljava/util/function/BiConsumer;

    .line 1777
    monitor-exit v0

    .line 1778
    return-void

    .line 1777
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method
