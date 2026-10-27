.class public final Landroid/hardware/camera2/params/ReprocessFormatsMap;
.super Ljava/lang/Object;
.source "ReprocessFormatsMap.java"


# instance fields
.field private final greylist-max-o mEntry:[I

.field private final greylist-max-o mInputCount:I


# direct methods
.method public constructor greylist-max-o <init>([I)V
    .registers 10

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "entry must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    nop

    .line 77
    array-length v0, p1

    .line 78
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_d
    array-length v4, p1

    if-ge v2, v4, :cond_69

    .line 79
    aget v4, p1, v2

    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result v4

    .line 81
    add-int/lit8 v0, v0, -0x1

    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 84
    const/4 v5, 0x1

    if-lt v0, v5, :cond_55

    .line 89
    aget v6, p1, v2

    .line 90
    add-int/lit8 v0, v0, -0x1

    .line 91
    add-int/2addr v2, v5

    .line 93
    move v5, v1

    :goto_23
    if-ge v5, v6, :cond_2f

    .line 94
    add-int v7, v2, v5

    aget v7, p1, v7

    .line 95
    invoke-static {v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 98
    :cond_2f
    if-lez v6, :cond_52

    .line 99
    if-lt v0, v6, :cond_36

    .line 106
    add-int/2addr v2, v6

    .line 107
    sub-int/2addr v0, v6

    goto :goto_52

    .line 100
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 103
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 101
    const-string v1, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_52
    :goto_52
    add-int/lit8 v3, v3, 0x1

    .line 111
    goto :goto_d

    .line 85
    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Input %x had no output format length listed"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_69
    iput-object p1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    .line 114
    iput v3, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mInputCount:I

    .line 115
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 236
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 237
    return v0

    .line 239
    :cond_4
    if-ne p0, p1, :cond_8

    .line 240
    const/4 p1, 0x1

    return p1

    .line 242
    :cond_8
    instance-of v1, p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    if-eqz v1, :cond_17

    .line 243
    check-cast p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 245
    iget-object v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    iget-object p1, p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    .line 247
    :cond_17
    return v0
.end method

.method public greylist-max-o getInputs()[I
    .registers 8

    .line 130
    iget v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mInputCount:I

    new-array v0, v0, [I

    .line 132
    iget-object v1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v1, v1

    .line 133
    const/4 v2, 0x0

    move v3, v2

    :goto_9
    iget-object v4, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v4, v4

    if-ge v2, v4, :cond_5b

    .line 134
    iget-object v4, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v4, v4, v2

    .line 136
    add-int/lit8 v1, v1, -0x1

    .line 137
    add-int/lit8 v2, v2, 0x1

    .line 139
    const/4 v5, 0x1

    if-lt v1, v5, :cond_47

    .line 144
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v6, v6, v2

    .line 145
    add-int/lit8 v1, v1, -0x1

    .line 146
    add-int/2addr v2, v5

    .line 148
    if-lez v6, :cond_43

    .line 149
    if-lt v1, v6, :cond_27

    .line 156
    add-int/2addr v2, v6

    .line 157
    sub-int/2addr v1, v6

    goto :goto_43

    .line 150
    :cond_27
    new-instance v0, Ljava/lang/AssertionError;

    .line 153
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 151
    const-string v2, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 160
    :cond_43
    :goto_43
    aput v4, v0, v3

    .line 133
    add-int/2addr v3, v5

    goto :goto_9

    .line 140
    :cond_47
    new-instance v0, Ljava/lang/AssertionError;

    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Input %x had no output format length listed"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 163
    :cond_5b
    invoke-static {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic([I)[I

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getOutputs(I)[I
    .registers 8

    .line 180
    iget-object v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v0, v0

    .line 181
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    iget-object v3, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v3, v3

    if-ge v2, v3, :cond_6b

    .line 182
    iget-object v3, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v3, v3, v2

    .line 184
    add-int/lit8 v0, v0, -0x1

    .line 185
    add-int/lit8 v2, v2, 0x1

    .line 187
    const/4 v4, 0x1

    if-lt v0, v4, :cond_57

    .line 192
    iget-object v5, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v5, v5, v2

    .line 193
    add-int/lit8 v0, v0, -0x1

    .line 194
    add-int/2addr v2, v4

    .line 196
    if-lez v5, :cond_3d

    .line 197
    if-lt v0, v5, :cond_21

    goto :goto_3d

    .line 198
    :cond_21
    new-instance v1, Ljava/lang/AssertionError;

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v0, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 199
    const-string v0, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 205
    :cond_3d
    :goto_3d
    if-ne v3, p1, :cond_54

    .line 206
    new-array p1, v5, [I

    .line 209
    nop

    :goto_42
    if-ge v1, v5, :cond_4f

    .line 210
    iget-object v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    add-int v3, v2, v1

    aget v0, v0, v3

    aput v0, p1, v1

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 213
    :cond_4f
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic([I)[I

    move-result-object p1

    return-object p1

    .line 216
    :cond_54
    add-int/2addr v2, v5

    .line 217
    sub-int/2addr v0, v5

    .line 219
    goto :goto_5

    .line 188
    :cond_57
    new-instance v0, Ljava/lang/AssertionError;

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Input %x had no output format length listed"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 221
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Input format 0x%x was not one in #getInputs"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method
