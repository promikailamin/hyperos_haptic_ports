.class public final Lcom/xiaomi/camera/imagecodec/HashCodeHelpers;
.super Ljava/lang/Object;
.source "HashCodeHelpers.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs blacklist hashCode([I)I
    .registers 6
    .param p0, "array"    # [I

    .line 35
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 36
    return v0

    .line 46
    :cond_4
    const/4 v1, 0x1

    .line 47
    .local v1, "h":I
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_12

    aget v3, p0, v0

    .line 49
    .local v3, "x":I
    shl-int/lit8 v4, v1, 0x5

    sub-int/2addr v4, v1

    xor-int v1, v4, v3

    .line 47
    .end local v3    # "x":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 52
    :cond_12
    return v1
.end method
