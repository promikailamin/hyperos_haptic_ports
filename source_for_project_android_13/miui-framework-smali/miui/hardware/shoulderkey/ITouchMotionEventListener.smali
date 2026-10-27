.class public interface abstract Lmiui/hardware/shoulderkey/ITouchMotionEventListener;
.super Ljava/lang/Object;
.source "ITouchMotionEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/shoulderkey/ITouchMotionEventListener$Stub;,
        Lmiui/hardware/shoulderkey/ITouchMotionEventListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.hardware.shoulderkey.ITouchMotionEventListener"


# virtual methods
.method public abstract blacklist onTouchMotionEvent(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
