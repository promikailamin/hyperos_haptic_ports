.class public interface abstract Lmiui/hardware/input/IAppScrollerOptimizationConfigChangedListener;
.super Ljava/lang/Object;
.source "IAppScrollerOptimizationConfigChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/input/IAppScrollerOptimizationConfigChangedListener$Stub;,
        Lmiui/hardware/input/IAppScrollerOptimizationConfigChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.hardware.input.IAppScrollerOptimizationConfigChangedListener"


# virtual methods
.method public abstract blacklist onScrollerOptimizationConfig([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
