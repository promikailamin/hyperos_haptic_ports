.class public Lcom/android/server/utils/AnrTimer$ExpiredTimer;
.super Ljava/lang/Object;
.source "AnrTimer.java"


# instance fields
.field public final mDurationMs:J

.field public final mStartMs:J

.field public final mTimerId:I


# direct methods
.method public constructor <init>(IJJ)V
    .registers 6

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput p1, p0, Lcom/android/server/utils/AnrTimer$ExpiredTimer;->mTimerId:I

    .line 316
    iput-wide p2, p0, Lcom/android/server/utils/AnrTimer$ExpiredTimer;->mStartMs:J

    .line 317
    iput-wide p4, p0, Lcom/android/server/utils/AnrTimer$ExpiredTimer;->mDurationMs:J

    return-void
.end method
