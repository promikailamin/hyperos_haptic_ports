.class Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyRunnable;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedStandbyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyRunnable;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyRunnable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyRunnable;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 232
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyRunnable;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerManagerInternal()Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/PowerManagerInternalWrapper;->wasDeviceIdleFor(J)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 234
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyRunnable;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    goto :goto_28

    .line 236
    :cond_18
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyRunnable;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->-$$Nest$fgetmDelayedStandbyHandler(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyRunnable;

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyRunnable;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-direct {v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyRunnable;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    :goto_28
    return-void
.end method
