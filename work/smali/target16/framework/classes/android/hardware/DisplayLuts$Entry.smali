.class public Landroid/hardware/DisplayLuts$Entry;
.super Ljava/lang/Object;
.source "DisplayLuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/DisplayLuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field private static final blacklist LUT_LENGTH_LIMIT:I = 0x186a0


# instance fields
.field private blacklist mBuffer:[F

.field private blacklist mDimension:I

.field private blacklist mSamplingKey:I

.field private blacklist mSize:I


# direct methods
.method public constructor whitelist <init>([FII)V
    .registers 9

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    if-eqz p1, :cond_60

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_60

    .line 97
    array-length v0, p1

    const v2, 0x186a0

    if-ge v0, v2, :cond_58

    .line 101
    const/4 v0, 0x3

    if-eq p2, v1, :cond_1d

    if-ne p2, v0, :cond_15

    goto :goto_1d

    .line 103
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The dimension should be either 1D or 3D!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_1d
    :goto_1d
    if-ne p2, v0, :cond_4e

    .line 107
    array-length v1, p1

    if-le v1, v0, :cond_46

    .line 111
    array-length v1, p1

    .line 112
    rem-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_3e

    .line 116
    div-int/2addr v1, v0

    .line 118
    int-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    .line 119
    double-to-int v2, v0

    int-to-double v3, v2

    cmpl-double v0, v0, v3

    if-nez v0, :cond_36

    .line 120
    iput v2, p0, Landroid/hardware/DisplayLuts$Entry;->mSize:I

    .line 125
    goto :goto_51

    .line 122
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot get the cube root of the 3d lut buffer!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_3e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The lut buffer of 3dlut should have 3 channels!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The 3d lut size of each dimension should be over 1!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_4e
    array-length v0, p1

    iput v0, p0, Landroid/hardware/DisplayLuts$Entry;->mSize:I

    .line 129
    :goto_51
    iput-object p1, p0, Landroid/hardware/DisplayLuts$Entry;->mBuffer:[F

    .line 130
    iput p2, p0, Landroid/hardware/DisplayLuts$Entry;->mDimension:I

    .line 131
    iput p3, p0, Landroid/hardware/DisplayLuts$Entry;->mSamplingKey:I

    .line 132
    return-void

    .line 98
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The lut length is too big to handle!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The buffer cannot be empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist dimensionToString(I)Ljava/lang/String;
    .registers 1

    .line 175
    packed-switch p0, :pswitch_data_c

    .line 181
    :pswitch_3
    const-string p0, ""

    return-object p0

    .line 179
    :pswitch_6
    const-string p0, "THREE_DIMENSION"

    return-object p0

    .line 177
    :pswitch_9
    const-string p0, "ONE_DIMENSION"

    return-object p0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist samplingKeyToString(I)Ljava/lang/String;
    .registers 1

    .line 186
    packed-switch p0, :pswitch_data_10

    .line 194
    const-string p0, ""

    return-object p0

    .line 192
    :pswitch_6
    const-string p0, "SAMPLING_KEY_CIE_Y"

    return-object p0

    .line 190
    :pswitch_9
    const-string p0, "SAMPLING_KEY_MAX_RGB"

    return-object p0

    .line 188
    :pswitch_c
    const-string p0, "SAMPLING_KEY_RGB"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist getBuffer()[F
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/hardware/DisplayLuts$Entry;->mBuffer:[F

    return-object v0
.end method

.method public whitelist getDimension()I
    .registers 2

    .line 139
    iget v0, p0, Landroid/hardware/DisplayLuts$Entry;->mDimension:I

    return v0
.end method

.method public whitelist getSamplingKey()I
    .registers 2

    .line 163
    iget v0, p0, Landroid/hardware/DisplayLuts$Entry;->mSamplingKey:I

    return v0
.end method

.method public blacklist getSize()I
    .registers 2

    .line 147
    iget v0, p0, Landroid/hardware/DisplayLuts$Entry;->mSize:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry{dimension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Landroid/hardware/DisplayLuts$Entry;->getDimension()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/DisplayLuts$Entry;->dimensionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size(each dimension)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Landroid/hardware/DisplayLuts$Entry;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplingKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Landroid/hardware/DisplayLuts$Entry;->getSamplingKey()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/DisplayLuts$Entry;->samplingKeyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    return-object v0
.end method
