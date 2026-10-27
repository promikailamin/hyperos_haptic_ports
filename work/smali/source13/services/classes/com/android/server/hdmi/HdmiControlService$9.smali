.class Lcom/android/server/hdmi/HdmiControlService$9;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$listener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

.field final synthetic val$record:Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 2804
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$9;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$9;->val$record:Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$9;->val$listener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2807
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$9;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmLock(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2808
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$9;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiControlStatusChangeListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$9;->val$record:Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    monitor-exit v0

    return-void

    .line 2809
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_2f

    .line 2812
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$9;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmLock(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2813
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$9;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$9;->val$listener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiControlEnabled(Lcom/android/server/hdmi/HdmiControlService;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minvokeHdmiControlStatusChangeListenerLocked(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;I)V

    .line 2814
    monitor-exit v1

    .line 2815
    return-void

    .line 2814
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw v0

    .line 2809
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method
