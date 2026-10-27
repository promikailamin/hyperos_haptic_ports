.class public Landroid/os/statistics/PerfEventSocket;
.super Ljava/lang/Object;
.source "PerfEventSocket.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist receivePerfEvents(ILandroid/os/Parcel;JI[Landroid/os/statistics/FilteringPerfEvent;)I
.end method

.method public static native blacklist sendPerfEvent(ILandroid/os/Parcel;JI)I
.end method

.method public static native blacklist waitForPerfEventArrived(I)I
.end method
