.class Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHdmiControlStatusChangeListenerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 10598
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onStatusChange(IZ)V
    .registers 7
    .param p1, "isCecEnabled"    # I
    .param p2, "isCecAvailable"    # Z

    .line 10602
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmHdmiClientLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10603
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmHdmiManager(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 10604
    :cond_11
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_16

    goto :goto_17

    :cond_16
    move v2, v1

    .line 10605
    .local v2, "cecEnabled":Z
    :goto_17
    iget-object v3, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    if-eqz v2, :cond_1c

    move v1, p2

    :cond_1c
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateHdmiCecSinkLocked(Lcom/android/server/audio/AudioService;Z)V

    .line 10606
    .end local v2    # "cecEnabled":Z
    monitor-exit v0

    .line 10607
    return-void

    .line 10606
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1
.end method
