.class public abstract synthetic Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount$$ExternalSyntheticRecord0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic m(JJ)I
    .registers 4

    .line 0
    invoke-static {p0, p1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p2, p3}, Ljava/lang/Long;->hashCode(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
