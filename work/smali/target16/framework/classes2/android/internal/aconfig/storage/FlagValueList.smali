.class public Landroid/internal/aconfig/storage/FlagValueList;
.super Ljava/lang/Object;
.source "FlagValueList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/aconfig/storage/FlagValueList$Header;
    }
.end annotation


# instance fields
.field private blacklist mHeader:Landroid/internal/aconfig/storage/FlagValueList$Header;

.field private blacklist mReader:Landroid/internal/aconfig/storage/ByteBufferReader;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/FlagValueList;
    .registers 3

    .line 28
    new-instance v0, Landroid/internal/aconfig/storage/FlagValueList;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/FlagValueList;-><init>()V

    .line 29
    new-instance v1, Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-direct {v1, p0}, Landroid/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v1, v0, Landroid/internal/aconfig/storage/FlagValueList;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    .line 30
    iget-object p0, v0, Landroid/internal/aconfig/storage/FlagValueList;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-static {p0}, Landroid/internal/aconfig/storage/FlagValueList$Header;->fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/FlagValueList$Header;

    move-result-object p0

    iput-object p0, v0, Landroid/internal/aconfig/storage/FlagValueList;->mHeader:Landroid/internal/aconfig/storage/FlagValueList$Header;

    .line 31
    return-object v0
.end method


# virtual methods
.method public blacklist getBoolean(I)Z
    .registers 4

    .line 35
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagValueList;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    iget-object v1, p0, Landroid/internal/aconfig/storage/FlagValueList;->mHeader:Landroid/internal/aconfig/storage/FlagValueList$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/FlagValueList$Header;->-$$Nest$fgetmBooleanValueOffset(Landroid/internal/aconfig/storage/FlagValueList$Header;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->readByte(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public blacklist getHeader()Landroid/internal/aconfig/storage/FlagValueList$Header;
    .registers 2

    .line 39
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagValueList;->mHeader:Landroid/internal/aconfig/storage/FlagValueList$Header;

    return-object v0
.end method

.method public blacklist size()I
    .registers 2

    .line 43
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagValueList;->mHeader:Landroid/internal/aconfig/storage/FlagValueList$Header;

    invoke-static {v0}, Landroid/internal/aconfig/storage/FlagValueList$Header;->-$$Nest$fgetmNumFlags(Landroid/internal/aconfig/storage/FlagValueList$Header;)I

    move-result v0

    return v0
.end method
