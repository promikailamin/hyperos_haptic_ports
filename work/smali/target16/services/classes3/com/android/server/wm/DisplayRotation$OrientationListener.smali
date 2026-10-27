.class public Lcom/android/server/wm/DisplayRotation$OrientationListener;
.super Lcom/android/server/wm/WindowOrientationListener;
.source "DisplayRotation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public transient mEnabled:Z

.field public final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 5

    .line 2040
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 2041
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/wm/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method public disable()V
    .registers 5

    const/4 v0, 0x0

    .line 2084
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 2085
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2086
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x406b09bf53253cd8L    # 216.3046050765322

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v0, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public enable()V
    .registers 5

    const/4 v0, 0x1

    .line 2077
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 2078
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2079
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_1c

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x5ce254014b33080L

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v0, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .registers 1

    .line 2046
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardShowingAndNotOccluded()Z

    move-result p0

    return p0
.end method

.method public isRotationResolverEnabled()Z
    .registers 3

    .line 2051
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmAllowRotationResolver(Lcom/android/server/wm/DisplayRotation;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmUserRotationMode(Lcom/android/server/wm/DisplayRotation;)I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmCameraRotationMode(Lcom/android/server/wm/DisplayRotation;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 2054
    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    if-nez p0, :cond_28

    return v1

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public onProposedRotationChanged(I)V
    .registers 8

    .line 2060
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1b

    int-to-long v2, p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, -0x7861325684edc9ddL    # -5.694061101619302E-272

    const/4 v5, 0x1

    invoke-static {v0, v3, v4, v5, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2062
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, v1, v1}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 2063
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation;->dispatchProposedRotation(I)V

    .line 2064
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0, p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$misRotationChoiceAllowed(Lcom/android/server/wm/DisplayRotation;I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2065
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0, p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fputmRotationChoiceShownToUserForConfirmation(Lcom/android/server/wm/DisplayRotation;I)V

    .line 2066
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0, p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$misValidRotationChoice(Lcom/android/server/wm/DisplayRotation;I)Z

    move-result v0

    .line 2067
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p0, p1, v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$msendProposedRotationChangeToStatusBarInternal(Lcom/android/server/wm/DisplayRotation;IZ)V

    return-void

    .line 2069
    :cond_44
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fputmRotationChoiceShownToUserForConfirmation(Lcom/android/server/wm/DisplayRotation;I)V

    .line 2070
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    return-void
.end method

.method public run()V
    .registers 2

    .line 2091
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-eqz v0, :cond_8

    .line 2092
    invoke-super {p0}, Lcom/android/server/wm/WindowOrientationListener;->enable()V

    return-void

    .line 2094
    :cond_8
    invoke-super {p0}, Lcom/android/server/wm/WindowOrientationListener;->disable()V

    return-void
.end method
