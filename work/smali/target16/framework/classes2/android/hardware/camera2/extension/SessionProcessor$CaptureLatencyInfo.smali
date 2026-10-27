.class public final Landroid/hardware/camera2/extension/SessionProcessor$CaptureLatencyInfo;
.super Ljava/lang/Object;
.source "SessionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/SessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptureLatencyInfo"
.end annotation


# instance fields
.field public final blacklist captureLatency:J

.field public final blacklist processingLatency:J


# direct methods
.method public constructor blacklist <init>(JJ)V
    .registers 5

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-wide p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureLatencyInfo;->captureLatency:J

    .line 227
    iput-wide p3, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureLatencyInfo;->processingLatency:J

    .line 228
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 232
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 233
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 235
    :cond_12
    check-cast p1, Landroid/hardware/camera2/extension/SessionProcessor$CaptureLatencyInfo;

    .line 237
    iget-wide v2, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureLatencyInfo;->captureLatency:J

    iget-wide v4, p1, Landroid/hardware/camera2/extension/SessionProcessor$CaptureLatencyInfo;->captureLatency:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    return v1

    .line 238
    :cond_1d
    iget-wide v2, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureLatencyInfo;->processingLatency:J

    iget-wide v4, p1, Landroid/hardware/camera2/extension/SessionProcessor$CaptureLatencyInfo;->processingLatency:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_26

    return v1

    .line 240
    :cond_26
    return v0

    .line 233
    :cond_27
    :goto_27
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 245
    iget-wide v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureLatencyInfo;->captureLatency:J

    long-to-float v0, v0

    iget-wide v1, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureLatencyInfo;->processingLatency:J

    long-to-float v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptureLatencyInfo(processingLatency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureLatencyInfo;->processingLatency:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captureLatency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureLatencyInfo;->captureLatency:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
