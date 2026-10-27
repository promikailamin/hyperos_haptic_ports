.class Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;
.super Landroid/media/tv/TvInputManager$TvInputCallback;
.source "HdmiCecLocalDeviceAudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 125
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$TvInputCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputAdded(Ljava/lang/String;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->-$$Nest$maddOrUpdateTvInput(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public onInputRemoved(Ljava/lang/String;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->-$$Nest$mremoveTvInput(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public onInputUpdated(Ljava/lang/String;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->-$$Nest$maddOrUpdateTvInput(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/String;)V

    .line 139
    return-void
.end method
