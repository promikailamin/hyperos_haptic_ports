.class Lcom/android/server/statusbar/StatusBarManagerService$3;
.super Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;ILcom/android/internal/statusbar/IAddTileResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/content/ComponentName;Ljava/lang/String;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1942
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
    .param p1, "i"    # I

    .line 1945
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 1946
    const/4 p1, 0x0

    goto :goto_25

    .line 1947
    :cond_5
    if-nez p1, :cond_15

    .line 1948
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmTileRequestTracker(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/statusbar/TileRequestTracker;

    move-result-object v0

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$userId:I

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/TileRequestTracker;->addDenial(ILandroid/content/ComponentName;)V

    goto :goto_25

    .line 1949
    :cond_15
    const/4 v0, 0x2

    if-ne p1, v0, :cond_25

    .line 1950
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmTileRequestTracker(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/statusbar/TileRequestTracker;

    move-result-object v0

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$userId:I

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/TileRequestTracker;->resetRequests(ILandroid/content/ComponentName;)V

    .line 1952
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$mclearTileAddRequest(Lcom/android/server/statusbar/StatusBarManagerService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1954
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_34} :catch_35

    .line 1957
    goto :goto_3e

    .line 1955
    :catch_35
    move-exception v0

    .line 1956
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "requestAddTile - callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1959
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3e
    :goto_3e
    return-void
.end method
