.class Landroid/os/HapticPlayer$3;
.super Ljava/lang/Object;
.source "HapticPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/HapticPlayer;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/HapticPlayer;


# direct methods
.method constructor blacklist <init>(Landroid/os/HapticPlayer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/HapticPlayer;

    .line 154
    iput-object p1, p0, Landroid/os/HapticPlayer$3;->this$0:Landroid/os/HapticPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 158
    :try_start_0
    iget-object v0, p0, Landroid/os/HapticPlayer$3;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v0}, Landroid/os/HapticPlayer;->-$$Nest$fgetmService(Landroid/os/HapticPlayer;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    const/4 v1, -0x2

    iget-object v2, p0, Landroid/os/HapticPlayer$3;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v2}, Landroid/os/HapticPlayer;->-$$Nest$fgetmToken(Landroid/os/HapticPlayer;)Landroid/os/Binder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/os/IVibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 159
    iget-object v0, p0, Landroid/os/HapticPlayer$3;->this$0:Landroid/os/HapticPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/HapticPlayer;->-$$Nest$fputmStarted(Landroid/os/HapticPlayer;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    .line 162
    goto :goto_1f

    .line 160
    :catch_17
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HapticPlayer"

    const-string v2, "Failed to stop haptic."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method
