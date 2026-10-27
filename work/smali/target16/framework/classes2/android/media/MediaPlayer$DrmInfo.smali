.class public final Landroid/media/MediaPlayer$DrmInfo;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrmInfo"
.end annotation


# instance fields
.field private greylist-max-o mapPssh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation
.end field

.field private greylist-max-o supportedSchemes:[Ljava/util/UUID;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mmakeCopy(Landroid/media/MediaPlayer$DrmInfo;)Landroid/media/MediaPlayer$DrmInfo;
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer$DrmInfo;->makeCopy()Landroid/media/MediaPlayer$DrmInfo;

    move-result-object p0

    return-object p0
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 5427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrmInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5431
    new-array v2, v0, [B

    .line 5432
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 5434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrmInfo() PSSH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Landroid/media/MediaPlayer$DrmInfo;->arrToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5435
    invoke-direct {p0, v2, v0}, Landroid/media/MediaPlayer$DrmInfo;->parsePSSH([BI)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    .line 5436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5439
    new-array v3, v2, [Ljava/util/UUID;

    iput-object v3, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    .line 5440
    const/4 v3, 0x0

    :goto_71
    if-ge v3, v2, :cond_a9

    .line 5441
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 5442
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 5444
    iget-object v5, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    invoke-direct {p0, v4}, Landroid/media/MediaPlayer$DrmInfo;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v4

    aput-object v4, v5, v3

    .line 5446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DrmInfo() supportedScheme["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5440
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 5450
    :cond_a9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DrmInfo() Parcel psshsize: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " supportedDRMsCount: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/MediaPlayer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$DrmInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/util/Map;[Ljava/util/UUID;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;[",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .line 5422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5423
    iput-object p1, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    .line 5424
    iput-object p2, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    .line 5425
    return-void
.end method

.method private greylist-max-o arrToHex([B)Ljava/lang/String;
    .registers 6

    .line 5459
    nop

    .line 5460
    const-string v0, "0x"

    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_2b

    .line 5461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v2, p1, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5460
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 5464
    :cond_2b
    return-object v0
.end method

.method private greylist-max-o bytesToUUID([B)Ljava/util/UUID;
    .registers 13

    .line 5468
    nop

    .line 5469
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v4, v2

    move-wide v2, v0

    :goto_6
    const/16 v5, 0x8

    if-ge v4, v5, :cond_21

    .line 5470
    aget-byte v6, p1, v4

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    rsub-int/lit8 v10, v4, 0x7

    mul-int/2addr v10, v5

    shl-long v5, v6, v10

    or-long/2addr v0, v5

    .line 5471
    add-int/lit8 v5, v4, 0x8

    aget-byte v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    shl-long/2addr v5, v10

    or-long/2addr v2, v5

    .line 5469
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 5474
    :cond_21
    new-instance p1, Ljava/util/UUID;

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object p1
.end method

.method private greylist-max-o makeCopy()Landroid/media/MediaPlayer$DrmInfo;
    .registers 4

    .line 5455
    new-instance v0, Landroid/media/MediaPlayer$DrmInfo;

    iget-object v1, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    iget-object v2, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    invoke-direct {v0, v1, v2}, Landroid/media/MediaPlayer$DrmInfo;-><init>(Ljava/util/Map;[Ljava/util/UUID;)V

    return-object v0
.end method

.method private greylist-max-o parsePSSH([BI)Ljava/util/Map;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .line 5478
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5483
    nop

    .line 5484
    nop

    .line 5485
    const/4 v3, 0x0

    move/from16 v4, p2

    move v5, v3

    move v6, v5

    .line 5487
    :goto_10
    if-lez v4, :cond_e6

    .line 5488
    const/4 v7, 0x0

    const-string v8, "MediaPlayer"

    const/16 v9, 0x10

    if-ge v4, v9, :cond_30

    .line 5489
    nop

    .line 5490
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 5489
    const-string v1, "parsePSSH: len is too short to parse UUID: (%d < 16) pssh: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5491
    return-object v7

    .line 5494
    :cond_30
    add-int/lit8 v10, v5, 0x10

    invoke-static {v1, v5, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 5495
    invoke-direct {v0, v5}, Landroid/media/MediaPlayer$DrmInfo;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v5

    .line 5496
    nop

    .line 5497
    add-int/lit8 v4, v4, -0x10

    .line 5500
    const/4 v11, 0x4

    if-ge v4, v11, :cond_57

    .line 5501
    nop

    .line 5502
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 5501
    const-string v1, "parsePSSH: len is too short to parse datalen: (%d < 4) pssh: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5503
    return-object v7

    .line 5506
    :cond_57
    add-int/lit8 v11, v10, 0x4

    invoke-static {v1, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 5507
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    if-ne v12, v13, :cond_83

    .line 5509
    aget-byte v12, v10, v14

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    aget-byte v13, v10, v15

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v9, v13, 0x10

    or-int/2addr v9, v12

    aget-byte v12, v10, v16

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v9, v12

    aget-byte v10, v10, v3

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    goto :goto_9c

    .line 5511
    :cond_83
    aget-byte v12, v10, v3

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    aget-byte v13, v10, v16

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v9, v13, 0x10

    or-int/2addr v9, v12

    aget-byte v12, v10, v15

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v9, v12

    aget-byte v10, v10, v14

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    .line 5512
    :goto_9c
    nop

    .line 5513
    add-int/lit8 v4, v4, -0x4

    .line 5515
    if-ge v4, v9, :cond_bc

    .line 5516
    nop

    .line 5517
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 5516
    const-string v1, "parsePSSH: len is too short to parse data: (%d < %d) pssh: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5518
    return-object v7

    .line 5521
    :cond_bc
    add-int v7, v11, v9

    invoke-static {v1, v11, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 5524
    nop

    .line 5525
    sub-int/2addr v4, v9

    .line 5527
    nop

    .line 5528
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v0, v10}, Landroid/media/MediaPlayer$DrmInfo;->arrToHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v9, v5, v11, v12}, [Ljava/lang/Object;

    move-result-object v9

    .line 5527
    const-string v11, "parsePSSH[%d]: <%s, %s> pssh: %d"

    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5529
    add-int/lit8 v6, v6, 0x1

    .line 5530
    invoke-interface {v2, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5531
    move v5, v7

    goto/16 :goto_10

    .line 5533
    :cond_e6
    return-object v2
.end method


# virtual methods
.method public whitelist getPssh()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .line 5410
    iget-object v0, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getSupportedSchemes()[Ljava/util/UUID;
    .registers 2

    .line 5419
    iget-object v0, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    return-object v0
.end method
