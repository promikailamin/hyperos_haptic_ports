.class public interface abstract Lmiui/hardware/input/IMiuiMotionEventListener;
.super Ljava/lang/Object;
.source "IMiuiMotionEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/input/IMiuiMotionEventListener$Stub;,
        Lmiui/hardware/input/IMiuiMotionEventListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.hardware.input.IMiuiMotionEventListener"


# virtual methods
.method public abstract blacklist onMiuiMotionEvent(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
