.class public Lcom/android/server/usb/UsbDeviceManager$6;
.super Ljava/lang/Thread;
.source "UsbDeviceManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)V
    .registers 3

    .line 478
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$6;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 482
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$6;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "sys.usb.controller"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$mnativeWaitAndGetProperty(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$6;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1, v0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$mnativeStartGadgetMonitor(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Z

    .line 484
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$6;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$fputmUdcName(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)V

    .line 485
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB controller name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
