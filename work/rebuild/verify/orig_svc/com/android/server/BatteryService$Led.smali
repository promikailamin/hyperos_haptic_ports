.class public final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# instance fields
.field public final mBatteryFullARGB:I

.field public final mBatteryLedOff:I

.field public final mBatteryLedOn:I

.field public final mBatteryLight:Lcom/android/server/lights/LogicalLight;

.field public final mBatteryLowARGB:I

.field public final mBatteryLowBehavior:I

.field public final mBatteryMediumARGB:I

.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .registers 5

    .line 1793
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 1794
    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    .line 1796
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e0112

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 1798
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e0114

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1800
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e010f

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 1802
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e0111

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 1804
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e0110

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 1806
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e0115

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/server/BatteryService;->-$$Nest$fputmBatteryNearlyFullLevel(Lcom/android/server/BatteryService;I)V

    .line 1808
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0113

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowBehavior:I

    return-void
.end method


# virtual methods
.method public updateLightsLocked()V
    .registers 5

    .line 1816
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    if-nez v0, :cond_5

    return-void

    .line 1819
    :cond_5
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;

    move-result-object v0

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1820
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;

    move-result-object v1

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 1821
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLowBatteryWarningLevel(Lcom/android/server/BatteryService;)I

    move-result v2

    const/4 v3, 0x2

    if-ge v0, v2, :cond_4f

    .line 1822
    iget v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowBehavior:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_47

    if-eq v0, v3, :cond_3b

    if-ne v1, v3, :cond_2f

    .line 1835
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    iget p0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v0, p0}, Lcom/android/server/lights/LogicalLight;->setColor(I)V

    return-void

    .line 1838
    :cond_2f
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    iget v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget p0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    return-void

    .line 1829
    :cond_3b
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    iget v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget p0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    return-void

    .line 1825
    :cond_47
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    iget p0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v0, p0}, Lcom/android/server/lights/LogicalLight;->setColor(I)V

    return-void

    :cond_4f
    const/4 v2, 0x5

    if-eq v1, v3, :cond_5b

    if-ne v1, v2, :cond_55

    goto :goto_5b

    .line 1855
    :cond_55
    iget-object p0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {p0}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    return-void

    :cond_5b
    :goto_5b
    if-eq v1, v2, :cond_6e

    .line 1845
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmBatteryNearlyFullLevel(Lcom/android/server/BatteryService;)I

    move-result v1

    if-lt v0, v1, :cond_66

    goto :goto_6e

    .line 1851
    :cond_66
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    iget p0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {v0, p0}, Lcom/android/server/lights/LogicalLight;->setColor(I)V

    return-void

    .line 1848
    :cond_6e
    :goto_6e
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    iget p0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v0, p0}, Lcom/android/server/lights/LogicalLight;->setColor(I)V

    return-void
.end method
