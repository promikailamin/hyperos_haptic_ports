.class Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;
.super Ljava/lang/Object;
.source "DisplayContent.java"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoteInsetsControlTarget"
.end annotation


# instance fields
.field private final mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

.field private final mRequestedVisibilities:Landroid/view/InsetsVisibilities;

.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRemoteInsetsController(Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;)Landroid/view/IDisplayWindowInsetsController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/view/IDisplayWindowInsetsController;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "controller"    # Landroid/view/IDisplayWindowInsetsController;

    .line 7157
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7155
    new-instance v0, Landroid/view/InsetsVisibilities;

    invoke-direct {v0}, Landroid/view/InsetsVisibilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 7158
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    .line 7159
    return-void
.end method


# virtual methods
.method public getRequestedVisibility(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 7221
    const/16 v0, 0x13

    if-ne p1, v0, :cond_13

    .line 7222
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeShowing()Z

    move-result v0

    return v0

    .line 7224
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {v0, p1}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result v0

    return v0
.end method

.method public hideInsets(IZ)V
    .registers 6
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 7211
    :try_start_0
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/SmartPowerServiceStub;->onInsetAnimationHide(I)V

    .line 7213
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    invoke-interface {v0, p1, p2}, Landroid/view/IDisplayWindowInsetsController;->hideInsets(IZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 7216
    goto :goto_15

    .line 7214
    :catch_d
    move-exception v0

    .line 7215
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to deliver showInsets"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7217
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    return-void
.end method

.method notifyInsetsChanged()V
    .registers 4

    .line 7177
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 7178
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    .line 7177
    invoke-interface {v0, v1}, Landroid/view/IDisplayWindowInsetsController;->insetsChanged(Landroid/view/InsetsState;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 7181
    goto :goto_18

    .line 7179
    :catch_10
    move-exception v0

    .line 7180
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to deliver inset state change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7182
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method

.method public notifyInsetsControlChanged()V
    .registers 5

    .line 7186
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    .line 7188
    .local v0, "stateController":Lcom/android/server/wm/InsetsStateController;
    :try_start_6
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    .line 7189
    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object v3

    .line 7188
    invoke-interface {v1, v2, v3}, Landroid/view/IDisplayWindowInsetsController;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_14

    .line 7192
    goto :goto_1c

    .line 7190
    :catch_14
    move-exception v1

    .line 7191
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "Failed to deliver inset state change"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7193
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method setRequestedVisibilities(Landroid/view/InsetsVisibilities;)V
    .registers 3
    .param p1, "requestedVisibilities"    # Landroid/view/InsetsVisibilities;

    .line 7228
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {v0, p1}, Landroid/view/InsetsVisibilities;->set(Landroid/view/InsetsVisibilities;)V

    .line 7229
    return-void
.end method

.method public showInsets(IZ)V
    .registers 6
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 7199
    :try_start_0
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/SmartPowerServiceStub;->onInsetAnimationShow(I)V

    .line 7201
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    invoke-interface {v0, p1, p2}, Landroid/view/IDisplayWindowInsetsController;->showInsets(IZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 7204
    goto :goto_15

    .line 7202
    :catch_d
    move-exception v0

    .line 7203
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to deliver showInsets"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7205
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    return-void
.end method

.method topFocusedWindowChanged(Ljava/lang/String;Landroid/view/InsetsVisibilities;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestedVisibilities"    # Landroid/view/InsetsVisibilities;

    .line 7169
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    invoke-interface {v0, p1, p2}, Landroid/view/IDisplayWindowInsetsController;->topFocusedWindowChanged(Ljava/lang/String;Landroid/view/InsetsVisibilities;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 7172
    goto :goto_e

    .line 7170
    :catch_6
    move-exception v0

    .line 7171
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to deliver package in top focused window change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7173
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
