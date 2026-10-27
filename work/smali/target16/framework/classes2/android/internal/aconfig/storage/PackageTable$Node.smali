.class public Landroid/internal/aconfig/storage/PackageTable$Node;
.super Ljava/lang/Object;
.source "PackageTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/aconfig/storage/PackageTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field private blacklist mBooleanStartIndex:I

.field private blacklist mHasPackageFingerprint:Z

.field private blacklist mHasRedactExportedReads:Z

.field private blacklist mNextOffset:I

.field private blacklist mPackageFingerprint:J

.field private blacklist mPackageId:I

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mRedactExportedReads:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNextOffset(Landroid/internal/aconfig/storage/PackageTable$Node;)I
    .registers 1

    iget p0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/internal/aconfig/storage/PackageTable$Node;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;I)Landroid/internal/aconfig/storage/PackageTable$Node;
    .registers 2

    invoke-static {p0, p1}, Landroid/internal/aconfig/storage/PackageTable$Node;->fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;I)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;I)Landroid/internal/aconfig/storage/PackageTable$Node;
    .registers 2

    .line 157
    packed-switch p1, :pswitch_data_18

    .line 166
    new-instance p0, Landroid/internal/aconfig/storage/PackageTable$Node;

    invoke-direct {p0}, Landroid/internal/aconfig/storage/PackageTable$Node;-><init>()V

    return-object p0

    .line 163
    :pswitch_9
    invoke-static {p0}, Landroid/internal/aconfig/storage/PackageTable$Node;->fromBytesV3(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object p0

    return-object p0

    .line 161
    :pswitch_e
    invoke-static {p0}, Landroid/internal/aconfig/storage/PackageTable$Node;->fromBytesV2(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object p0

    return-object p0

    .line 159
    :pswitch_13
    invoke-static {p0}, Landroid/internal/aconfig/storage/PackageTable$Node;->fromBytesV1(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object p0

    return-object p0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_e
        :pswitch_9
    .end packed-switch
.end method

.method private static blacklist fromBytesV1(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Node;
    .registers 3

    .line 171
    new-instance v0, Landroid/internal/aconfig/storage/PackageTable$Node;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/PackageTable$Node;-><init>()V

    .line 172
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    .line 174
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    .line 175
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result p0

    iput p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    .line 176
    iget p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    if-nez p0, :cond_23

    const/4 p0, -0x1

    goto :goto_25

    :cond_23
    iget p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    :goto_25
    iput p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    .line 177
    return-object v0
.end method

.method private static blacklist fromBytesV2(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Node;
    .registers 4

    .line 181
    new-instance v0, Landroid/internal/aconfig/storage/PackageTable$Node;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/PackageTable$Node;-><init>()V

    .line 182
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    .line 184
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageFingerprint:J

    .line 185
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    .line 186
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result p0

    iput p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    .line 187
    iget p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    if-nez p0, :cond_29

    const/4 p0, -0x1

    goto :goto_2b

    :cond_29
    iget p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    :goto_2b
    iput p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    .line 188
    const/4 p0, 0x1

    iput-boolean p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mHasPackageFingerprint:Z

    .line 189
    return-object v0
.end method

.method private static blacklist fromBytesV3(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Node;
    .registers 4

    .line 193
    new-instance v0, Landroid/internal/aconfig/storage/PackageTable$Node;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/PackageTable$Node;-><init>()V

    .line 194
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    .line 196
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageFingerprint:J

    .line 197
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mRedactExportedReads:Z

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mHasRedactExportedReads:Z

    .line 199
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v2

    iput v2, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    .line 200
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result p0

    iput p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    .line 201
    iget p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    if-nez p0, :cond_32

    const/4 p0, -0x1

    goto :goto_34

    :cond_32
    iget p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    :goto_34
    iput p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    .line 202
    iput-boolean v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mHasPackageFingerprint:Z

    .line 203
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 213
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 214
    return v0

    .line 217
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    instance-of v2, p1, Landroid/internal/aconfig/storage/PackageTable$Node;

    if-nez v2, :cond_c

    goto :goto_2d

    .line 221
    :cond_c
    check-cast p1, Landroid/internal/aconfig/storage/PackageTable$Node;

    .line 222
    iget-object v2, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget v2, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    iget v3, p1, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    if-ne v2, v3, :cond_2b

    iget v2, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    iget v3, p1, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    if-ne v2, v3, :cond_2b

    iget v2, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    iget p1, p1, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    if-ne v2, p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    return v0

    .line 218
    :cond_2d
    :goto_2d
    return v1
.end method

.method public blacklist getBooleanStartIndex()I
    .registers 2

    .line 245
    iget v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    return v0
.end method

.method public blacklist getNextOffset()I
    .registers 2

    .line 249
    iget v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    return v0
.end method

.method public blacklist getPackageFingerprint()J
    .registers 3

    .line 237
    iget-wide v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageFingerprint:J

    return-wide v0
.end method

.method public blacklist getPackageId()I
    .registers 2

    .line 233
    iget v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 229
    iget-object v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRedactExportedReads()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mRedactExportedReads:Z

    return v0
.end method

.method public blacklist hasPackageFingerprint()Z
    .registers 2

    .line 253
    iget-boolean v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mHasPackageFingerprint:Z

    return v0
.end method

.method public blacklist hasRedactExportedReads()Z
    .registers 2

    .line 257
    iget-boolean v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mHasRedactExportedReads:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 208
    iget-object v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    iget v1, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
