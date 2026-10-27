.class final Lcom/android/server/input/InputManagerService$InputMonitorHost;
.super Landroid/view/IInputMonitorHost$Stub;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputMonitorHost"
.end annotation


# instance fields
.field private final mInputChannelToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "inputChannelToken"    # Landroid/os/IBinder;

    .line 3642
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/view/IInputMonitorHost$Stub;-><init>()V

    .line 3643
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mInputChannelToken:Landroid/os/IBinder;

    .line 3644
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 3653
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mInputChannelToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mremoveSpyWindowGestureMonitor(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V

    .line 3654
    return-void
.end method

.method public pilferPointers()V
    .registers 3

    .line 3648
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mInputChannelToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->pilferPointers(Landroid/os/IBinder;)V

    .line 3649
    return-void
.end method
