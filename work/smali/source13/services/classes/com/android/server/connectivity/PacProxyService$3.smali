.class Lcom/android/server/connectivity/PacProxyService$3;
.super Ljava/lang/Object;
.source "PacProxyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacProxyService;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacProxyService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacProxyService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/PacProxyService;

    .line 381
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$3;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 388
    invoke-static {p2}, Lcom/android/net/IProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyCallback;

    move-result-object v0

    .line 389
    .local v0, "callbackService":Lcom/android/net/IProxyCallback;
    if-eqz v0, :cond_13

    .line 391
    :try_start_6
    new-instance v1, Lcom/android/server/connectivity/PacProxyService$3$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacProxyService$3$1;-><init>(Lcom/android/server/connectivity/PacProxyService$3;)V

    invoke-interface {v0, v1}, Lcom/android/net/IProxyCallback;->getProxyPort(Landroid/os/IBinder;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    .line 413
    goto :goto_13

    .line 411
    :catch_f
    move-exception v1

    .line 412
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 415
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 384
    return-void
.end method
