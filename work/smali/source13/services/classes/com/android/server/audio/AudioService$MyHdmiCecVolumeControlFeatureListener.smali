.class Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHdmiCecVolumeControlFeatureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 10610
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onHdmiCecVolumeControlFeature(I)V
    .registers 5
    .param p1, "hdmiCecVolumeControl"    # I

    .line 10614
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmHdmiClientLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10615
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmHdmiManager(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 10616
    :cond_11
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmHdmiCecVolumeControlEnabled(Lcom/android/server/audio/AudioService;Z)V

    .line 10618
    monitor-exit v0

    .line 10619
    return-void

    .line 10618
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method
