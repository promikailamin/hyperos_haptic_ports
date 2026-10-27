.class public interface abstract Lmiui/hardware/display/IMiuiMultiDisplayManager;
.super Ljava/lang/Object;
.source "IMiuiMultiDisplayManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub;,
        Lmiui/hardware/display/IMiuiMultiDisplayManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.hardware.display.IMiuiMultiDisplayManager"


# virtual methods
.method public abstract blacklist getScreenEffectAvailableDisplay()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setDisplayStateIgnoreFold(IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
