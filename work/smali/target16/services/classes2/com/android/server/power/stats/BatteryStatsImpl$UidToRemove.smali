.class public final Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public final mEndUid:I

.field public final mStartUid:I

.field public final mUidRemovalTimestamp:J

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;IIJ)V
    .registers 6

    .line 602
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mStartUid:I

    .line 604
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mEndUid:I

    .line 605
    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mUidRemovalTimestamp:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;IJ)V
    .registers 11

    move v3, p2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    .line 598
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;IIJ)V

    return-void
.end method


# virtual methods
.method public getUidRemovalTimestamp()J
    .registers 3

    .line 609
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mUidRemovalTimestamp:J

    return-wide v0
.end method

.method public removeLocked()V
    .registers 3

    .line 614
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mStartUid:I

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mEndUid:I

    invoke-static {v0, v1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$mremoveCpuStatsForUidRangeLocked(Lcom/android/server/power/stats/BatteryStatsImpl;II)V

    return-void
.end method
