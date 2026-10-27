.class public interface abstract Landroid/gamepad/IForceTouchEventListener;
.super Ljava/lang/Object;
.source "IForceTouchEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gamepad/IForceTouchEventListener$Stub;,
        Landroid/gamepad/IForceTouchEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.gamepad.IForceTouchEventListener"


# virtual methods
.method public abstract onForceTouchEvent(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
