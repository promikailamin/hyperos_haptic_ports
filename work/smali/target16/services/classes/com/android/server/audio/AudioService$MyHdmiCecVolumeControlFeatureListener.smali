.class public Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 13216
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onHdmiCecVolumeControlFeature(I)V
    .registers 5

    .line 13220
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmHdmiClientLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 13221
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmHdmiManager(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    if-nez v1, :cond_13

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_28

    .line 13222
    :cond_13
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmHdmiCecVolumeControlEnabled(Lcom/android/server/audio/AudioService;Z)V

    .line 13224
    iget-object p0, p0, Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmHdmiCecVolumeControlEnabled(Lcom/android/server/audio/AudioService;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateHdmiCecSinkLocked(Lcom/android/server/audio/AudioService;Z)V

    .line 13225
    monitor-exit v0

    return-void

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_11

    throw p0
.end method
