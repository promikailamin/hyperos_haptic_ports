.class public Lcom/android/server/usb/UsbService$PackageUninstallMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "UsbService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbService;)V
    .registers 2

    .line 1664
    iput-object p1, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usb/UsbService;Lcom/android/server/usb/UsbService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;-><init>(Lcom/android/server/usb/UsbService;)V

    return-void
.end method


# virtual methods
.method public onUidRemoved(I)V
    .registers 8

    .line 1667
    iget-object v0, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v0}, Lcom/android/server/usb/UsbService;->-$$Nest$fgetmUsbDisableRequesters(Lcom/android/server/usb/UsbService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 1668
    :try_start_7
    iget-object v1, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v1}, Lcom/android/server/usb/UsbService;->-$$Nest$fgetmUsbDisableRequesters(Lcom/android/server/usb/UsbService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1669
    iget-object v3, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v3}, Lcom/android/server/usb/UsbService;->-$$Nest$fgetmUsbDisableRequesters(Lcom/android/server/usb/UsbService;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1670
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbDataSignalDisableRequesters;

    if-eqz v3, :cond_15

    .line 1672
    iget-object v4, v3, Lcom/android/server/usb/UsbDataSignalDisableRequesters;->mExternalUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1673
    invoke-virtual {v3}, Lcom/android/server/usb/UsbDataSignalDisableRequesters;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1674
    iget-object v3, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    new-instance v4, Landroid/hardware/usb/IUsbOperationInternal$Default;

    invoke-direct {v4}, Landroid/hardware/usb/IUsbOperationInternal$Default;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5, v5, v4}, Lcom/android/server/usb/UsbService;->enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)Z

    goto :goto_15

    :catchall_4a
    move-exception p0

    goto :goto_4e

    .line 1679
    :cond_4c
    monitor-exit v0

    return-void

    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_4a

    throw p0
.end method
