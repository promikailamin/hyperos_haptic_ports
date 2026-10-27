.class Landroid/view/animation/AnimationUtilsImpl$AnimationState;
.super Ljava/lang/Object;
.source "AnimationUtilsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/AnimationUtilsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationState"
.end annotation


# instance fields
.field blacklist animationClockLocked:Z

.field blacklist currentVsyncTimeNanos:J

.field blacklist frame:I

.field blacklist lastReportedTimeNanos:J

.field blacklist lastVsyncTimeNanos:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/animation/AnimationUtilsImpl$AnimationState-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/animation/AnimationUtilsImpl$AnimationState;-><init>()V

    return-void
.end method
