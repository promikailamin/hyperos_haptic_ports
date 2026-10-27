.class public interface abstract Lcom/miui/whetstone/ILocationCallback;
.super Ljava/lang/Object;
.source "ILocationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/ILocationCallback$Stub;,
        Lcom/miui/whetstone/ILocationCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.ILocationCallback"


# virtual methods
.method public abstract blacklist onLocationChanged(Landroid/location/Location;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
