.class Landroid/os/HapticPlayer$2;
.super Ljava/lang/Object;
.source "HapticPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/HapticPlayer;->start(I)V
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

    .line 110
    iput-object p1, p0, Landroid/os/HapticPlayer$2;->this$0:Landroid/os/HapticPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 9

    .line 114
    :try_start_0
    iget-object v0, p0, Landroid/os/HapticPlayer$2;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v0}, Landroid/os/HapticPlayer;->-$$Nest$fgetmService(Landroid/os/HapticPlayer;)Landroid/os/IVibratorManagerService;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v0, p0, Landroid/os/HapticPlayer$2;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v0}, Landroid/os/HapticPlayer;->-$$Nest$fgetmPackageName(Landroid/os/HapticPlayer;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/os/HapticPlayer$2;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v0}, Landroid/os/HapticPlayer;->-$$Nest$fgetmEffect(Landroid/os/HapticPlayer;)Landroid/os/DynamicEffect;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "DynamicEffect"

    iget-object v0, p0, Landroid/os/HapticPlayer$2;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v0}, Landroid/os/HapticPlayer;->-$$Nest$fgetmToken(Landroid/os/HapticPlayer;)Landroid/os/Binder;

    move-result-object v7

    invoke-interface/range {v1 .. v7}, Landroid/os/IVibratorManagerService;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 115
    iget-object v0, p0, Landroid/os/HapticPlayer$2;->this$0:Landroid/os/HapticPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/HapticPlayer;->-$$Nest$fputmStarted(Landroid/os/HapticPlayer;Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    .line 118
    goto :goto_31

    .line 116
    :catch_29
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HapticPlayer"

    const-string v2, "Failed to play haptic."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_31
    return-void
.end method
