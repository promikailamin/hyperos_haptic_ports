.class public Landroid/internal/aconfig/storage/FlagTable;
.super Ljava/lang/Object;
.source "FlagTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/aconfig/storage/FlagTable$Header;,
        Landroid/internal/aconfig/storage/FlagTable$Node;
    }
.end annotation


# instance fields
.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/FlagTable;
    .registers 3

    .line 31
    new-instance v0, Landroid/internal/aconfig/storage/FlagTable;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/FlagTable;-><init>()V

    .line 32
    iput-object p0, v0, Landroid/internal/aconfig/storage/FlagTable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 33
    new-instance v1, Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-direct {v1, p0}, Landroid/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v1}, Landroid/internal/aconfig/storage/FlagTable$Header;->fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/FlagTable$Header;

    move-result-object p0

    iput-object p0, v0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    .line 35
    return-object v0
.end method

.method private static blacklist makeKey(ILjava/lang/String;)[B
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist get(ILjava/lang/String;)Landroid/internal/aconfig/storage/FlagTable$Node;
    .registers 7

    .line 39
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v0}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v0

    iget-object v1, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmBucketOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    .line 40
    invoke-static {p1, p2}, Landroid/internal/aconfig/storage/FlagTable;->makeKey(ILjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Landroid/internal/aconfig/storage/TableUtils;->getBucketIndex([BI)I

    move-result v0

    .line 41
    iget-object v1, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmBucketOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    .line 42
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v0}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v0

    const/4 v2, 0x0

    if-lt v1, v0, :cond_2a

    .line 43
    return-object v2

    .line 45
    :cond_2a
    new-instance v0, Landroid/internal/aconfig/storage/ByteBufferReader;

    iget-object v3, p0, Landroid/internal/aconfig/storage/FlagTable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v3}, Landroid/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 47
    invoke-virtual {v0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    .line 48
    iget-object v3, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v3}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v3

    if-lt v1, v3, :cond_6a

    iget-object v3, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v3}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmFileSize(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v3

    if-lt v1, v3, :cond_49

    goto :goto_6a

    .line 52
    :cond_49
    :goto_49
    const/4 v3, -0x1

    if-eq v1, v3, :cond_69

    .line 53
    invoke-virtual {v0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 54
    invoke-static {v0}, Landroid/internal/aconfig/storage/FlagTable$Node;->fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/FlagTable$Node;

    move-result-object v1

    .line 55
    invoke-static {v1}, Landroid/internal/aconfig/storage/FlagTable$Node;->-$$Nest$fgetmFlagName(Landroid/internal/aconfig/storage/FlagTable$Node;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-static {v1}, Landroid/internal/aconfig/storage/FlagTable$Node;->-$$Nest$fgetmPackageId(Landroid/internal/aconfig/storage/FlagTable$Node;)I

    move-result v3

    if-ne p1, v3, :cond_64

    .line 56
    return-object v1

    .line 58
    :cond_64
    invoke-static {v1}, Landroid/internal/aconfig/storage/FlagTable$Node;->-$$Nest$fgetmNextOffset(Landroid/internal/aconfig/storage/FlagTable$Node;)I

    move-result v1

    .line 59
    goto :goto_49

    .line 61
    :cond_69
    return-object v2

    .line 49
    :cond_6a
    :goto_6a
    return-object v2
.end method

.method public blacklist getHeader()Landroid/internal/aconfig/storage/FlagTable$Header;
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    return-object v0
.end method
