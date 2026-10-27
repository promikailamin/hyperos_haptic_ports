.class public final Lcom/android/server/display/DisplayFrameworkStatsLogger;
.super Ljava/lang/Object;
.source "DisplayFrameworkStatsLogger.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logDisplayEvent(ILandroid/util/SparseIntArray;)V
    .registers 4

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayFrameworkStatsLogger;->toProtoEventType(I)I

    move-result p0

    .line 35
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    const/16 v0, 0x47d

    .line 32
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(II[II)V

    return-void
.end method

.method public logDisplayInfoChanged(ILandroid/view/DisplayInfo$DisplayInfoChangeSource;)V
    .registers 12

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 45
    sget-object v0, Landroid/view/DisplayInfo$DisplayInfoGroup;->BASIC_PROPERTIES:Landroid/view/DisplayInfo$DisplayInfoGroup;

    invoke-virtual {v0}, Landroid/view/DisplayInfo$DisplayInfoGroup;->getMask()I

    move-result v0

    and-int/2addr v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_12

    move v0, v2

    move v2, v3

    goto :goto_13

    :cond_12
    move v0, v2

    .line 46
    :goto_13
    sget-object v4, Landroid/view/DisplayInfo$DisplayInfoGroup;->DIMENSIONS_AND_SHAPES:Landroid/view/DisplayInfo$DisplayInfoGroup;

    invoke-virtual {v4}, Landroid/view/DisplayInfo$DisplayInfoGroup;->getMask()I

    move-result v4

    and-int/2addr v4, p1

    if-lez v4, :cond_1e

    move v4, v3

    goto :goto_20

    :cond_1e
    move v4, v3

    move v3, v0

    .line 48
    :goto_20
    sget-object v5, Landroid/view/DisplayInfo$DisplayInfoGroup;->ORIENTATION_AND_ROTATION:Landroid/view/DisplayInfo$DisplayInfoGroup;

    invoke-virtual {v5}, Landroid/view/DisplayInfo$DisplayInfoGroup;->getMask()I

    move-result v5

    and-int/2addr v5, p1

    if-lez v5, :cond_2b

    move v5, v4

    goto :goto_2d

    :cond_2b
    move v5, v4

    move v4, v0

    .line 49
    :goto_2d
    sget-object v6, Landroid/view/DisplayInfo$DisplayInfoGroup;->REFRESH_RATE_AND_MODE:Landroid/view/DisplayInfo$DisplayInfoGroup;

    invoke-virtual {v6}, Landroid/view/DisplayInfo$DisplayInfoGroup;->getMask()I

    move-result v6

    and-int/2addr v6, p1

    if-lez v6, :cond_38

    move v6, v5

    goto :goto_3a

    :cond_38
    move v6, v5

    move v5, v0

    .line 50
    :goto_3a
    sget-object v7, Landroid/view/DisplayInfo$DisplayInfoGroup;->COLOR_AND_BRIGHTNESS:Landroid/view/DisplayInfo$DisplayInfoGroup;

    invoke-virtual {v7}, Landroid/view/DisplayInfo$DisplayInfoGroup;->getMask()I

    move-result v7

    and-int/2addr v7, p1

    if-lez v7, :cond_45

    move v7, v6

    goto :goto_47

    :cond_45
    move v7, v6

    move v6, v0

    .line 51
    :goto_47
    sget-object v8, Landroid/view/DisplayInfo$DisplayInfoGroup;->STATE:Landroid/view/DisplayInfo$DisplayInfoGroup;

    invoke-virtual {v8}, Landroid/view/DisplayInfo$DisplayInfoGroup;->getMask()I

    move-result v8

    and-int/2addr p1, v8

    if-lez p1, :cond_51

    goto :goto_52

    :cond_51
    move v7, v0

    .line 52
    :goto_52
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayFrameworkStatsLogger;->toProtoEventSource(Landroid/view/DisplayInfo$DisplayInfoChangeSource;)I

    move-result v8

    const/16 v0, 0x496

    .line 42
    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIII)V

    return-void
.end method

.method public final toProtoEventSource(Landroid/view/DisplayInfo$DisplayInfoChangeSource;)I
    .registers 4

    .line 57
    sget-object p0, Lcom/android/server/display/DisplayFrameworkStatsLogger$1;->$SwitchMap$android$view$DisplayInfo$DisplayInfoChangeSource:[I

    invoke-virtual {p1}, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v1, 0x3

    if-eq p0, p1, :cond_18

    if-eq p0, v1, :cond_17

    const/4 p1, 0x4

    if-eq p0, p1, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    return p1

    :cond_17
    return v0

    :cond_18
    return v1

    :cond_19
    return p1
.end method

.method public final toProtoEventType(I)I
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_1b

    const/4 p0, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    if-eq p1, p0, :cond_1a

    const/4 p0, 0x4

    if-eq p1, p0, :cond_18

    const/16 v0, 0x8

    if-eq p1, v0, :cond_17

    const/16 p0, 0x9

    if-eq p1, p0, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x5

    :cond_17
    return p0

    :cond_18
    const/4 p0, 0x6

    return p0

    :cond_1a
    return v0

    :cond_1b
    return p0
.end method
