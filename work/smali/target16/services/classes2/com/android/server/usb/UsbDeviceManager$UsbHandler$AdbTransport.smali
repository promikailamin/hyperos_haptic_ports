.class public Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;
.super Landroid/debug/IAdbTransport$Stub;
.source "UsbDeviceManager.java"


# instance fields
.field public final mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .registers 2

    .line 1204
    invoke-direct {p0}, Landroid/debug/IAdbTransport$Stub;-><init>()V

    .line 1205
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    return-void
.end method


# virtual methods
.method public onAdbEnabled(ZB)V
    .registers 4

    if-nez p2, :cond_10

    .line 1211
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    .line 1212
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZI)V

    :cond_10
    return-void
.end method
