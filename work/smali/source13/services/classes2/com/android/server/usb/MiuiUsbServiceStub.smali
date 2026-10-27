.class public interface abstract Lcom/android/server/usb/MiuiUsbServiceStub;
.super Ljava/lang/Object;
.source "MiuiUsbServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/usb/MiuiUsbServiceStub;
    .registers 1

    .line 11
    const-class v0, Lcom/android/server/usb/MiuiUsbServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/MiuiUsbServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract collectUsbHostConnectedInfo(Landroid/content/Context;Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
.end method

.method public abstract isSpecialKeyBoard(Landroid/hardware/usb/UsbDevice;)Z
.end method
