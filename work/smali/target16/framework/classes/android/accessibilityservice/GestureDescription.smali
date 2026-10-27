.class public final Landroid/accessibilityservice/GestureDescription;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/GestureDescription$StrokeDescription;,
        Landroid/accessibilityservice/GestureDescription$TouchPoint;,
        Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;,
        Landroid/accessibilityservice/GestureDescription$GestureStep;,
        Landroid/accessibilityservice/GestureDescription$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o MAX_GESTURE_DURATION_MS:J = 0xea60L

.field private static final greylist-max-o MAX_STROKE_COUNT:I = 0x14


# instance fields
.field private final blacklist mDisplayId:I

.field private final greylist-max-o mStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTempPos:[F


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetNextKeyPointAtLeast(Landroid/accessibilityservice/GestureDescription;J)J
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/GestureDescription;->getNextKeyPointAtLeast(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPointsForTime(Landroid/accessibilityservice/GestureDescription;J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/GestureDescription;->getPointsForTime(J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetTotalDuration(Ljava/util/List;)J
    .registers 3

    invoke-static {p0}, Landroid/accessibilityservice/GestureDescription;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Landroid/accessibilityservice/GestureDescription;-><init>(Ljava/util/List;)V

    .line 74
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;)V"
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/accessibilityservice/GestureDescription;-><init>(Ljava/util/List;I)V

    .line 78
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;I)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    .line 81
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    iput p2, p0, Landroid/accessibilityservice/GestureDescription;->mDisplayId:I

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;ILandroid/accessibilityservice/GestureDescription-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/GestureDescription;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method public static whitelist getMaxGestureDuration()J
    .registers 2

    .line 69
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public static whitelist getMaxStrokeCount()I
    .registers 1

    .line 60
    const/16 v0, 0x14

    return v0
.end method

.method private greylist-max-o getNextKeyPointAtLeast(J)J
    .registers 11

    .line 122
    nop

    .line 123
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_8
    iget-object v5, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_39

    .line 124
    iget-object v5, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    iget-wide v5, v5, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    .line 125
    cmp-long v7, v5, v3

    if-gez v7, :cond_23

    cmp-long v7, v5, p1

    if-ltz v7, :cond_23

    .line 126
    move-wide v3, v5

    .line 128
    :cond_23
    iget-object v5, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    iget-wide v5, v5, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    .line 129
    cmp-long v7, v5, v3

    if-gez v7, :cond_36

    cmp-long v7, v5, p1

    if-ltz v7, :cond_36

    .line 130
    move-wide v3, v5

    .line 123
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 133
    :cond_39
    cmp-long p1, v3, v0

    if-nez p1, :cond_3f

    const-wide/16 v3, -0x1

    :cond_3f
    return-wide v3
.end method

.method private greylist-max-o getPointsForTime(J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I
    .registers 13

    .line 144
    nop

    .line 145
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_75

    .line 146
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 147
    invoke-virtual {v3, p1, p2}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->hasPointForTime(J)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 148
    aget-object v4, p3, v2

    invoke-virtual {v3}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getId()I

    move-result v5

    iput v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 149
    aget-object v4, p3, v2

    .line 150
    invoke-virtual {v3}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getContinuedStrokeId()I

    move-result v5

    iput v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    .line 151
    aget-object v4, p3, v2

    .line 152
    invoke-virtual {v3}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getContinuedStrokeId()I

    move-result v5

    const/4 v6, 0x1

    if-gez v5, :cond_3b

    iget-wide v7, v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    cmp-long v5, p1, v7

    if-nez v5, :cond_3b

    move v5, v6

    goto :goto_3c

    :cond_3b
    move v5, v0

    :goto_3c
    iput-boolean v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 154
    aget-object v4, p3, v2

    invoke-virtual {v3}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->willContinue()Z

    move-result v5

    if-nez v5, :cond_4e

    iget-wide v7, v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v5, p1, v7

    if-nez v5, :cond_4e

    move v5, v6

    goto :goto_4f

    :cond_4e
    move v5, v0

    :goto_4f
    iput-boolean v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    .line 156
    iget-object v4, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    invoke-virtual {v3, p1, p2, v4}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getPosForTime(J[F)Z

    .line 157
    aget-object v3, p3, v2

    iget-object v4, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 158
    aget-object v3, p3, v2

    iget-object v4, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 159
    add-int/lit8 v2, v2, 0x1

    .line 145
    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 162
    :cond_75
    return v2
.end method

.method private static greylist-max-o getTotalDuration(Ljava/util/List;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;)J"
        }
    .end annotation

    .line 168
    nop

    .line 169
    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    :goto_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_19

    .line 170
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 171
    iget-wide v3, v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 173
    :cond_19
    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public whitelist getDisplayId()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/accessibilityservice/GestureDescription;->mDisplayId:I

    return v0
.end method

.method public whitelist getStroke(I)Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    .registers 3

    .line 102
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    return-object p1
.end method

.method public whitelist getStrokeCount()I
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
