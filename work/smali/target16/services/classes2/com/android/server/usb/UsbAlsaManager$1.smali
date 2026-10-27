.class public Lcom/android/server/usb/UsbAlsaManager$1;
.super Landroid/os/FileObserver;
.source "UsbAlsaManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbAlsaManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaManager;Ljava/io/File;I)V
    .registers 4

    .line 149
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager$1;->this$0:Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/io/File;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 4

    const/16 v0, 0x100

    if-eq p1, v0, :cond_f

    const/16 v0, 0x200

    if-eq p1, v0, :cond_9

    return-void

    .line 156
    :cond_9
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager$1;->this$0:Lcom/android/server/usb/UsbAlsaManager;

    invoke-static {p0, p2}, Lcom/android/server/usb/UsbAlsaManager;->-$$Nest$malsaFileRemoved(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V

    return-void

    .line 153
    :cond_f
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager$1;->this$0:Lcom/android/server/usb/UsbAlsaManager;

    invoke-static {p0, p2}, Lcom/android/server/usb/UsbAlsaManager;->-$$Nest$malsaFileAdded(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V

    return-void
.end method
