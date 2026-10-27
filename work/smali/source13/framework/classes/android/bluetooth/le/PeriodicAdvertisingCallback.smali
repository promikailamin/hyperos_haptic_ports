.class public abstract Landroid/bluetooth/le/PeriodicAdvertisingCallback;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingCallback.java"


# static fields
.field public static final greylist-max-o SYNC_NO_RESOURCES:I = 0x2

.field public static final greylist-max-o SYNC_NO_RESPONSE:I = 0x1

.field public static final greylist-max-o SYNC_SUCCESS:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
    .registers 2
    .param p1, "report"    # Landroid/bluetooth/le/PeriodicAdvertisingReport;

    .line 72
    return-void
.end method

.method public greylist-max-o onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V
    .registers 7
    .param p1, "syncHandle"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "advertisingSid"    # I
    .param p4, "skip"    # I
    .param p5, "timeout"    # I
    .param p6, "status"    # I

    .line 64
    return-void
.end method

.method public greylist-max-o onSyncLost(I)V
    .registers 2
    .param p1, "syncHandle"    # I

    .line 80
    return-void
.end method

.method public blacklist onSyncTransferred(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .line 89
    return-void
.end method
