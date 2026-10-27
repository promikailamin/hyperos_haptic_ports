.class Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "TaskSnapshotPersister.java"


# instance fields
.field public final mPersistentTaskIds:Landroid/util/ArraySet;

.field public final mRunningUserIds:[I

.field public final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/util/ArraySet;[ILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I",
            "Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;",
            ")V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 133
    array-length p1, p3

    const/4 v0, 0x0

    if-lez p1, :cond_8

    aget v0, p3, v0

    :cond_8
    invoke-direct {p0, p4, v0}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    .line 134
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mPersistentTaskIds:Landroid/util/ArraySet;

    .line 135
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mRunningUserIds:[I

    return-void
.end method


# virtual methods
.method public getTaskId(Ljava/lang/String;)I
    .registers 4

    .line 174
    const-string p0, ".proto"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, -0x1

    if-nez p0, :cond_12

    const-string p0, ".jpg"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_12

    return v0

    :cond_12
    const/16 p0, 0x2e

    .line 177
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ne p0, v0, :cond_1b

    return v0

    :cond_1b
    const/4 v1, 0x0

    .line 181
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 182
    const-string p1, "_reduced"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x8

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 186
    :cond_32
    :try_start_32
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_36} :catch_37

    return p0

    :catch_37
    return v0
.end method

.method public isReady(Lcom/android/server/pm/UserManagerInternal;)Z
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mRunningUserIds:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_16

    .line 141
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mRunningUserIds:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlocked(I)Z

    move-result v2

    if-nez v2, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_16
    return v1
.end method

.method public write()V
    .registers 16

    .line 150
    const-string v0, "RemoveObsoleteFilesQueueItem"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object v0, v0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_c
    new-instance v3, Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v4}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmPersistedTaskIdsSinceLastRemoveObsolete(Lcom/android/server/wm/TaskSnapshotPersister;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 154
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_60

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mRunningUserIds:[I

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_1d
    if-ge v6, v4, :cond_5c

    aget v7, v0, v6

    .line 156
    iget-object v8, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {v8, v7}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    .line 157
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2e

    goto :goto_59

    .line 161
    :cond_2e
    array-length v9, v8

    move v10, v5

    :goto_30
    if-ge v10, v9, :cond_59

    aget-object v11, v8, v10

    .line 162
    invoke-virtual {p0, v11}, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->getTaskId(Ljava/lang/String;)I

    move-result v12

    .line 163
    iget-object v13, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mPersistentTaskIds:Landroid/util/ArraySet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_56

    .line 164
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_56

    .line 165
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_56
    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    :cond_59
    :goto_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 169
    :cond_5c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_60
    move-exception p0

    .line 154
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p0
.end method
