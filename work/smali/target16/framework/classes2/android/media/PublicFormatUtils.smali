.class Landroid/media/PublicFormatUtils;
.super Ljava/lang/Object;
.source "PublicFormatUtils.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getHalDataspace(I)I
    .registers 1

    .line 28
    invoke-static {p0}, Landroid/media/PublicFormatUtils;->nativeGetHalDataspace(I)I

    move-result p0

    return p0
.end method

.method public static blacklist getHalFormat(I)I
    .registers 1

    .line 25
    invoke-static {p0}, Landroid/media/PublicFormatUtils;->nativeGetHalFormat(I)I

    move-result p0

    return p0
.end method

.method public static blacklist getPublicFormat(II)I
    .registers 2

    .line 31
    invoke-static {p0, p1}, Landroid/media/PublicFormatUtils;->nativeGetPublicFormat(II)I

    move-result p0

    return p0
.end method

.method private static native blacklist nativeGetHalDataspace(I)I
.end method

.method private static native blacklist nativeGetHalFormat(I)I
.end method

.method private static native blacklist nativeGetPublicFormat(II)I
.end method
