.class public interface abstract Lmiui/app/IMiuiMultiWinSplitManager;
.super Ljava/lang/Object;
.source "IMiuiMultiWinSplitManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/IMiuiMultiWinSplitManager$Stub;,
        Lmiui/app/IMiuiMultiWinSplitManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.app.IMiuiMultiWinSplitManager"


# virtual methods
.method public abstract blacklist adjustToSplitWindingMode(Landroid/os/IBinder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSplitRootTasksPos(I)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getTouchOffsetInTask(Landroid/os/IBinder;Landroid/graphics/Point;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist handleMultiWindowSwitch(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isSupportDragForMultiWin(Landroid/os/IBinder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
