.class public abstract synthetic Lcom/android/server/appop/AggregatedAppOpAccessEvent$$ExternalSyntheticRecord0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic m(IIIIIIIJJJJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 18

    .line 0
    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p2

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p3

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p4

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p5

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p6

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p7, p8}, Ljava/lang/Long;->hashCode(J)I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p9, p10}, Ljava/lang/Long;->hashCode(J)I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p11, p12}, Ljava/lang/Long;->hashCode(J)I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p13, p14}, Ljava/lang/Long;->hashCode(J)I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p15}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-static/range {p16 .. p16}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-static/range {p17 .. p17}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
