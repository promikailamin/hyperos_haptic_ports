.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field public static blacklist sRC_COLOR:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    const/16 v0, 0x3e

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->sRC_COLOR:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createColor(IIII)I
    .registers 4

    .line 73
    shl-int/lit8 p3, p3, 0x18

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p3

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method


# virtual methods
.method public blacklist getDefaultColor(J)I
    .registers 9

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->isRCColor(J)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_b

    .line 55
    shr-long/2addr p1, v1

    long-to-int p1, p1

    return p1

    .line 57
    :cond_b
    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_17

    .line 58
    shr-long/2addr p1, v1

    long-to-int p1, p1

    return p1

    .line 60
    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method blacklist getID(J)I
    .registers 5

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->isRCColor(J)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 42
    const-wide/16 v0, -0x100

    and-long/2addr p1, v0

    const/16 v0, 0x8

    shr-long/2addr p1, v0

    long-to-int p1, p1

    return p1

    .line 44
    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method blacklist isRCColor(J)Z
    .registers 5

    .line 37
    const-wide/16 v0, 0x3f

    and-long/2addr p1, v0

    const-wide/16 v0, 0x3e

    cmp-long p1, p1, v0

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method blacklist packRCColor(II)J
    .registers 5

    .line 32
    int-to-long v0, p1

    .line 33
    const/16 p1, 0x20

    shl-long/2addr v0, p1

    shl-int/lit8 p1, p2, 0x8

    int-to-long p1, p1

    or-long/2addr p1, v0

    sget v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->sRC_COLOR:I

    int-to-long v0, v0

    or-long/2addr p1, v0

    return-wide p1
.end method
