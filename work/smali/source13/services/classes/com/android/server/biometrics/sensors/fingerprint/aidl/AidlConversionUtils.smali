.class final Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlConversionUtils;
.super Ljava/lang/Object;
.source "AidlConversionUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static toFrameworkAcquiredInfo(B)I
    .registers 4
    .param p0, "aidlAcquiredInfo"    # B

    .line 58
    const/16 v0, 0x8

    if-nez p0, :cond_5

    .line 59
    return v0

    .line 60
    :cond_5
    const/4 v1, 0x1

    if-ne p0, v1, :cond_a

    .line 61
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_a
    const/4 v2, 0x2

    if-ne p0, v2, :cond_e

    .line 63
    return v1

    .line 64
    :cond_e
    const/4 v1, 0x3

    if-ne p0, v1, :cond_12

    .line 65
    return v2

    .line 66
    :cond_12
    const/4 v2, 0x4

    if-ne p0, v2, :cond_16

    .line 67
    return v1

    .line 68
    :cond_16
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1a

    .line 69
    return v2

    .line 70
    :cond_1a
    const/4 v2, 0x6

    if-ne p0, v2, :cond_1e

    .line 71
    return v1

    .line 72
    :cond_1e
    const/4 v1, 0x7

    if-ne p0, v1, :cond_22

    .line 73
    return v2

    .line 74
    :cond_22
    if-ne p0, v0, :cond_25

    .line 75
    return v1

    .line 76
    :cond_25
    const/16 v1, 0x9

    if-ne p0, v1, :cond_2a

    .line 78
    return v0

    .line 79
    :cond_2a
    const/16 v2, 0xa

    if-ne p0, v2, :cond_2f

    .line 81
    return v2

    .line 82
    :cond_2f
    const/16 v2, 0xb

    if-ne p0, v2, :cond_34

    .line 83
    return v1

    .line 84
    :cond_34
    nop

    .line 86
    return v0
.end method

.method public static toFrameworkError(B)I
    .registers 4
    .param p0, "aidlError"    # B

    .line 33
    const/16 v0, 0x11

    if-nez p0, :cond_5

    .line 34
    return v0

    .line 35
    :cond_5
    const/4 v1, 0x1

    if-ne p0, v1, :cond_9

    .line 36
    return v1

    .line 37
    :cond_9
    const/4 v1, 0x2

    if-ne p0, v1, :cond_d

    .line 38
    return v1

    .line 39
    :cond_d
    const/4 v1, 0x3

    if-ne p0, v1, :cond_11

    .line 40
    return v1

    .line 41
    :cond_11
    const/4 v1, 0x4

    if-ne p0, v1, :cond_15

    .line 42
    return v1

    .line 43
    :cond_15
    const/4 v1, 0x5

    if-ne p0, v1, :cond_19

    .line 44
    return v1

    .line 45
    :cond_19
    const/4 v1, 0x6

    if-ne p0, v1, :cond_1d

    .line 46
    return v1

    .line 47
    :cond_1d
    const/4 v1, 0x7

    const/16 v2, 0x8

    if-ne p0, v1, :cond_23

    .line 48
    return v2

    .line 49
    :cond_23
    if-ne p0, v2, :cond_28

    .line 50
    const/16 v0, 0x12

    return v0

    .line 52
    :cond_28
    return v0
.end method
