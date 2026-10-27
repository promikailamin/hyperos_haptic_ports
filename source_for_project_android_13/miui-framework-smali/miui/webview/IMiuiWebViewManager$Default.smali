.class public Lmiui/webview/IMiuiWebViewManager$Default;
.super Ljava/lang/Object;
.source "IMiuiWebViewManager.java"

# interfaces
.implements Lmiui/webview/IMiuiWebViewManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/webview/IMiuiWebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist restartWebViewProcesses()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method
