.class public Lcom/android/server/hdmi/HdmiControlService$16;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 2

    .line 1009
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$16;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 5

    .line 1012
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$16;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const-string v1, "enable_soundbar_mode"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmSoundbarModeFeatureFlagEnabled(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 1015
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$16;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecConfig(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p1

    const-string/jumbo v0, "soundbar_mode"

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v2, :cond_1e

    move p1, v2

    goto :goto_1f

    :cond_1e
    move p1, v0

    .line 1018
    :goto_1f
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$16;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    if-eqz p1, :cond_2a

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmSoundbarModeFeatureFlagEnabled(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v0

    :goto_2b
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->setSoundbarMode(I)V

    return-void
.end method
