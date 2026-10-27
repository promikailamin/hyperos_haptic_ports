.class Lcom/android/server/app/GameServiceProviderInstanceImpl$5;
.super Landroid/app/IProcessObserver$Stub;
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

    .line 158
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onForegroundActivitiesChanged$0$com-android-server-app-GameServiceProviderInstanceImpl$5(I)V
    .registers 3
    .param p1, "pid"    # I

    .line 165
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$monForegroundActivitiesChanged(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V

    .line 166
    return-void
.end method

.method synthetic lambda$onProcessDied$1$com-android-server-app-GameServiceProviderInstanceImpl$5(I)V
    .registers 3
    .param p1, "pid"    # I

    .line 172
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$monProcessDied(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V

    .line 173
    return-void
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "fg"    # Z

    .line 164
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$5;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 178
    return-void
.end method

.method public onProcessDied(II)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 171
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$5;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method
