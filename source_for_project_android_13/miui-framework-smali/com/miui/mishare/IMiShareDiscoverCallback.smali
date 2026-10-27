.class public interface abstract Lcom/miui/mishare/IMiShareDiscoverCallback;
.super Ljava/lang/Object;
.source "IMiShareDiscoverCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;,
        Lcom/miui/mishare/IMiShareDiscoverCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.miui.mishare.IMiShareDiscoverCallback"


# virtual methods
.method public abstract blacklist onDeviceLost(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDeviceUpdated(Lcom/miui/mishare/RemoteDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
