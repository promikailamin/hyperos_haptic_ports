.class public final Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "AttentionCheckCache"
.end annotation


# instance fields
.field private final mLastComputed:J

.field private final mResult:I

.field private final mTimestamp:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastComputed(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mLastComputed:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmResult(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)I
    .registers 1

    iget p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mResult:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimestamp(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mTimestamp:J

    return-wide v0
.end method

.method constructor <init>(JIJ)V
    .registers 6
    .param p1, "lastComputed"    # J
    .param p3, "result"    # I
    .param p4, "timestamp"    # J

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-wide p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mLastComputed:J

    .line 601
    iput p3, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mResult:I

    .line 602
    iput-wide p4, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mTimestamp:J

    .line 603
    return-void
.end method
