.class public Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;
.super Landroid/hardware/usb/IUsbManagerInternal$Stub;
.source "UsbService.java"


# static fields
.field public static final sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final sValidDisableReasons:Ljava/util/Set;


# instance fields
.field public mUsbOperationInternalProvider:Lcom/android/server/usb/UsbService$IUsbOperationInternalProvider;

.field public final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1718
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    .line 1721
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    .line 1722
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    .line 1723
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1720
    invoke-static {v0, v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;->sValidDisableReasons:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/UsbService;)V
    .registers 2

    .line 1734
    iput-object p1, p0, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/hardware/usb/IUsbManagerInternal$Stub;-><init>()V

    .line 1725
    new-instance p1, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl$1;

    invoke-direct {p1, p0}, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl$1;-><init>(Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;)V

    iput-object p1, p0, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;->mUsbOperationInternalProvider:Lcom/android/server/usb/UsbService$IUsbOperationInternalProvider;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/UsbService;Lcom/android/server/usb/UsbService$IUsbOperationInternalProvider;)V
    .registers 3

    .line 1737
    iput-object p1, p0, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/hardware/usb/IUsbManagerInternal$Stub;-><init>()V

    .line 1725
    new-instance p1, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl$1;

    invoke-direct {p1, p0}, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl$1;-><init>(Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;)V

    .line 1738
    iput-object p2, p0, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;->mUsbOperationInternalProvider:Lcom/android/server/usb/UsbService$IUsbOperationInternalProvider;

    return-void
.end method


# virtual methods
.method public enableUsbDataSignal(ZI)Z
    .registers 17

    .line 1743
    sget-object v0, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;->sValidDisableReasons:Ljava/util/Set;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1747
    sget-object v0, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    add-int v3, v0, p2

    .line 1748
    iget-object v0, p0, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v0}, Lcom/android/server/usb/UsbService;->-$$Nest$fgetmPortManager(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbPortManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v11, v9

    move v12, v10

    :goto_23
    if-ge v11, v8, :cond_9b

    aget-object v13, v7, v11

    .line 1749
    iget-object v0, p0, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;->mUsbOperationInternalProvider:Lcom/android/server/usb/UsbService$IUsbOperationInternalProvider;

    .line 1751
    invoke-virtual {v13}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1750
    invoke-interface {v0, v3, v1}, Lcom/android/server/usb/UsbService$IUsbOperationInternalProvider;->getUsbOperationInternal(ILjava/lang/String;)Landroid/hardware/usb/UsbOperationInternal;

    move-result-object v4

    .line 1752
    iget-object v0, p0, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;->this$0:Lcom/android/server/usb/UsbService;

    .line 1754
    invoke-virtual {v13}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    move v2, p1

    move/from16 v5, p2

    .line 1753
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbService;->enableUsbDataInternal(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;IZ)Z

    move-result v0

    .line 1755
    const-string v1, "UsbService"

    if-nez v0, :cond_66

    .line 1756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUsbDataInternal failed to change USB port "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    invoke-virtual {v13}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1756
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v9

    goto :goto_98

    .line 1765
    :cond_66
    invoke-virtual {v4}, Landroid/hardware/usb/UsbOperationInternal;->waitForOperationComplete()V

    .line 1766
    invoke-virtual {v4}, Landroid/hardware/usb/UsbOperationInternal;->getStatus()I

    move-result v0

    .line 1767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableUsbDataInternal change for portId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    invoke-virtual {v13}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " result: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1767
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_95

    move v0, v10

    goto :goto_96

    :cond_95
    move v0, v9

    :goto_96
    and-int/2addr v0, v12

    move v12, v0

    :goto_98
    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    :cond_9b
    return v12

    :cond_9c
    move/from16 v5, p2

    .line 1744
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid disable reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
