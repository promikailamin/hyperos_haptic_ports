.class Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/phonenumber/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataItemDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    }
.end annotation


# static fields
.field private static blacklist sBuffer:[B


# instance fields
.field private blacklist mIndexSize:B

.field private blacklist mLengthSize:B

.field private blacklist mOffset:J

.field private blacklist mOffsetSize:B

.field private blacklist mType:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIndexSize(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)B
    .registers 1

    iget-byte p0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffset(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)J
    .registers 3

    iget-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    .registers 1

    iget-object p0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIndexSize(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;B)V
    .registers 2

    iput-byte p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOffset(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;J)V
    .registers 3

    iput-wide p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreadDataItems(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->readDataItems(Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreadSingleDataItem(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->readSingleDataItem(Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwrite(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;)I
    .registers 2

    invoke-direct {p0, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->write(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteDataItems(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;Ljava/util/List;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->writeDataItems(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSizeOf(I)B
    .registers 1

    invoke-static {p0}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smread(Ljava/io/DataInput;)Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;
    .registers 1

    invoke-static {p0}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->read(Ljava/io/DataInput;)Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smreadAccordingToSize(Ljava/io/DataInput;I)J
    .registers 2

    invoke-static {p0, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 116
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    return-void
.end method

.method private constructor blacklist <init>(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V
    .registers 7
    .param p1, "type"    # Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    .param p2, "indexSize"    # B
    .param p3, "lengthSize"    # B
    .param p4, "offsetSize"    # B
    .param p5, "offset"    # J

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    .line 145
    iput-byte p2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    .line 146
    iput-byte p3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 147
    iput-byte p4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    .line 148
    iput-wide p5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    .line 149
    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;BBBJLmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V

    return-void
.end method

.method private static blacklist aquireBuffer(I)[B
    .registers 4
    .param p0, "size"    # I

    .line 125
    const-class v0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    monitor-enter v0

    .line 126
    :try_start_3
    sget-object v1, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    if-eqz v1, :cond_a

    array-length v1, v1

    if-ge v1, p0, :cond_e

    .line 127
    :cond_a
    new-array v1, p0, [B

    sput-object v1, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 129
    :cond_e
    sget-object v1, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 130
    .local v1, "bs":[B
    const/4 v2, 0x0

    sput-object v2, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 131
    monitor-exit v0

    return-object v1

    .line 132
    .end local v1    # "bs":[B
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private static blacklist getSizeOf(I)B
    .registers 6
    .param p0, "length"    # I

    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, "sizeOf":B
    mul-int/lit8 v1, p0, 0x2

    int-to-long v1, v1

    .local v1, "size":J
    :goto_4
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/16 v4, 0x8

    if-lez v3, :cond_11

    .line 486
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    .line 485
    shr-long/2addr v1, v4

    goto :goto_4

    .line 489
    .end local v1    # "size":J
    :cond_11
    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 490
    const/4 v0, 0x4

    goto :goto_1d

    .line 491
    :cond_16
    const/4 v1, 0x4

    if-le v0, v1, :cond_1d

    if-ge v0, v4, :cond_1d

    .line 492
    const/16 v0, 0x8

    .line 495
    :cond_1d
    :goto_1d
    return v0
.end method

.method private static blacklist read(Ljava/io/DataInput;)Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;
    .registers 15
    .param p0, "i"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-static {}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->values()[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    aget-object v0, v0, v1

    .line 153
    .local v0, "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 154
    .local v1, "indexSize":B
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v9

    .line 155
    .local v9, "lengthSize":B
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v10

    .line 156
    .local v10, "offsetSize":B
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v11

    .line 157
    .local v11, "offset":J
    new-instance v13, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-object v2, v13

    move-object v3, v0

    move v4, v1

    move v5, v9

    move v6, v10

    move-wide v7, v11

    invoke-direct/range {v2 .. v8}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V

    return-object v13
.end method

.method private static blacklist readAccordingToSize(Ljava/io/DataInput;I)J
    .registers 5
    .param p0, "i"    # Ljava/io/DataInput;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    sparse-switch p1, :sswitch_data_34

    .line 478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsuppoert size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :sswitch_1c
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 476
    .local v0, "data":J
    goto :goto_33

    .line 472
    .end local v0    # "data":J
    :sswitch_21
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    int-to-long v0, v0

    .line 473
    .restart local v0    # "data":J
    goto :goto_33

    .line 469
    .end local v0    # "data":J
    :sswitch_27
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v0

    int-to-long v0, v0

    .line 470
    .restart local v0    # "data":J
    goto :goto_33

    .line 466
    .end local v0    # "data":J
    :sswitch_2d
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    int-to-long v0, v0

    .line 467
    .restart local v0    # "data":J
    nop

    .line 480
    :goto_33
    return-wide v0

    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_2d
        0x2 -> :sswitch_27
        0x4 -> :sswitch_21
        0x8 -> :sswitch_1c
    .end sparse-switch
.end method

.method private blacklist readDataItems(Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    .registers 6
    .param p1, "file"    # Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, "ret":[Ljava/lang/Object;
    sget-object v1, Lmiui/telephony/phonenumber/DirectIndexedFile$1;->$SwitchMap$miui$telephony$phonenumber$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_54

    goto :goto_52

    .line 426
    :pswitch_11
    new-array v0, v2, [Ljava/lang/Object;

    .line 427
    invoke-interface {p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    .line 428
    goto :goto_52

    .line 422
    :pswitch_1e
    new-array v0, v2, [Ljava/lang/Object;

    .line 423
    invoke-interface {p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 424
    goto :goto_52

    .line 418
    :pswitch_2b
    new-array v0, v2, [Ljava/lang/Object;

    .line 419
    invoke-interface {p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v0, v3

    .line 420
    goto :goto_52

    .line 414
    :pswitch_38
    new-array v0, v2, [Ljava/lang/Object;

    .line 415
    invoke-interface {p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readByte()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v3

    .line 416
    goto :goto_52

    .line 434
    :pswitch_45
    invoke-interface {p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readInt()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 435
    invoke-direct {p0, p1, v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->readSingleDataItem(Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    .line 436
    nop

    .line 440
    :goto_52
    return-object v0

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_38
        :pswitch_2b
        :pswitch_1e
        :pswitch_11
    .end packed-switch
.end method

.method private blacklist readSingleDataItem(Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    .registers 11
    .param p1, "file"    # Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;
    .param p2, "dataItemIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "ret":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 361
    .local v1, "buf":[B
    invoke-interface {p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->getFilePointer()J

    move-result-wide v2

    .line 362
    .local v2, "basePos":J
    if-eqz p2, :cond_10

    .line 363
    iget-byte v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    mul-int/2addr v4, p2

    int-to-long v4, v4

    add-long/2addr v4, v2

    invoke-interface {p1, v4, v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->seek(J)V

    .line 365
    :cond_10
    iget-byte v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    invoke-static {p1, v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-interface {p1, v4, v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->seek(J)V

    .line 367
    sget-object v4, Lmiui/telephony/phonenumber/DirectIndexedFile$1;->$SwitchMap$miui$telephony$phonenumber$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_9a

    goto/16 :goto_96

    .line 398
    :pswitch_29
    iget-byte v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [J

    .line 399
    .local v4, "d":[J
    move-object v0, v4

    .line 400
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_34
    array-length v6, v4

    if-ge v5, v6, :cond_40

    .line 401
    invoke-interface {p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 400
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 403
    .end local v5    # "j":I
    :cond_40
    goto :goto_96

    .line 390
    .end local v4    # "d":[J
    :pswitch_41
    iget-byte v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [I

    .line 391
    .local v4, "d":[I
    move-object v0, v4

    .line 392
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_4c
    array-length v6, v4

    if-ge v5, v6, :cond_58

    .line 393
    invoke-interface {p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readInt()I

    move-result v6

    aput v6, v4, v5

    .line 392
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 395
    .end local v5    # "j":I
    :cond_58
    goto :goto_96

    .line 382
    .end local v4    # "d":[I
    :pswitch_59
    iget-byte v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [S

    .line 383
    .local v4, "d":[S
    move-object v0, v4

    .line 384
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_64
    array-length v6, v4

    if-ge v5, v6, :cond_70

    .line 385
    invoke-interface {p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readShort()S

    move-result v6

    aput-short v6, v4, v5

    .line 384
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 387
    .end local v5    # "j":I
    :cond_70
    goto :goto_96

    .line 376
    .end local v4    # "d":[S
    :pswitch_71
    iget-byte v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v4

    long-to-int v4, v4

    new-array v1, v4, [B

    .line 377
    invoke-interface {p1, v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readFully([B)V

    .line 378
    move-object v0, v1

    .line 379
    const/4 v1, 0x0

    .line 380
    goto :goto_96

    .line 369
    :pswitch_80
    iget-byte v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v4

    long-to-int v4, v4

    .line 370
    .local v4, "length":I
    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->aquireBuffer(I)[B

    move-result-object v1

    .line 371
    const/4 v5, 0x0

    invoke-interface {p1, v1, v5, v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readFully([BII)V

    .line 372
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v5, v4}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v6

    .line 373
    nop

    .line 406
    .end local v4    # "length":I
    :goto_96
    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->releaseBuffer([B)V

    .line 407
    return-object v0

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_80
        :pswitch_71
        :pswitch_59
        :pswitch_41
        :pswitch_29
    .end packed-switch
.end method

.method private static blacklist releaseBuffer([B)V
    .registers 4
    .param p0, "buffer"    # [B

    .line 136
    const-class v0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    monitor-enter v0

    .line 137
    if-eqz p0, :cond_f

    :try_start_5
    sget-object v1, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    if-eqz v1, :cond_d

    array-length v1, v1

    array-length v2, p0

    if-ge v1, v2, :cond_f

    .line 138
    :cond_d
    sput-object p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 140
    :cond_f
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private blacklist write(Ljava/io/DataOutput;)I
    .registers 4
    .param p1, "o"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    if-eqz p1, :cond_1f

    .line 162
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v0}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 163
    iget-byte v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 164
    iget-byte v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 165
    iget-byte v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 166
    iget-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 168
    :cond_1f
    const/16 v0, 0xc

    return v0
.end method

.method private static blacklist writeAccordingToSize(Ljava/io/DataOutput;IJ)V
    .registers 7
    .param p0, "o"    # Ljava/io/DataOutput;
    .param p1, "size"    # I
    .param p2, "data"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    sparse-switch p1, :sswitch_data_30

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsuppoert size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :sswitch_1c
    invoke-interface {p0, p2, p3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 456
    goto :goto_2f

    .line 452
    :sswitch_20
    long-to-int v0, p2

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 453
    goto :goto_2f

    .line 449
    :sswitch_25
    long-to-int v0, p2

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 450
    goto :goto_2f

    .line 446
    :sswitch_2a
    long-to-int v0, p2

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 447
    nop

    .line 460
    :goto_2f
    return-void

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_25
        0x4 -> :sswitch_20
        0x8 -> :sswitch_1c
    .end sparse-switch
.end method

.method private blacklist writeDataItems(Ljava/io/DataOutput;Ljava/util/List;)I
    .registers 12
    .param p1, "o"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    .local p2, "dataItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 237
    .local v0, "written":I
    sget-object v1, Lmiui/telephony/phonenumber/DirectIndexedFile$1;->$SwitchMap$miui$telephony$phonenumber$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_194

    goto/16 :goto_192

    .line 257
    :pswitch_11
    if-eqz p1, :cond_20

    .line 258
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 260
    :cond_20
    add-int/lit8 v0, v0, 0x8

    .line 261
    goto/16 :goto_192

    .line 251
    :pswitch_24
    if-eqz p1, :cond_33

    .line 252
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 254
    :cond_33
    add-int/lit8 v0, v0, 0x4

    .line 255
    goto/16 :goto_192

    .line 245
    :pswitch_37
    if-eqz p1, :cond_46

    .line 246
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeShort(I)V

    .line 248
    :cond_46
    add-int/lit8 v0, v0, 0x2

    .line 249
    goto/16 :goto_192

    .line 239
    :pswitch_4a
    if-eqz p1, :cond_59

    .line 240
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 242
    :cond_59
    add-int/lit8 v0, v0, 0x1

    .line 243
    goto/16 :goto_192

    .line 334
    :pswitch_5d
    if-eqz p1, :cond_66

    .line 335
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 337
    :cond_66
    add-int/lit8 v0, v0, 0x4

    .line 338
    invoke-direct {p0, p1, p2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 341
    .local v3, "dataItem":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, [J

    .line 342
    .local v4, "d":[J
    if-eqz p1, :cond_93

    .line 343
    iget-byte v5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v6, v4

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 344
    array-length v5, v4

    move v6, v2

    :goto_89
    if-ge v6, v5, :cond_93

    aget-wide v7, v4, v6

    .line 345
    .local v7, "l":J
    invoke-interface {p1, v7, v8}, Ljava/io/DataOutput;->writeLong(J)V

    .line 344
    .end local v7    # "l":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_89

    .line 348
    :cond_93
    iget-byte v5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v6, v4

    mul-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 349
    .end local v3    # "dataItem":Ljava/lang/Object;
    .end local v4    # "d":[J
    goto :goto_71

    .line 350
    :cond_9b
    goto/16 :goto_192

    .line 316
    :pswitch_9d
    if-eqz p1, :cond_a6

    .line 317
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 319
    :cond_a6
    add-int/lit8 v0, v0, 0x4

    .line 320
    invoke-direct {p0, p1, p2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 322
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_db

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 323
    .restart local v3    # "dataItem":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, [I

    .line 324
    .local v4, "d":[I
    if-eqz p1, :cond_d3

    .line 325
    iget-byte v5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v6, v4

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 326
    array-length v5, v4

    move v6, v2

    :goto_c9
    if-ge v6, v5, :cond_d3

    aget v7, v4, v6

    .line 327
    .local v7, "i":I
    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeInt(I)V

    .line 326
    .end local v7    # "i":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_c9

    .line 330
    :cond_d3
    iget-byte v5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v6, v4

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 331
    .end local v3    # "dataItem":Ljava/lang/Object;
    .end local v4    # "d":[I
    goto :goto_b1

    .line 332
    :cond_db
    goto/16 :goto_192

    .line 298
    :pswitch_dd
    if-eqz p1, :cond_e6

    .line 299
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 301
    :cond_e6
    add-int/lit8 v0, v0, 0x4

    .line 302
    invoke-direct {p0, p1, p2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 304
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 305
    .restart local v3    # "dataItem":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, [S

    .line 306
    .local v4, "d":[S
    if-eqz p1, :cond_113

    .line 307
    iget-byte v5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v6, v4

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 308
    array-length v5, v4

    move v6, v2

    :goto_109
    if-ge v6, v5, :cond_113

    aget-short v7, v4, v6

    .line 309
    .local v7, "s":S
    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeShort(I)V

    .line 308
    .end local v7    # "s":S
    add-int/lit8 v6, v6, 0x1

    goto :goto_109

    .line 312
    :cond_113
    iget-byte v5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v6, v4

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 313
    .end local v3    # "dataItem":Ljava/lang/Object;
    .end local v4    # "d":[S
    goto :goto_f1

    .line 314
    :cond_11b
    goto/16 :goto_192

    .line 282
    :pswitch_11d
    if-eqz p1, :cond_126

    .line 283
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 285
    :cond_126
    add-int/lit8 v0, v0, 0x4

    .line 286
    invoke-direct {p0, p1, p2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 288
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_131
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 289
    .local v2, "dataItem":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, [B

    .line 290
    .local v3, "d":[B
    if-eqz p1, :cond_14a

    .line 291
    iget-byte v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v5, v3

    int-to-long v5, v5

    invoke-static {p1, v4, v5, v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 292
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write([B)V

    .line 294
    :cond_14a
    iget-byte v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v5, v3

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 295
    .end local v2    # "dataItem":Ljava/lang/Object;
    .end local v3    # "d":[B
    goto :goto_131

    .line 296
    :cond_150
    goto :goto_192

    .line 263
    :pswitch_151
    if-eqz p1, :cond_15a

    .line 264
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 266
    :cond_15a
    add-int/lit8 v0, v0, 0x4

    .line 267
    invoke-direct {p0, p1, p2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_165
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_191

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 270
    .local v3, "dataItem":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 271
    .local v4, "d":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 272
    .local v5, "bs":[B
    if-eqz p1, :cond_18b

    .line 273
    iget-byte v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v7, v5

    int-to-long v7, v7

    invoke-static {p1, v6, v7, v8}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 274
    array-length v6, v5

    move v7, v2

    :goto_181
    if-ge v7, v6, :cond_18b

    aget-byte v8, v5, v7

    .line 275
    .local v8, "b":B
    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeByte(I)V

    .line 274
    .end local v8    # "b":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_181

    .line 278
    :cond_18b
    iget-byte v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v7, v5

    add-int/2addr v6, v7

    add-int/2addr v0, v6

    .line 279
    .end local v3    # "dataItem":Ljava/lang/Object;
    .end local v4    # "d":Ljava/lang/String;
    .end local v5    # "bs":[B
    goto :goto_165

    .line 280
    :cond_191
    nop

    .line 354
    :goto_192
    return v0

    nop

    :pswitch_data_194
    .packed-switch 0x1
        :pswitch_151
        :pswitch_11d
        :pswitch_dd
        :pswitch_9d
        :pswitch_5d
        :pswitch_4a
        :pswitch_37
        :pswitch_24
        :pswitch_11
    .end packed-switch
.end method

.method private blacklist writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I
    .registers 10
    .param p1, "o"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    .local p2, "dataItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p1, :cond_a

    iget-byte v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    if-eqz v0, :cond_a

    iget-byte v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    if-nez v0, :cond_6c

    .line 173
    :cond_a
    const/4 v0, 0x0

    .line 174
    .local v0, "maxLength":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 175
    .local v1, "offset":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 176
    .local v3, "dataItem":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 177
    .local v4, "length":I
    sget-object v5, Lmiui/telephony/phonenumber/DirectIndexedFile$1;->$SwitchMap$miui$telephony$phonenumber$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_d2

    goto :goto_56

    .line 195
    :pswitch_2e
    move-object v5, v3

    check-cast v5, [J

    array-length v4, v5

    .line 196
    mul-int/lit8 v5, v4, 0x8

    add-int/2addr v1, v5

    goto :goto_56

    .line 191
    :pswitch_36
    move-object v5, v3

    check-cast v5, [I

    array-length v4, v5

    .line 192
    mul-int/lit8 v5, v4, 0x4

    add-int/2addr v1, v5

    .line 193
    goto :goto_56

    .line 187
    :pswitch_3e
    move-object v5, v3

    check-cast v5, [S

    array-length v4, v5

    .line 188
    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v1, v5

    .line 189
    goto :goto_56

    .line 183
    :pswitch_46
    move-object v5, v3

    check-cast v5, [B

    array-length v4, v5

    .line 184
    add-int/2addr v1, v4

    .line 185
    goto :goto_56

    .line 179
    :pswitch_4c
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v4, v5

    .line 180
    add-int/2addr v1, v4

    .line 181
    nop

    .line 199
    :goto_56
    if-ge v0, v4, :cond_59

    .line 200
    move v0, v4

    .line 202
    .end local v3    # "dataItem":Ljava/lang/Object;
    .end local v4    # "length":I
    :cond_59
    goto :goto_15

    .line 203
    :cond_5a
    invoke-static {v0}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B

    move-result v2

    iput-byte v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 204
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 205
    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B

    move-result v2

    iput-byte v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    .line 208
    .end local v0    # "maxLength":I
    .end local v1    # "offset":I
    :cond_6c
    iget-byte v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    .line 209
    .local v0, "written":I
    if-eqz p1, :cond_d0

    .line 210
    move v1, v0

    .line 211
    .restart local v1    # "offset":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 212
    .restart local v3    # "dataItem":Ljava/lang/Object;
    iget-byte v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    int-to-long v5, v1

    invoke-static {p1, v4, v5, v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 213
    sget-object v4, Lmiui/telephony/phonenumber/DirectIndexedFile$1;->$SwitchMap$miui$telephony$phonenumber$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_e0

    goto :goto_cf

    .line 227
    :pswitch_98
    iget-byte v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move-object v5, v3

    check-cast v5, [J

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    goto :goto_cf

    .line 224
    :pswitch_a3
    iget-byte v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move-object v5, v3

    check-cast v5, [I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 225
    goto :goto_cf

    .line 221
    :pswitch_ae
    iget-byte v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move-object v5, v3

    check-cast v5, [S

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 222
    goto :goto_cf

    .line 218
    :pswitch_b9
    iget-byte v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move-object v5, v3

    check-cast v5, [B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 219
    goto :goto_cf

    .line 215
    :pswitch_c2
    iget-byte v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 216
    nop

    .line 230
    .end local v3    # "dataItem":Ljava/lang/Object;
    :goto_cf
    goto :goto_7a

    .line 232
    .end local v1    # "offset":I
    :cond_d0
    return v0

    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_46
        :pswitch_3e
        :pswitch_36
        :pswitch_2e
    .end packed-switch

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_b9
        :pswitch_ae
        :pswitch_a3
        :pswitch_98
    .end packed-switch
.end method
