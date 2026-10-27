.class public Lcom/android/server/usb/UsbService$UsbManagerInternalImpl$1;
.super Ljava/lang/Object;
.source "UsbService.java"

# interfaces
.implements Lcom/android/server/usb/UsbService$IUsbOperationInternalProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;)V
    .registers 2

    .line 1726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUsbOperationInternal(ILjava/lang/String;)Landroid/hardware/usb/UsbOperationInternal;
    .registers 3

    .line 1730
    new-instance p0, Landroid/hardware/usb/UsbOperationInternal;

    invoke-direct {p0, p1, p2}, Landroid/hardware/usb/UsbOperationInternal;-><init>(ILjava/lang/String;)V

    return-object p0
.end method
