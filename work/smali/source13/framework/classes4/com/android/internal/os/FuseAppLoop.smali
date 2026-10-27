.class public Lcom/android/internal/os/FuseAppLoop;
.super Ljava/lang/Object;
.source "FuseAppLoop.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/FuseAppLoop$Args;,
        Lcom/android/internal/os/FuseAppLoop$BytesMap;,
        Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;,
        Lcom/android/internal/os/FuseAppLoop$CallbackEntry;,
        Lcom/android/internal/os/FuseAppLoop$UnmountedException;
    }
.end annotation


# static fields
.field private static final greylist-max-o ARGS_POOL_SIZE:I = 0x32

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o FUSE_FSYNC:I = 0x14

.field private static final greylist-max-o FUSE_GETATTR:I = 0x3

.field private static final greylist-max-o FUSE_LOOKUP:I = 0x1

.field private static final greylist-max-o FUSE_MAX_WRITE:I = 0x20000

.field private static final greylist-max-o FUSE_OK:I = 0x0

.field private static final greylist-max-o FUSE_OPEN:I = 0xe

.field private static final greylist-max-o FUSE_READ:I = 0xf

.field private static final greylist-max-o FUSE_RELEASE:I = 0x12

.field private static final greylist-max-o FUSE_WRITE:I = 0x10

.field private static final greylist-max-o MIN_INODE:I = 0x2

.field public static final greylist-max-o ROOT_INODE:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FuseAppLoop"

.field private static final greylist-max-o sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final greylist-max-o mArgsPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/os/FuseAppLoop$Args;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

.field private final greylist-max-o mCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/FuseAppLoop$CallbackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mInstance:J

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mMountPointId:I

.field private greylist-max-o mNextInode:I

.field private final greylist-max-o mThread:Ljava/lang/Thread;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 43
    const-string v0, "FuseAppLoop"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/FuseAppLoop;->DEBUG:Z

    .line 46
    new-instance v0, Lcom/android/internal/os/FuseAppLoop$1;

    invoke-direct {v0}, Lcom/android/internal/os/FuseAppLoop$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor greylist-max-o <init>(ILandroid/os/ParcelFileDescriptor;Ljava/util/concurrent/ThreadFactory;)V
    .registers 6
    .param p1, "mountPointId"    # I
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "factory"    # Ljava/util/concurrent/ThreadFactory;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    .line 62
    new-instance v0, Lcom/android/internal/os/FuseAppLoop$BytesMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;-><init>(Lcom/android/internal/os/FuseAppLoop$BytesMap-IA;)V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 80
    iput p1, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    .line 81
    if-nez p3, :cond_29

    .line 82
    sget-object p3, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 84
    :cond_29
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/FuseAppLoop;->native_new(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 85
    new-instance v0, Lcom/android/internal/os/FuseAppLoop$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/os/FuseAppLoop$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/os/FuseAppLoop;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mThread:Ljava/lang/Thread;

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method

.method private static greylist-max-o checkInode(J)I
    .registers 9
    .param p0, "inode"    # J

    .line 328
    const-wide/16 v2, 0x2

    const-wide/32 v4, 0x7fffffff

    const-string v6, "checkInode"

    move-wide v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 329
    long-to-int v0, p0

    return v0
.end method

.method private greylist-max-o getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .registers 7
    .param p1, "inode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Lcom/android/internal/os/FuseAppLoop;->checkInode(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 296
    .local v0, "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    if-eqz v0, :cond_f

    .line 299
    return-object v0

    .line 297
    :cond_f
    new-instance v1, Landroid/system/ErrnoException;

    sget v2, Landroid/system/OsConstants;->ENOENT:I

    const-string v3, "getCallbackEntryOrThrowLocked"

    invoke-direct {v1, v3, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static greylist-max-o getError(Ljava/lang/Exception;)I
    .registers 3
    .param p0, "error"    # Ljava/lang/Exception;

    .line 284
    instance-of v0, p0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_f

    .line 285
    move-object v0, p0

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    .line 286
    .local v0, "errno":I
    sget v1, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v0, v1, :cond_f

    .line 287
    neg-int v1, v0

    return v1

    .line 290
    .end local v0    # "errno":I
    :cond_f
    sget v0, Landroid/system/OsConstants;->EBADF:I

    neg-int v0, v0

    return v0
.end method

.method private greylist-max-r onCommand(IJJJI[B)V
    .registers 15
    .param p1, "command"    # I
    .param p2, "unique"    # J
    .param p4, "inode"    # J
    .param p6, "offset"    # J
    .param p8, "size"    # I
    .param p9, "data"    # [B

    .line 237
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_12

    .line 241
    new-instance v1, Lcom/android/internal/os/FuseAppLoop$Args;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseAppLoop$Args;-><init>(Lcom/android/internal/os/FuseAppLoop$Args-IA;)V

    .local v1, "args":Lcom/android/internal/os/FuseAppLoop$Args;
    goto :goto_1a

    .line 243
    .end local v1    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    :cond_12
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/FuseAppLoop$Args;

    .line 245
    .restart local v1    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    :goto_1a
    iput-wide p2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    .line 246
    iput-wide p4, v1, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    .line 247
    iput-wide p6, v1, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    .line 248
    iput p8, v1, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    .line 249
    iput-object p9, v1, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    .line 250
    invoke-direct {p0, p4, p5}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 251
    iget-object v2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v2, v2, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v3, v3, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    .line 252
    const/4 v4, 0x0

    invoke-static {v3, p1, v4, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 251
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 257
    .end local v1    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    goto :goto_53

    .line 253
    .restart local v1    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    :cond_3e
    new-instance v2, Landroid/system/ErrnoException;

    const-string/jumbo v3, "onCommand"

    sget v4, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {v2, v3, v4}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "command":I
    .end local p2    # "unique":J
    .end local p4    # "inode":J
    .end local p6    # "offset":J
    .end local p8    # "size":I
    .end local p9    # "data":[B
    throw v2
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_49} :catch_4b
    .catchall {:try_start_3 .. :try_end_49} :catchall_49

    .line 258
    .end local v1    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "command":I
    .restart local p2    # "unique":J
    .restart local p4    # "inode":J
    .restart local p6    # "offset":J
    .restart local p8    # "size":I
    .restart local p9    # "data":[B
    :catchall_49
    move-exception v1

    goto :goto_55

    .line 255
    :catch_4b
    move-exception v1

    .line 256
    .local v1, "error":Ljava/lang/Exception;
    :try_start_4c
    invoke-static {v1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v2

    invoke-direct {p0, p2, p3, v2}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    .line 258
    .end local v1    # "error":Ljava/lang/Exception;
    :goto_53
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_49

    throw v1
.end method

.method private greylist-max-r onOpen(JJ)[B
    .registers 15
    .param p1, "unique"    # J
    .param p3, "inode"    # J

    .line 265
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    invoke-direct {p0, p3, p4}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v1

    .line 268
    .local v1, "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    iget-boolean v2, v1, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    if-nez v2, :cond_25

    .line 271
    iget-wide v4, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_24

    .line 272
    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyOpen(JJJ)V

    .line 273
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    .line 274
    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v2, p3, p4}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->startUsing(J)[B

    move-result-object v2
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_22} :catch_32
    .catchall {:try_start_3 .. :try_end_22} :catchall_30

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_30

    return-object v2

    .line 278
    .end local v1    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    :cond_24
    goto :goto_3a

    .line 269
    .restart local v1    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    :cond_25
    :try_start_25
    new-instance v2, Landroid/system/ErrnoException;

    const-string/jumbo v3, "onOpen"

    sget v4, Landroid/system/OsConstants;->EMFILE:I

    invoke-direct {v2, v3, v4}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "unique":J
    .end local p3    # "inode":J
    throw v2
    :try_end_30
    .catch Landroid/system/ErrnoException; {:try_start_25 .. :try_end_30} :catch_32
    .catchall {:try_start_25 .. :try_end_30} :catchall_30

    .line 280
    .end local v1    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "unique":J
    .restart local p3    # "inode":J
    :catchall_30
    move-exception v1

    goto :goto_3d

    .line 276
    :catch_32
    move-exception v1

    .line 277
    .local v1, "error":Landroid/system/ErrnoException;
    :try_start_33
    invoke-static {v1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    .line 279
    .end local v1    # "error":Landroid/system/ErrnoException;
    :goto_3a
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 280
    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_30

    throw v1
.end method

.method private greylist-max-o recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    .registers 4
    .param p1, "args"    # Lcom/android/internal/os/FuseAppLoop$Args;

    .line 304
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_f

    .line 305
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_f
    return-void
.end method

.method private greylist-max-o replySimpleLocked(JI)V
    .registers 10
    .param p1, "unique"    # J
    .param p3, "result"    # I

    .line 311
    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_e

    .line 312
    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    .line 314
    :cond_e
    return-void
.end method


# virtual methods
.method public greylist-max-o getMountPointId()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    return v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)Z
    .registers 27
    .param p1, "msg"    # Landroid/os/Message;

    .line 150
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/FuseAppLoop$Args;

    .line 151
    .local v12, "args":Lcom/android/internal/os/FuseAppLoop$Args;
    iget-object v13, v12, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 152
    .local v13, "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    iget-wide v14, v12, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    .line 153
    .local v14, "inode":J
    iget-wide v8, v12, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    .line 154
    .local v8, "unique":J
    iget v7, v12, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    .line 155
    .local v7, "size":I
    iget-wide v4, v12, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    .line 156
    .local v4, "offset":J
    iget-object v6, v12, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    .line 159
    .local v6, "data":[B
    :try_start_15
    iget v0, v11, Landroid/os/Message;->what:I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_17} :catch_217

    sparse-switch v0, :sswitch_data_242

    .line 219
    move-object v11, v6

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-wide/from16 v19, v14

    move-wide v14, v4

    .end local v4    # "offset":J
    .end local v6    # "data":[B
    .end local v7    # "size":I
    .end local v8    # "unique":J
    .local v11, "data":[B
    .local v14, "offset":J
    .local v18, "size":I
    .local v19, "inode":J
    .local v21, "unique":J
    :try_start_22
    new-instance v0, Ljava/lang/IllegalArgumentException;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_24} :catch_212

    goto/16 :goto_1f4

    .line 200
    .end local v11    # "data":[B
    .end local v18    # "size":I
    .end local v19    # "inode":J
    .end local v21    # "unique":J
    .restart local v4    # "offset":J
    .restart local v6    # "data":[B
    .restart local v7    # "size":I
    .restart local v8    # "unique":J
    .local v14, "inode":J
    :sswitch_26
    :try_start_26
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onFsync()V

    .line 201
    iget-object v3, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_67

    .line 202
    :try_start_2e
    iget-wide v1, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_5d

    const-wide/16 v16, 0x0

    cmp-long v0, v1, v16

    if-eqz v0, :cond_48

    .line 203
    const/4 v0, 0x0

    move-wide/from16 v16, v1

    move-object/from16 v1, p0

    move-object/from16 v18, v3

    move-wide/from16 v2, v16

    move-wide/from16 v19, v4

    .end local v4    # "offset":J
    .local v19, "offset":J
    move-wide v4, v8

    move-object v11, v6

    .end local v6    # "data":[B
    .restart local v11    # "data":[B
    move v6, v0

    :try_start_44
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    goto :goto_4d

    .line 202
    .end local v11    # "data":[B
    .end local v19    # "offset":J
    .restart local v4    # "offset":J
    .restart local v6    # "data":[B
    :cond_48
    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-object v11, v6

    .line 205
    .end local v4    # "offset":J
    .end local v6    # "data":[B
    .restart local v11    # "data":[B
    .restart local v19    # "offset":J
    :goto_4d
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 206
    monitor-exit v18

    .line 207
    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-wide/from16 v23, v14

    move-wide/from16 v14, v19

    move-wide/from16 v19, v23

    goto/16 :goto_1e2

    .line 206
    .end local v11    # "data":[B
    .end local v19    # "offset":J
    .restart local v4    # "offset":J
    .restart local v6    # "data":[B
    :catchall_5d
    move-exception v0

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-object v11, v6

    .end local v4    # "offset":J
    .end local v6    # "data":[B
    .restart local v11    # "data":[B
    .restart local v19    # "offset":J
    :goto_63
    monitor-exit v18
    :try_end_64
    .catchall {:try_start_44 .. :try_end_64} :catchall_65

    .end local v7    # "size":I
    .end local v8    # "unique":J
    .end local v11    # "data":[B
    .end local v12    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .end local v13    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .end local v14    # "inode":J
    .end local v19    # "offset":J
    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_64
    throw v0

    .restart local v7    # "size":I
    .restart local v8    # "unique":J
    .restart local v11    # "data":[B
    .restart local v12    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .restart local v13    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local v14    # "inode":J
    .restart local v19    # "offset":J
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_65
    move-exception v0

    goto :goto_63

    .line 221
    .end local v11    # "data":[B
    .end local v19    # "offset":J
    .restart local v4    # "offset":J
    .restart local v6    # "data":[B
    :catch_67
    move-exception v0

    move-object/from16 v2, p1

    move-object v3, v6

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-wide/from16 v19, v14

    move-wide v14, v4

    .end local v4    # "offset":J
    .end local v6    # "data":[B
    .restart local v11    # "data":[B
    .restart local v19    # "offset":J
    goto/16 :goto_221

    .line 209
    .end local v11    # "data":[B
    .end local v19    # "offset":J
    .restart local v4    # "offset":J
    .restart local v6    # "data":[B
    :sswitch_74
    move-wide/from16 v19, v4

    move-object v11, v6

    .end local v4    # "offset":J
    .end local v6    # "data":[B
    .restart local v11    # "data":[B
    .restart local v19    # "offset":J
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onRelease()V

    .line 210
    iget-object v6, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7f} :catch_b0

    .line 211
    :try_start_7f
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_81
    .catchall {:try_start_7f .. :try_end_81} :catchall_a9

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_92

    .line 212
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-wide v4, v8

    move-object/from16 v16, v6

    move v6, v0

    :try_start_8e
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    goto :goto_94

    .line 211
    :cond_92
    move-object/from16 v16, v6

    .line 214
    :goto_94
    iget-object v0, v10, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->stopUsing(J)V

    .line 215
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 216
    monitor-exit v16

    .line 217
    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-wide/from16 v23, v14

    move-wide/from16 v14, v19

    move-wide/from16 v19, v23

    goto/16 :goto_1e2

    .line 216
    :catchall_a9
    move-exception v0

    move-object/from16 v16, v6

    :goto_ac
    monitor-exit v16
    :try_end_ad
    .catchall {:try_start_8e .. :try_end_ad} :catchall_ae

    .end local v7    # "size":I
    .end local v8    # "unique":J
    .end local v11    # "data":[B
    .end local v12    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .end local v13    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .end local v14    # "inode":J
    .end local v19    # "offset":J
    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_ad
    throw v0
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ae} :catch_b0

    .restart local v7    # "size":I
    .restart local v8    # "unique":J
    .restart local v11    # "data":[B
    .restart local v12    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .restart local v13    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local v14    # "inode":J
    .restart local v19    # "offset":J
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_ae
    move-exception v0

    goto :goto_ac

    .line 221
    :catch_b0
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-object v3, v11

    move-wide/from16 v23, v14

    move-wide/from16 v14, v19

    move-wide/from16 v19, v23

    goto/16 :goto_221

    .line 191
    .end local v11    # "data":[B
    .end local v19    # "offset":J
    .restart local v4    # "offset":J
    .restart local v6    # "data":[B
    :sswitch_c0
    move-wide/from16 v19, v4

    move-object v11, v6

    .end local v4    # "offset":J
    .end local v6    # "data":[B
    .restart local v11    # "data":[B
    .restart local v19    # "offset":J
    :try_start_c3
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c5} :catch_116

    move-wide/from16 v4, v19

    .end local v19    # "offset":J
    .restart local v4    # "offset":J
    :try_start_c7
    invoke-virtual {v0, v4, v5, v7, v11}, Landroid/os/ProxyFileDescriptorCallback;->onWrite(JI[B)I

    move-result v6

    .line 192
    .local v6, "writeSize":I
    iget-object v2, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ce} :catch_109

    .line 193
    :try_start_ce
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_d0
    .catchall {:try_start_ce .. :try_end_d0} :catchall_f5

    const-wide/16 v16, 0x0

    cmp-long v3, v0, v16

    if-eqz v3, :cond_e6

    .line 194
    move-wide/from16 v16, v0

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move-wide/from16 v2, v16

    move-wide/from16 v19, v14

    move-wide v14, v4

    .end local v4    # "offset":J
    .local v14, "offset":J
    .local v19, "inode":J
    move-wide v4, v8

    :try_start_e2
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replyWrite(JJI)V

    goto :goto_eb

    .line 193
    .end local v19    # "inode":J
    .restart local v4    # "offset":J
    .local v14, "inode":J
    :cond_e6
    move-object/from16 v18, v2

    move-wide/from16 v19, v14

    move-wide v14, v4

    .line 196
    .end local v4    # "offset":J
    .local v14, "offset":J
    .restart local v19    # "inode":J
    :goto_eb
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 197
    monitor-exit v18

    .line 198
    move/from16 v18, v7

    move-wide/from16 v21, v8

    goto/16 :goto_1e2

    .line 197
    .end local v19    # "inode":J
    .restart local v4    # "offset":J
    .local v14, "inode":J
    :catchall_f5
    move-exception v0

    move-object/from16 v18, v2

    move-wide/from16 v19, v14

    move-wide v14, v4

    .end local v4    # "offset":J
    .local v14, "offset":J
    .restart local v19    # "inode":J
    :goto_fb
    monitor-exit v18
    :try_end_fc
    .catchall {:try_start_e2 .. :try_end_fc} :catchall_107

    .end local v7    # "size":I
    .end local v8    # "unique":J
    .end local v11    # "data":[B
    .end local v12    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .end local v13    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .end local v14    # "offset":J
    .end local v19    # "inode":J
    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_fc
    throw v0
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_fd} :catch_fd

    .line 221
    .end local v6    # "writeSize":I
    .restart local v7    # "size":I
    .restart local v8    # "unique":J
    .restart local v11    # "data":[B
    .restart local v12    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .restart local v13    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local v14    # "offset":J
    .restart local v19    # "inode":J
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_fd
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-object v3, v11

    goto/16 :goto_221

    .line 197
    .restart local v6    # "writeSize":I
    :catchall_107
    move-exception v0

    goto :goto_fb

    .line 221
    .end local v6    # "writeSize":I
    .end local v19    # "inode":J
    .restart local v4    # "offset":J
    .local v14, "inode":J
    :catch_109
    move-exception v0

    move-wide/from16 v19, v14

    move-wide v14, v4

    move-object/from16 v2, p1

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-object v3, v11

    .end local v4    # "offset":J
    .local v14, "offset":J
    .restart local v19    # "inode":J
    goto/16 :goto_221

    .local v14, "inode":J
    .local v19, "offset":J
    :catch_116
    move-exception v0

    move-wide/from16 v23, v14

    move-wide/from16 v14, v19

    move-wide/from16 v19, v23

    move-object/from16 v2, p1

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-object v3, v11

    .local v14, "offset":J
    .local v19, "inode":J
    goto/16 :goto_221

    .line 181
    .end local v11    # "data":[B
    .end local v19    # "inode":J
    .restart local v4    # "offset":J
    .local v6, "data":[B
    .local v14, "inode":J
    :sswitch_126
    move-object v11, v6

    move-wide/from16 v19, v14

    move-wide v14, v4

    .end local v4    # "offset":J
    .end local v6    # "data":[B
    .restart local v11    # "data":[B
    .local v14, "offset":J
    .restart local v19    # "inode":J
    :try_start_12a
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0, v14, v15, v7, v11}, Landroid/os/ProxyFileDescriptorCallback;->onRead(JI[B)I

    move-result v6

    .line 183
    .local v6, "readSize":I
    iget-object v4, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_133} :catch_164

    .line 184
    :try_start_133
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_135
    .catchall {:try_start_133 .. :try_end_135} :catchall_153

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_147

    .line 185
    move-object/from16 v1, p0

    move-object/from16 v16, v4

    move-wide v4, v8

    move/from16 v18, v7

    .end local v7    # "size":I
    .restart local v18    # "size":I
    move-object v7, v11

    :try_start_143
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/FuseAppLoop;->native_replyRead(JJI[B)V

    goto :goto_14b

    .line 184
    .end local v18    # "size":I
    .restart local v7    # "size":I
    :cond_147
    move-object/from16 v16, v4

    move/from16 v18, v7

    .line 187
    .end local v7    # "size":I
    .restart local v18    # "size":I
    :goto_14b
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 188
    monitor-exit v16

    .line 189
    move-wide/from16 v21, v8

    goto/16 :goto_1e2

    .line 188
    .end local v18    # "size":I
    .restart local v7    # "size":I
    :catchall_153
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v18, v7

    .end local v7    # "size":I
    .restart local v18    # "size":I
    :goto_158
    monitor-exit v16
    :try_end_159
    .catchall {:try_start_143 .. :try_end_159} :catchall_162

    .end local v8    # "unique":J
    .end local v11    # "data":[B
    .end local v12    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .end local v13    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .end local v14    # "offset":J
    .end local v18    # "size":I
    .end local v19    # "inode":J
    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_159
    throw v0
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_15a} :catch_15a

    .line 221
    .end local v6    # "readSize":I
    .restart local v8    # "unique":J
    .restart local v11    # "data":[B
    .restart local v12    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .restart local v13    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local v14    # "offset":J
    .restart local v18    # "size":I
    .restart local v19    # "inode":J
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_15a
    move-exception v0

    move-object/from16 v2, p1

    move-wide/from16 v21, v8

    move-object v3, v11

    goto/16 :goto_221

    .line 188
    .restart local v6    # "readSize":I
    :catchall_162
    move-exception v0

    goto :goto_158

    .line 221
    .end local v6    # "readSize":I
    .end local v18    # "size":I
    .restart local v7    # "size":I
    :catch_164
    move-exception v0

    move/from16 v18, v7

    move-object/from16 v2, p1

    move-wide/from16 v21, v8

    move-object v3, v11

    .end local v7    # "size":I
    .restart local v18    # "size":I
    goto/16 :goto_221

    .line 171
    .end local v11    # "data":[B
    .end local v18    # "size":I
    .end local v19    # "inode":J
    .restart local v4    # "offset":J
    .local v6, "data":[B
    .restart local v7    # "size":I
    .local v14, "inode":J
    :sswitch_16e
    move-object v11, v6

    move/from16 v18, v7

    move-wide/from16 v19, v14

    move-wide v14, v4

    .end local v4    # "offset":J
    .end local v6    # "data":[B
    .end local v7    # "size":I
    .restart local v11    # "data":[B
    .local v14, "offset":J
    .restart local v18    # "size":I
    .restart local v19    # "inode":J
    :try_start_174
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v0
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_17a} :catch_1ae

    move-wide v6, v8

    .end local v8    # "unique":J
    .local v6, "unique":J
    move-wide v8, v0

    .line 172
    .local v8, "fileSize":J
    :try_start_17c
    iget-object v4, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_17f} :catch_1a6

    .line 173
    :try_start_17f
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_181
    .catchall {:try_start_17f .. :try_end_181} :catchall_19d

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_194

    .line 174
    move-object/from16 v1, p0

    move-object/from16 v16, v4

    move-wide v4, v6

    move-wide/from16 v21, v6

    .end local v6    # "unique":J
    .restart local v21    # "unique":J
    move-wide/from16 v6, v19

    :try_start_190
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyGetAttr(JJJJ)V

    goto :goto_198

    .line 173
    .end local v21    # "unique":J
    .restart local v6    # "unique":J
    :cond_194
    move-object/from16 v16, v4

    move-wide/from16 v21, v6

    .line 176
    .end local v6    # "unique":J
    .restart local v21    # "unique":J
    :goto_198
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 177
    monitor-exit v16

    .line 178
    goto :goto_1e2

    .line 177
    .end local v21    # "unique":J
    .restart local v6    # "unique":J
    :catchall_19d
    move-exception v0

    move-object/from16 v16, v4

    move-wide/from16 v21, v6

    .end local v6    # "unique":J
    .restart local v21    # "unique":J
    :goto_1a2
    monitor-exit v16
    :try_end_1a3
    .catchall {:try_start_190 .. :try_end_1a3} :catchall_1a4

    .end local v11    # "data":[B
    .end local v12    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .end local v13    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .end local v14    # "offset":J
    .end local v18    # "size":I
    .end local v19    # "inode":J
    .end local v21    # "unique":J
    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_1a3
    throw v0

    .restart local v11    # "data":[B
    .restart local v12    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .restart local v13    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local v14    # "offset":J
    .restart local v18    # "size":I
    .restart local v19    # "inode":J
    .restart local v21    # "unique":J
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_1a4
    move-exception v0

    goto :goto_1a2

    .line 221
    .end local v8    # "fileSize":J
    .end local v21    # "unique":J
    .restart local v6    # "unique":J
    :catch_1a6
    move-exception v0

    move-wide/from16 v21, v6

    move-object/from16 v2, p1

    move-object v3, v11

    .end local v6    # "unique":J
    .restart local v21    # "unique":J
    goto/16 :goto_221

    .end local v21    # "unique":J
    .local v8, "unique":J
    :catch_1ae
    move-exception v0

    move-wide/from16 v21, v8

    move-object/from16 v2, p1

    move-object v3, v11

    .end local v8    # "unique":J
    .restart local v21    # "unique":J
    goto/16 :goto_221

    .line 161
    .end local v11    # "data":[B
    .end local v18    # "size":I
    .end local v19    # "inode":J
    .end local v21    # "unique":J
    .restart local v4    # "offset":J
    .local v6, "data":[B
    .restart local v7    # "size":I
    .restart local v8    # "unique":J
    .local v14, "inode":J
    :sswitch_1b6
    move-object v11, v6

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-wide/from16 v19, v14

    move-wide v14, v4

    .end local v4    # "offset":J
    .end local v6    # "data":[B
    .end local v7    # "size":I
    .end local v8    # "unique":J
    .restart local v11    # "data":[B
    .local v14, "offset":J
    .restart local v18    # "size":I
    .restart local v19    # "inode":J
    .restart local v21    # "unique":J
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v8

    .line 162
    .local v8, "fileSize":J
    iget-object v6, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1c7} :catch_1ef

    .line 163
    :try_start_1c7
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_1c9
    .catchall {:try_start_1c7 .. :try_end_1c9} :catchall_1e8

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1db

    .line 164
    move-object/from16 v1, p0

    move-wide/from16 v4, v21

    move-object/from16 v16, v6

    move-wide/from16 v6, v19

    :try_start_1d7
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyLookup(JJJJ)V

    goto :goto_1dd

    .line 163
    :cond_1db
    move-object/from16 v16, v6

    .line 166
    :goto_1dd
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 167
    monitor-exit v16

    .line 168
    nop

    .line 227
    .end local v8    # "fileSize":J
    :goto_1e2
    move-object/from16 v2, p1

    move-object v3, v11

    move-wide/from16 v5, v21

    goto :goto_239

    .line 167
    .restart local v8    # "fileSize":J
    :catchall_1e8
    move-exception v0

    move-object/from16 v16, v6

    :goto_1eb
    monitor-exit v16
    :try_end_1ec
    .catchall {:try_start_1d7 .. :try_end_1ec} :catchall_1ed

    .end local v11    # "data":[B
    .end local v12    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .end local v13    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .end local v14    # "offset":J
    .end local v18    # "size":I
    .end local v19    # "inode":J
    .end local v21    # "unique":J
    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_1ec
    throw v0
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_1ed} :catch_1ef

    .restart local v11    # "data":[B
    .restart local v12    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .restart local v13    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local v14    # "offset":J
    .restart local v18    # "size":I
    .restart local v19    # "inode":J
    .restart local v21    # "unique":J
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_1ed
    move-exception v0

    goto :goto_1eb

    .line 221
    .end local v8    # "fileSize":J
    :catch_1ef
    move-exception v0

    move-object/from16 v2, p1

    move-object v3, v11

    goto :goto_221

    .line 219
    :goto_1f4
    :try_start_1f4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown FUSE command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_1ff
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_1ff} :catch_212

    move-object/from16 v2, p1

    move-object v3, v11

    .end local v11    # "data":[B
    .local v3, "data":[B
    :try_start_202
    iget v4, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "data":[B
    .end local v12    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .end local v13    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .end local v14    # "offset":J
    .end local v18    # "size":I
    .end local v19    # "inode":J
    .end local v21    # "unique":J
    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "msg":Landroid/os/Message;
    throw v0
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_210} :catch_210

    .line 221
    .restart local v3    # "data":[B
    .restart local v12    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .restart local v13    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local v14    # "offset":J
    .restart local v18    # "size":I
    .restart local v19    # "inode":J
    .restart local v21    # "unique":J
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_210
    move-exception v0

    goto :goto_221

    .end local v3    # "data":[B
    .restart local v11    # "data":[B
    :catch_212
    move-exception v0

    move-object/from16 v2, p1

    move-object v3, v11

    .end local v11    # "data":[B
    .restart local v3    # "data":[B
    goto :goto_221

    .end local v3    # "data":[B
    .end local v18    # "size":I
    .end local v19    # "inode":J
    .end local v21    # "unique":J
    .restart local v4    # "offset":J
    .restart local v6    # "data":[B
    .restart local v7    # "size":I
    .local v8, "unique":J
    .local v14, "inode":J
    :catch_217
    move-exception v0

    move-object v3, v6

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-object v2, v11

    move-wide/from16 v19, v14

    move-wide v14, v4

    .end local v4    # "offset":J
    .end local v6    # "data":[B
    .end local v7    # "size":I
    .end local v8    # "unique":J
    .restart local v3    # "data":[B
    .local v14, "offset":J
    .restart local v18    # "size":I
    .restart local v19    # "inode":J
    .restart local v21    # "unique":J
    :goto_221
    move-object v1, v0

    .line 222
    .local v1, "error":Ljava/lang/Exception;
    iget-object v4, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 223
    :try_start_225
    const-string v0, "FuseAppLoop"

    const-string v5, ""

    invoke-static {v0, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    invoke-static {v1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v0
    :try_end_230
    .catchall {:try_start_225 .. :try_end_230} :catchall_23b

    move-wide/from16 v5, v21

    .end local v21    # "unique":J
    .local v5, "unique":J
    :try_start_232
    invoke-direct {v10, v5, v6, v0}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    .line 225
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 226
    monitor-exit v4

    .line 229
    .end local v1    # "error":Ljava/lang/Exception;
    :goto_239
    const/4 v0, 0x1

    return v0

    .line 226
    .end local v5    # "unique":J
    .restart local v1    # "error":Ljava/lang/Exception;
    .restart local v21    # "unique":J
    :catchall_23b
    move-exception v0

    move-wide/from16 v5, v21

    .end local v21    # "unique":J
    .restart local v5    # "unique":J
    :goto_23e
    monitor-exit v4
    :try_end_23f
    .catchall {:try_start_232 .. :try_end_23f} :catchall_240

    throw v0

    :catchall_240
    move-exception v0

    goto :goto_23e

    :sswitch_data_242
    .sparse-switch
        0x1 -> :sswitch_1b6
        0x3 -> :sswitch_16e
        0xf -> :sswitch_126
        0x10 -> :sswitch_c0
        0x12 -> :sswitch_74
        0x14 -> :sswitch_26
    .end sparse-switch
.end method

.method synthetic blacklist lambda$new$0$com-android-internal-os-FuseAppLoop()V
    .registers 4

    .line 86
    iget-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/FuseAppLoop;->native_start(J)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_8
    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/FuseAppLoop;->native_delete(J)V

    .line 89
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 90
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->clear()V

    .line 91
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method native greylist-max-o native_delete(J)V
.end method

.method native greylist-max-o native_new(I)J
.end method

.method native greylist-max-o native_replyGetAttr(JJJJ)V
.end method

.method native greylist-max-o native_replyLookup(JJJJ)V
.end method

.method native greylist-max-o native_replyOpen(JJJ)V
.end method

.method native greylist-max-o native_replyRead(JJI[B)V
.end method

.method native greylist-max-o native_replySimple(JJI)V
.end method

.method native greylist-max-o native_replyWrite(JJI)V
.end method

.method native greylist-max-o native_start(J)V
.end method

.method public greylist-max-o registerCallback(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)I
    .registers 10
    .param p1, "callback"    # Landroid/os/ProxyFileDescriptorCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    .line 102
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const v2, 0x7ffffffd

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_18

    move v1, v4

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    const-string v2, "Too many opened files."

    .line 101
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 104
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_37

    move v3, v4

    :cond_37
    const-string v1, "Handler must be different from the current thread"

    .line 103
    invoke-static {v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 106
    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6e

    .line 111
    :cond_44
    iget v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    move v2, v1

    .line 112
    .local v2, "id":I
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 113
    if-gez v1, :cond_50

    .line 114
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 116
    :cond_50
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_44

    .line 117
    nop

    .line 120
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    new-instance v4, Landroid/os/Handler;

    .line 121
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v3, p1, v4}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;-><init>(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)V

    .line 120
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    monitor-exit v0

    return v2

    .line 107
    .end local v2    # "id":I
    :cond_6e
    new-instance v1, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "callback":Landroid/os/ProxyFileDescriptorCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v1

    .line 123
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "callback":Landroid/os/ProxyFileDescriptorCallback;
    .restart local p2    # "handler":Landroid/os/Handler;
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public greylist-max-o unregisterCallback(I)V
    .registers 4
    .param p1, "id"    # I

    .line 127
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 129
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
