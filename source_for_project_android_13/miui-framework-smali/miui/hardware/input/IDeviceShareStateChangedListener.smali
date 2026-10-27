.class public interface abstract Lmiui/hardware/input/IDeviceShareStateChangedListener;
.super Ljava/lang/Object;
.source "IDeviceShareStateChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/input/IDeviceShareStateChangedListener$Stub;,
        Lmiui/hardware/input/IDeviceShareStateChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.hardware.input.IDeviceShareStateChangedListener"


# virtual methods
.method public abstract blacklist onSocketBroken()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
