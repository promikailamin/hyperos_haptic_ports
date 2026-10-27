.class Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/phonenumber/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileHeader"
.end annotation


# static fields
.field private static final blacklist CURRENT_VERSION:I = 0x2

.field private static final blacklist FILE_TAG:[B


# instance fields
.field private blacklist mDataVersion:I

.field private blacklist mDescriptionOffsets:[Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataVersion(Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;)I
    .registers 1

    iget p0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->mDataVersion:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDescriptionOffsets(Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;
    .registers 1

    iget-object p0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwrite(Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;Ljava/io/DataOutput;)I
    .registers 2

    invoke-direct {p0, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->write(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smread(Ljava/io/DataInput;)Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;
    .registers 1

    invoke-static {p0}, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->read(Ljava/io/DataInput;)Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 524
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x49t
        0x44t
        0x46t
        0x20t
    .end array-data
.end method

.method private constructor blacklist <init>(II)V
    .registers 4
    .param p1, "dataCount"    # I
    .param p2, "dataVersion"    # I

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    new-array v0, p1, [Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    iput-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    .line 535
    iput p2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->mDataVersion:I

    .line 536
    return-void
.end method

.method synthetic constructor blacklist <init>(IILmiui/telephony/phonenumber/DirectIndexedFile$FileHeader-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;-><init>(II)V

    return-void
.end method

.method private static blacklist read(Ljava/io/DataInput;)Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;
    .registers 9
    .param p0, "i"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    sget-object v0, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 540
    .local v0, "fileTag":[B
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_12

    .line 541
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    aput-byte v2, v0, v1

    .line 540
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 543
    .end local v1    # "index":I
    :cond_12
    sget-object v1, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 546
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 547
    .local v1, "version":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3d

    .line 551
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 552
    .local v2, "count":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 553
    .local v3, "dataVersion":I
    new-instance v4, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

    invoke-direct {v4, v2, v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;-><init>(II)V

    .line 554
    .local v4, "header":Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2f
    if-ge v5, v2, :cond_3c

    .line 555
    iget-object v6, v4, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    invoke-static {p0}, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;->-$$Nest$smread(Ljava/io/DataInput;)Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    move-result-object v7

    aput-object v7, v6, v5

    .line 554
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 557
    .end local v5    # "k":I
    :cond_3c
    return-object v4

    .line 548
    .end local v2    # "count":I
    .end local v3    # "dataVersion":I
    .end local v4    # "header":Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;
    :cond_3d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "File version unmatched, please upgrade your reader"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 544
    .end local v1    # "version":I
    :cond_45
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File tag unmatched, file may be corrupt"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist write(Ljava/io/DataOutput;)I
    .registers 8
    .param p1, "o"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    sget-object v0, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    .line 562
    .local v1, "written":I
    if-eqz p1, :cond_1d

    .line 563
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 564
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 565
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 566
    iget v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->mDataVersion:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 568
    :cond_1d
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_2d

    aget-object v4, v0, v3

    .line 569
    .local v4, "mDescriptionOffset":Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;
    invoke-static {v4, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;->-$$Nest$mwrite(Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;Ljava/io/DataOutput;)I

    move-result v5

    add-int/2addr v1, v5

    .line 568
    .end local v4    # "mDescriptionOffset":Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 571
    :cond_2d
    return v1
.end method
