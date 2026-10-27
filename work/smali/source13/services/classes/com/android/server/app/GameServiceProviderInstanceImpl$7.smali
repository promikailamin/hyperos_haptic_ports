.class Lcom/android/server/app/GameServiceProviderInstanceImpl$7;
.super Landroid/service/games/IGameSessionController$Stub;
.source "GameServiceProviderInstanceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameServiceProviderInstanceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 195
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-direct {p0}, Landroid/service/games/IGameSessionController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$restartGame$1$com-android-server-app-GameServiceProviderInstanceImpl$7(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 214
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$mrestartGame(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V

    .line 215
    return-void
.end method

.method synthetic lambda$takeScreenshot$0$com-android-server-app-GameServiceProviderInstanceImpl$7(ILcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "gameScreenshotResultFuture"    # Lcom/android/internal/infra/AndroidFuture;

    .line 203
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V

    .line 205
    return-void
.end method

.method public restartGame(I)V
    .registers 5
    .param p1, "taskId"    # I

    .line 211
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmContext(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_GAME_ACTIVITY"

    const-string/jumbo v2, "restartGame()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$7$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$7$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$7;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method public takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "gameScreenshotResultFuture"    # Lcom/android/internal/infra/AndroidFuture;

    .line 200
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmContext(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_GAME_ACTIVITY"

    const-string/jumbo v2, "takeScreenshot()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$7$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl$7$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$7;ILcom/android/internal/infra/AndroidFuture;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method
