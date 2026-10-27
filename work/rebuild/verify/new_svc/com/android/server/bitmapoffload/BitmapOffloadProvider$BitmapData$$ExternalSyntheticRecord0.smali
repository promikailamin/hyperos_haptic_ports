.class public abstract synthetic Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData$$ExternalSyntheticRecord0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic m(IIIILjava/lang/Object;)I
    .registers 5

    .line 0
    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p2

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p3

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p4}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
