.class final Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;
.super Landroid/os/UEventObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbUEventObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 244
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsEventLogger()Lcom/android/server/usb/UsbDeviceLogger;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 245
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsEventLogger()Lcom/android/server/usb/UsbDeviceLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/usb/UsbDeviceLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USB UEVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/usb/UsbDeviceLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceLogger;->log(Lcom/android/server/usb/UsbDeviceLogger$Event;)V

    .line 251
    :cond_29
    const-string v0, "USB_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "state":Ljava/lang/String;
    const-string v1, "ACCESSORY"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "accessory":Ljava/lang/String;
    if-eqz v0, :cond_41

    .line 255
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$fgetmHandler(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    goto :goto_96

    .line 256
    :cond_41
    const-string v2, "GETPROTOCOL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 258
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$fgetmHandler(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAccessoryUEventTime(J)V

    .line 259
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$mresetAccessoryHandshakeTimeoutHandler(Lcom/android/server/usb/UsbDeviceManager;)V

    goto :goto_96

    .line 260
    :cond_5c
    const-string v2, "SENDSTRING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 262
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$fgetmHandler(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 263
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$mresetAccessoryHandshakeTimeoutHandler(Lcom/android/server/usb/UsbDeviceManager;)V

    goto :goto_96

    .line 264
    :cond_75
    const-string v2, "START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 266
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$fgetmHandler(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 267
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$fgetmHandler(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setStartAccessoryTrue()V

    .line 268
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$mstartAccessoryMode(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 270
    :cond_96
    :goto_96
    return-void
.end method
