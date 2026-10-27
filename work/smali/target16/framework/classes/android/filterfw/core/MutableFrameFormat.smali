.class public Landroid/filterfw/core/MutableFrameFormat;
.super Landroid/filterfw/core/FrameFormat;
.source "MutableFrameFormat.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/filterfw/core/FrameFormat;-><init>()V

    .line 31
    return-void
.end method

.method public constructor greylist <init>(II)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/FrameFormat;-><init>(II)V

    .line 36
    return-void
.end method


# virtual methods
.method public greylist-max-o setBaseType(I)V
    .registers 2

    .line 39
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBaseType:I

    .line 40
    invoke-static {p1}, Landroid/filterfw/core/MutableFrameFormat;->bytesPerSampleOf(I)I

    move-result p1

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBytesPerSample:I

    .line 41
    return-void
.end method

.method public greylist setBytesPerSample(I)V
    .registers 2

    .line 49
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBytesPerSample:I

    .line 50
    const/4 p1, -0x1

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    .line 51
    return-void
.end method

.method public greylist-max-o setDimensionCount(I)V
    .registers 2

    .line 84
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    .line 85
    return-void
.end method

.method public greylist-max-o setDimensions(I)V
    .registers 2

    .line 59
    nop

    .line 60
    filled-new-array {p1}, [I

    move-result-object p1

    .line 61
    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    .line 62
    const/4 p1, -0x1

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    .line 63
    return-void
.end method

.method public greylist setDimensions(II)V
    .registers 3

    .line 67
    nop

    .line 68
    nop

    .line 69
    filled-new-array {p1, p2}, [I

    move-result-object p1

    .line 70
    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    .line 71
    const/4 p1, -0x1

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    .line 72
    return-void
.end method

.method public greylist-max-o setDimensions(III)V
    .registers 4

    .line 75
    nop

    .line 76
    nop

    .line 77
    nop

    .line 78
    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    .line 79
    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    .line 80
    const/4 p1, -0x1

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    .line 81
    return-void
.end method

.method public greylist-max-o setDimensions([I)V
    .registers 3

    .line 54
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_9

    :cond_4
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    :goto_9
    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    .line 55
    const/4 p1, -0x1

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    .line 56
    return-void
.end method

.method public greylist-max-o setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 92
    iget-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-nez v0, :cond_b

    .line 93
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    .line 95
    :cond_b
    iget-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public greylist-max-o setObjectClass(Ljava/lang/Class;)V
    .registers 2

    .line 88
    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mObjectClass:Ljava/lang/Class;

    .line 89
    return-void
.end method

.method public greylist-max-o setTarget(I)V
    .registers 2

    .line 44
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mTarget:I

    .line 45
    return-void
.end method
