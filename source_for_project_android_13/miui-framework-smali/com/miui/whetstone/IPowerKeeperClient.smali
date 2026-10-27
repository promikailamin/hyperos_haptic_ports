.class public interface abstract Lcom/miui/whetstone/IPowerKeeperClient;
.super Ljava/lang/Object;
.source "IPowerKeeperClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IPowerKeeperClient$Stub;,
        Lcom/miui/whetstone/IPowerKeeperClient$Default;
    }
.end annotation


# static fields
.field public static final blacklist ALL_WAKEUP:I = 0xc

.field public static final blacklist BLUETOOTH_SCENE:I = 0x5

.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IPowerKeeperClient"

.field public static final blacklist DETAILS_WAKEUP:I = 0x8

.field public static final blacklist GEOFENCE_SCENE:I = 0xa

.field public static final blacklist KEYCODE_SCENE:I = 0x6

.field public static final blacklist ORDERED_BROADCAST_SCENE:I = 0x7

.field public static final blacklist SCREENON_SCENE:I = 0x3

.field public static final blacklist START_ACTIVITY_SCENE:I = 0xb

.field public static final blacklist SYNC_SCENE:I = 0x4


# virtual methods
.method public abstract blacklist enableATrace(ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyBluetooth(IILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyEvent(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyFloatWindowScene(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyFrozenAppWakeUpByHighPriorityAlarm(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyScreenOn()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifySyncEvent(IILjava/lang/String;Ljava/lang/String;[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyTouchStatus(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist perfThermalBreakAcquire(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
