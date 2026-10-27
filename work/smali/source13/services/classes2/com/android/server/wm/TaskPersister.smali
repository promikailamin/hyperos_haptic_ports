.class public Lcom/android/server/wm/TaskPersister;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;,
        Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final IMAGES_DIRNAME:Ljava/lang/String; = "recent_images"

.field static final IMAGE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final PERSISTED_TASK_IDS_FILENAME:Ljava/lang/String; = "persisted_taskIds.txt"

.field static final TAG:Ljava/lang/String; = "TaskPersister"

.field private static final TAG_TASK:Ljava/lang/String; = "task"

.field private static final TASKS_DIRNAME:Ljava/lang/String; = "recent_tasks"

.field private static final TASK_FILENAME_SUFFIX:Ljava/lang/String; = "_task.xml"


# instance fields
.field private final mIoLock:Ljava/lang/Object;

.field private final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field private final mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mTaskIdsDir:Ljava/io/File;

.field private final mTaskIdsInFile:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mTmpTaskIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smcreateParentDirectory(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskPersister;->createParentDirectory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetUserTasksDir(I)Ljava/io/File;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "workingDir"    # Ljava/io/File;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 114
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 116
    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 117
    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 118
    new-instance v0, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v0}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 119
    invoke-virtual {v0, p0}, Lcom/android/server/wm/PersisterQueue;->addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V

    .line 120
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RecentTasks;Lcom/android/server/wm/PersisterQueue;)V
    .registers 11
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "taskSupervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;
    .param p3, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p4, "recentTasks"    # Lcom/android/server/wm/RecentTasks;
    .param p5, "persisterQueue"    # Lcom/android/server/wm/PersisterQueue;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 90
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "recent_images"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .local v0, "legacyImagesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "TaskPersister"

    if-eqz v1, :cond_4a

    .line 92
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 93
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure deleting legacy images directory: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_4a
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "recent_tasks"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v1, "legacyTasksDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 99
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_7a

    .line 100
    :cond_64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure deleting legacy tasks directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_7a
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system_de"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 105
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 106
    iput-object p3, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 107
    iput-object p4, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 108
    iput-object p5, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 109
    invoke-virtual {p5, p0}, Lcom/android/server/wm/PersisterQueue;->addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V

    .line 110
    return-void
.end method

.method private static createParentDirectory(Ljava/lang/String;)Z
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 510
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 511
    .local v0, "parentDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x1

    :goto_19
    return v1
.end method

.method private fileToString(Ljava/io/File;)Ljava/lang/String;
    .registers 7
    .param p1, "file"    # Ljava/io/File;

    .line 244
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "newline":Ljava/lang/String;
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 247
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 249
    .local v2, "sb":Ljava/lang/StringBuffer;
    :goto_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_36

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 252
    :cond_36
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 253
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3d} :catch_3e

    return-object v3

    .line 254
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "line":Ljava/lang/String;
    :catch_3e
    move-exception v1

    .line 255
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t read file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskPersister"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v2, 0x0

    return-object v2
.end method

.method private getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 240
    .local v0, "item":Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;
    if-eqz v0, :cond_14

    iget-object v1, v0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method static getUserImagesDir(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 506
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "recent_images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPersistedTaskIdsFile(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .line 494
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 495
    .local v0, "userTaskIdsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while creating user directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskPersister"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_2f
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "persisted_taskIds.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getUserTasksDir(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 502
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "recent_tasks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getImageFromWriteQueue$2(Ljava/lang/String;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "queueItem"    # Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 239
    iget-object v0, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeThumbnails$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .registers 5
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "item"    # Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 125
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static synthetic lambda$wakeup$1(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Z
    .registers 3
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "queueItem"    # Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    .line 193
    invoke-static {p1}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->-$$Nest$fgetmTask(Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private removeObsoleteFiles(Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 477
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 480
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v1

    .line 481
    .local v1, "candidateUserIds":[I
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 482
    array-length v0, v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_31

    aget v3, v1, v2

    .line 483
    .local v3, "userId":I
    invoke-static {v3}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 484
    invoke-static {v3}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 482
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 486
    :cond_31
    return-void

    .line 481
    .end local v1    # "candidateUserIds":[I
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V
    .registers 10
    .param p1, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 428
    .local p0, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const-string v0, "TaskPersister"

    if-nez p1, :cond_a

    .line 429
    const-string v1, "File error accessing recents directory (directory doesn\'t exist?)."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void

    .line 432
    :cond_a
    const/4 v1, 0x0

    .local v1, "fileNdx":I
    :goto_b
    array-length v2, p1

    if-ge v1, v2, :cond_56

    .line 433
    aget-object v2, p1, v1

    .line 434
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "filename":Ljava/lang/String;
    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 436
    .local v4, "taskIdEnd":I
    if-lez v4, :cond_53

    .line 439
    const/4 v5, 0x0

    :try_start_1d
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_34

    .line 445
    .local v5, "taskId":I
    nop

    .line 446
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_53

    .line 448
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_53

    .line 441
    .end local v5    # "taskId":I
    :catch_34
    move-exception v5

    .line 442
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeObsoleteFiles: Can\'t parse file="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 432
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "taskIdEnd":I
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_53
    :goto_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 452
    .end local v1    # "fileNdx":I
    :cond_56
    return-void
.end method

.method private removeThumbnails(Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/Task;)V

    const-class v2, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 129
    return-void
.end method

.method static restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 490
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/Task;
    .registers 7
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 261
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 262
    return-object v0

    .line 264
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_a
    if-ltz v1, :cond_1a

    .line 265
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 266
    .local v2, "task":Lcom/android/server/wm/Task;
    iget v3, v2, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v3, p1, :cond_17

    .line 267
    return-object v2

    .line 264
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 270
    .end local v1    # "taskNdx":I
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore affiliation error looking for taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskPersister"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-object v0
.end method

.method private writeTaskIdsFiles()V
    .registers 11

    .line 455
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 456
    .local v0, "changedTaskIdsPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 457
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_3f

    aget v5, v2, v4

    .line 458
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/RecentTasks;->getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v6

    .line 459
    .local v6, "taskIdsToSave":Landroid/util/SparseBooleanArray;
    iget-object v7, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 460
    .local v7, "persistedIdsInFile":Landroid/util/SparseBooleanArray;
    if-eqz v7, :cond_30

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 461
    goto :goto_3c

    .line 463
    :cond_30
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v8

    .line 464
    .local v8, "taskIdsToSaveCopy":Landroid/util/SparseBooleanArray;
    iget-object v9, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v9, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    .end local v5    # "userId":I
    .end local v6    # "taskIdsToSave":Landroid/util/SparseBooleanArray;
    .end local v7    # "persistedIdsInFile":Landroid/util/SparseBooleanArray;
    .end local v8    # "taskIdsToSaveCopy":Landroid/util/SparseBooleanArray;
    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 468
    :cond_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 469
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_44
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 470
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 471
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 470
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/TaskPersister;->writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 473
    .end local v1    # "i":I
    :cond_5a
    return-void

    .line 468
    :catchall_5b
    move-exception v2

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method


# virtual methods
.method flush()V
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->flush()V

    .line 217
    return-void
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 232
    return-object v0

    .line 234
    :cond_7
    invoke-static {p1}, Lcom/android/server/wm/TaskPersister;->restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .registers 12
    .param p1, "userId"    # I

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0

    .line 136
    :cond_15
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 137
    .local v0, "persistedTaskIds":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    const/4 v2, 0x0

    .line 141
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1e
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 142
    :cond_2d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_4b

    .line 143
    const-string v3, "\\s+"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_3c
    if-ge v6, v5, :cond_2d

    aget-object v7, v3, v6

    .line 144
    .local v7, "taskIdString":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 145
    .local v8, "id":I
    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_48} :catch_70
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_48} :catch_51
    .catchall {:try_start_1e .. :try_end_48} :catchall_4f

    .line 143
    .end local v7    # "taskIdString":Ljava/lang/String;
    .end local v8    # "id":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 153
    :cond_4b
    :try_start_4b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_80

    .line 154
    goto :goto_75

    .line 153
    .end local v4    # "line":Ljava/lang/String;
    :catchall_4f
    move-exception v3

    goto :goto_6b

    .line 150
    :catch_51
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/Exception;
    :try_start_52
    const-string v4, "TaskPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while reading taskIds file for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_52 .. :try_end_6a} :catchall_4f

    goto :goto_71

    .line 153
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_6b
    :try_start_6b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 154
    nop

    .end local v0    # "persistedTaskIds":Landroid/util/SparseBooleanArray;
    .end local p0    # "this":Lcom/android/server/wm/TaskPersister;
    .end local p1    # "userId":I
    throw v3

    .line 148
    .restart local v0    # "persistedTaskIds":Landroid/util/SparseBooleanArray;
    .restart local p0    # "this":Lcom/android/server/wm/TaskPersister;
    .restart local p1    # "userId":I
    :catch_70
    move-exception v3

    .line 153
    :goto_71
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 154
    nop

    .line 155
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :goto_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_6b .. :try_end_76} :catchall_80

    .line 156
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v1

    return-object v1

    .line 155
    :catchall_80
    move-exception v2

    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v2
.end method

.method public onPreProcessItem(Z)V
    .registers 6
    .param p1, "queueEmpty"    # Z

    .line 411
    if-eqz p1, :cond_35

    .line 413
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 414
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 416
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RecentTasks;->getPersistableTaskIds(Landroid/util/ArraySet;)V

    .line 417
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 418
    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v3

    .line 417
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V

    .line 419
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 420
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    goto :goto_35

    .line 419
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 422
    :cond_35
    :goto_35
    invoke-direct {p0}, Lcom/android/server/wm/TaskPersister;->writeTaskIdsFiles()V

    .line 423
    return-void
.end method

.method restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;
    .registers 23
    .param p1, "userId"    # I
    .param p2, "preaddedTasks"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseBooleanArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 275
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 276
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v0

    .line 278
    .local v4, "recoveredTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v5

    .line 280
    .local v5, "userTasksDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 281
    .local v6, "recentFiles":[Ljava/io/File;
    const-string v7, "TaskPersister"

    if-nez v6, :cond_34

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreTasksForUserLocked: Unable to list files from "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-object v3

    .line 286
    :cond_34
    const/4 v0, 0x0

    move v8, v0

    .local v8, "taskNdx":I
    :goto_36
    array-length v0, v6

    const/4 v9, 0x1

    if-ge v8, v0, :cond_269

    .line 287
    aget-object v10, v6, v8

    .line 293
    .local v10, "taskFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "_task.xml"

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 294
    move-object/from16 v16, v6

    move/from16 v18, v8

    goto/16 :goto_263

    .line 297
    :cond_4e
    :try_start_4e
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v12, v11

    .line 297
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 300
    .local v0, "taskId":I
    move-object/from16 v12, p2

    invoke-virtual {v12, v0, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v11
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_6e} :catch_258

    if-eqz v11, :cond_99

    .line 301
    :try_start_70
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Task #"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " has already been created so we don\'t restore again"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_8c} :catch_92

    .line 303
    move-object/from16 v16, v6

    move/from16 v18, v8

    goto/16 :goto_263

    .line 305
    .end local v0    # "taskId":I
    :catch_92
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v18, v8

    goto/16 :goto_25d

    .line 308
    :cond_99
    nop

    .line 310
    const/4 v11, 0x0

    .line 311
    .local v11, "deleteFile":Z
    :try_start_9b
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a0} :catch_20d
    .catchall {:try_start_9b .. :try_end_a0} :catchall_205

    move-object v13, v0

    .line 312
    .local v13, "is":Ljava/io/InputStream;
    :try_start_a1
    invoke-static {v13}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 315
    .local v0, "in":Landroid/util/TypedXmlPullParser;
    :goto_a5
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v14

    move v15, v14

    .local v15, "event":I
    if-eq v14, v9, :cond_1e1

    const/4 v14, 0x3

    if-eq v15, v14, :cond_1e1

    .line 317
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 318
    .local v14, "name":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v15, v9, :cond_1ca

    .line 320
    const-string/jumbo v9, "task"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a2

    .line 321
    iget-object v9, v1, Lcom/android/server/wm/TaskPersister;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-static {v0, v9}, Lcom/android/server/wm/Task;->restoreFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/Task;

    move-result-object v9
    :try_end_c5
    .catchall {:try_start_a1 .. :try_end_c5} :catchall_1f3

    .line 324
    .local v9, "task":Lcom/android/server/wm/Task;
    if-eqz v9, :cond_176

    .line 330
    move-object/from16 v16, v6

    .end local v6    # "recentFiles":[Ljava/io/File;
    .local v16, "recentFiles":[Ljava/io/File;
    :try_start_c9
    iget v6, v9, Lcom/android/server/wm/Task;->mTaskId:I

    .line 331
    .local v6, "taskId":I
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->hasActivity()Z

    move-result v17
    :try_end_cf
    .catchall {:try_start_c9 .. :try_end_cf} :catchall_16e

    .line 332
    .local v17, "persistedTask":Z
    const-string v12, " found"

    if-eqz v17, :cond_104

    move/from16 v18, v8

    .end local v8    # "taskNdx":I
    .local v18, "taskNdx":I
    :try_start_d5
    iget-object v8, v1, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v8, v6}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_fb

    .line 336
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_e2
    .catchall {:try_start_d5 .. :try_end_e2} :catchall_fe

    move/from16 v19, v11

    .end local v11    # "deleteFile":Z
    .local v19, "deleteFile":Z
    :try_start_e4
    const-string v11, "Existing persisted task with taskId "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16d

    .line 332
    .end local v19    # "deleteFile":Z
    .restart local v11    # "deleteFile":Z
    :cond_fb
    move/from16 v19, v11

    .end local v11    # "deleteFile":Z
    .restart local v19    # "deleteFile":Z
    goto :goto_108

    .line 311
    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .end local v6    # "taskId":I
    .end local v9    # "task":Lcom/android/server/wm/Task;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "event":I
    .end local v17    # "persistedTask":Z
    .end local v19    # "deleteFile":Z
    .restart local v11    # "deleteFile":Z
    :catchall_fe
    move-exception v0

    move/from16 v19, v11

    move-object v6, v0

    .end local v11    # "deleteFile":Z
    .restart local v19    # "deleteFile":Z
    goto/16 :goto_1fb

    .line 332
    .end local v18    # "taskNdx":I
    .end local v19    # "deleteFile":Z
    .restart local v0    # "in":Landroid/util/TypedXmlPullParser;
    .restart local v6    # "taskId":I
    .restart local v8    # "taskNdx":I
    .restart local v9    # "task":Lcom/android/server/wm/Task;
    .restart local v11    # "deleteFile":Z
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v15    # "event":I
    .restart local v17    # "persistedTask":Z
    :cond_104
    move/from16 v18, v8

    move/from16 v19, v11

    .line 338
    .end local v8    # "taskNdx":I
    .end local v11    # "deleteFile":Z
    .restart local v18    # "taskNdx":I
    .restart local v19    # "deleteFile":Z
    :goto_108
    if-nez v17, :cond_130

    iget-object v8, v1, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 339
    const/4 v11, 0x1

    invoke-virtual {v8, v6, v11}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_130

    .line 342
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Existing task with taskId "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16d

    .line 344
    :cond_130
    iget v8, v9, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v2, v8, :cond_15b

    .line 346
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Task with userId "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v9, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " found in "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 347
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 346
    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16d

    .line 350
    :cond_15b
    iget-object v8, v1, Lcom/android/server/wm/TaskPersister;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v8, v6, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->setNextTaskIdForUser(II)V

    .line 351
    const/4 v8, 0x1

    iput-boolean v8, v9, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 352
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v6    # "taskId":I
    .end local v17    # "persistedTask":Z
    :goto_16d
    goto :goto_1a1

    .line 311
    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .end local v9    # "task":Lcom/android/server/wm/Task;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "event":I
    .end local v18    # "taskNdx":I
    .end local v19    # "deleteFile":Z
    .restart local v8    # "taskNdx":I
    .restart local v11    # "deleteFile":Z
    :catchall_16e
    move-exception v0

    move/from16 v18, v8

    move/from16 v19, v11

    move-object v6, v0

    .end local v8    # "taskNdx":I
    .end local v11    # "deleteFile":Z
    .restart local v18    # "taskNdx":I
    .restart local v19    # "deleteFile":Z
    goto/16 :goto_1fb

    .line 356
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v18    # "taskNdx":I
    .end local v19    # "deleteFile":Z
    .restart local v0    # "in":Landroid/util/TypedXmlPullParser;
    .local v6, "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    .restart local v9    # "task":Lcom/android/server/wm/Task;
    .restart local v11    # "deleteFile":Z
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v15    # "event":I
    :cond_176
    move-object/from16 v16, v6

    move/from16 v18, v8

    move/from16 v19, v11

    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .end local v11    # "deleteFile":Z
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v18    # "taskNdx":I
    .restart local v19    # "deleteFile":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreTasksForUserLocked: Unable to restore taskFile="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 357
    invoke-direct {v1, v10}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 356
    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v9    # "task":Lcom/android/server/wm/Task;
    :goto_1a1
    goto :goto_1d0

    .line 360
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v18    # "taskNdx":I
    .end local v19    # "deleteFile":Z
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    .restart local v11    # "deleteFile":Z
    :cond_1a2
    move-object/from16 v16, v6

    move/from16 v18, v8

    move/from16 v19, v11

    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .end local v11    # "deleteFile":Z
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v18    # "taskNdx":I
    .restart local v19    # "deleteFile":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreTasksForUserLocked: Unknown xml event="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " name="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d0

    .line 318
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v18    # "taskNdx":I
    .end local v19    # "deleteFile":Z
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    .restart local v11    # "deleteFile":Z
    :cond_1ca
    move-object/from16 v16, v6

    move/from16 v18, v8

    move/from16 v19, v11

    .line 364
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .end local v11    # "deleteFile":Z
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v18    # "taskNdx":I
    .restart local v19    # "deleteFile":Z
    :goto_1d0
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1d3
    .catchall {:try_start_e4 .. :try_end_1d3} :catchall_1de

    .line 365
    .end local v14    # "name":Ljava/lang/String;
    move-object/from16 v12, p2

    move-object/from16 v6, v16

    move/from16 v8, v18

    move/from16 v11, v19

    const/4 v9, 0x1

    goto/16 :goto_a5

    .line 311
    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .end local v15    # "event":I
    :catchall_1de
    move-exception v0

    move-object v6, v0

    goto :goto_1fb

    .line 315
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v18    # "taskNdx":I
    .end local v19    # "deleteFile":Z
    .restart local v0    # "in":Landroid/util/TypedXmlPullParser;
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    .restart local v11    # "deleteFile":Z
    .restart local v15    # "event":I
    :cond_1e1
    move-object/from16 v16, v6

    move/from16 v18, v8

    move/from16 v19, v11

    .line 366
    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .end local v11    # "deleteFile":Z
    .end local v15    # "event":I
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v18    # "taskNdx":I
    .restart local v19    # "deleteFile":Z
    :try_start_1e7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1ea} :catch_1f1
    .catchall {:try_start_1e7 .. :try_end_1ea} :catchall_251

    .line 371
    .end local v13    # "is":Ljava/io/InputStream;
    if-eqz v19, :cond_263

    .line 373
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto/16 :goto_263

    .line 366
    :catch_1f1
    move-exception v0

    goto :goto_214

    .line 311
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v18    # "taskNdx":I
    .end local v19    # "deleteFile":Z
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    .restart local v11    # "deleteFile":Z
    .restart local v13    # "is":Ljava/io/InputStream;
    :catchall_1f3
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v18, v8

    move/from16 v19, v11

    move-object v6, v0

    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .end local v11    # "deleteFile":Z
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v18    # "taskNdx":I
    .restart local v19    # "deleteFile":Z
    :goto_1fb
    :try_start_1fb
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1fe
    .catchall {:try_start_1fb .. :try_end_1fe} :catchall_1ff

    goto :goto_204

    :catchall_1ff
    move-exception v0

    move-object v8, v0

    :try_start_201
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v4    # "recoveredTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v5    # "userTasksDir":Ljava/io/File;
    .end local v10    # "taskFile":Ljava/io/File;
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v18    # "taskNdx":I
    .end local v19    # "deleteFile":Z
    .end local p0    # "this":Lcom/android/server/wm/TaskPersister;
    .end local p1    # "userId":I
    .end local p2    # "preaddedTasks":Landroid/util/SparseBooleanArray;
    :goto_204
    throw v6
    :try_end_205
    .catch Ljava/lang/Exception; {:try_start_201 .. :try_end_205} :catch_1f1
    .catchall {:try_start_201 .. :try_end_205} :catchall_251

    .line 371
    .end local v13    # "is":Ljava/io/InputStream;
    .restart local v3    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .restart local v4    # "recoveredTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v5    # "userTasksDir":Ljava/io/File;
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    .restart local v10    # "taskFile":Ljava/io/File;
    .restart local v11    # "deleteFile":Z
    .restart local p0    # "this":Lcom/android/server/wm/TaskPersister;
    .restart local p1    # "userId":I
    .restart local p2    # "preaddedTasks":Landroid/util/SparseBooleanArray;
    :catchall_205
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v18, v8

    move/from16 v19, v11

    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .end local v11    # "deleteFile":Z
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v18    # "taskNdx":I
    .restart local v19    # "deleteFile":Z
    goto :goto_252

    .line 366
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v18    # "taskNdx":I
    .end local v19    # "deleteFile":Z
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    .restart local v11    # "deleteFile":Z
    :catch_20d
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v18, v8

    move/from16 v19, v11

    .line 367
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .end local v11    # "deleteFile":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v18    # "taskNdx":I
    .restart local v19    # "deleteFile":Z
    :goto_214
    :try_start_214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ". Error "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failing file: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {v1, v10}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24a
    .catchall {:try_start_214 .. :try_end_24a} :catchall_251

    .line 369
    const/4 v0, 0x1

    .line 371
    .end local v19    # "deleteFile":Z
    .local v0, "deleteFile":Z
    if-eqz v0, :cond_263

    .line 373
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto :goto_263

    .line 371
    .end local v0    # "deleteFile":Z
    .restart local v19    # "deleteFile":Z
    :catchall_251
    move-exception v0

    :goto_252
    if-eqz v19, :cond_257

    .line 373
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 375
    :cond_257
    throw v0

    .line 305
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v18    # "taskNdx":I
    .end local v19    # "deleteFile":Z
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    :catch_258
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v18, v8

    .line 306
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v18    # "taskNdx":I
    :goto_25d
    const-string v6, "Unexpected task file name"

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    nop

    .line 286
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "taskFile":Ljava/io/File;
    :cond_263
    :goto_263
    add-int/lit8 v8, v18, 0x1

    move-object/from16 v6, v16

    .end local v18    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    goto/16 :goto_36

    .end local v16    # "recentFiles":[Ljava/io/File;
    .restart local v6    # "recentFiles":[Ljava/io/File;
    :cond_269
    move-object/from16 v16, v6

    move/from16 v18, v8

    .line 379
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .restart local v16    # "recentFiles":[Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 383
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    .local v0, "taskNdx":I
    :goto_27a
    if-ltz v0, :cond_297

    .line 384
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    .line 385
    .local v6, "task":Lcom/android/server/wm/Task;
    iget v7, v6, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-direct {v1, v7, v3}, Lcom/android/server/wm/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/Task;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 386
    iget v7, v6, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-direct {v1, v7, v3}, Lcom/android/server/wm/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/Task;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 383
    .end local v6    # "task":Lcom/android/server/wm/Task;
    add-int/lit8 v0, v0, -0x1

    goto :goto_27a

    .line 389
    .end local v0    # "taskNdx":I
    :cond_297
    new-instance v0, Lcom/android/server/wm/TaskPersister$1;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskPersister$1;-><init>(Lcom/android/server/wm/TaskPersister;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 402
    return-object v3
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 6
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-direct {v1, p2, p1}, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 226
    return-void
.end method

.method unloadUserDataFromMemory(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 187
    return-void
.end method

.method wakeup(Lcom/android/server/wm/Task;Z)V
    .registers 8
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "flush"    # Z

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v0

    .line 191
    if-eqz p1, :cond_30

    .line 192
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/Task;)V

    const-class v3, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    .line 194
    .local v1, "item":Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
    if-eqz v1, :cond_1d

    iget-boolean v2, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-nez v2, :cond_1d

    .line 195
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPersister;->removeThumbnails(Lcom/android/server/wm/Task;)V

    .line 198
    :cond_1d
    if-nez v1, :cond_2f

    iget-boolean v2, p1, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v2, :cond_2f

    .line 199
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v3, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    iget-object v4, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v3, p1, v4}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v2, v3, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 201
    .end local v1    # "item":Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
    :cond_2f
    goto :goto_37

    .line 204
    :cond_30
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    sget-object v2, Lcom/android/server/wm/PersisterQueue;->EMPTY_ITEM:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 210
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_3e

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->yieldIfQueueTooDeep()V

    .line 213
    return-void

    .line 210
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V
    .registers 10
    .param p1, "taskIds"    # Landroid/util/SparseBooleanArray;
    .param p2, "userId"    # I

    .line 163
    if-gez p2, :cond_3

    .line 164
    return-void

    .line 166
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v0

    .line 167
    .local v0, "persistedTaskIdsFile":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    const/4 v2, 0x0

    .line 170
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_b
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 171
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 172
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 173
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_31} :catch_3a
    .catchall {:try_start_b .. :try_end_31} :catchall_38

    .line 171
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 180
    .end local v3    # "i":I
    :cond_34
    :try_start_34
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_5e

    .line 181
    :goto_37
    goto :goto_57

    .line 180
    :catchall_38
    move-exception v3

    goto :goto_59

    .line 177
    :catch_3a
    move-exception v3

    .line 178
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3b
    const-string v4, "TaskPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while writing taskIds file for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_38

    .line 180
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_53
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_37

    .line 182
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    :goto_57
    monitor-exit v1

    .line 183
    return-void

    .line 180
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :goto_59
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 181
    nop

    .end local v0    # "persistedTaskIdsFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/wm/TaskPersister;
    .end local p1    # "taskIds":Landroid/util/SparseBooleanArray;
    .end local p2    # "userId":I
    throw v3

    .line 182
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v0    # "persistedTaskIdsFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/wm/TaskPersister;
    .restart local p1    # "taskIds":Landroid/util/SparseBooleanArray;
    .restart local p2    # "userId":I
    :catchall_5e
    move-exception v2

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_5e

    throw v2
.end method
