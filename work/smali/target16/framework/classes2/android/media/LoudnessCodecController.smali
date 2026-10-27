.class public Landroid/media/LoudnessCodecController;
.super Ljava/lang/Object;
.source "LoudnessCodecController.java"

# interfaces
.implements Landroid/media/permission/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LoudnessCodecController"


# instance fields
.field private final blacklist mControllerLock:Ljava/lang/Object;

.field private final blacklist mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

.field private final blacklist mMediaCodecs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/media/LoudnessCodecInfo;",
            "Ljava/util/Set<",
            "Landroid/media/MediaCodec;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mSessionId:I


# direct methods
.method private constructor blacklist <init>(Landroid/media/LoudnessCodecDispatcher;I)V
    .registers 4

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    .line 186
    const-string v0, "Dispatcher cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/LoudnessCodecDispatcher;

    iput-object p1, p0, Landroid/media/LoudnessCodecController;->mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

    .line 187
    iput p2, p0, Landroid/media/LoudnessCodecController;->mSessionId:I

    .line 188
    return-void
.end method

.method public static whitelist create(I)Landroid/media/LoudnessCodecController;
    .registers 5

    .line 112
    new-instance v0, Landroid/media/LoudnessCodecDispatcher;

    .line 113
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/LoudnessCodecDispatcher;-><init>(Landroid/media/IAudioService;)V

    .line 114
    new-instance v1, Landroid/media/LoudnessCodecController;

    invoke-direct {v1, v0, p0}, Landroid/media/LoudnessCodecController;-><init>(Landroid/media/LoudnessCodecDispatcher;I)V

    .line 116
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Landroid/media/LoudnessCodecController$1;

    invoke-direct {v3}, Landroid/media/LoudnessCodecController$1;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/LoudnessCodecDispatcher;->addLoudnessCodecListener(Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    .line 118
    invoke-virtual {v0, p0}, Landroid/media/LoudnessCodecDispatcher;->startLoudnessCodecUpdates(I)V

    .line 119
    return-object v1
.end method

.method public static whitelist create(ILjava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)Landroid/media/LoudnessCodecController;
    .registers 5

    .line 141
    const-string v0, "Executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    const-string v0, "OnLoudnessCodecUpdateListener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    new-instance v0, Landroid/media/LoudnessCodecDispatcher;

    .line 145
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/LoudnessCodecDispatcher;-><init>(Landroid/media/IAudioService;)V

    .line 146
    new-instance v1, Landroid/media/LoudnessCodecController;

    invoke-direct {v1, v0, p0}, Landroid/media/LoudnessCodecController;-><init>(Landroid/media/LoudnessCodecDispatcher;I)V

    .line 148
    invoke-virtual {v0, v1, p1, p2}, Landroid/media/LoudnessCodecDispatcher;->addLoudnessCodecListener(Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    .line 149
    invoke-virtual {v0, p0}, Landroid/media/LoudnessCodecDispatcher;->startLoudnessCodecUpdates(I)V

    .line 150
    return-object v1
.end method

.method public static blacklist createForTesting(ILjava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;Landroid/media/IAudioService;)Landroid/media/LoudnessCodecController;
    .registers 5

    .line 172
    const-string v0, "IAudioService cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    const-string v0, "Executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    const-string v0, "OnLoudnessCodecUpdateListener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    new-instance v0, Landroid/media/LoudnessCodecDispatcher;

    invoke-direct {v0, p3}, Landroid/media/LoudnessCodecDispatcher;-><init>(Landroid/media/IAudioService;)V

    .line 177
    new-instance p3, Landroid/media/LoudnessCodecController;

    invoke-direct {p3, v0, p0}, Landroid/media/LoudnessCodecController;-><init>(Landroid/media/LoudnessCodecDispatcher;I)V

    .line 179
    invoke-virtual {v0, p3, p1, p2}, Landroid/media/LoudnessCodecDispatcher;->addLoudnessCodecListener(Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    .line 180
    invoke-virtual {v0, p0}, Landroid/media/LoudnessCodecDispatcher;->startLoudnessCodecUpdates(I)V

    .line 181
    return-object p3
.end method

.method private static blacklist getCodecInfo(Landroid/media/MediaCodec;)Landroid/media/LoudnessCodecInfo;
    .registers 10

    .line 349
    const-string v0, "channel-count"

    new-instance v1, Landroid/media/LoudnessCodecInfo;

    invoke-direct {v1}, Landroid/media/LoudnessCodecInfo;-><init>()V

    .line 350
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 351
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "LoudnessCodecController"

    if-eqz v2, :cond_1a

    .line 353
    const-string p0, "MediaCodec used for encoding does not support loudness annotation"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-object v3

    .line 358
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 359
    const-string v5, "mime"

    invoke-virtual {v2, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 360
    const-string v6, "audio/mp4a-latm"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_2a} :catch_69

    if-eqz v5, :cond_63

    .line 363
    nop

    .line 364
    nop

    .line 366
    const/4 v5, -0x1

    :try_start_2f
    const-string v6, "aac-profile"

    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6
    :try_end_35
    .catch Ljava/lang/NullPointerException; {:try_start_2f .. :try_end_35} :catch_36
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_35} :catch_69

    .line 369
    goto :goto_38

    .line 367
    :catch_36
    move-exception v6

    move v6, v5

    .line 371
    :goto_38
    :try_start_38
    const-string v7, "profile"

    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5
    :try_end_3e
    .catch Ljava/lang/NullPointerException; {:try_start_38 .. :try_end_3e} :catch_3f
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_3e} :catch_69

    .line 374
    goto :goto_40

    .line 372
    :catch_3f
    move-exception v7

    .line 375
    :goto_40
    const/4 v7, 0x1

    const/16 v8, 0x2a

    if-eq v6, v8, :cond_4b

    if-ne v5, v8, :cond_48

    goto :goto_4b

    .line 379
    :cond_48
    :try_start_48
    iput v7, v1, Landroid/media/LoudnessCodecInfo;->metadataType:I

    goto :goto_4e

    .line 377
    :cond_4b
    :goto_4b
    const/4 v5, 0x2

    iput v5, v1, Landroid/media/LoudnessCodecInfo;->metadataType:I

    .line 381
    :goto_4e
    nop

    .line 386
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    .line 387
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    .line 388
    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-ge p0, v0, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v7, 0x0

    :goto_5f
    iput-boolean v7, v1, Landroid/media/LoudnessCodecInfo;->isDownmixing:Z

    .line 392
    nop

    .line 394
    return-object v1

    .line 382
    :cond_63
    const-string p0, "MediaCodec mime type not supported for loudness annotation"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/IllegalStateException; {:try_start_48 .. :try_end_68} :catch_69

    .line 383
    return-object v3

    .line 389
    :catch_69
    move-exception p0

    .line 390
    const-string v0, "MediaCodec is not configured"

    invoke-static {v4, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    return-object v3
.end method

.method static synthetic blacklist lambda$addMediaCodec$0(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/MediaCodec;Landroid/media/LoudnessCodecInfo;Ljava/util/Set;)Ljava/util/Set;
    .registers 4

    .line 218
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 219
    return-object p3
.end method

.method static synthetic blacklist lambda$removeMediaCodec$1(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/MediaCodec;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/LoudnessCodecInfo;Ljava/util/Set;)Ljava/util/Set;
    .registers 5

    .line 264
    invoke-interface {p4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_13

    .line 267
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 268
    const/4 p0, 0x0

    return-object p0

    .line 270
    :cond_13
    return-object p4
.end method


# virtual methods
.method public whitelist addMediaCodec(Landroid/media/MediaCodec;)Z
    .registers 8

    .line 207
    const-string v0, "MediaCodec for addMediaCodec cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    .line 209
    invoke-static {v0}, Landroid/media/LoudnessCodecController;->getCodecInfo(Landroid/media/MediaCodec;)Landroid/media/LoudnessCodecInfo;

    move-result-object v1

    .line 211
    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 212
    const-string p1, "LoudnessCodecController"

    const-string v0, "Could not extract codec loudness information"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return v2

    .line 215
    :cond_17
    iget-object v3, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 216
    :try_start_1a
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 217
    iget-object v2, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    new-instance v5, Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4, v0}, Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/MediaCodec;)V

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 221
    if-nez v2, :cond_3b

    .line 222
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 223
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_3b
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 230
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_1a .. :try_end_42} :catchall_68

    .line 232
    iget-object v0, p0, Landroid/media/LoudnessCodecController;->mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

    iget v2, p0, Landroid/media/LoudnessCodecController;->mSessionId:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, v2, p1, v1}, Landroid/media/LoudnessCodecDispatcher;->addLoudnessCodecInfo(IILandroid/media/LoudnessCodecInfo;)V

    .line 235
    const/4 p1, 0x1

    return p1

    .line 227
    :cond_4f
    :try_start_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loudness controller already added "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :catchall_68
    move-exception p1

    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_4f .. :try_end_6a} :catchall_68

    throw p1
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 326
    iget-object v0, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_3
    iget-object v1, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 328
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    .line 329
    iget-object v0, p0, Landroid/media/LoudnessCodecController;->mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

    iget v1, p0, Landroid/media/LoudnessCodecController;->mSessionId:I

    invoke-virtual {v0, v1}, Landroid/media/LoudnessCodecDispatcher;->stopLoudnessCodecUpdates(I)V

    .line 330
    return-void

    .line 328
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist getLoudnessCodecParams(Landroid/media/MediaCodec;)Landroid/os/Bundle;
    .registers 5

    .line 302
    const-string v0, "MediaCodec cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    invoke-static {p1}, Landroid/media/LoudnessCodecController;->getCodecInfo(Landroid/media/MediaCodec;)Landroid/media/LoudnessCodecInfo;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_31

    .line 309
    iget-object v1, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_e
    iget-object v2, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 311
    if-eqz v2, :cond_26

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 315
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_2e

    .line 317
    iget-object p1, p0, Landroid/media/LoudnessCodecController;->mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

    invoke-virtual {p1, v0}, Landroid/media/LoudnessCodecDispatcher;->getLoudnessCodecParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 312
    :cond_26
    :try_start_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MediaCodec was not added for loudness annotation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :catchall_2e
    move-exception p1

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_2e

    throw p1

    .line 306
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MediaCodec does not have valid codec information"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist getSessionId()I
    .registers 2

    .line 334
    iget v0, p0, Landroid/media/LoudnessCodecController;->mSessionId:I

    return v0
.end method

.method blacklist mediaCodecsConsume(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map$Entry<",
            "Landroid/media/LoudnessCodecInfo;",
            "Ljava/util/Set<",
            "Landroid/media/MediaCodec;",
            ">;>;>;)V"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_3
    iget-object v1, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 342
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 343
    goto :goto_d

    .line 344
    :cond_1d
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public whitelist removeMediaCodec(Landroid/media/MediaCodec;)V
    .registers 8

    .line 253
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 254
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 256
    const-string v1, "MediaCodec for removeMediaCodec cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec;

    invoke-static {v1}, Landroid/media/LoudnessCodecController;->getCodecInfo(Landroid/media/MediaCodec;)Landroid/media/LoudnessCodecInfo;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_57

    .line 262
    iget-object v3, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 263
    :try_start_1c
    iget-object v4, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    new-instance v5, Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, p1, v2}, Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/MediaCodec;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 272
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 276
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_54

    .line 278
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 279
    iget-object p1, p0, Landroid/media/LoudnessCodecController;->mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

    iget v0, p0, Landroid/media/LoudnessCodecController;->mSessionId:I

    invoke-virtual {p1, v0, v1}, Landroid/media/LoudnessCodecDispatcher;->removeLoudnessCodecInfo(ILandroid/media/LoudnessCodecInfo;)V

    .line 281
    :cond_3a
    return-void

    .line 273
    :cond_3b
    :try_start_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loudness controller does not contain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :catchall_54
    move-exception p1

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_54

    throw p1

    .line 260
    :cond_57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not extract codec loudness information"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
