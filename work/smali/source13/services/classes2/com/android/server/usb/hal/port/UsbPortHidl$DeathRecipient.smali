.class final Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;
.super Ljava/lang/Object;
.source "UsbPortHidl.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/hal/port/UsbPortHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DeathRecipient"
.end annotation


# instance fields
.field public pw:Lcom/android/internal/util/IndentingPrintWriter;

.field final synthetic this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;


# direct methods
.method constructor <init>(Lcom/android/server/usb/hal/port/UsbPortHidl;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/usb/hal/port/UsbPortHidl;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 113
    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;->this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 115
    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 7
    .param p1, "cookie"    # J

    .line 119
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-nez v0, :cond_31

    .line 120
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Usb hal service died cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;->this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-static {v0}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$fgetmLock(Lcom/android/server/usb/hal/port/UsbPortHidl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 122
    :try_start_26
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;->this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$fputmProxy(Lcom/android/server/usb/hal/port/UsbPortHidl;Landroid/hardware/usb/V1_0/IUsb;)V

    .line 123
    monitor-exit v0

    goto :goto_31

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_2e

    throw v1

    .line 125
    :cond_31
    :goto_31
    return-void
.end method
