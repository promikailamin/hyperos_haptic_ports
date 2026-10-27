.class Lcom/android/server/media/MediaSessionStack;
.super Ljava/lang/Object;
.source "MediaSessionStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaSessionStack"


# instance fields
.field private final mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field private final mCachedActiveLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecordImpl;

.field private mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

.field private final mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

.field private final mSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecordImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;)V
    .registers 4
    .param p1, "monitor"    # Lcom/android/server/media/AudioPlayerStateMonitor;
    .param p2, "listener"    # Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 75
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 76
    iput-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    .line 77
    return-void
.end method

.method private clearCache(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 410
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 413
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 414
    return-void
.end method

.method private findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;
    .registers 7
    .param p1, "uid"    # I

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecordImpl;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 246
    .local v2, "session":Lcom/android/server/media/MediaSessionRecordImpl;
    instance-of v3, v2, Lcom/android/server/media/MediaSession2Record;

    if-eqz v3, :cond_18

    .line 248
    goto :goto_7

    .line 250
    :cond_18
    invoke-interface {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v3

    if-ne p1, v3, :cond_32

    .line 251
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 252
    invoke-interface {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result v3

    .line 251
    invoke-interface {v2, v3}, Lcom/android/server/media/MediaSessionRecordImpl;->checkPlaybackActiveState(Z)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 255
    return-object v2

    .line 257
    :cond_2f
    if-nez v0, :cond_32

    .line 260
    move-object v0, v2

    .line 263
    .end local v2    # "session":Lcom/android/server/media/MediaSessionRecordImpl;
    :cond_32
    goto :goto_7

    .line 264
    :cond_33
    return-object v0
.end method

.method private static getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .registers 5
    .param p0, "callStack"    # [Ljava/lang/StackTraceElement;
    .param p1, "depth"    # I

    .line 429
    add-int/lit8 v0, p1, 0x4

    array-length v1, p0

    if-lt v0, v1, :cond_8

    .line 430
    const-string v0, "<bottom of call stack>"

    return-object v0

    .line 432
    :cond_8
    add-int/lit8 v0, p1, 0x4

    aget-object v0, p0, v0

    .line 433
    .local v0, "caller":Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCallers(I)Ljava/lang/String;
    .registers 6
    .param p0, "depth"    # I

    .line 418
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 419
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, p0, :cond_20

    .line 421
    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionStack;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 423
    .end local v2    # "i":I
    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 85
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 92
    return-void
.end method

.method public contains(Lcom/android/server/media/MediaSessionRecordImpl;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 115
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Media button session is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Sessions Stack - have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sessions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "indent":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 354
    .local v2, "record":Lcom/android/server/media/MediaSessionRecordImpl;
    invoke-interface {v2, p1, v0}, Lcom/android/server/media/MediaSessionRecordImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 355
    .end local v2    # "record":Lcom/android/server/media/MediaSessionRecordImpl;
    goto :goto_5b

    .line 356
    :cond_6b
    return-void
.end method

.method public getActiveSessions(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 277
    .local v0, "cachedActiveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    if-nez v0, :cond_14

    .line 278
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    :cond_14
    return-object v0
.end method

.method public getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecordImpl;
    .registers 7
    .param p1, "userId"    # I

    .line 337
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object v0

    .line 339
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 340
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1c

    .line 341
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 342
    .local v3, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackTypeLocal()Z

    move-result v4

    if-nez v4, :cond_19

    .line 343
    return-object v3

    .line 340
    .end local v3    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 346
    .end local v2    # "i":I
    :cond_1c
    const/4 v2, 0x0

    return-object v2
.end method

.method public getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecordImpl;
    .registers 7

    .line 321
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecordImpl;

    if-eqz v0, :cond_5

    .line 322
    return-object v0

    .line 324
    :cond_5
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object v0

    .line 325
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 326
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_2a

    .line 327
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionRecord;

    .line 328
    .local v4, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v4, v1}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionRecord;->canHandleVolumeKey()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 329
    iput-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 330
    return-object v4

    .line 326
    .end local v4    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 333
    .end local v3    # "i":I
    :cond_2a
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMediaButtonSession()Lcom/android/server/media/MediaSessionRecordImpl;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    return-object v0
.end method

.method public getMediaSessionRecord(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;
    .registers 6
    .param p1, "sessionToken"    # Landroid/media/session/MediaSession$Token;

    .line 125
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 126
    .local v1, "record":Lcom/android/server/media/MediaSessionRecordImpl;
    instance-of v2, v1, Lcom/android/server/media/MediaSessionRecord;

    if-eqz v2, :cond_24

    .line 127
    move-object v2, v1

    check-cast v2, Lcom/android/server/media/MediaSessionRecord;

    .line 128
    .local v2, "session1":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 129
    return-object v2

    .line 132
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecordImpl;
    .end local v2    # "session1":Lcom/android/server/media/MediaSessionRecord;
    :cond_24
    goto :goto_6

    .line 133
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriorityList(ZI)Ljava/util/List;
    .registers 10
    .param p1, "activeOnly"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    const/4 v1, 0x0

    .line 375
    .local v1, "lastPlaybackActiveIndex":I
    const/4 v2, 0x0

    .line 377
    .local v2, "lastActiveIndex":I
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 378
    .local v4, "record":Lcom/android/server/media/MediaSessionRecordImpl;
    instance-of v5, v4, Lcom/android/server/media/MediaSessionRecord;

    if-nez v5, :cond_1e

    .line 379
    goto :goto_d

    .line 381
    :cond_1e
    move-object v5, v4

    check-cast v5, Lcom/android/server/media/MediaSessionRecord;

    .line 383
    .local v5, "session":Lcom/android/server/media/MediaSessionRecord;
    const/4 v6, -0x1

    if-eq p2, v6, :cond_2b

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v6

    if-eq p2, v6, :cond_2b

    .line 385
    goto :goto_d

    .line 388
    :cond_2b
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v6

    if-nez v6, :cond_37

    .line 389
    if-nez p1, :cond_d

    .line 392
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 397
    :cond_37
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 398
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "lastPlaybackActiveIndex":I
    .local v6, "lastPlaybackActiveIndex":I
    invoke-interface {v0, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 399
    add-int/lit8 v2, v2, 0x1

    move v1, v6

    goto :goto_4d

    .line 401
    .end local v6    # "lastPlaybackActiveIndex":I
    .restart local v1    # "lastPlaybackActiveIndex":I
    :cond_47
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "lastActiveIndex":I
    .local v6, "lastActiveIndex":I
    invoke-interface {v0, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v2, v6

    .line 403
    .end local v4    # "record":Lcom/android/server/media/MediaSessionRecordImpl;
    .end local v5    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v6    # "lastActiveIndex":I
    .restart local v2    # "lastActiveIndex":I
    :goto_4d
    goto :goto_d

    .line 405
    :cond_4e
    return-object v0
.end method

.method public getSession2Tokens(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/Session2Token;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v0, "session2Records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Session2Token;>;"
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 294
    .local v2, "record":Lcom/android/server/media/MediaSessionRecordImpl;
    const/4 v3, -0x1

    if-eq p1, v3, :cond_20

    invoke-interface {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v3

    if-ne v3, p1, :cond_34

    .line 295
    :cond_20
    invoke-interface {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->isActive()Z

    move-result v3

    if-eqz v3, :cond_34

    instance-of v3, v2, Lcom/android/server/media/MediaSession2Record;

    if-eqz v3, :cond_34

    .line 297
    move-object v3, v2

    check-cast v3, Lcom/android/server/media/MediaSession2Record;

    .line 298
    .local v3, "session2":Lcom/android/server/media/MediaSession2Record;
    invoke-virtual {v3}, Lcom/android/server/media/MediaSession2Record;->getSession2Token()Landroid/media/Session2Token;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v2    # "record":Lcom/android/server/media/MediaSessionRecordImpl;
    .end local v3    # "session2":Lcom/android/server/media/MediaSession2Record;
    :cond_34
    goto :goto_b

    .line 301
    :cond_35
    return-object v0
.end method

.method public onPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Z)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecordImpl;
    .param p2, "shouldUpdatePriority"    # Z

    .line 144
    const/4 v0, 0x0

    if-eqz p2, :cond_15

    .line 145
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 146
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 147
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    goto :goto_1e

    .line 148
    :cond_15
    invoke-interface {p1, v0}, Lcom/android/server/media/MediaSessionRecordImpl;->checkPlaybackActiveState(Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 157
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-eqz v0, :cond_45

    invoke-interface {v0}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_45

    .line 158
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 159
    invoke-interface {v0}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v0

    .line 160
    .local v0, "newMediaButtonSession":Lcom/android/server/media/MediaSessionRecordImpl;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-eq v0, v1, :cond_45

    .line 161
    invoke-interface {v0}, Lcom/android/server/media/MediaSessionRecordImpl;->getSessionPolicies()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_45

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 168
    .end local v0    # "newMediaButtonSession":Lcom/android/server/media/MediaSessionRecordImpl;
    :cond_45
    return-void
.end method

.method public onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 178
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 179
    return-void
.end method

.method public removeSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-ne v0, p1, :cond_d

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 108
    :cond_d
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 109
    return-void
.end method

.method public updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 4
    .param p1, "newMediaButtonSession"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 314
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 315
    .local v0, "oldMediaButtonSession":Lcom/android/server/media/MediaSessionRecordImpl;
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 316
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    invoke-interface {v1, v0, p1}, Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;->onMediaButtonSessionChanged(Lcom/android/server/media/MediaSessionRecordImpl;Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 318
    return-void
.end method

.method public updateMediaButtonSessionBySessionPolicyChange(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .line 224
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getSessionPolicies()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    .line 225
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-ne p1, v0, :cond_14

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    goto :goto_14

    .line 230
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 232
    :cond_14
    :goto_14
    return-void
.end method

.method public updateMediaButtonSessionIfNeeded()V
    .registers 10

    .line 188
    sget-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    const/4 v1, 0x2

    const-string v2, "MediaSessionStack"

    if-eqz v0, :cond_22

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMediaButtonSessionIfNeeded, callers="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/media/MediaSessionStack;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_22
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 192
    invoke-virtual {v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->getSortedAudioPlaybackClientUids()Ljava/util/List;

    move-result-object v0

    .line 193
    .local v0, "audioPlaybackUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_ac

    .line 194
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 195
    .local v4, "audioPlaybackUid":I
    invoke-direct {p0, v4}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v5

    .line 196
    .local v5, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecordImpl;
    if-nez v5, :cond_5b

    .line 197
    sget-boolean v6, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    if-eqz v6, :cond_a8

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateMediaButtonSessionIfNeeded, skipping uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 204
    :cond_5b
    nop

    .line 205
    invoke-interface {v5}, Lcom/android/server/media/MediaSessionRecordImpl;->getSessionPolicies()I

    move-result v6

    and-int/2addr v6, v1

    if-eqz v6, :cond_65

    const/4 v6, 0x1

    goto :goto_66

    :cond_65
    const/4 v6, 0x0

    .line 207
    .local v6, "ignoreButtonSession":Z
    :goto_66
    sget-boolean v7, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    if-eqz v7, :cond_95

    .line 208
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateMediaButtonSessionIfNeeded, checking uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mediaButtonSession="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ignoreButtonSession="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_95
    if-nez v6, :cond_a8

    .line 213
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-interface {v5}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/media/AudioPlayerStateMonitor;->cleanUpAudioPlaybackUids(I)V

    .line 214
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-eq v5, v1, :cond_a7

    .line 215
    invoke-virtual {p0, v5}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 217
    :cond_a7
    return-void

    .line 193
    .end local v4    # "audioPlaybackUid":I
    .end local v5    # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecordImpl;
    .end local v6    # "ignoreButtonSession":Z
    :cond_a8
    :goto_a8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_29

    .line 220
    .end local v3    # "i":I
    :cond_ac
    return-void
.end method
