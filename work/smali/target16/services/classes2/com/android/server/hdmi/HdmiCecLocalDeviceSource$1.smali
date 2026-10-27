.class public Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiCecLocalDeviceSource.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 162
    const-string v2, "HdmiCecLocalDeviceSource"

    if-ne p1, v0, :cond_13

    .line 163
    const-string p1, "TV power toggle: TV power status unknown"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    const/16 p1, 0x6b

    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    return-void

    :cond_13
    if-eqz p1, :cond_31

    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    goto :goto_31

    :cond_19
    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x3

    if-ne p1, v0, :cond_20

    goto :goto_21

    :cond_20
    return-void

    .line 175
    :cond_21
    :goto_21
    const-string p1, "TV power toggle: turning on TV"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;)V

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void

    .line 169
    :cond_31
    :goto_31
    const-string p1, "TV power toggle: turning off TV"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->sendStandby(I)V

    .line 172
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    return-void
.end method
