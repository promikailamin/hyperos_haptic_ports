.class public Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 13203
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onStatusChange(IZ)V
    .registers 6

    .line 13207
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmHdmiClientLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 13208
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmHdmiManager(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    if-nez v1, :cond_13

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_2c

    :cond_13
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_19

    move p1, v2

    goto :goto_1a

    :cond_19
    move p1, v1

    .line 13210
    :goto_1a
    iget-object p0, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    if-eqz p1, :cond_27

    if-eqz p2, :cond_27

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmHdmiCecVolumeControlEnabled(Lcom/android/server/audio/AudioService;)Z

    move-result p1

    if-eqz p1, :cond_27

    move v1, v2

    :cond_27
    invoke-static {p0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateHdmiCecSinkLocked(Lcom/android/server/audio/AudioService;Z)V

    .line 13212
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_11

    throw p0
.end method
