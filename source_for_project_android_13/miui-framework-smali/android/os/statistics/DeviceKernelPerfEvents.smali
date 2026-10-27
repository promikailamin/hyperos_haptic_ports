.class public Landroid/os/statistics/DeviceKernelPerfEvents;
.super Ljava/lang/Object;
.source "DeviceKernelPerfEvents.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist fetchDeviceKernelPerfEvents([Landroid/os/statistics/FilteringPerfEvent;)I
.end method

.method public static native blacklist initDeviceKernelPerfEvents()Z
.end method

.method public static native blacklist waitForDeviceKernelPerfEventArrived(I)Z
.end method
