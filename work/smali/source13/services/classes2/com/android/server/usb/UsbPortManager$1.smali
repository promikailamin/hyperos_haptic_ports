.class Lcom/android/server/usb/UsbPortManager$1;
.super Landroid/os/Handler;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbPortManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/usb/UsbPortManager;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 1153
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1156
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    goto :goto_36

    .line 1166
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbPortManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "notification"

    .line 1167
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbPortManager;->-$$Nest$fputmNotificationManager(Lcom/android/server/usb/UsbPortManager;Landroid/app/NotificationManager;)V

    goto :goto_36

    .line 1158
    :pswitch_19
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1159
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "port_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1160
    .local v1, "PortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/hal/port/RawPortInfo;>;"
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbPortManager;->-$$Nest$fgetmLock(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1161
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lcom/android/server/usb/UsbPortManager;->-$$Nest$mupdatePortsLocked(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 1162
    monitor-exit v2

    .line 1163
    goto :goto_36

    .line 1162
    :catchall_33
    move-exception v3

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_33

    throw v3

    .line 1171
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "PortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/hal/port/RawPortInfo;>;"
    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_19
        :pswitch_6
    .end packed-switch
.end method
