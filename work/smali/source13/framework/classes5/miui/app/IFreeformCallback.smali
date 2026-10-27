.class public interface abstract Lmiui/app/IFreeformCallback;
.super Ljava/lang/Object;
.source "IFreeformCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/IFreeformCallback$Stub;,
        Lmiui/app/IFreeformCallback$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "miui.app.IFreeformCallback"


# virtual methods
.method public abstract whitelist dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
