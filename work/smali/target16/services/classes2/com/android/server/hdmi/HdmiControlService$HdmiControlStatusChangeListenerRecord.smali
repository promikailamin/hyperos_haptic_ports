.class public final Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mListener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 3

    .line 2216
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2217
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 2222
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmLock(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2223
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiControlStatusChangeListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2224
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 2229
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 2231
    :cond_a
    check-cast p1, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    .line 2233
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    if-ne p1, p0, :cond_13

    return v0

    :cond_13
    return v1
.end method

.method public hashCode()I
    .registers 1

    .line 2238
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    invoke-interface {p0}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->hashCode()I

    move-result p0

    return p0
.end method
