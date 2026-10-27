.class public interface abstract Landroid/companion/IOnDevicePresenceEventListener;
.super Ljava/lang/Object;
.source "IOnDevicePresenceEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/IOnDevicePresenceEventListener$Stub;,
        Landroid/companion/IOnDevicePresenceEventListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.IOnDevicePresenceEventListener"


# virtual methods
.method public abstract blacklist onDevicePresence(Landroid/companion/DevicePresenceEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
