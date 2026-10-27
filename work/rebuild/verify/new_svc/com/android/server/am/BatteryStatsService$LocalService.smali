.class public final Lcom/android/server/am/BatteryStatsService$LocalService;
.super Landroid/os/BatteryStatsInternal;
.source "BatteryStatsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .registers 2

    .line 573
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Landroid/os/BatteryStatsInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    return-void
.end method


# virtual methods
.method public getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 586
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMobileIfaces()[Ljava/lang/String;
    .registers 1

    .line 581
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getMobileIfaces()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getOwnerUid(I)I
    .registers 3

    .line 645
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 646
    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p0

    return p0

    .line 648
    :cond_b
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmPowerStatsUidResolver(Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result p0

    return p0
.end method

.method public getWifiIfaces()[Ljava/lang/String;
    .registers 1

    .line 576
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getWifiIfaces()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public noteCpuWakingBluetoothProxyPacket(IJ)V
    .registers 5

    if-gez p1, :cond_19

    .line 627
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid uid for waking bluetooth proxy packet: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 630
    :cond_19
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    const/4 v0, 0x6

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/android/server/am/BatteryStatsService;->noteCpuWakingActivity(IJ[I)V

    return-void
.end method

.method public noteCpuWakingNetworkPacket(Landroid/net/Network;JI)V
    .registers 8

    .line 608
    const-string v0, "BatteryStatsService"

    if-gez p4, :cond_19

    .line 609
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid uid for waking network packet: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 612
    :cond_19
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v1}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmContext(Lcom/android/server/am/BatteryStatsService;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 613
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 614
    invoke-virtual {p0, v1}, Lcom/android/server/am/BatteryStatsService$LocalService;->transportToSubsystem(Landroid/net/NetworkCapabilities;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4f

    .line 617
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not map transport for network: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " while attributing wakeup by packet sent to uid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 621
    :cond_4f
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    filled-new-array {p4}, [I

    move-result-object p1

    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/android/server/am/BatteryStatsService;->noteCpuWakingActivity(IJ[I)V

    return-void
.end method

.method public noteJobsDeferred(IIJ)V
    .registers 5

    .line 592
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->noteJobsDeferred(IIJ)V

    return-void
.end method

.method public varargs noteWakingAlarmBatch(J[I)V
    .registers 5

    .line 640
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->noteCpuWakingActivity(IJ[I)V

    return-void
.end method

.method public noteWakingSoundTrigger(JI)V
    .registers 5

    .line 635
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    const/4 v0, 0x3

    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->noteCpuWakingActivity(IJ[I)V

    return-void
.end method

.method public final transportToSubsystem(Landroid/net/NetworkCapabilities;)I
    .registers 2

    const/4 p0, 0x1

    .line 596
    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x2

    return p0

    :cond_9
    const/4 p0, 0x0

    .line 598
    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x5

    return p0

    :cond_12
    const/4 p0, -0x1

    return p0
.end method
