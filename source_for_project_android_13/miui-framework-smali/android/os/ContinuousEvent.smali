.class Landroid/os/ContinuousEvent;
.super Landroid/os/Event;
.source "DynamicEffect.java"


# instance fields
.field blacklist mPoint:[Landroid/os/Point;

.field blacklist mPointNum:I


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 916
    invoke-direct {p0}, Landroid/os/Event;-><init>()V

    .line 917
    return-void
.end method


# virtual methods
.method blacklist generateData()[I
    .registers 7

    .line 920
    const/16 v0, 0x8

    .line 921
    .local v0, "pointOffset":I
    iget v1, p0, Landroid/os/ContinuousEvent;->mPointNum:I

    const/4 v2, 0x3

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    new-array v1, v1, [I

    .line 922
    .local v1, "data":[I
    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 924
    iget v4, p0, Landroid/os/ContinuousEvent;->mType:I

    aput v4, v1, v3

    .line 925
    iget v3, p0, Landroid/os/ContinuousEvent;->mPointNum:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 926
    iget v3, p0, Landroid/os/ContinuousEvent;->mVibId:I

    aput v3, v1, v4

    .line 927
    iget v3, p0, Landroid/os/ContinuousEvent;->mRelativeTime:I

    aput v3, v1, v2

    .line 928
    iget v2, p0, Landroid/os/ContinuousEvent;->mIntensity:I

    const/4 v3, 0x4

    aput v2, v1, v3

    .line 929
    iget v2, p0, Landroid/os/ContinuousEvent;->mFreq:I

    const/4 v3, 0x5

    aput v2, v1, v3

    .line 930
    iget v2, p0, Landroid/os/ContinuousEvent;->mDuration:I

    const/4 v3, 0x6

    aput v2, v1, v3

    .line 931
    iget v2, p0, Landroid/os/ContinuousEvent;->mPointNum:I

    const/4 v3, 0x7

    aput v2, v1, v3

    .line 933
    move v2, v0

    .line 934
    .local v2, "offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_38
    iget v4, p0, Landroid/os/ContinuousEvent;->mPointNum:I

    if-ge v3, v4, :cond_5b

    .line 935
    iget-object v4, p0, Landroid/os/ContinuousEvent;->mPoint:[Landroid/os/Point;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/os/Point;->mTime:I

    aput v4, v1, v2

    .line 936
    add-int/lit8 v2, v2, 0x1

    .line 937
    iget-object v4, p0, Landroid/os/ContinuousEvent;->mPoint:[Landroid/os/Point;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/os/Point;->mIntensity:I

    aput v4, v1, v2

    .line 938
    add-int/2addr v2, v5

    .line 939
    iget-object v4, p0, Landroid/os/ContinuousEvent;->mPoint:[Landroid/os/Point;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/os/Point;->mFreq:I

    aput v4, v1, v2

    .line 940
    add-int/2addr v2, v5

    .line 934
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 942
    .end local v3    # "i":I
    :cond_5b
    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Continuous{mPointNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/ContinuousEvent;->mPointNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ContinuousEvent;->mPoint:[Landroid/os/Point;

    .line 949
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 947
    return-object v0
.end method
