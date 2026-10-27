.class public interface abstract Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;
.super Ljava/lang/Object;
.source "IInteractiveMirrorDisplay.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay$Stub;,
        Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.virtual.computercontrol.IInteractiveMirrorDisplay"


# virtual methods
.method public abstract blacklist close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist resize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendTouchEvent(Landroid/hardware/input/VirtualTouchEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
