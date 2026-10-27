.class Lcom/android/server/wm/TaskSnapshotPersister;
.super Ljava/lang/Object;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;
    }
.end annotation


# static fields
.field private static final BITMAP_EXTENSION:Ljava/lang/String; = ".jpg"

.field private static final DELAY_MS:J = 0x64L

.field private static final LOW_RES_FILE_POSTFIX:Ljava/lang/String; = "_reduced"

.field private static final MAX_STORE_QUEUE_DEPTH:I = 0x2

.field private static final PROTO_EXTENSION:Ljava/lang/String; = ".proto"

.field private static final QUALITY:I = 0x5f

.field private static final SNAPSHOTS_DIRNAME:Ljava/lang/String; = "snapshots"

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final forceReduceScale:F

.field private final mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

.field private mEnableLowResSnapshots:Z

.field private final mLock:Ljava/lang/Object;

.field private final mLowResScaleFactor:F

.field private mPaused:Z

.field private final mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPersister:Ljava/lang/Thread;

.field private mQueueIdling:Z

.field private mStarted:Z

.field private final mStoreQueueItems:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mUse16BitFormat:Z

.field private final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field private final mWriteQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final reduceResolution:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmDirectoryResolver(Lcom/android/server/wm/TaskSnapshotPersister;)Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableLowResSnapshots(Lcom/android/server/wm/TaskSnapshotPersister;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mEnableLowResSnapshots:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLowResScaleFactor(Lcom/android/server/wm/TaskSnapshotPersister;)F
    .registers 1

    iget p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLowResScaleFactor:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPaused(Lcom/android/server/wm/TaskSnapshotPersister;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPersistedTaskIdsSinceLastRemoveObsolete(Lcom/android/server/wm/TaskSnapshotPersister;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoreQueueItems(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManagerInternal(Lcom/android/server/wm/TaskSnapshotPersister;)Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWriteQueue(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreduceResolution(Lcom/android/server/wm/TaskSnapshotPersister;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->reduceResolution:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmQueueIdling(Lcom/android/server/wm/TaskSnapshotPersister;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mQueueIdling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateDirectory(Lcom/android/server/wm/TaskSnapshotPersister;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->createDirectory(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdeleteSnapshot(Lcom/android/server/wm/TaskSnapshotPersister;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->deleteSnapshot(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDirectory(Lcom/android/server/wm/TaskSnapshotPersister;I)Ljava/io/File;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V
    .registers 10
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "resolver"    # Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    .line 66
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    .line 80
    const-string/jumbo v0, "persist.tasksnapshot.force_reduce_resolution"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->reduceResolution:Z

    .line 81
    const-string/jumbo v2, "persist.tasksnapshot.force_reduce_scale"

    const-string v3, "0.6"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->forceReduceScale:F

    .line 87
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    .line 290
    new-instance v2, Lcom/android/server/wm/TaskSnapshotPersister$1;

    const-string v3, "TaskSnapshotPersister"

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/TaskSnapshotPersister$1;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersister:Ljava/lang/Thread;

    .line 91
    iput-object p2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

    .line 92
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    iput-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 97
    if-eqz v0, :cond_52

    .line 98
    iget v2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->forceReduceScale:F

    .local v2, "highResTaskSnapshotScale":F
    goto :goto_5f

    .line 100
    .end local v2    # "highResTaskSnapshotScale":F
    :cond_52
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 104
    .restart local v2    # "highResTaskSnapshotScale":F
    :goto_5f
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    .line 107
    .local v3, "lowResTaskSnapshotScale":F
    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-ltz v5, :cond_b8

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v5, v3

    if-lez v6, :cond_b8

    .line 110
    cmpg-float v6, v2, v4

    if-lez v6, :cond_b0

    cmpg-float v6, v5, v2

    if-ltz v6, :cond_b0

    .line 113
    cmpg-float v6, v2, v3

    if-lez v6, :cond_a8

    .line 117
    cmpl-float v6, v3, v4

    if-lez v6, :cond_94

    .line 119
    if-eqz v0, :cond_8c

    .line 120
    iput v5, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLowResScaleFactor:F

    goto :goto_90

    .line 122
    :cond_8c
    div-float v0, v3, v2

    iput v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLowResScaleFactor:F

    .line 124
    :goto_90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mEnableLowResSnapshots:Z

    goto :goto_98

    .line 126
    :cond_94
    iput v4, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLowResScaleFactor:F

    .line 127
    iput-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mEnableLowResSnapshots:Z

    .line 130
    :goto_98
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mUse16BitFormat:Z

    .line 132
    return-void

    .line 114
    :cond_a8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "High-res scale must be greater than low-res scale"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_b0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "High-res scale must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_b8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Low-res scale must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createDirectory(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 268
    invoke-static {}, Lcom/android/server/wm/TaskSnapshotPersisterInjectorStub;->get()Lcom/android/server/wm/TaskSnapshotPersisterInjectorStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskSnapshotPersisterInjectorStub;->createDirectory(Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;I)Z

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 270
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v1, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v1, 0x1

    :goto_1d
    return v1
.end method

.method private deleteSnapshot(II)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v0

    .line 275
    .local v0, "protoFile":Ljava/io/File;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getLowResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v1

    .line 276
    .local v1, "bitmapLowResFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 277
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 278
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 280
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getHighResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v2

    .line 281
    .local v2, "bitmapFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 282
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 284
    :cond_21
    return-void
.end method

.method private ensureStoreQueueDepthLocked()V
    .registers 4

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_33

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;

    .line 244
    .local v0, "item":Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue is too deep! Purged item with taskid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->-$$Nest$fgetmTaskId(Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0    # "item":Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;
    goto :goto_0

    .line 247
    :cond_33
    return-void
.end method

.method private getDirectory(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .line 250
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;->getSystemDirectoryForUser(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "snapshots"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V
    .registers 3
    .param p1, "item"    # Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {p1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->onQueuedLocked()V

    .line 234
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotPersister;->ensureStoreQueueDepthLocked()V

    .line 235
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z

    if-nez v0, :cond_14

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 238
    :cond_14
    return-void
.end method


# virtual methods
.method enableLowResSnapshots()Z
    .registers 2

    .line 206
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mEnableLowResSnapshots:Z

    return v0
.end method

.method getHighResolutionBitmapFile(II)Ljava/io/File;
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 258
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getLowResolutionBitmapFile(II)Ljava/io/File;
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 263
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_reduced"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getProtoFile(II)Ljava/io/File;
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 254
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".proto"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method onTaskRemovedFromRecents(II)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 175
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 177
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;II)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    .line 178
    monitor-exit v0

    .line 179
    return-void

    .line 178
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method persistSnapshot(IILandroid/window/TaskSnapshot;)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "snapshot"    # Landroid/window/TaskSnapshot;

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;IILandroid/window/TaskSnapshot;)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    .line 155
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method persistSnapshotQS(IILandroid/window/TaskSnapshot;)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "snapshot"    # Landroid/window/TaskSnapshot;

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_3
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;IILandroid/window/TaskSnapshot;)V

    .line 162
    .local v1, "item":Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mWriteToQS:Z

    .line 163
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    .line 164
    .end local v1    # "item":Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method removeObsoleteFiles(Landroid/util/ArraySet;[I)V
    .registers 5
    .param p2, "runningUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 190
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 192
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/util/ArraySet;[I)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    .line 193
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method setPaused(Z)V
    .registers 4
    .param p1, "paused"    # Z

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z

    .line 199
    if-nez p1, :cond_c

    .line 200
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 202
    :cond_c
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method start()V
    .registers 2

    .line 138
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStarted:Z

    if-nez v0, :cond_c

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStarted:Z

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersister:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 142
    :cond_c
    return-void
.end method

.method use16BitFormat()Z
    .registers 2

    .line 215
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mUse16BitFormat:Z

    return v0
.end method

.method waitForQueueEmpty()V
    .registers 3

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mQueueIdling:Z

    if-eqz v1, :cond_11

    .line 223
    monitor-exit v0

    return-void

    .line 225
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_18

    .line 226
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 225
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method
