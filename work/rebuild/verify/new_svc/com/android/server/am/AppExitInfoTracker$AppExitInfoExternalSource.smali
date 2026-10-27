.class public final Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;
.super Ljava/lang/Object;
.source "AppExitInfoTracker.java"


# instance fields
.field public final mData:Landroid/util/SparseArray;

.field public final mPresetReason:Ljava/lang/Integer;

.field public mProcDiedListener:Ljava/util/function/BiConsumer;

.field public final mTag:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public static synthetic $r8$lambda$YNqE5oyIePUMpW0I2BEf6coo8g0(Ljava/util/function/BiConsumer;II)V
    .registers 3

    .line 1863
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    .line 1753
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1754
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    .line 1755
    iput-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mTag:Ljava/lang/String;

    .line 1756
    iput-object p3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mPresetReason:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final addLocked(IILjava/lang/Object;)V
    .registers 7

    .line 1761
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1763
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1766
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_22

    .line 1768
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1769
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1771
    :cond_22
    new-instance p0, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onProcDied(IILjava/lang/Integer;Ljava/lang/Long;)V
    .registers 13

    .line 1845
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1851
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1852
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mPresetReason:Ljava/lang/Integer;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$mupdateExitInfoIfNecessaryLocked(Lcom/android/server/am/AppExitInfoTracker;IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)Z

    move-result p1

    if-nez p1, :cond_28

    if-eqz v7, :cond_25

    .line 1854
    invoke-virtual {p0, v3, v4, v7}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->addLocked(IILjava/lang/Object;)V

    goto :goto_28

    :catchall_22
    move-exception v0

    move-object p0, v0

    goto :goto_3e

    .line 1856
    :cond_25
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->addLocked(IILjava/lang/Object;)V

    .line 1861
    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mProcDiedListener:Ljava/util/function/BiConsumer;

    if-eqz p1, :cond_3c

    .line 1863
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {p0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance p2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, v3, v4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiConsumer;II)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1865
    :cond_3c
    monitor-exit v1

    return-void

    :goto_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_e .. :try_end_3f} :catchall_22

    throw p0
.end method

.method public remove(II)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1776
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1777
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, v1, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v1, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1779
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_41

    .line 1782
    :cond_16
    :goto_16
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz p2, :cond_3f

    .line 1784
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz v2, :cond_3f

    .line 1786
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1787
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->isFresh(J)Z

    move-result p0

    if-eqz p0, :cond_3d

    move-object v1, v2

    :cond_3d
    monitor-exit v0

    return-object v1

    .line 1790
    :cond_3f
    monitor-exit v0

    return-object v1

    .line 1791
    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_14

    throw p0
.end method

.method public removeByUidLocked(IZ)V
    .registers 4

    .line 1814
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1815
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1817
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_14
    if-eqz p2, :cond_39

    .line 1822
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 1823
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_22
    if-ltz p2, :cond_38

    .line 1824
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p1, :cond_35

    .line 1825
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_35
    add-int/lit8 p2, p2, -0x1

    goto :goto_22

    :cond_38
    return-void

    .line 1829
    :cond_39
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public removeByUserId(I)V
    .registers 5

    const/4 v0, -0x2

    if-ne p1, v0, :cond_f

    .line 1796
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {p1}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p1}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result p1

    .line 1798
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_20

    .line 1800
    :try_start_17
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 1801
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    goto :goto_40

    .line 1803
    :cond_20
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_28
    if-ltz v1, :cond_3e

    .line 1804
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1805
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_3b

    .line 1806
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 1809
    :cond_3e
    monitor-exit v0

    return-void

    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_17 .. :try_end_41} :catchall_1e

    throw p0
.end method
