.class public abstract synthetic Lcom/android/server/power/WakelockTracer$InstanceConfig$$ExternalSyntheticRecord0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic m(ZJJ)I
    .registers 5

    .line 0
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p1, p2}, Ljava/lang/Long;->hashCode(J)I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p3, p4}, Ljava/lang/Long;->hashCode(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
