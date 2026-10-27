.class Lcom/android/server/display/DisplayManagerService$DeviceStateListener;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceStateListener"
.end annotation


# instance fields
.field private mBaseState:I

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    .line 4176
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4178
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->mBaseState:I

    return-void
.end method


# virtual methods
.method public onBaseStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 4193
    iput p1, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->mBaseState:I

    .line 4194
    return-void
.end method

.method public onStateChanged(I)V
    .registers 5
    .param p1, "deviceState"    # I

    .line 4182
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->mBaseState:I

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 4183
    .local v0, "isDeviceStateOverrideActive":Z
    :goto_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 4185
    :try_start_e
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayManagerServiceImpl:Lcom/android/server/display/DisplayManagerServiceStub;

    invoke-interface {v2, p1}, Lcom/android/server/display/DisplayManagerServiceStub;->setDeviceStateLocked(I)V

    .line 4186
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v2

    .line 4187
    invoke-virtual {v2, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->setDeviceStateLocked(IZ)V

    .line 4188
    monitor-exit v1

    .line 4189
    return-void

    .line 4188
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_20

    throw v2
.end method
