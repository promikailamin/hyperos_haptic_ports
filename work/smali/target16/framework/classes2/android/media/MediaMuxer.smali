.class public final Landroid/media/MediaMuxer;
.super Ljava/lang/Object;
.source "MediaMuxer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMuxer$OutputFormat;,
        Landroid/media/MediaMuxer$Format;
    }
.end annotation


# static fields
.field private static final greylist-max-o MUXER_STATE_INITIALIZED:I = 0x0

.field private static final greylist-max-r MUXER_STATE_STARTED:I = 0x1

.field private static final greylist-max-r MUXER_STATE_STOPPED:I = 0x2

.field private static final greylist-max-r MUXER_STATE_UNINITIALIZED:I = -0x1


# instance fields
.field private final greylist-max-r mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mLastTrackIndex:I

.field private greylist-max-r mNativeObject:J

.field private greylist-max-r mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 250
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/FileDescriptor;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 321
    nop

    .line 322
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 323
    iput v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    .line 387
    invoke-direct {p0, p1, p2}, Landroid/media/MediaMuxer;->setUpMediaMuxer(Ljava/io/FileDescriptor;I)V

    .line 388
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 321
    nop

    .line 322
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 323
    iput v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    .line 353
    if-eqz p1, :cond_35

    .line 358
    nop

    .line 360
    const/4 v0, 0x0

    :try_start_13
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rws"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_2e

    .line 361
    const-wide/16 v2, 0x0

    :try_start_1c
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 362
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 363
    invoke-direct {p0, p1, p2}, Landroid/media/MediaMuxer;->setUpMediaMuxer(Ljava/io/FileDescriptor;I)V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2b

    .line 365
    nop

    .line 366
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 369
    return-void

    .line 365
    :catchall_2b
    move-exception p1

    move-object v0, v1

    goto :goto_2f

    :catchall_2e
    move-exception p1

    :goto_2f
    if-eqz v0, :cond_34

    .line 366
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 368
    :cond_34
    throw p1

    .line 354
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "path must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist convertMuxerStateCodeToString(I)Ljava/lang/String;
    .registers 2

    .line 329
    packed-switch p1, :pswitch_data_12

    .line 339
    const-string p1, "UNKNOWN"

    return-object p1

    .line 337
    :pswitch_6
    const-string p1, "STOPPED"

    return-object p1

    .line 335
    :pswitch_9
    const-string p1, "STARTED"

    return-object p1

    .line 333
    :pswitch_c
    const-string p1, "INITIALIZED"

    return-object p1

    .line 331
    :pswitch_f
    const-string p1, "UNINITIALIZED"

    return-object p1

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static native greylist-max-o nativeAddTrack(J[Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method private static native greylist-max-r nativeRelease(J)V
.end method

.method private static native greylist-max-o nativeSetLocation(JII)V
.end method

.method private static native greylist-max-o nativeSetOrientationHint(JI)V
.end method

.method private static native greylist-max-r nativeSetup(Ljava/io/FileDescriptor;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeStart(J)V
.end method

.method private static native greylist-max-o nativeStop(J)V
.end method

.method private static native greylist-max-o nativeWriteSampleData(JILjava/nio/ByteBuffer;IIJI)V
.end method

.method private greylist-max-o setUpMediaMuxer(Ljava/io/FileDescriptor;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    if-ltz p2, :cond_16

    const/4 v0, 0x4

    if-gt p2, v0, :cond_16

    .line 394
    invoke-static {p1, p2}, Landroid/media/MediaMuxer;->nativeSetup(Ljava/io/FileDescriptor;I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    .line 395
    const/4 p1, 0x0

    iput p1, p0, Landroid/media/MediaMuxer;->mState:I

    .line 396
    iget-object p1, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string p2, "release"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 397
    return-void

    .line 392
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is invalid"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist addTrack(Landroid/media/MediaFormat;)I
    .registers 7

    .line 712
    if-eqz p1, :cond_74

    .line 715
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_6c

    .line 718
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_64

    .line 721
    nop

    .line 723
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object p1

    .line 725
    nop

    .line 726
    nop

    .line 727
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 728
    if-lez v0, :cond_5c

    .line 729
    new-array v1, v0, [Ljava/lang/String;

    .line 730
    new-array v0, v0, [Ljava/lang/Object;

    .line 731
    nop

    .line 732
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 733
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    .line 734
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 735
    add-int/lit8 v2, v2, 0x1

    .line 736
    goto :goto_29

    .line 737
    :cond_46
    iget-wide v2, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v2, v3, v1, v0}, Landroid/media/MediaMuxer;->nativeAddTrack(J[Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    .line 738
    nop

    .line 744
    iget v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    if-ge v0, p1, :cond_54

    .line 747
    iput p1, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    .line 748
    return p1

    .line 745
    :cond_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid format."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 739
    :cond_5c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "format must not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 719
    :cond_64
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Muxer has been released!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 716
    :cond_6c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Muxer is not initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 713
    :cond_74
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "format must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 505
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 506
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 508
    :cond_9
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 509
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeRelease(J)V

    .line 510
    iput-wide v2, p0, Landroid/media/MediaMuxer;->mNativeObject:J
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_1d

    .line 513
    :cond_18
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 514
    nop

    .line 515
    return-void

    .line 513
    :catchall_1d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 514
    throw v0
.end method

.method public whitelist release()V
    .registers 5

    .line 810
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 811
    invoke-virtual {p0}, Landroid/media/MediaMuxer;->stop()V

    .line 813
    :cond_8
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 814
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeRelease(J)V

    .line 815
    iput-wide v2, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    .line 816
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 818
    :cond_1c
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 819
    return-void
.end method

.method public whitelist setLocation(FF)V
    .registers 7

    .line 442
    const v0, 0x461c4000    # 10000.0f

    mul-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 443
    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 445
    const v2, 0xdbba0

    if-gt v1, v2, :cond_78

    const v2, -0xdbba0

    if-lt v1, v2, :cond_78

    .line 449
    const p1, 0x1b7740

    if-gt v0, p1, :cond_59

    const p1, -0x1b7740

    if-lt v0, p1, :cond_59

    .line 454
    iget p1, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez p1, :cond_34

    iget-wide p1, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_34

    .line 455
    iget-wide p1, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {p1, p2, v1, v0}, Landroid/media/MediaMuxer;->nativeSetLocation(JII)V

    .line 460
    return-void

    .line 457
    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t set location due to wrong state("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 458
    invoke-direct {p0, v0}, Landroid/media/MediaMuxer;->convertMuxerStateCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 450
    :cond_59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Longitude: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " out of range"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 451
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 446
    :cond_78
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Latitude: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " out of range."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 447
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist setOrientationHint(I)V
    .registers 5

    .line 415
    if-eqz p1, :cond_28

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_28

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_28

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_f

    goto :goto_28

    .line 416
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_28
    :goto_28
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_32

    .line 419
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/media/MediaMuxer;->nativeSetOrientationHint(JI)V

    .line 424
    return-void

    .line 421
    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t set rotation degrees due to wrong state("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaMuxer;->mState:I

    .line 422
    invoke-direct {p0, v1}, Landroid/media/MediaMuxer;->convertMuxerStateCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist start()V
    .registers 5

    .line 470
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3a

    .line 473
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_15

    .line 474
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeStart(J)V

    .line 475
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 480
    return-void

    .line 477
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start due to wrong state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaMuxer;->mState:I

    .line 478
    invoke-direct {p0, v2}, Landroid/media/MediaMuxer;->convertMuxerStateCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Muxer has been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stop()V
    .registers 4

    .line 488
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 490
    const/4 v0, 0x2

    :try_start_6
    iget-wide v1, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/media/MediaMuxer;->nativeStop(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_11
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    .line 494
    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 495
    nop

    .line 500
    return-void

    .line 494
    :catchall_f
    move-exception v1

    goto :goto_13

    .line 491
    :catch_11
    move-exception v1

    .line 492
    :try_start_12
    throw v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_f

    .line 494
    :goto_13
    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 495
    throw v1

    .line 497
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t stop due to wrong state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaMuxer;->mState:I

    .line 498
    invoke-direct {p0, v2}, Landroid/media/MediaMuxer;->convertMuxerStateCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 15

    .line 774
    if-ltz p1, :cond_62

    iget v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    if-gt p1, v0, :cond_62

    .line 778
    if-eqz p2, :cond_5a

    .line 782
    if-eqz p3, :cond_52

    .line 785
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v0, :cond_4a

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    if-ltz v0, :cond_4a

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    .line 786
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_4a

    .line 791
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_42

    .line 795
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    .line 799
    iget-wide v2, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    iget v6, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v8, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v10, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move v4, p1

    move-object v5, p2

    invoke-static/range {v2 .. v10}, Landroid/media/MediaMuxer;->nativeWriteSampleData(JILjava/nio/ByteBuffer;IIJI)V

    .line 802
    return-void

    .line 796
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t write, muxer is not started"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 792
    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Muxer has been released!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 787
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferInfo must specify a valid buffer offset and size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 783
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferInfo must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 779
    :cond_5a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byteBuffer must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 775
    :cond_62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "trackIndex is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
