.class public Landroid/internal/aconfig/storage/PackageTable;
.super Ljava/lang/Object;
.source "PackageTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/aconfig/storage/PackageTable$Header;,
        Landroid/internal/aconfig/storage/PackageTable$Node;
    }
.end annotation


# static fields
.field private static final blacklist FINGERPRINT_BYTES:I = 0x8

.field private static final blacklist NODE_SKIP_BYTES:I = 0xc


# instance fields
.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/PackageTable;
    .registers 3

    .line 37
    new-instance v0, Landroid/internal/aconfig/storage/PackageTable;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/PackageTable;-><init>()V

    .line 38
    iput-object p0, v0, Landroid/internal/aconfig/storage/PackageTable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 39
    new-instance v1, Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-direct {v1, p0}, Landroid/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$smfromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Header;

    move-result-object p0

    iput-object p0, v0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    .line 41
    return-object v0
.end method


# virtual methods
.method public blacklist get(Ljava/lang/String;)Landroid/internal/aconfig/storage/PackageTable$Node;
    .registers 6

    .line 45
    iget-object v0, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v0}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v0

    iget-object v1, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmBucketOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    .line 46
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v0}, Landroid/internal/aconfig/storage/TableUtils;->getBucketIndex([BI)I

    move-result v0

    .line 47
    iget-object v1, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmBucketOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    .line 48
    iget-object v0, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v0}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v0

    const/4 v2, 0x0

    if-lt v1, v0, :cond_2c

    .line 49
    return-object v2

    .line 51
    :cond_2c
    new-instance v0, Landroid/internal/aconfig/storage/ByteBufferReader;

    iget-object v3, p0, Landroid/internal/aconfig/storage/PackageTable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v3}, Landroid/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 53
    invoke-virtual {v0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    .line 55
    iget-object v3, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v3}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v3

    if-lt v1, v3, :cond_6c

    iget-object v3, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v3}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmFileSize(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v3

    if-lt v1, v3, :cond_4b

    goto :goto_6c

    .line 59
    :cond_4b
    :goto_4b
    const/4 v3, -0x1

    if-eq v1, v3, :cond_6b

    .line 60
    invoke-virtual {v0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 61
    iget-object v1, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmVersion(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/internal/aconfig/storage/PackageTable$Node;->-$$Nest$smfromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;I)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object v1

    .line 62
    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Node;->-$$Nest$fgetmPackageName(Landroid/internal/aconfig/storage/PackageTable$Node;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 63
    return-object v1

    .line 65
    :cond_66
    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Node;->-$$Nest$fgetmNextOffset(Landroid/internal/aconfig/storage/PackageTable$Node;)I

    move-result v1

    .line 66
    goto :goto_4b

    .line 68
    :cond_6b
    return-object v2

    .line 56
    :cond_6c
    :goto_6c
    return-object v2
.end method

.method public blacklist getHeader()Landroid/internal/aconfig/storage/PackageTable$Header;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    return-object v0
.end method

.method public blacklist getPackageList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNumPackages(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    new-instance v1, Landroid/internal/aconfig/storage/ByteBufferReader;

    iget-object v2, p0, Landroid/internal/aconfig/storage/PackageTable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v2}, Landroid/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 74
    iget-object v2, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v2}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 75
    iget-object v2, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v2}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmVersion(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_27

    move v2, v3

    goto :goto_29

    :cond_27
    const/16 v2, 0x8

    .line 76
    :goto_29
    iget-object v5, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v5}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmVersion(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_33

    goto :goto_34

    :cond_33
    move v4, v3

    .line 77
    :goto_34
    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0xc

    .line 78
    nop

    :goto_38
    iget-object v4, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v4}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNumPackages(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v4

    if-ge v3, v4, :cond_52

    .line 79
    invoke-virtual {v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->position()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 82
    :cond_52
    return-object v0
.end method
