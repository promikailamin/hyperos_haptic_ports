.class public Lcom/android/server/hdmi/HdmiControlService$34;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public static synthetic $r8$lambda$0I2VyMOtt3cUrQXGEunL8x9BKEw(Lcom/android/server/hdmi/HdmiControlService$34;Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$34;->lambda$onChange$0(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 2

    .line 4571
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$34;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onChange$0(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 3

    .line 4579
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$34;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minvokeCecSettingChangeListenerLocked(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .registers 5

    .line 4574
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$34;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmLock(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4575
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$34;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecSettingChangeListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 4576
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    goto :goto_2d

    .line 4578
    :cond_17
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$34;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecSettingChangeListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$34$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$34$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiControlService$34;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 4581
    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_15

    throw p0
.end method
