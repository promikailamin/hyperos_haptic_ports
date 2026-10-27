.class public Landroid/internal/aconfig/storage/FlagTable$Node;
.super Ljava/lang/Object;
.source "FlagTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/aconfig/storage/FlagTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field private blacklist mFlagIndex:I

.field private blacklist mFlagName:Ljava/lang/String;

.field private blacklist mFlagType:Landroid/internal/aconfig/storage/FlagType;

.field private blacklist mNextOffset:I

.field private blacklist mPackageId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlagName(Landroid/internal/aconfig/storage/FlagTable$Node;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNextOffset(Landroid/internal/aconfig/storage/FlagTable$Node;)I
    .registers 1

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageId(Landroid/internal/aconfig/storage/FlagTable$Node;)I
    .registers 1

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/FlagTable$Node;
    .registers 3

    .line 138
    new-instance v0, Landroid/internal/aconfig/storage/FlagTable$Node;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/FlagTable$Node;-><init>()V

    .line 139
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    .line 140
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readShort()I

    move-result v1

    invoke-static {v1}, Landroid/internal/aconfig/storage/FlagType;->fromInt(I)Landroid/internal/aconfig/storage/FlagType;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagType:Landroid/internal/aconfig/storage/FlagType;

    .line 142
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readShort()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagIndex:I

    .line 143
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result p0

    iput p0, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    .line 144
    iget p0, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    if-nez p0, :cond_2d

    const/4 p0, -0x1

    goto :goto_2f

    :cond_2d
    iget p0, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    :goto_2f
    iput p0, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    .line 145
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 155
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 156
    return v0

    .line 159
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_37

    instance-of v2, p1, Landroid/internal/aconfig/storage/FlagTable$Node;

    if-nez v2, :cond_c

    goto :goto_37

    .line 163
    :cond_c
    check-cast p1, Landroid/internal/aconfig/storage/FlagTable$Node;

    .line 164
    iget-object v2, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    iget-object v3, p1, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagType:Landroid/internal/aconfig/storage/FlagType;

    iget-object v3, p1, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagType:Landroid/internal/aconfig/storage/FlagType;

    .line 165
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    iget v3, p1, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    if-ne v2, v3, :cond_35

    iget v2, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagIndex:I

    iget v3, p1, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagIndex:I

    if-ne v2, v3, :cond_35

    iget v2, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    iget p1, p1, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    if-ne v2, p1, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    .line 164
    :goto_36
    return v0

    .line 160
    :cond_37
    :goto_37
    return v1
.end method

.method public blacklist getFlagIndex()I
    .registers 2

    .line 184
    iget v0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagIndex:I

    return v0
.end method

.method public blacklist getFlagName()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFlagType()Landroid/internal/aconfig/storage/FlagType;
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagType:Landroid/internal/aconfig/storage/FlagType;

    return-object v0
.end method

.method public blacklist getNextOffset()I
    .registers 2

    .line 188
    iget v0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    return v0
.end method

.method public blacklist getPackageId()I
    .registers 2

    .line 180
    iget v0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 150
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    iget-object v1, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagType:Landroid/internal/aconfig/storage/FlagType;

    iget v2, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
