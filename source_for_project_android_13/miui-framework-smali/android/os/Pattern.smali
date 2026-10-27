.class Landroid/os/Pattern;
.super Ljava/lang/Object;
.source "DynamicEffect.java"


# instance fields
.field blacklist CONTINUOUS_EVENT:I

.field blacklist TRANSIENT_EVENT:I

.field blacklist mEvent:[Landroid/os/Event;

.field blacklist mRelativeTime:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    const/16 v0, 0x1000

    iput v0, p0, Landroid/os/Pattern;->CONTINUOUS_EVENT:I

    .line 956
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/Pattern;->TRANSIENT_EVENT:I

    return-void
.end method


# virtual methods
.method blacklist generateSerializationPatternData(I)[I
    .registers 12
    .param p1, "index"    # I

    .line 978
    invoke-virtual {p0}, Landroid/os/Pattern;->getPatternDataLen()I

    move-result v0

    .line 979
    .local v0, "dataLen":I
    new-array v1, v0, [I

    .line 980
    .local v1, "data":[I
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 982
    aput p1, v1, v2

    .line 983
    iget v3, p0, Landroid/os/Pattern;->mRelativeTime:I

    const/4 v4, 0x1

    aput v3, v1, v4

    .line 984
    iget-object v3, p0, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    array-length v4, v3

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 986
    const/4 v4, 0x0

    .line 987
    .local v4, "eventData":[I
    const/4 v5, 0x3

    .line 988
    .local v5, "offset":I
    array-length v6, v3

    move v7, v2

    :goto_1b
    if-ge v7, v6, :cond_2c

    aget-object v8, v3, v7

    .line 989
    .local v8, "event":Landroid/os/Event;
    invoke-virtual {v8}, Landroid/os/Event;->generateData()[I

    move-result-object v4

    .line 990
    array-length v9, v4

    invoke-static {v4, v2, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 991
    array-length v9, v4

    add-int/2addr v5, v9

    .line 988
    .end local v8    # "event":Landroid/os/Event;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 993
    :cond_2c
    return-object v1
.end method

.method blacklist getPatternDataLen()I
    .registers 3

    .line 973
    invoke-virtual {p0}, Landroid/os/Pattern;->getPatternEventLen()I

    move-result v0

    .line 974
    .local v0, "eventLen":I
    add-int/lit8 v1, v0, 0x3

    return v1
.end method

.method blacklist getPatternEventLen()I
    .registers 8

    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, "len":I
    iget-object v1, p0, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    .line 963
    .local v4, "event":Landroid/os/Event;
    iget v5, v4, Landroid/os/Event;->mType:I

    iget v6, p0, Landroid/os/Pattern;->CONTINUOUS_EVENT:I

    if-ne v5, v6, :cond_1a

    .line 964
    move-object v5, v4

    check-cast v5, Landroid/os/ContinuousEvent;

    iget v5, v5, Landroid/os/ContinuousEvent;->mPointNum:I

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v0, v5

    goto :goto_22

    .line 965
    :cond_1a
    iget v5, v4, Landroid/os/Event;->mType:I

    iget v6, p0, Landroid/os/Pattern;->TRANSIENT_EVENT:I

    if-ne v5, v6, :cond_22

    .line 966
    add-int/lit8 v0, v0, 0x7

    .line 962
    .end local v4    # "event":Landroid/os/Event;
    :cond_22
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 969
    :cond_25
    return v0
.end method
