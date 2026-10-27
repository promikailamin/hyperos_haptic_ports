.class public abstract Landroid/database/sqlite/SQLiteClosable;
.super Ljava/lang/Object;
.source "SQLiteClosable.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private blacklist mClosedBy:Ljava/lang/Throwable;

.field private greylist mReferenceCount:I

.field protected blacklist mTrackClosure:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteClosable;->mTrackClosure:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteClosable;->mClosedBy:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist acquireReference()V
    .registers 4

    .line 71
    monitor-enter p0

    .line 72
    :try_start_1
    iget v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-lez v0, :cond_d

    .line 76
    iget v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 73
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to re-open an already-closed object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteClosable;->mClosedBy:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 77
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 5

    .line 124
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    .line 125
    monitor-enter p0

    .line 126
    :try_start_4
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteClosable;->mTrackClosure:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/database/sqlite/SQLiteClosable;->mClosedBy:Ljava/lang/Throwable;

    if-nez v0, :cond_34

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closed by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".close()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteClosable;->mClosedBy:Ljava/lang/Throwable;

    .line 130
    :cond_34
    monitor-exit p0

    .line 131
    return-void

    .line 130
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw v0
.end method

.method protected abstract whitelist onAllReferencesReleased()V
.end method

.method protected whitelist onAllReferencesReleasedFromContainer()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleased()V

    .line 62
    return-void
.end method

.method public whitelist releaseReference()V
    .registers 3

    .line 87
    nop

    .line 88
    monitor-enter p0

    .line 89
    :try_start_2
    iget v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 90
    :goto_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_13

    .line 91
    if-eqz v1, :cond_12

    .line 92
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleased()V

    .line 94
    :cond_12
    return-void

    .line 90
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public whitelist releaseReferenceFromContainer()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    nop

    .line 106
    monitor-enter p0

    .line 107
    :try_start_2
    iget v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 108
    :goto_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_13

    .line 109
    if-eqz v1, :cond_12

    .line 110
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    .line 112
    :cond_12
    return-void

    .line 108
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
