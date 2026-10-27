.class public Lcom/android/server/wm/DeviceStateAutoRotateSettingController$1;
.super Landroid/os/Handler;
.source "DeviceStateAutoRotateSettingController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;Landroid/os/Looper;)V
    .registers 3

    .line 121
    iput-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$1;->this$0:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 124
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$1;->this$0:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    invoke-static {v0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->-$$Nest$fgetmDevicePosture(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3e

    instance-of v0, p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateDevicePosture;

    if-nez v0, :cond_3e

    .line 127
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$1;->this$0:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    invoke-static {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->-$$Nest$fgetmPendingEvents(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to write into auto-rotate settings, while device-state is unavailable.\nCould not process the event="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".\nThis event will be queued and processed later once we receive device-state update."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 128
    const-string p1, "DSAutoRotateCtrl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 136
    :cond_3e
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$1;->this$0:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    invoke-static {v0, p1}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->-$$Nest$mhandleEvent(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;)V

    .line 138
    iget-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$1;->this$0:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    invoke-static {p1}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->-$$Nest$fgetmPendingEvents(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_77

    const/4 p1, 0x0

    .line 139
    :goto_50
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$1;->this$0:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    invoke-static {v0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->-$$Nest$fgetmPendingEvents(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6e

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$1;->this$0:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    invoke-static {v0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->-$$Nest$fgetmPendingEvents(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;

    invoke-static {v0, v1}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->-$$Nest$mhandleEvent(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_50

    .line 142
    :cond_6e
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$1;->this$0:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    invoke-static {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->-$$Nest$fgetmPendingEvents(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_77
    return-void
.end method
