.class Lcom/android/server/app/GameManagerService$DeviceConfigListener;
.super Ljava/lang/Object;
.source "GameManagerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceConfigListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/app/GameManagerService;)V
    .registers 3

    .line 324
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$DeviceConfigListener;->this$0:Lcom/android/server/app/GameManagerService;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmContext(Lcom/android/server/app/GameManagerService;)Landroid/content/Context;

    move-result-object p1

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 326
    const-string v0, "game_overlay"

    invoke-static {v0, p1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 328
    return-void
.end method


# virtual methods
.method public finalize()V
    .registers 1

    .line 338
    invoke-static {p0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 339
    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 5
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 332
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 333
    .local v0, "packageNames":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$DeviceConfigListener;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/app/GameManagerService;->updateConfigsForUser(I[Ljava/lang/String;)V

    .line 334
    return-void
.end method
