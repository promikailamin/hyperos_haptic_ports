.class public abstract Lcom/android/server/appop/DiscreteOpsRegistry;
.super Ljava/lang/Object;
.source "DiscreteOpsRegistry.java"


# static fields
.field public static final DEFAULT_DISCRETE_HISTORY_CUTOFF:J

.field public static final DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

.field public static final IMPORTANT_OPS_FOR_SECURITY:[I

.field public static final MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

.field public static sDiscreteFlags:I

.field public static sDiscreteHistoryCutoff:J

.field public static sDiscreteHistoryQuantization:J

.field public static sDiscreteOps:[I


# instance fields
.field public mDebugMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x8

    .line 99
    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/android/server/appop/DiscreteOpsRegistry;->IMPORTANT_OPS_FOR_SECURITY:[I

    const-wide/16 v0, 0x7

    .line 118
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    const-wide/16 v2, 0x1e

    .line 119
    invoke-static {v2, v3}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

    .line 121
    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    const-wide/16 v0, 0x1

    .line 123
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    .line 126
    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    const/4 v0, 0x0

    .line 128
    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteOps:[I

    const/16 v0, 0xb

    .line 131
    sput v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteFlags:I

    return-void

    nop

    :array_3c
    .array-data 4
        0x2
        0x19
        0x3f
        0x49
        0x58
        0x59
        0x2a
        0x29
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/android/server/appop/DiscreteOpsRegistry;->mDebugMode:Z

    return-void
.end method

.method public static discretizeDuration(J)J
    .registers 6

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_7

    return-wide v0

    .line 192
    :cond_7
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    add-long/2addr p0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr p0, v2

    div-long/2addr p0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static discretizeTimeStamp(J)J
    .registers 4

    .line 187
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    div-long/2addr p0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method
