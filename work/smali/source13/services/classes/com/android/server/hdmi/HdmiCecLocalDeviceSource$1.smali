.class Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiCecLocalDeviceSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->toggleAndFollowTvPower()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 154
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 5
    .param p1, "status"    # I

    .line 157
    const/4 v0, 0x0

    const-string v1, "HdmiCecLocalDeviceSource"

    const/4 v2, -0x1

    if-ne p1, v2, :cond_13

    .line 158
    const-string v2, "TV power toggle: TV power status unknown"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    const/16 v2, 0x6b

    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->sendUserControlPressedAndReleased(II)V

    goto :goto_40

    .line 162
    :cond_13
    if-eqz p1, :cond_2f

    const/4 v2, 0x2

    if-ne p1, v2, :cond_19

    goto :goto_2f

    .line 168
    :cond_19
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x3

    if-ne p1, v0, :cond_40

    .line 170
    :cond_1f
    const-string v0, "TV power toggle: turning on TV"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_40

    .line 164
    :cond_2f
    :goto_2f
    const-string v2, "TV power toggle: turning off TV"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->sendStandby(I)V

    .line 167
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 183
    :cond_40
    :goto_40
    return-void
.end method
