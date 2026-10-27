.class public Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionEventGenerator"
.end annotation


# static fields
.field private static greylist-max-o sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o getCurrentTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .registers 4

    .line 594
    sget-object v0, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    array-length v0, v0

    if-ge v0, p0, :cond_1c

    .line 595
    :cond_9
    new-array v0, p0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    sput-object v0, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 596
    const/4 v0, 0x0

    :goto_e
    if-ge v0, p0, :cond_1c

    .line 597
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-direct {v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    aput-object v2, v1, v0

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 600
    :cond_1c
    sget-object p0, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    return-object p0
.end method

.method public static greylist-max-o getGestureStepsFromGestureDescription(Landroid/accessibilityservice/GestureDescription;I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accessibilityservice/GestureDescription;",
            "I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;"
        }
    .end annotation

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 573
    nop

    .line 574
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription;->getStrokeCount()I

    move-result v1

    invoke-static {v1}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getCurrentTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v1

    .line 575
    nop

    .line 577
    nop

    .line 578
    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3}, Landroid/accessibilityservice/GestureDescription;->-$$Nest$mgetNextKeyPointAtLeast(Landroid/accessibilityservice/GestureDescription;J)J

    move-result-wide v4

    const/4 v6, 0x0

    move-wide v7, v2

    .line 579
    :goto_18
    cmp-long v9, v4, v2

    if-ltz v9, :cond_3b

    .line 580
    if-nez v6, :cond_20

    move-wide v7, v4

    goto :goto_27

    .line 581
    :cond_20
    int-to-long v9, p1

    add-long/2addr v7, v9

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v7, v4

    .line 582
    :goto_27
    invoke-static {p0, v7, v8, v1}, Landroid/accessibilityservice/GestureDescription;->-$$Nest$mgetPointsForTime(Landroid/accessibilityservice/GestureDescription;J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I

    move-result v6

    .line 584
    new-instance v4, Landroid/accessibilityservice/GestureDescription$GestureStep;

    invoke-direct {v4, v7, v8, v6, v1}, Landroid/accessibilityservice/GestureDescription$GestureStep;-><init>(JI[Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    const-wide/16 v4, 0x1

    add-long/2addr v4, v7

    invoke-static {p0, v4, v5}, Landroid/accessibilityservice/GestureDescription;->-$$Nest$mgetNextKeyPointAtLeast(Landroid/accessibilityservice/GestureDescription;J)J

    move-result-wide v4

    goto :goto_18

    .line 590
    :cond_3b
    return-object v0
.end method
