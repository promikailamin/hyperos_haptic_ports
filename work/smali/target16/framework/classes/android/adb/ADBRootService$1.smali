.class Landroid/adb/ADBRootService$1;
.super Ljava/lang/Object;
.source "ADBRootService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adb/ADBRootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/adb/ADBRootService;


# direct methods
.method constructor blacklist <init>(Landroid/adb/ADBRootService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 35
    iput-object p1, p0, Landroid/adb/ADBRootService$1;->this$0:Landroid/adb/ADBRootService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 38
    iget-object v0, p0, Landroid/adb/ADBRootService$1;->this$0:Landroid/adb/ADBRootService;

    invoke-static {v0}, Landroid/adb/ADBRootService;->-$$Nest$fgetmService(Landroid/adb/ADBRootService;)Landroid/adbroot/IADBRootService;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 39
    iget-object v0, p0, Landroid/adb/ADBRootService$1;->this$0:Landroid/adb/ADBRootService;

    invoke-static {v0}, Landroid/adb/ADBRootService;->-$$Nest$fgetmService(Landroid/adb/ADBRootService;)Landroid/adbroot/IADBRootService;

    move-result-object v0

    invoke-interface {v0}, Landroid/adbroot/IADBRootService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 41
    :cond_16
    iget-object v0, p0, Landroid/adb/ADBRootService$1;->this$0:Landroid/adb/ADBRootService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/adb/ADBRootService;->-$$Nest$fputmService(Landroid/adb/ADBRootService;Landroid/adbroot/IADBRootService;)V

    .line 42
    return-void
.end method
