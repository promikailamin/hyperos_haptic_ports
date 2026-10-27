.class public final Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;
.super Ljava/lang/Object;
.source "AppOpHistoryHelper.java"


# instance fields
.field public mTotalAccessCount:I

.field public mTotalDuration:J

.field public mTotalRejectCount:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmTotalAccessCount(Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->mTotalAccessCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTotalDuration(Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->mTotalDuration:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmTotalRejectCount(Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->mTotalRejectCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$madd(Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;IIJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->add(IIJ)V

    return-void
.end method

.method public constructor <init>(IIJ)V
    .registers 5

    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    iput p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->mTotalAccessCount:I

    .line 915
    iput p2, p0, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->mTotalRejectCount:I

    .line 916
    iput-wide p3, p0, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->mTotalDuration:J

    return-void
.end method


# virtual methods
.method public final add(IIJ)V
    .registers 6

    .line 920
    iget v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->mTotalAccessCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->mTotalAccessCount:I

    .line 921
    iget p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->mTotalRejectCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->mTotalRejectCount:I

    .line 922
    iget-wide p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->mTotalDuration:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->mTotalDuration:J

    return-void
.end method
