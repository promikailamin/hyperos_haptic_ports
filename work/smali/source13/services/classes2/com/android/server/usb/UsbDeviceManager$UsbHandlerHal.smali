.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
.super Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UsbHandlerHal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;
    }
.end annotation


# static fields
.field private static final ENUMERATION_TIME_OUT_MS:I = 0x7d0

.field protected static final GADGET_HAL_FQ_NAME:Ljava/lang/String; = "android.hardware.usb.gadget@1.0::IUsbGadget"

.field private static final SET_FUNCTIONS_LEEWAY_MS:I = 0x1f4

.field private static final SET_FUNCTIONS_TIMEOUT_MS:I = 0xbb8

.field private static final USB_GADGET_HAL_DEATH_COOKIE:I = 0x7d0


# instance fields
.field private mCurrentRequest:I

.field protected mCurrentUsbFunctionsRequested:Z

.field private mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

.field private final mGadgetProxyLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentRequest(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)I
    .registers 1

    iget p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGadgetProxyLock(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmGadgetProxy(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;Landroid/hardware/usb/gadget/V1_0/IUsbGadget;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V
    .registers 15
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "deviceManager"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p4, "alsaManager"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p5, "permissionManager"    # Lcom/android/server/usb/UsbPermissionManager;

    .line 1949
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    .line 1905
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    .line 1915
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    .line 1951
    :try_start_d
    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    .line 1953
    .local v2, "serviceNotification":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v3

    const-string v4, "android.hardware.usb.gadget@1.0::IUsbGadget"

    const-string v5, ""

    .line 1954
    invoke-interface {v3, v4, v5, v2}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v3

    .line 1955
    .local v3, "ret":Z
    if-nez v3, :cond_2a

    .line 1956
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to register usb gadget service start notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    return-void

    .line 1960
    :cond_2a
    monitor-enter v0
    :try_end_2b
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_2b} :catch_84
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2b} :catch_79
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_6e

    .line 1961
    const/4 v4, 0x1

    :try_start_2c
    invoke-static {v4}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService(Z)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 1962
    new-instance v6, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;

    invoke-direct {v6, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    const-wide/16 v7, 0x7d0

    invoke-interface {v5, v6, v7, v8}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1964
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    .line 1965
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    .line 1966
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mUsbSpeed:I

    .line 1967
    const/16 v4, 0xa

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentGadgetHalVersion:I

    .line 1968
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance v5, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;

    invoke-direct {v5, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    invoke-interface {v4, v5}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;)V

    .line 1969
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_2c .. :try_end_54} :catchall_6b

    .line 1970
    :try_start_54
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/class/android_usb/android0/state"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1971
    .local v0, "state":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->updateState(Ljava/lang/String;)V

    .line 1972
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->updateUsbGadgetHalVersion()V
    :try_end_6a
    .catch Ljava/util/NoSuchElementException; {:try_start_54 .. :try_end_6a} :catch_84
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_6a} :catch_79
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_6a} :catch_6e

    .end local v0    # "state":Ljava/lang/String;
    .end local v2    # "serviceNotification":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;
    .end local v3    # "ret":Z
    goto :goto_8e

    .line 1969
    .restart local v2    # "serviceNotification":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;
    .restart local v3    # "ret":Z
    :catchall_6b
    move-exception v1

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    .end local p0    # "this":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
    .end local p1    # "looper":Landroid/os/Looper;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "deviceManager":Lcom/android/server/usb/UsbDeviceManager;
    .end local p4    # "alsaManager":Lcom/android/server/usb/UsbAlsaManager;
    .end local p5    # "permissionManager":Lcom/android/server/usb/UsbPermissionManager;
    :try_start_6d
    throw v1
    :try_end_6e
    .catch Ljava/util/NoSuchElementException; {:try_start_6d .. :try_end_6e} :catch_84
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_6e} :catch_79
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6e} :catch_6e

    .line 1977
    .end local v2    # "serviceNotification":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;
    .end local v3    # "ret":Z
    .restart local p0    # "this":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
    .restart local p1    # "looper":Landroid/os/Looper;
    .restart local p2    # "context":Landroid/content/Context;
    .restart local p3    # "deviceManager":Lcom/android/server/usb/UsbDeviceManager;
    .restart local p4    # "alsaManager":Lcom/android/server/usb/UsbAlsaManager;
    .restart local p5    # "permissionManager":Lcom/android/server/usb/UsbPermissionManager;
    :catch_6e
    move-exception v0

    .line 1978
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error initializing UsbHandler"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8f

    .line 1975
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_79
    move-exception v0

    .line 1976
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Usb Gadget hal not responding"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_8e

    .line 1973
    :catch_84
    move-exception v0

    .line 1974
    .local v0, "e":Ljava/util/NoSuchElementException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Usb gadget hal not found"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1979
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_8e
    nop

    .line 1980
    :goto_8f
    return-void
.end method

.method private setUsbConfig(JZ)V
    .registers 15
    .param p1, "config"    # J
    .param p3, "chargingFunctions"    # Z

    .line 2180
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsbConfig("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    .line 2185
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    .line 2186
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    .line 2188
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2189
    :try_start_3d
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-nez v3, :cond_4d

    .line 2190
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setUsbConfig mGadgetProxy is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_9d

    return-void

    .line 2194
    :cond_4d
    const-wide/16 v3, 0x1

    and-long/2addr v3, p1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-eqz v3, :cond_63

    .line 2198
    :try_start_57
    const-class v3, Landroid/debug/AdbManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/debug/AdbManagerInternal;

    .line 2199
    invoke-virtual {v3, v4}, Landroid/debug/AdbManagerInternal;->startAdbdForTransport(B)V

    goto :goto_6e

    .line 2204
    :cond_63
    const-class v3, Landroid/debug/AdbManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/debug/AdbManagerInternal;

    .line 2205
    invoke-virtual {v3, v4}, Landroid/debug/AdbManagerInternal;->stopAdbdForTransport(B)V

    .line 2207
    :goto_6e
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;

    iget v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    move-object v5, v3

    move-object v6, p0

    move-wide v8, p1

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;IJZ)V

    move-object v8, v3

    .line 2209
    .local v8, "usbGadgetCallback":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    const-wide/16 v9, 0x9c4

    move-wide v6, p1

    invoke-interface/range {v5 .. v10}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;J)V

    .line 2211
    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v1, p3, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendMessageDelayed(IZJ)V

    .line 2213
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mConnected:Z

    if-eqz v1, :cond_90

    .line 2215
    const-wide/16 v3, 0x1388

    invoke-virtual {p0, v0, p3, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendMessageDelayed(IZJ)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_90} :catch_91
    .catchall {:try_start_57 .. :try_end_90} :catchall_9d

    .line 2221
    .end local v8    # "usbGadgetCallback":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;
    :cond_90
    goto :goto_9b

    .line 2219
    :catch_91
    move-exception v0

    .line 2220
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_92
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Remoteexception while calling setCurrentUsbFunctions"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2222
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_9b
    monitor-exit v2

    .line 2223
    return-void

    .line 2222
    :catchall_9d
    move-exception v0

    monitor-exit v2
    :try_end_9f
    .catchall {:try_start_92 .. :try_end_9f} :catchall_9d

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 2010
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_176

    .line 2126
    :pswitch_7
    invoke-super {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_174

    .line 2103
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2104
    :try_start_f
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-nez v1, :cond_1f

    .line 2105
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mGadgetProxy is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    monitor-exit v0

    goto/16 :goto_174

    .line 2109
    :cond_1f
    nop

    .line 2110
    invoke-static {v1}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object v1

    .line 2111
    .local v1, "gadgetProxy":Landroid/hardware/usb/gadget/V1_2/IUsbGadget;
    if-nez v1, :cond_3c

    .line 2112
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 2114
    invoke-static {v2}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    move-result-object v2

    .line 2115
    .local v2, "gadgetProxyV1By1":Landroid/hardware/usb/gadget/V1_1/IUsbGadget;
    if-nez v2, :cond_35

    .line 2116
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentGadgetHalVersion:I

    .line 2117
    monitor-exit v0

    goto/16 :goto_174

    .line 2119
    :cond_35
    const/16 v3, 0xb

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentGadgetHalVersion:I

    .line 2120
    monitor-exit v0

    goto/16 :goto_174

    .line 2122
    .end local v2    # "gadgetProxyV1By1":Landroid/hardware/usb/gadget/V1_1/IUsbGadget;
    :cond_3c
    const/16 v2, 0xc

    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentGadgetHalVersion:I

    .line 2123
    .end local v1    # "gadgetProxy":Landroid/hardware/usb/gadget/V1_2/IUsbGadget;
    monitor-exit v0

    .line 2124
    goto/16 :goto_174

    .line 2123
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_f .. :try_end_45} :catchall_43

    throw v1

    .line 2084
    :pswitch_46
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2085
    :try_start_49
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-nez v1, :cond_59

    .line 2086
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mGadgetProxy is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_49 .. :try_end_57} :catchall_76

    goto/16 :goto_174

    .line 2091
    :cond_59
    nop

    .line 2093
    :try_start_5a
    invoke-static {v1}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object v1

    .line 2094
    .restart local v1    # "gadgetProxy":Landroid/hardware/usb/gadget/V1_2/IUsbGadget;
    if-eqz v1, :cond_68

    .line 2095
    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    invoke-interface {v1, v2}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->getUsbSpeed(Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_68} :catch_69
    .catchall {:try_start_5a .. :try_end_68} :catchall_76

    .line 2099
    .end local v1    # "gadgetProxy":Landroid/hardware/usb/gadget/V1_2/IUsbGadget;
    :cond_68
    goto :goto_73

    .line 2097
    :catch_69
    move-exception v1

    .line 2098
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_6a
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "get UsbSpeed failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2100
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_73
    monitor-exit v0

    .line 2101
    goto/16 :goto_174

    .line 2100
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_6a .. :try_end_78} :catchall_76

    throw v1

    .line 2067
    :pswitch_79
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2068
    :try_start_7c
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-nez v1, :cond_8d

    .line 2069
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reset Usb Gadget mGadgetProxy is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_7c .. :try_end_8b} :catchall_a4

    goto/16 :goto_174

    .line 2074
    :cond_8d
    nop

    .line 2076
    :try_start_8e
    invoke-static {v1}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    move-result-object v1

    .line 2077
    .local v1, "gadgetProxy":Landroid/hardware/usb/gadget/V1_1/IUsbGadget;
    invoke-interface {v1}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->reset()I
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_95} :catch_96
    .catchall {:try_start_8e .. :try_end_95} :catchall_a4

    .line 2080
    .end local v1    # "gadgetProxy":Landroid/hardware/usb/gadget/V1_1/IUsbGadget;
    goto :goto_a1

    .line 2078
    :catch_96
    move-exception v1

    .line 2079
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_97
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "reset Usb Gadget failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2081
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_a1
    monitor-exit v0

    .line 2082
    goto/16 :goto_174

    .line 2081
    :catchall_a4
    move-exception v1

    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_97 .. :try_end_a6} :catchall_a4

    throw v1

    .line 2050
    :pswitch_a7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_ac

    goto :goto_ad

    :cond_ac
    move v2, v1

    :goto_ad
    move v0, v2

    .line 2051
    .local v0, "preexisting":Z
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2053
    :try_start_b1
    invoke-static {}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService()Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 2054
    new-instance v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;

    invoke-direct {v4, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    const-wide/16 v5, 0x7d0

    invoke-interface {v2, v4, v5, v6}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 2056
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    if-nez v2, :cond_cc

    if-nez v0, :cond_cc

    .line 2057
    iget-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    invoke-virtual {p0, v4, v5, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V
    :try_end_cc
    .catch Ljava/util/NoSuchElementException; {:try_start_b1 .. :try_end_cc} :catch_da
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_cc} :catch_cf
    .catchall {:try_start_b1 .. :try_end_cc} :catchall_cd

    .line 2063
    :cond_cc
    goto :goto_e5

    .line 2064
    :catchall_cd
    move-exception v1

    goto :goto_e8

    .line 2061
    :catch_cf
    move-exception v1

    .line 2062
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_d0
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Usb Gadget hal not responding"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e5

    .line 2059
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_da
    move-exception v1

    .line 2060
    .local v1, "e":Ljava/util/NoSuchElementException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Usb gadget hal not found"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2063
    nop

    .line 2064
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_e5
    monitor-exit v3

    .line 2065
    goto/16 :goto_174

    .line 2064
    :goto_e8
    monitor-exit v3
    :try_end_e9
    .catchall {:try_start_d0 .. :try_end_e9} :catchall_cd

    throw v1

    .line 2039
    .end local v0    # "preexisting":Z
    :pswitch_ea
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_174

    .line 2040
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    const-wide/16 v4, 0x2

    cmp-long v0, v2, v4

    if-nez v0, :cond_fb

    .line 2041
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->notifyAccessoryModeExit()V

    goto/16 :goto_174

    .line 2045
    :cond_fb
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mScreenUnlockedFunctions:J

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    goto :goto_174

    .line 2022
    :pswitch_101
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "processing MSG_GET_CURRENT_USB_FUNCTIONS"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsReceived:Z

    .line 2025
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    if-eqz v0, :cond_157

    .line 2026
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "updating mCurrentFunctions"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x2

    and-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    .line 2029
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentFunctions:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "applied:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_155

    move v1, v2

    :cond_155
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    .line 2033
    :cond_157
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->finishBoot()V

    .line 2034
    goto :goto_174

    .line 2015
    :pswitch_15b
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Set functions timed out! no reply from usb hal"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_174

    .line 2018
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mScreenUnlockedFunctions:J

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    goto :goto_174

    .line 2012
    :pswitch_16e
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    .line 2013
    nop

    .line 2128
    :cond_174
    :goto_174
    return-void

    nop

    :pswitch_data_176
    .packed-switch 0xe
        :pswitch_16e
        :pswitch_15b
        :pswitch_101
        :pswitch_ea
        :pswitch_a7
        :pswitch_79
        :pswitch_7
        :pswitch_7
        :pswitch_46
        :pswitch_c
    .end packed-switch
.end method

.method protected setEnabledFunctions(JZ)V
    .registers 9
    .param p1, "functions"    # J
    .param p3, "forceRestart"    # Z

    .line 2231
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentGadgetHalVersion:I

    const-wide/16 v1, 0x0

    const/16 v3, 0xc

    if-ge v0, v3, :cond_19

    .line 2232
    const-wide/16 v3, 0x400

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_19

    .line 2233
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not set unsupported function for the GadgetHal"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    return-void

    .line 2237
    :cond_19
    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    cmp-long v0, v3, p1

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    if-eqz v0, :cond_25

    if-eqz p3, :cond_66

    .line 2240
    :cond_25
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting USB config to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    iput-wide p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    .line 2242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    .line 2244
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    .line 2246
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mSwitchFunction:Z

    .line 2248
    cmp-long v1, p1, v1

    if-nez v1, :cond_52

    move v0, v3

    .line 2249
    .local v0, "chargingFunctions":Z
    :cond_52
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->getAppliedFunctions(J)J

    move-result-wide p1

    .line 2252
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setUsbConfig(JZ)V

    .line 2254
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mBootCompleted:Z

    if-eqz v1, :cond_66

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->isUsbDataTransferActive(J)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 2256
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->updateUsbStateBroadcastIfNeeded(J)V

    .line 2259
    .end local v0    # "chargingFunctions":Z
    :cond_66
    return-void
.end method
