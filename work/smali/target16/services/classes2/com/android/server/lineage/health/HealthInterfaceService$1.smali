.class public Lcom/android/server/lineage/health/HealthInterfaceService$1;
.super Lcom/android/internal/lineage/health/IHealthInterface$Stub;
.source "HealthInterfaceService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/health/HealthInterfaceService;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/health/HealthInterfaceService;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-direct {p0}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public allowFineGrainedSettings()Z
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {v0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmCCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/ChargingControlController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/lineage/health/ChargingControlController;->isChargingModeSupported(I)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmCCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/ChargingControlController;

    move-result-object p0

    const/16 v0, 0x8

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/health/ChargingControlController;->isChargingModeSupported(I)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p0, 0x0

    return p0

    :cond_1e
    :goto_1e
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 169
    iget-object p1, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p1}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/health/HealthInterfaceService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "android.permission.DUMP"

    const-string v0, "LineageHealth"

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 172
    const-string p1, "LineageHealth Service State:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmFeatures(Lcom/android/server/lineage/health/HealthInterfaceService;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/lineage/health/LineageHealthFeature;

    .line 175
    invoke-virtual {p1, p2}, Lcom/android/server/lineage/LineageBaseFeature;->dump(Ljava/io/PrintWriter;)V

    goto :goto_1f

    :cond_2f
    return-void
.end method

.method public getChargingControlEnabled()Z
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmCCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/ChargingControlController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public getChargingControlLimit()I
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmCCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/ChargingControlController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->getLimit()I

    move-result p0

    return p0
.end method

.method public getChargingControlMode()I
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmCCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/ChargingControlController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->getMode()I

    move-result p0

    return p0
.end method

.method public getChargingControlStartTime()I
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmCCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/ChargingControlController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->getStartTime()I

    move-result p0

    return p0
.end method

.method public getChargingControlTargetTime()I
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmCCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/ChargingControlController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->getTargetTime()I

    move-result p0

    return p0
.end method

.method public getFastChargeMode()I
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmFCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/FastChargeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/health/FastChargeController;->getFastChargeMode()I

    move-result p0

    return p0
.end method

.method public getSupportedFastChargeModes()[I
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmFCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/FastChargeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/health/FastChargeController;->getSupportedFastChargeModes()[I

    move-result-object p0

    return-object p0
.end method

.method public isChargingControlSupported()Z
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmCCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/ChargingControlController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->isSupported()Z

    move-result p0

    return p0
.end method

.method public isFastChargeSupported()Z
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmFCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/FastChargeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/health/FastChargeController;->isSupported()Z

    move-result p0

    return p0
.end method

.method public resetChargingControl()Z
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmCCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/ChargingControlController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->reset()Z

    move-result p0

    return p0
.end method

.method public setChargingControlEnabled(Z)Z
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmCCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/ChargingControlController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/health/ChargingControlController;->setEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public setChargingControlLimit(I)Z
    .registers 2

    .line 132
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmCCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/ChargingControlController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/health/ChargingControlController;->setLimit(I)Z

    move-result p0

    return p0
.end method

.method public setChargingControlMode(I)Z
    .registers 2

    .line 102
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmCCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/ChargingControlController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/health/ChargingControlController;->setMode(I)Z

    move-result p0

    return p0
.end method

.method public setChargingControlStartTime(I)Z
    .registers 2

    .line 112
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmCCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/ChargingControlController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/health/ChargingControlController;->setStartTime(I)Z

    move-result p0

    return p0
.end method

.method public setChargingControlTargetTime(I)Z
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmCCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/ChargingControlController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/health/ChargingControlController;->setTargetTime(I)Z

    move-result p0

    return p0
.end method

.method public setFastChargeMode(I)Z
    .registers 2

    .line 164
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService$1;->this$0:Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-static {p0}, Lcom/android/server/lineage/health/HealthInterfaceService;->-$$Nest$fgetmFCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/FastChargeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/health/FastChargeController;->setFastChargeMode(I)Z

    move-result p0

    return p0
.end method
