.class public Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;
.super Ljava/lang/Object;
.source "BaseAppSnapshotPersister.java"


# instance fields
.field public final mDirName:Ljava/lang/String;

.field public final mDirectoryResolver:Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;

.field public final mEnableLowResSnapshots:Z

.field public final mInitializedUsers:Landroid/util/SparseBooleanArray;

.field public final mLowResScaleFactor:F

.field public final mScrambleDirectories:Landroid/util/SparseArray;

.field public final mUse16BitFormat:Z


# direct methods
.method public static synthetic $r8$lambda$Kq6deJ05IcnYhOTyoqTGIEcgML4(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 194
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;Ljava/lang/String;ZFZ)V
    .registers 7

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mInitializedUsers:Landroid/util/SparseBooleanArray;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mScrambleDirectories:Landroid/util/SparseArray;

    .line 121
    iput-object p1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirectoryResolver:Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;

    .line 122
    iput-object p2, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirName:Ljava/lang/String;

    .line 123
    iput-boolean p3, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mEnableLowResSnapshots:Z

    .line 124
    iput p4, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mLowResScaleFactor:F

    .line 125
    iput-boolean p5, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mUse16BitFormat:Z

    return-void
.end method


# virtual methods
.method public createDirectory(I)Z
    .registers 2

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    .line 213
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public enableLowResSnapshots()Z
    .registers 1

    .line 229
    iget-boolean p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mEnableLowResSnapshots:Z

    return p0
.end method

.method public final getBaseDirectory(I)Ljava/io/File;
    .registers 4

    .line 139
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirectoryResolver:Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;->getSystemDirectoryForUser(I)Ljava/io/File;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirName:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirectory(I)Ljava/io/File;
    .registers 3

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getOrInitScrambleDirectory(I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 134
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getBaseDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getHighResolutionBitmapFile(II)Ljava/io/File;
    .registers 4

    .line 225
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLowResolutionBitmapFile(II)Ljava/io/File;
    .registers 4

    .line 221
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_reduced"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOrInitScrambleDirectory(I)Ljava/io/File;
    .registers 12

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mScrambleDirectories:Landroid/util/SparseArray;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mInitializedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 146
    iget-object p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mScrambleDirectories:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    goto/16 :goto_9f

    .line 148
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mInitializedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getScrambleDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getBaseDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 153
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4b

    .line 154
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 157
    const-string p0, "WindowManager"

    const-string p1, "SnapshotPersister rename scramble folder fail."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    monitor-exit v0

    return-object v4

    :cond_49
    move-object v4, v3

    goto :goto_93

    .line 162
    :cond_4b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_60

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_60

    .line 163
    const-string p0, "WindowManager"

    const-string p1, "SnapshotPersister make base folder fail."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v0

    return-object v4

    .line 166
    :cond_60
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_6f

    .line 167
    const-string p0, "WindowManager"

    const-string p1, "SnapshotPersister make scramble folder fail"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    monitor-exit v0

    return-object v4

    .line 171
    :cond_6f
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_93

    .line 173
    array-length v5, v3

    const/4 v6, 0x0

    :goto_77
    if-ge v6, v5, :cond_93

    aget-object v7, v3, v6

    .line 174
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_88

    move-object v4, v7

    goto :goto_90

    .line 178
    :cond_88
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :goto_90
    add-int/lit8 v6, v6, 0x1

    goto :goto_77

    .line 184
    :cond_93
    :goto_93
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    iget-object p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mScrambleDirectories:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    monitor-exit v0

    return-object v1

    .line 187
    :goto_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_3 .. :try_end_a0} :catchall_15

    throw p0
.end method

.method public getProtoFile(II)Ljava/io/File;
    .registers 4

    .line 217
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".proto"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getScrambleDirectory(I)Ljava/io/File;
    .registers 4

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getBaseDirectory(I)Ljava/io/File;

    move-result-object p0

    .line 193
    new-instance p1, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 195
    array-length v0, p1

    if-lez v0, :cond_1b

    .line 196
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 198
    :cond_1b
    new-instance p1, Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public lowResScaleFactor()F
    .registers 1

    .line 233
    iget p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mLowResScaleFactor:F

    return p0
.end method

.method public use16BitFormat()Z
    .registers 1

    .line 208
    iget-boolean p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mUse16BitFormat:Z

    return p0
.end method
