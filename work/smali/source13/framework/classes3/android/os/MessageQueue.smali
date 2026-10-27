.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$FileDescriptorRecord;,
        Landroid/os/MessageQueue$OnFileDescriptorEventListener;,
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist SCOUT_ANR_TAG:Ljava/lang/String; = "MIUIScout ANR"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MessageQueue"


# instance fields
.field private greylist-max-o mBlocked:Z

.field private greylist-max-o mFileDescriptorRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/MessageQueue$FileDescriptorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field greylist mMessages:Landroid/os/Message;

.field private greylist mNextBarrierToken:I

.field private greylist-max-o mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private greylist mPtr:J

.field private final greylist mQuitAllowed:Z

.field private greylist-max-o mQuitting:Z


# direct methods
.method constructor greylist-max-o <init>(Z)V
    .registers 4
    .param p1, "quitAllowed"    # Z

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 84
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 85
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 86
    return-void
.end method

.method private greylist-max-r dispatchEvents(II)I
    .registers 10
    .param p1, "fd"    # I
    .param p2, "events"    # I

    .line 282
    monitor-enter p0

    .line 283
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 284
    .local v0, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-nez v0, :cond_e

    .line 285
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 288
    :cond_e
    iget v1, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 289
    .local v1, "oldWatchedEvents":I
    and-int/2addr p2, v1

    .line 290
    if-nez p2, :cond_15

    .line 291
    monitor-exit p0

    return v1

    .line 294
    :cond_15
    iget-object v2, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 295
    .local v2, "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    iget v3, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 296
    .local v3, "seq":I
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_4a

    .line 299
    iget-object v4, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-interface {v2, v4, p2}, Landroid/os/MessageQueue$OnFileDescriptorEventListener;->onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I

    move-result v4

    .line 301
    .local v4, "newWatchedEvents":I
    if-eqz v4, :cond_24

    .line 302
    or-int/lit8 v4, v4, 0x4

    .line 307
    :cond_24
    if-eq v4, v1, :cond_49

    .line 308
    monitor-enter p0

    .line 309
    :try_start_27
    iget-object v5, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    .line 310
    .local v5, "index":I
    if-ltz v5, :cond_44

    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_44

    iget v6, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v6, v3, :cond_44

    .line 312
    iput v4, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 313
    if-nez v4, :cond_44

    .line 314
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 317
    .end local v5    # "index":I
    :cond_44
    monitor-exit p0

    goto :goto_49

    :catchall_46
    move-exception v5

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_27 .. :try_end_48} :catchall_46

    throw v5

    .line 321
    :cond_49
    :goto_49
    return v4

    .line 296
    .end local v0    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    .end local v1    # "oldWatchedEvents":I
    .end local v2    # "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    .end local v3    # "seq":I
    .end local v4    # "newWatchedEvents":I
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method private greylist-max-o dispose()V
    .registers 6

    .line 100
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 101
    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    .line 102
    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 104
    :cond_d
    return-void
.end method

.method private greylist-max-o isPollingLocked()Z
    .registers 3

    .line 174
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_e

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeInit()J
.end method

.method private static native greylist-max-o nativeIsPolling(J)Z
.end method

.method private native greylist nativePollOnce(JI)V
.end method

.method private static native greylist-max-o nativeSetFileDescriptorEvents(JII)V
.end method

.method private static native greylist-max-o nativeWake(J)V
.end method

.method private greylist-max-o postSyncBarrier(J)I
    .registers 9
    .param p1, "when"    # J

    .line 485
    monitor-enter p0

    .line 486
    :try_start_1
    iget v0, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 487
    .local v0, "token":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 488
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    .line 489
    iput-wide p1, v1, Landroid/os/Message;->when:J

    .line 490
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 492
    const/4 v2, 0x0

    .line 493
    .local v2, "prev":Landroid/os/Message;
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 494
    .local v3, "p":Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_28

    .line 495
    :goto_1b
    if-eqz v3, :cond_28

    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_28

    .line 496
    move-object v2, v3

    .line 497
    iget-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v3, v4

    goto :goto_1b

    .line 500
    :cond_28
    if-eqz v2, :cond_2f

    .line 501
    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 502
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_33

    .line 504
    :cond_2f
    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 505
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 507
    :goto_33
    monitor-exit p0

    return v0

    .line 508
    .end local v0    # "token":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "prev":Landroid/os/Message;
    .end local v3    # "p":Landroid/os/Message;
    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_35

    throw v0
.end method

.method private greylist-max-o removeAllFutureMessagesLocked()V
    .registers 7

    .line 901
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 902
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 903
    .local v2, "p":Landroid/os/Message;
    if-eqz v2, :cond_2c

    .line 904
    iget-wide v3, v2, Landroid/os/Message;->when:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_12

    .line 905
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    goto :goto_2c

    .line 909
    :cond_12
    :goto_12
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 910
    .local v3, "n":Landroid/os/Message;
    if-nez v3, :cond_17

    .line 911
    return-void

    .line 913
    :cond_17
    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_2a

    .line 914
    nop

    .line 918
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 920
    :cond_21
    move-object v2, v3

    .line 921
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 922
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 923
    if-nez v3, :cond_21

    goto :goto_2c

    .line 916
    :cond_2a
    move-object v2, v3

    goto :goto_12

    .line 926
    .end local v3    # "n":Landroid/os/Message;
    :cond_2c
    :goto_2c
    return-void
.end method

.method private greylist-max-o removeAllMessagesLocked()V
    .registers 3

    .line 891
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 892
    .local v0, "p":Landroid/os/Message;
    :goto_2
    if-eqz v0, :cond_b

    .line 893
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 894
    .local v1, "n":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 895
    move-object v0, v1

    .line 896
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_2

    .line 897
    :cond_b
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 898
    return-void
.end method

.method private greylist-max-o updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 239
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 241
    .local v0, "fdNum":I
    const/4 v1, -0x1

    .line 242
    .local v1, "index":I
    const/4 v2, 0x0

    .line 243
    .local v2, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-eqz v3, :cond_20

    .line 244
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 245
    if-ltz v1, :cond_20

    .line 246
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 247
    if-eqz v2, :cond_20

    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-ne v3, p2, :cond_20

    .line 248
    return-void

    .line 253
    :cond_20
    if-eqz p2, :cond_4d

    .line 254
    or-int/lit8 p2, p2, 0x4

    .line 255
    if-nez v2, :cond_3d

    .line 256
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-nez v3, :cond_31

    .line 257
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 259
    :cond_31
    new-instance v3, Landroid/os/MessageQueue$FileDescriptorRecord;

    invoke-direct {v3, p1, p2, p3}, Landroid/os/MessageQueue$FileDescriptorRecord;-><init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    move-object v2, v3

    .line 260
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_47

    .line 262
    :cond_3d
    iput-object p3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 263
    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 264
    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 266
    :goto_47
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4, v0, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    goto :goto_5c

    .line 267
    :cond_4d
    if-eqz v2, :cond_5c

    .line 268
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 269
    iget-object v4, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 270
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5, v0, v3}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    .line 272
    :cond_5c
    :goto_5c
    return-void
.end method


# virtual methods
.method public whitelist addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 131
    if-eqz p1, :cond_d

    .line 134
    monitor-enter p0

    .line 135
    :try_start_3
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0

    .line 132
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 203
    if-eqz p1, :cond_16

    .line 206
    if-eqz p3, :cond_d

    .line 210
    monitor-enter p0

    .line 211
    :try_start_5
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 212
    monitor-exit p0

    .line 213
    return-void

    .line 212
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v0

    .line 207
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 10
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "h"    # Landroid/os/Handler;

    .line 945
    monitor-enter p0

    .line 946
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 947
    .local v0, "now":J
    const/4 v2, 0x0

    .line 948
    .local v2, "n":I
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v3, "msg":Landroid/os/Message;
    :goto_8
    if-eqz v3, :cond_3e

    .line 949
    if-eqz p3, :cond_10

    iget-object v4, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p3, v4, :cond_38

    .line 950
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 952
    :cond_38
    add-int/lit8 v2, v2, 0x1

    .line 948
    iget-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v3, v4

    goto :goto_8

    .line 954
    .end local v3    # "msg":Landroid/os/Message;
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(Total messages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", polling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", quitting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 956
    .end local v0    # "now":J
    .end local v2    # "n":I
    monitor-exit p0

    .line 957
    return-void

    .line 956
    :catchall_7a
    move-exception v0

    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_1 .. :try_end_7c} :catchall_7a

    throw v0
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 960
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 961
    .local v0, "messageQueueToken":J
    monitor-enter p0

    .line 962
    :try_start_5
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v2, "msg":Landroid/os/Message;
    :goto_7
    if-eqz v2, :cond_15

    .line 963
    const-wide v3, 0x20b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Message;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 962
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v2, v3

    goto :goto_7

    .line 965
    .end local v2    # "msg":Landroid/os/Message;
    :cond_15
    const-wide v2, 0x10800000002L

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 966
    const-wide v2, 0x10800000003L

    iget-boolean v4, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 967
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_30

    .line 968
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 969
    return-void

    .line 967
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2
.end method

.method greylist-max-o enqueueMessage(Landroid/os/Message;J)Z
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 556
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v0, :cond_bb

    .line 561
    iget-object v0, p1, Landroid/os/Message;->monitorInfo:Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    if-nez v0, :cond_15

    .line 562
    const-string v0, "MessageQueue"

    const-string v1, "Message must have a msgMonitorInfo."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-static {}, Landroid/os/perfdebug/MessageMonitor;->newMessageMonitorInfo()Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->monitorInfo:Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    .line 565
    :cond_15
    iget-object v0, p1, Landroid/os/Message;->monitorInfo:Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;->init(Landroid/os/Message;J)V

    .line 568
    monitor-enter p0

    .line 569
    :try_start_1b
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-nez v0, :cond_9f

    .line 573
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    .line 574
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sending message to a Handler on a dead thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 576
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 578
    monitor-exit p0

    return v1

    .line 581
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_4e
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    .line 582
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 583
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 585
    .local v0, "p":Landroid/os/Message;
    const/4 v2, 0x1

    if-eqz v0, :cond_90

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_90

    iget-wide v3, v0, Landroid/os/Message;->when:J

    cmp-long v3, p2, v3

    if-gez v3, :cond_65

    goto :goto_90

    .line 594
    :cond_65
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v3, :cond_74

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_74

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_74

    move v1, v2

    .line 597
    .local v1, "needWake":Z
    :cond_74
    :goto_74
    move-object v3, v0

    .line 598
    .local v3, "prev":Landroid/os/Message;
    iget-object v4, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v4

    .line 599
    if-eqz v0, :cond_8b

    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v4, p2, v4

    if-gez v4, :cond_81

    .line 600
    goto :goto_8b

    .line 602
    :cond_81
    if-eqz v1, :cond_74

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 603
    const/4 v1, 0x0

    goto :goto_74

    .line 606
    :cond_8b
    :goto_8b
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 607
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_96

    .line 587
    .end local v1    # "needWake":Z
    .end local v3    # "prev":Landroid/os/Message;
    :cond_90
    :goto_90
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 588
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 589
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 611
    .restart local v1    # "needWake":Z
    :goto_96
    if-eqz v1, :cond_9d

    .line 612
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 614
    .end local v0    # "p":Landroid/os/Message;
    .end local v1    # "needWake":Z
    :cond_9d
    monitor-exit p0

    .line 615
    return v2

    .line 570
    :cond_9f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " This message is already in use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/MessageQueue;
    .end local p1    # "msg":Landroid/os/Message;
    .end local p2    # "when":J
    throw v0

    .line 614
    .restart local p0    # "this":Landroid/os/MessageQueue;
    .restart local p1    # "msg":Landroid/os/Message;
    .restart local p2    # "when":J
    :catchall_b8
    move-exception v0

    monitor-exit p0
    :try_end_ba
    .catchall {:try_start_1b .. :try_end_ba} :catchall_b8

    throw v0

    .line 557
    :cond_bb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message must have a target."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 91
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 93
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 94
    nop

    .line 95
    return-void

    .line 93
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 94
    throw v0
.end method

.method blacklist hasEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 636
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 637
    return v0

    .line 640
    :cond_4
    monitor-enter p0

    .line 641
    :try_start_5
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 642
    .local v1, "p":Landroid/os/Message;
    :goto_7
    if-eqz v1, :cond_22

    .line 643
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_1e

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_1e

    if-eqz p3, :cond_1b

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 644
    :cond_1b
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 646
    :cond_1e
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_7

    .line 648
    :cond_22
    monitor-exit p0

    return v0

    .line 649
    .end local v1    # "p":Landroid/os/Message;
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v0
.end method

.method greylist-max-o hasMessages(Landroid/os/Handler;)Z
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;

    .line 671
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 672
    return v0

    .line 675
    :cond_4
    monitor-enter p0

    .line 676
    :try_start_5
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 677
    .local v1, "p":Landroid/os/Message;
    :goto_7
    if-eqz v1, :cond_14

    .line 678
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_10

    .line 679
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 681
    :cond_10
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_7

    .line 683
    :cond_14
    monitor-exit p0

    return v0

    .line 684
    .end local v1    # "p":Landroid/os/Message;
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v0
.end method

.method greylist-max-o hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 619
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 620
    return v0

    .line 623
    :cond_4
    monitor-enter p0

    .line 624
    :try_start_5
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 625
    .local v1, "p":Landroid/os/Message;
    :goto_7
    if-eqz v1, :cond_1e

    .line 626
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_1a

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_1a

    if-eqz p3, :cond_17

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_1a

    .line 627
    :cond_17
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 629
    :cond_1a
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_7

    .line 631
    :cond_1e
    monitor-exit p0

    return v0

    .line 632
    .end local v1    # "p":Landroid/os/Message;
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v0
.end method

.method greylist-max-r hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 654
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 655
    return v0

    .line 658
    :cond_4
    monitor-enter p0

    .line 659
    :try_start_5
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 660
    .local v1, "p":Landroid/os/Message;
    :goto_7
    if-eqz v1, :cond_1e

    .line 661
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_1a

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_1a

    if-eqz p3, :cond_17

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_1a

    .line 662
    :cond_17
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 664
    :cond_1a
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_7

    .line 666
    :cond_1e
    monitor-exit p0

    return v0

    .line 667
    .end local v1    # "p":Landroid/os/Message;
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public whitelist isIdle()Z
    .registers 5

    .line 114
    monitor-enter p0

    .line 115
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 116
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_12

    iget-wide v2, v2, Landroid/os/Message;->when:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v2, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v2, 0x1

    :goto_13
    monitor-exit p0

    return v2

    .line 117
    .end local v0    # "now":J
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public greylist-max-o isPolling()Z
    .registers 2

    .line 166
    monitor-enter p0

    .line 167
    :try_start_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 168
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method greylist next()Landroid/os/Message;
    .registers 14

    .line 329
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 330
    .local v0, "ptr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_a

    .line 331
    return-object v3

    .line 334
    :cond_a
    const/4 v2, -0x1

    .line 335
    .local v2, "pendingIdleHandlerCount":I
    const/4 v4, 0x0

    .line 337
    .local v4, "nextPollTimeoutMillis":I
    :goto_c
    if-eqz v4, :cond_11

    .line 338
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 341
    :cond_11
    invoke-direct {p0, v0, v1, v4}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 343
    monitor-enter p0

    .line 345
    :try_start_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 346
    .local v5, "now":J
    const/4 v7, 0x0

    .line 347
    .local v7, "prevMsg":Landroid/os/Message;
    iget-object v8, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 348
    .local v8, "msg":Landroid/os/Message;
    if-eqz v8, :cond_2e

    iget-object v9, v8, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v9, :cond_2e

    .line 351
    :cond_22
    move-object v7, v8

    .line 352
    iget-object v9, v8, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v8, v9

    .line 353
    if-eqz v8, :cond_2e

    invoke-virtual {v8}, Landroid/os/Message;->isAsynchronous()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 355
    :cond_2e
    if-eqz v8, :cond_57

    .line 356
    iget-wide v9, v8, Landroid/os/Message;->when:J

    cmp-long v9, v5, v9

    if-gez v9, :cond_42

    .line 358
    iget-wide v9, v8, Landroid/os/Message;->when:J

    sub-long/2addr v9, v5

    const-wide/32 v11, 0x7fffffff

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v4, v9

    goto :goto_58

    .line 361
    :cond_42
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 362
    if-eqz v7, :cond_4c

    .line 363
    iget-object v9, v8, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v9, v7, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_50

    .line 365
    :cond_4c
    iget-object v9, v8, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v9, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 367
    :goto_50
    iput-object v3, v8, Landroid/os/Message;->next:Landroid/os/Message;

    .line 369
    invoke-virtual {v8}, Landroid/os/Message;->markInUse()V

    .line 370
    monitor-exit p0

    return-object v8

    .line 374
    :cond_57
    const/4 v4, -0x1

    .line 378
    :goto_58
    iget-boolean v9, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v9, :cond_61

    .line 379
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V

    .line 380
    monitor-exit p0

    return-object v3

    .line 386
    :cond_61
    if-gez v2, :cond_74

    iget-object v9, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v9, :cond_6d

    iget-wide v9, v9, Landroid/os/Message;->when:J

    cmp-long v9, v5, v9

    if-gez v9, :cond_74

    .line 388
    :cond_6d
    iget-object v9, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v2, v9

    .line 390
    :cond_74
    if-gtz v2, :cond_7b

    .line 392
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 393
    monitor-exit p0

    goto :goto_c

    .line 396
    :cond_7b
    iget-object v9, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v9, :cond_88

    .line 397
    const/4 v9, 0x4

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v9, v9, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v9, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 399
    :cond_88
    iget-object v9, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v9, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 400
    .end local v5    # "now":J
    .end local v7    # "prevMsg":Landroid/os/Message;
    .end local v8    # "msg":Landroid/os/Message;
    monitor-exit p0
    :try_end_95
    .catchall {:try_start_15 .. :try_end_95} :catchall_c1

    .line 404
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_96
    if-ge v5, v2, :cond_bd

    .line 405
    iget-object v6, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v7, v6, v5

    .line 406
    .local v7, "idler":Landroid/os/MessageQueue$IdleHandler;
    aput-object v3, v6, v5

    .line 408
    const/4 v6, 0x0

    .line 410
    .local v6, "keep":Z
    :try_start_9f
    invoke-interface {v7}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z

    move-result v8
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_a5

    move v6, v8

    .line 413
    goto :goto_ad

    .line 411
    :catchall_a5
    move-exception v8

    .line 412
    .local v8, "t":Ljava/lang/Throwable;
    const-string v9, "MessageQueue"

    const-string v10, "IdleHandler threw exception"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    .end local v8    # "t":Ljava/lang/Throwable;
    :goto_ad
    if-nez v6, :cond_ba

    .line 416
    monitor-enter p0

    .line 417
    :try_start_b0
    iget-object v8, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 418
    monitor-exit p0

    goto :goto_ba

    :catchall_b7
    move-exception v3

    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_b0 .. :try_end_b9} :catchall_b7

    throw v3

    .line 404
    .end local v6    # "keep":Z
    .end local v7    # "idler":Landroid/os/MessageQueue$IdleHandler;
    :cond_ba
    :goto_ba
    add-int/lit8 v5, v5, 0x1

    goto :goto_96

    .line 423
    .end local v5    # "i":I
    :cond_bd
    const/4 v2, 0x0

    .line 427
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 400
    :catchall_c1
    move-exception v3

    :try_start_c2
    monitor-exit p0
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c1

    throw v3
.end method

.method public greylist postSyncBarrier()I
    .registers 3

    .line 479
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method blacklist printMessageInfo(I)V
    .registers 9
    .param p1, "count"    # I

    .line 930
    monitor-enter p0

    .line 931
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 932
    .local v0, "now":J
    const/4 v2, 0x0

    .line 933
    .local v2, "n":I
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v3, "msg":Landroid/os/Message;
    :goto_8
    if-eqz v3, :cond_39

    .line 934
    if-lt v2, p1, :cond_d

    goto :goto_39

    .line 935
    :cond_d
    const-string v4, "MIUIScout ANR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Print Message Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MessageInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    add-int/lit8 v2, v2, 0x1

    .line 933
    iget-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v3, v4

    goto :goto_8

    .line 938
    .end local v3    # "msg":Landroid/os/Message;
    :cond_39
    :goto_39
    const-string v3, "MIUIScout ANR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(Print messages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", polling="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", quitting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    nop

    .end local v0    # "now":J
    .end local v2    # "n":I
    monitor-exit p0

    .line 941
    return-void

    .line 940
    :catchall_74
    move-exception v0

    monitor-exit p0
    :try_end_76
    .catchall {:try_start_1 .. :try_end_76} :catchall_74

    throw v0
.end method

.method greylist-max-o quit(Z)V
    .registers 4
    .param p1, "safe"    # Z

    .line 432
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-eqz v0, :cond_21

    .line 436
    monitor-enter p0

    .line 437
    :try_start_5
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_b

    .line 438
    monitor-exit p0

    return-void

    .line 440
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 442
    if-eqz p1, :cond_14

    .line 443
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    goto :goto_17

    .line 445
    :cond_14
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 449
    :goto_17
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 450
    monitor-exit p0

    .line 451
    return-void

    .line 450
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0

    .line 433
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist removeCallbacksAndEqualMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 858
    if-nez p1, :cond_3

    .line 859
    return-void

    .line 862
    :cond_3
    monitor-enter p0

    .line 863
    :try_start_4
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 866
    .local v0, "p":Landroid/os/Message;
    :goto_6
    if-eqz v0, :cond_1f

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_1f

    if-eqz p2, :cond_16

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 867
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 868
    :cond_16
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 869
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 870
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 871
    move-object v0, v1

    .line 872
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_6

    .line 875
    :cond_1f
    :goto_1f
    if-eqz v0, :cond_3d

    .line 876
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 877
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_3b

    .line 878
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_3b

    if-eqz p2, :cond_33

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 879
    :cond_33
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 880
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 881
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 882
    goto :goto_1f

    .line 885
    .end local v2    # "nn":Landroid/os/Message;
    :cond_3b
    move-object v0, v1

    .line 886
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1f

    .line 887
    .end local v0    # "p":Landroid/os/Message;
    :cond_3d
    monitor-exit p0

    .line 888
    return-void

    .line 887
    :catchall_3f
    move-exception v0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method greylist-max-o removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 825
    if-nez p1, :cond_3

    .line 826
    return-void

    .line 829
    :cond_3
    monitor-enter p0

    .line 830
    :try_start_4
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 833
    .local v0, "p":Landroid/os/Message;
    :goto_6
    if-eqz v0, :cond_1b

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_1b

    if-eqz p2, :cond_12

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p2, :cond_1b

    .line 835
    :cond_12
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 836
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 837
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 838
    move-object v0, v1

    .line 839
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_6

    .line 842
    :cond_1b
    :goto_1b
    if-eqz v0, :cond_35

    .line 843
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 844
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_33

    .line 845
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_33

    if-eqz p2, :cond_2b

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p2, :cond_33

    .line 846
    :cond_2b
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 847
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 848
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 849
    goto :goto_1b

    .line 852
    .end local v2    # "nn":Landroid/os/Message;
    :cond_33
    move-object v0, v1

    .line 853
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1b

    .line 854
    .end local v0    # "p":Landroid/os/Message;
    :cond_35
    monitor-exit p0

    .line 855
    return-void

    .line 854
    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_37

    throw v0
.end method

.method blacklist removeEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 722
    if-nez p1, :cond_3

    .line 723
    return-void

    .line 726
    :cond_3
    monitor-enter p0

    .line 727
    :try_start_4
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 730
    .local v0, "p":Landroid/os/Message;
    :goto_6
    if-eqz v0, :cond_23

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_23

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_23

    if-eqz p3, :cond_1a

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 731
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 732
    :cond_1a
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 733
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 734
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 735
    move-object v0, v1

    .line 736
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_6

    .line 739
    :cond_23
    :goto_23
    if-eqz v0, :cond_45

    .line 740
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 741
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_43

    .line 742
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_43

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_43

    if-eqz p3, :cond_3b

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 743
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 744
    :cond_3b
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 745
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 746
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 747
    goto :goto_23

    .line 750
    .end local v2    # "nn":Landroid/os/Message;
    :cond_43
    move-object v0, v1

    .line 751
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_23

    .line 752
    .end local v0    # "p":Landroid/os/Message;
    :cond_45
    monitor-exit p0

    .line 753
    return-void

    .line 752
    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_47

    throw v0
.end method

.method blacklist removeEqualMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 790
    if-eqz p1, :cond_4c

    if-nez p2, :cond_5

    goto :goto_4c

    .line 794
    :cond_5
    monitor-enter p0

    .line 795
    :try_start_6
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 798
    .local v0, "p":Landroid/os/Message;
    :goto_8
    if-eqz v0, :cond_25

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_25

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_25

    if-eqz p3, :cond_1c

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 799
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 800
    :cond_1c
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 801
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 802
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 803
    move-object v0, v1

    .line 804
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_8

    .line 807
    :cond_25
    :goto_25
    if-eqz v0, :cond_47

    .line 808
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 809
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_45

    .line 810
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_45

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_45

    if-eqz p3, :cond_3d

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 811
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 812
    :cond_3d
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 813
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 814
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 815
    goto :goto_25

    .line 818
    .end local v2    # "nn":Landroid/os/Message;
    :cond_45
    move-object v0, v1

    .line 819
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_25

    .line 820
    .end local v0    # "p":Landroid/os/Message;
    :cond_47
    monitor-exit p0

    .line 821
    return-void

    .line 820
    :catchall_49
    move-exception v0

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_6 .. :try_end_4b} :catchall_49

    throw v0

    .line 791
    :cond_4c
    :goto_4c
    return-void
.end method

.method public whitelist removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 149
    monitor-enter p0

    .line 150
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 151
    monitor-exit p0

    .line 152
    return-void

    .line 151
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method greylist-max-o removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 688
    if-nez p1, :cond_3

    .line 689
    return-void

    .line 692
    :cond_3
    monitor-enter p0

    .line 693
    :try_start_4
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 696
    .local v0, "p":Landroid/os/Message;
    :goto_6
    if-eqz v0, :cond_1f

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_1f

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_1f

    if-eqz p3, :cond_16

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_1f

    .line 698
    :cond_16
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 699
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 700
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 701
    move-object v0, v1

    .line 702
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_6

    .line 705
    :cond_1f
    :goto_1f
    if-eqz v0, :cond_3d

    .line 706
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 707
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_3b

    .line 708
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_3b

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_3b

    if-eqz p3, :cond_33

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_3b

    .line 710
    :cond_33
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 711
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 712
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 713
    goto :goto_1f

    .line 716
    .end local v2    # "nn":Landroid/os/Message;
    :cond_3b
    move-object v0, v1

    .line 717
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1f

    .line 718
    .end local v0    # "p":Landroid/os/Message;
    :cond_3d
    monitor-exit p0

    .line 719
    return-void

    .line 718
    :catchall_3f
    move-exception v0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method greylist-max-o removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 756
    if-eqz p1, :cond_44

    if-nez p2, :cond_5

    goto :goto_44

    .line 760
    :cond_5
    monitor-enter p0

    .line 761
    :try_start_6
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 764
    .local v0, "p":Landroid/os/Message;
    :goto_8
    if-eqz v0, :cond_21

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_21

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_21

    if-eqz p3, :cond_18

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_21

    .line 766
    :cond_18
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 767
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 768
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 769
    move-object v0, v1

    .line 770
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_8

    .line 773
    :cond_21
    :goto_21
    if-eqz v0, :cond_3f

    .line 774
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 775
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_3d

    .line 776
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_3d

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_3d

    if-eqz p3, :cond_35

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_3d

    .line 778
    :cond_35
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 779
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 780
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 781
    goto :goto_21

    .line 784
    .end local v2    # "nn":Landroid/os/Message;
    :cond_3d
    move-object v0, v1

    .line 785
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_21

    .line 786
    .end local v0    # "p":Landroid/os/Message;
    :cond_3f
    monitor-exit p0

    .line 787
    return-void

    .line 786
    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_6 .. :try_end_43} :catchall_41

    throw v0

    .line 757
    :cond_44
    :goto_44
    return-void
.end method

.method public whitelist removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 228
    if-eqz p1, :cond_d

    .line 232
    monitor-enter p0

    .line 233
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_5
    invoke-direct {p0, p1, v0, v1}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 234
    monitor-exit p0

    .line 235
    return-void

    .line 234
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v0

    .line 229
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist removeSyncBarrier(I)V
    .registers 7
    .param p1, "token"    # I

    .line 526
    monitor-enter p0

    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, "prev":Landroid/os/Message;
    :try_start_2
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 529
    .local v1, "p":Landroid/os/Message;
    :goto_4
    if-eqz v1, :cond_13

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v2, :cond_e

    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eq v2, p1, :cond_13

    .line 530
    :cond_e
    move-object v0, v1

    .line 531
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_4

    .line 533
    :cond_13
    if-eqz v1, :cond_3b

    .line 538
    if-eqz v0, :cond_1d

    .line 539
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 540
    const/4 v2, 0x0

    .local v2, "needWake":Z
    goto :goto_2b

    .line 542
    .end local v2    # "needWake":Z
    :cond_1d
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 543
    if-eqz v2, :cond_2a

    iget-object v2, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v2, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v2, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v2, 0x1

    .line 545
    .restart local v2    # "needWake":Z
    :goto_2b
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 549
    if-eqz v2, :cond_39

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v3, :cond_39

    .line 550
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 552
    .end local v0    # "prev":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .end local v2    # "needWake":Z
    :cond_39
    monitor-exit p0

    .line 553
    return-void

    .line 534
    .restart local v0    # "prev":Landroid/os/Message;
    .restart local v1    # "p":Landroid/os/Message;
    :cond_3b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/MessageQueue;
    .end local p1    # "token":I
    throw v2

    .line 552
    .end local v0    # "prev":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .restart local p0    # "this":Landroid/os/MessageQueue;
    .restart local p1    # "token":I
    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_2 .. :try_end_45} :catchall_43

    throw v0
.end method
