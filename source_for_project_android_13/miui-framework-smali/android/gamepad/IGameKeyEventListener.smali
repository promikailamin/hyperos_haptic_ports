.class public interface abstract Landroid/gamepad/IGameKeyEventListener;
.super Ljava/lang/Object;
.source "IGameKeyEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gamepad/IGameKeyEventListener$Stub;,
        Landroid/gamepad/IGameKeyEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.gamepad.IGameKeyEventListener"


# virtual methods
.method public abstract onGameKeyEvent(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
