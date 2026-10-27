.class Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/phonenumber/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexGroupDescriptor"
.end annotation


# instance fields
.field blacklist mMaxIndex:I

.field blacklist mMinIndex:I

.field blacklist mOffset:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$mwrite(Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;Ljava/io/DataOutput;)I
    .registers 2

    invoke-direct {p0, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->write(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smread(Ljava/io/DataInput;)Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;
    .registers 1

    invoke-static {p0}, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->read(Ljava/io/DataInput;)Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(IIJ)V
    .registers 5
    .param p1, "minIndex"    # I
    .param p2, "maxIndex"    # I
    .param p3, "offset"    # J

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    .line 82
    iput p2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    .line 83
    iput-wide p3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    .line 84
    return-void
.end method

.method synthetic constructor blacklist <init>(IIJLmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJ)V

    return-void
.end method

.method private static blacklist read(Ljava/io/DataInput;)Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;
    .registers 6
    .param p0, "i"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 88
    .local v0, "minIndex":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 89
    .local v1, "maxIndex":I
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 90
    .local v2, "offset":J
    new-instance v4, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    invoke-direct {v4, v0, v1, v2, v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJ)V

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

    .line 94
    if-eqz p1, :cond_11

    .line 95
    iget v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 96
    iget v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 97
    iget-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 99
    :cond_11
    const/16 v0, 0x10

    return v0
.end method
