.class Landroid/app/ForegroundServiceTypePolicy$UsbAccessoryPermission;
.super Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UsbAccessoryPermission"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 1376
    const-string v0, "USB Accessory"

    invoke-direct {p0, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    .line 1377
    return-void
.end method


# virtual methods
.method public blacklist checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
    .registers 9

    .line 1384
    const-class p4, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    .line 1385
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getAccessoryList()[Landroid/hardware/usb/UsbAccessory;

    move-result-object p4

    .line 1386
    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_23

    .line 1387
    array-length p5, p4

    const/4 v0, 0x0

    move v1, v0

    :goto_15
    if-ge v1, p5, :cond_23

    aget-object v2, p4, v1

    .line 1388
    invoke-virtual {p1, v2, p3, p2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1389
    return v0

    .line 1387
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1393
    :cond_23
    const/4 p1, -0x1

    return p1
.end method
