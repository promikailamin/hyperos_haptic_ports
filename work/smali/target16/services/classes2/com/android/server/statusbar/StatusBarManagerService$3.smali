.class public Lcom/android/server/statusbar/StatusBarManagerService$3;
.super Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;
.source "StatusBarManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field public final synthetic val$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

.field public final synthetic val$componentName:Landroid/content/ComponentName;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/content/ComponentName;Ljava/lang/String;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    .registers 6

    .line 2486
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$userId:I

    iput-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$componentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

    invoke-direct {p0}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTileRequest(I)V
    .registers 5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    goto :goto_25

    :cond_5
    if-nez p1, :cond_15

    .line 2492
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmTileRequestTracker(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/statusbar/TileRequestTracker;

    move-result-object v0

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$userId:I

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/TileRequestTracker;->addDenial(ILandroid/content/ComponentName;)V

    goto :goto_25

    :cond_15
    const/4 v0, 0x2

    if-ne p1, v0, :cond_25

    .line 2494
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmTileRequestTracker(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/statusbar/TileRequestTracker;

    move-result-object v0

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$userId:I

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/TileRequestTracker;->resetRequests(ILandroid/content/ComponentName;)V

    .line 2496
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$mclearTileAddRequest(Lcom/android/server/statusbar/StatusBarManagerService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2498
    :try_start_2f
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception p0

    .line 2500
    const-string p1, "StatusBarManagerService"

    const-string/jumbo v0, "requestAddTile - callback"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    return-void
.end method
