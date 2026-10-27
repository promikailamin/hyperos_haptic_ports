.class public Lcom/android/server/hdmi/HdmiControlService$24;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$listener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

.field public final synthetic val$record:Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 4

    .line 3378
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$24;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$24;->val$record:Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$24;->val$listener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 3381
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$24;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmLock(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3382
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$24;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiControlStatusChangeListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$24;->val$record:Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    goto :goto_31

    .line 3383
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_17

    .line 3386
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$24;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmLock(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3387
    :try_start_21
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$24;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$24;->val$listener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiControlEnabled(Lcom/android/server/hdmi/HdmiControlService;)I

    move-result v2

    invoke-static {v0, p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minvokeHdmiControlStatusChangeListenerLocked(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;I)V

    .line 3388
    monitor-exit v1

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_2e

    throw p0

    .line 3383
    :goto_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_17

    throw p0
.end method
