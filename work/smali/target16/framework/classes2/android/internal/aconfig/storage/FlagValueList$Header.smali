.class public Landroid/internal/aconfig/storage/FlagValueList$Header;
.super Ljava/lang/Object;
.source "FlagValueList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/aconfig/storage/FlagValueList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private blacklist mBooleanValueOffset:I

.field private blacklist mContainer:Ljava/lang/String;

.field private blacklist mFileSize:I

.field private blacklist mFileType:Landroid/internal/aconfig/storage/FileType;

.field private blacklist mNumFlags:I

.field private blacklist mVersion:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBooleanValueOffset(Landroid/internal/aconfig/storage/FlagValueList$Header;)I
    .registers 1

    iget p0, p0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mBooleanValueOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumFlags(Landroid/internal/aconfig/storage/FlagValueList$Header;)I
    .registers 1

    iget p0, p0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mNumFlags:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/FlagValueList$Header;
    .registers 3

    .line 56
    new-instance v0, Landroid/internal/aconfig/storage/FlagValueList$Header;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/FlagValueList$Header;-><init>()V

    .line 57
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mVersion:I

    .line 58
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mContainer:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readByte()I

    move-result v1

    invoke-static {v1}, Landroid/internal/aconfig/storage/FileType;->fromInt(I)Landroid/internal/aconfig/storage/FileType;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mFileType:Landroid/internal/aconfig/storage/FileType;

    .line 60
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mFileSize:I

    .line 61
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mNumFlags:I

    .line 62
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result p0

    iput p0, v0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mBooleanValueOffset:I

    .line 64
    iget-object p0, v0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mFileType:Landroid/internal/aconfig/storage/FileType;

    sget-object v1, Landroid/internal/aconfig/storage/FileType;->FLAG_VAL:Landroid/internal/aconfig/storage/FileType;

    if-ne p0, v1, :cond_34

    .line 68
    return-object v0

    .line 65
    :cond_34
    new-instance p0, Landroid/internal/aconfig/storage/AconfigStorageException;

    const-string v0, "binary file is not a flag value file"

    invoke-direct {p0, v0}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getBooleanValueOffset()I
    .registers 2

    .line 92
    iget v0, p0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mBooleanValueOffset:I

    return v0
.end method

.method public blacklist getContainer()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mContainer:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFileSize()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mFileSize:I

    return v0
.end method

.method public blacklist getFileType()Landroid/internal/aconfig/storage/FileType;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mFileType:Landroid/internal/aconfig/storage/FileType;

    return-object v0
.end method

.method public blacklist getNumFlags()I
    .registers 2

    .line 88
    iget v0, p0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mNumFlags:I

    return v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mVersion:I

    return v0
.end method
