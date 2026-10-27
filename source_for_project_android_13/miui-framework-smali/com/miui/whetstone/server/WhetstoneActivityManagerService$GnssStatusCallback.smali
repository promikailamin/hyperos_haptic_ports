.class public Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;
.super Landroid/location/GnssStatus$Callback;
.source "WhetstoneActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GnssStatusCallback"
.end annotation


# instance fields
.field private blacklist mGpsStartTime:I

.field final synthetic blacklist this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# direct methods
.method public constructor blacklist <init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 573
    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFirstFix(I)V
    .registers 2
    .param p1, "ttffMillis"    # I

    .line 608
    return-void
.end method

.method public whitelist onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .registers 2
    .param p1, "status"    # Landroid/location/GnssStatus;

    .line 613
    return-void
.end method

.method public whitelist onStarted()V
    .registers 5

    .line 578
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$fputmGpsPkg(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Ljava/lang/String;)V

    .line 580
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;->mGpsStartTime:I

    .line 582
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-virtual {v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getAppOpsManager()Ljava/util/List;

    move-result-object v1

    .line 583
    .local v1, "appOpsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_5e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5e

    .line 584
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$fputmGpsPkg(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Ljava/lang/String;)V

    .line 585
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;->mGpsStartTime:I

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WAMS mGpsPkg is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-static {v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$fgetmGpsPkg(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mGpsStartTime is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;->mGpsStartTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "power.sleep"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_5e
    return-void
.end method

.method public whitelist onStopped()V
    .registers 8

    .line 592
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;->mGpsStartTime:I

    sub-int/2addr v0, v1

    .line 593
    .local v0, "interval":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WAMS gps onStopped pkg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-static {v4}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$fgetmGpsPkg(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " startTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;->mGpsStartTime:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " interval="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "power.sleep"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;->mGpsStartTime:I

    if-eqz v1, :cond_70

    const/4 v1, 0x5

    if-le v0, v1, :cond_70

    .line 596
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    div-long/2addr v5, v2

    long-to-int v1, v5

    sput v1, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsStopTime:I

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WAMS gps onStopped mSleepStateGpsStopTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsStopTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intervalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_70
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$fputmGpsPkg(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Ljava/lang/String;)V

    .line 603
    return-void
.end method
