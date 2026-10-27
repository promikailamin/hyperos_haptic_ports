.class Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/phonenumber/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DescriptionPair"
.end annotation


# instance fields
.field private blacklist mDataItemDescriptionOffset:J

.field private blacklist mIndexGroupDescriptionOffset:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataItemDescriptionOffset(Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;)J
    .registers 3

    iget-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndexGroupDescriptionOffset(Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;)J
    .registers 3

    iget-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDataItemDescriptionOffset(Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;J)V
    .registers 3

    iput-wide p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIndexGroupDescriptionOffset(Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;J)V
    .registers 3

    iput-wide p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwrite(Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;Ljava/io/DataOutput;)I
    .registers 2

    invoke-direct {p0, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;->write(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smread(Ljava/io/DataInput;)Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;
    .registers 1

    invoke-static {p0}, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;->read(Ljava/io/DataInput;)Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(JJ)V
    .registers 5
    .param p1, "indexGroupDescriptionOffset"    # J
    .param p3, "dataItemDescriptionOffset"    # J

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-wide p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    .line 505
    iput-wide p3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    .line 506
    return-void
.end method

.method synthetic constructor blacklist <init>(JJLmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;-><init>(JJ)V

    return-void
.end method

.method private static blacklist read(Ljava/io/DataInput;)Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;
    .registers 6
    .param p0, "i"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 510
    .local v0, "indexGroupDescriptionOffset":J
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 511
    .local v2, "dataItemDescriptionOffset":J
    new-instance v4, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    invoke-direct {v4, v0, v1, v2, v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;-><init>(JJ)V

    return-object v4
.end method

.method private blacklist write(Ljava/io/DataOutput;)I
    .registers 4
    .param p1, "o"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    if-eqz p1, :cond_c

    .line 516
    iget-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 517
    iget-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 519
    :cond_c
    const/16 v0, 0x10

    return v0
.end method
