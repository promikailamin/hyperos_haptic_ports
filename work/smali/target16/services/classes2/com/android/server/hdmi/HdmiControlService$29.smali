.class public Lcom/android/server/hdmi/HdmiControlService$29;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$countStandbyCompletedDevices:[I

.field public final synthetic val$localDevicesCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I[I)V
    .registers 4

    .line 4086
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$29;->val$localDevicesCount:I

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$29;->val$countStandbyCompletedDevices:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStandbyCompleted()V
    .registers 6

    .line 4089
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->val$localDevicesCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$29;->val$countStandbyCompletedDevices:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aput v3, v1, v2

    if-ge v0, v3, :cond_e

    goto :goto_73

    .line 4093
    :cond_e
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->releaseWakeLock()V

    .line 4094
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandby()Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_73

    .line 4097
    :cond_24
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getDisableCecOnStandbyByLowEnergyMode()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmPowerManager(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/PowerManagerWrapper;

    move-result-object v0

    .line 4098
    invoke-virtual {v0}, Lcom/android/server/hdmi/PowerManagerWrapper;->isLowPowerStandbyEnabled()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 4099
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->userEnabledCecInOfflineMode()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 4100
    const-string v0, "HdmiControlService"

    const-string v1, "Disable CEC on standby due to low power energy mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4101
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v4}, Lcom/android/server/hdmi/HdmiControlService;->setWasCecDisabledOnStandbyByLowEnergyMode(Z)V

    .line 4102
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v0

    const-string v1, "hdmi_cec_enabled"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->setIntValue(Ljava/lang/String;I)V

    .line 4106
    :cond_5f
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecController;->enableSystemCecControl(Z)V

    .line 4107
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmMhlController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object p0

    const/16 v0, 0x68

    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    :cond_73
    :goto_73
    return-void
.end method
