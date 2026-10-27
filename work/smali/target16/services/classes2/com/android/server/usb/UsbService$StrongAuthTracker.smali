.class public Lcom/android/server/usb/UsbService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "UsbService.java"


# static fields
.field public static final sDefaultOperation:Landroid/hardware/usb/IUsbOperationInternal;


# instance fields
.field public mLockdownModeStatus:Z

.field public final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1689
    new-instance v0, Landroid/hardware/usb/IUsbOperationInternal$Default;

    invoke-direct {v0}, Landroid/hardware/usb/IUsbOperationInternal$Default;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbService$StrongAuthTracker;->sDefaultOperation:Landroid/hardware/usb/IUsbOperationInternal;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/UsbService;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    .line 1693
    iput-object p1, p0, Lcom/android/server/usb/UsbService$StrongAuthTracker;->this$0:Lcom/android/server/usb/UsbService;

    .line 1694
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onStrongAuthRequiredChanged(I)V
    .registers 14

    monitor-enter p0

    .line 1700
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    move p1, v1

    goto :goto_e

    :cond_d
    move p1, v0

    .line 1703
    :goto_e
    iget-boolean v2, p0, Lcom/android/server/usb/UsbService$StrongAuthTracker;->mLockdownModeStatus:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_38

    if-ne v2, p1, :cond_14

    .line 1704
    monitor-exit p0

    return-void

    .line 1706
    :cond_14
    :try_start_14
    iput-boolean p1, p0, Lcom/android/server/usb/UsbService$StrongAuthTracker;->mLockdownModeStatus:Z

    .line 1707
    iget-object v2, p0, Lcom/android/server/usb/UsbService$StrongAuthTracker;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v2}, Lcom/android/server/usb/UsbService;->-$$Nest$fgetmPortManager(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbPortManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v2

    array-length v3, v2

    :goto_21
    if-ge v0, v3, :cond_3b

    aget-object v4, v2, v0

    .line 1708
    iget-object v5, p0, Lcom/android/server/usb/UsbService$StrongAuthTracker;->this$0:Lcom/android/server/usb/UsbService;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v6

    xor-int/lit8 v7, p1, 0x1

    sget-object v9, Lcom/android/server/usb/UsbService$StrongAuthTracker;->sDefaultOperation:Landroid/hardware/usb/IUsbOperationInternal;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v8, 0x2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/usb/UsbService;->enableUsbDataInternal(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;IZ)Z
    :try_end_35
    .catchall {:try_start_14 .. :try_end_35} :catchall_38

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :catchall_38
    move-exception v0

    move-object p1, v0

    goto :goto_3d

    .line 1714
    :cond_3b
    monitor-exit p0

    return-void

    :goto_3d
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_38

    throw p1
.end method
