.class Lcom/android/server/wm/MirrorActiveUids;
.super Ljava/lang/Object;
.source "MirrorActiveUids.java"


# instance fields
.field private final mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

.field private final mUidStates:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    .line 36
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method declared-synchronized dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    monitor-enter p0

    .line 92
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NumNonAppVisibleWindowUidMap:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1f
    if-ltz v0, :cond_50

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    .line 95
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    .line 97
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    :cond_50
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/android/server/wm/MirrorActiveUidsStub;->getInstance()Lcom/android/server/wm/MirrorActiveUidsStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/MirrorActiveUidsStub;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 100
    monitor-exit p0

    return-void

    .line 91
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "prefix":Ljava/lang/String;
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getUidState(I)I
    .registers 4
    .param p1, "uid"    # I

    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    .line 54
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    .end local p1    # "uid":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized hasNonAppVisibleWindow(I)Z
    .registers 3
    .param p1, "uid"    # I

    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    .line 78
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    .end local p1    # "uid":I
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized hasVisibleWindowForUser(I)Z
    .registers 3
    .param p1, "uid"    # I

    monitor-enter p0

    .line 87
    :try_start_1
    invoke-static {}, Lcom/android/server/wm/MirrorActiveUidsStub;->getInstance()Lcom/android/server/wm/MirrorActiveUidsStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MirrorActiveUidsStub;->hasVisibleWindowForUser(I)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    .line 87
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    .end local p1    # "uid":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onNonAppSurfaceVisibilityChanged(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "visible"    # Z

    monitor-enter p0

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 60
    .local v0, "index":I
    const/4 v1, 0x1

    if-ltz v0, :cond_23

    .line 61
    iget-object v2, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-eqz p2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, -0x1

    :goto_14
    add-int/2addr v2, v1

    .line 62
    .local v2, "num":I
    if-lez v2, :cond_1d

    .line 63
    iget-object v1, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_2b

    .line 65
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    :cond_1d
    iget-object v1, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_2b

    .line 67
    .end local v2    # "num":I
    :cond_23
    if-eqz p2, :cond_2b

    .line 68
    iget-object v2, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2e

    goto :goto_2c

    .line 67
    :cond_2b
    :goto_2b
    nop

    .line 70
    :goto_2c
    monitor-exit p0

    return-void

    .line 58
    .end local v0    # "index":I
    .end local p1    # "uid":I
    .end local p2    # "visible":Z
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onUidActive(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    monitor-enter p0

    .line 39
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 40
    monitor-exit p0

    return-void

    .line 38
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    .end local p1    # "uid":I
    .end local p2    # "procState":I
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onUidInactive(I)V
    .registers 3
    .param p1, "uid"    # I

    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 44
    monitor-exit p0

    return-void

    .line 42
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    .end local p1    # "uid":I
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onUidProcStateChanged(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    monitor-enter p0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 48
    .local v0, "index":I
    if-ltz v0, :cond_e

    .line 49
    iget-object v1, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 51
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    :cond_e
    monitor-exit p0

    return-void

    .line 46
    .end local v0    # "index":I
    .end local p1    # "uid":I
    .end local p2    # "procState":I
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onVisibleWindowForUserChanged(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "visible"    # Z

    monitor-enter p0

    .line 83
    :try_start_1
    invoke-static {}, Lcom/android/server/wm/MirrorActiveUidsStub;->getInstance()Lcom/android/server/wm/MirrorActiveUidsStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/MirrorActiveUidsStub;->onVisibleWindowForUserChanged(IZ)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 84
    monitor-exit p0

    return-void

    .line 82
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    .end local p1    # "uid":I
    .end local p2    # "visible":Z
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
