.class public interface abstract Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;
.super Ljava/lang/Object;
.source "ITurboSchedManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/turbosched/ITurboSchedManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFrameTurboSceneCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Stub;,
        Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "miui.turbosched.ITurboSchedManager.IFrameTurboSceneCallback"


# virtual methods
.method public abstract onSceneChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
