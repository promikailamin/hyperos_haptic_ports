.class Lmiui/hardware/display/DisplayFeatureManager$1;
.super Ljava/lang/Object;
.source "DisplayFeatureManager.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hardware/display/DisplayFeatureManager;->initServiceDeathRecipient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/hardware/display/DisplayFeatureManager;


# direct methods
.method constructor blacklist <init>(Lmiui/hardware/display/DisplayFeatureManager;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/hardware/display/DisplayFeatureManager;

    .line 236
    iput-object p1, p0, Lmiui/hardware/display/DisplayFeatureManager$1;->this$0:Lmiui/hardware/display/DisplayFeatureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist serviceDied(J)V
    .registers 6
    .param p1, "cookie"    # J

    .line 239
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager$1;->this$0:Lmiui/hardware/display/DisplayFeatureManager;

    invoke-static {v0}, Lmiui/hardware/display/DisplayFeatureManager;->-$$Nest$fgetmLock(Lmiui/hardware/display/DisplayFeatureManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 240
    :try_start_7
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hwbinder service binderDied!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager$1;->this$0:Lmiui/hardware/display/DisplayFeatureManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/hardware/display/DisplayFeatureManager;->-$$Nest$fputmProxy(Lmiui/hardware/display/DisplayFeatureManager;Lmiui/hardware/display/DisplayFeatureServiceProxy;)V

    .line 242
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method
