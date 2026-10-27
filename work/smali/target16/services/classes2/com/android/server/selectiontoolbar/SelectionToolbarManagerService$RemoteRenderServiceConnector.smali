.class Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "SelectionToolbarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$cRZZpNOOEwLNiupIdrK1RrpfdeU(ILandroid/service/selectiontoolbar/ISelectionToolbarRenderService;)V
    .registers 2

    .line 149
    invoke-interface {p1, p0}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;->onHide(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fbNOsEmW_0Ytm6oQsUeRkU9awnA(ILandroid/service/selectiontoolbar/ISelectionToolbarRenderService;)V
    .registers 2

    .line 153
    invoke-interface {p1, p0}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;->onDismiss(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$idXgpJHuwa6DXuNIF8a5kGzq3lw(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;)V
    .registers 4

    .line 145
    invoke-interface {p3, p0, p1, p2}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;->onShow(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdismissToolbar(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;->dismissToolbar(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhideToolbar(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;->hideToolbar(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowToolbar(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;->showToolbar(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/os/IBinder;)V
    .registers 13

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.selectiontoolbar.SelectionToolbarRenderService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    new-instance v7, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda0;-><init>()V

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    .line 120
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 123
    iput-object p4, v2, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;->mCallback:Landroid/os/IBinder;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/os/IBinder;Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService-IA;)V
    .registers 6

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public final dismissToolbar(I)V
    .registers 3

    .line 153
    new-instance v0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public getAutoDisconnectTimeoutMs()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final hideToolbar(I)V
    .registers 3

    .line 149
    new-instance v0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3

    .line 114
    check-cast p1, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;->onServiceConnectionStatusChanged(Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;Z)V

    return-void
.end method

.method public onServiceConnectionStatusChanged(Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;Z)V
    .registers 3

    if-eqz p2, :cond_12

    .line 136
    :try_start_2
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;->mCallback:Landroid/os/IBinder;

    invoke-interface {p1, p0}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;->onConnected(Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 139
    invoke-static {}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Exception calling onConnected()."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    return-void
.end method

.method public final showToolbar(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V
    .registers 5

    .line 145
    new-instance v0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda2;-><init>(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method
