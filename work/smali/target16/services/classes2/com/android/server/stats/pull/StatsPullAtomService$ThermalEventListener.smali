.class public final Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;
.super Landroid/os/IThermalEventListener$Stub;
.source "StatsPullAtomService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5486
    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyThrottling(Landroid/os/Temperature;)V
    .registers 10

    .line 5489
    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object p0

    .line 5490
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v0

    .line 5491
    invoke-static {}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$sfgetmPreviousThermalThrottlingStatus()Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v2, 0x0

    .line 5492
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5491
    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 5494
    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Temperature;->getValue()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v5, v1

    .line 5495
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v6

    const/16 v2, 0xbd

    .line 5493
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;III)V

    .line 5496
    invoke-static {}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$sfgetmPreviousThermalThrottlingStatus()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
