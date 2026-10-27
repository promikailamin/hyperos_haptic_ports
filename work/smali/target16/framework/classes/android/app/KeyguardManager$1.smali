.class Landroid/app/KeyguardManager$1;
.super Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/KeyguardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/KeyguardManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/KeyguardManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 256
    iput-object p1, p0, Landroid/app/KeyguardManager$1;->this$0:Landroid/app/KeyguardManager;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onKeyguardLockedStateChanged$0(Landroid/app/KeyguardManager$KeyguardLockedStateListener;Z)V
    .registers 2

    .line 262
    invoke-interface {p0, p1}, Landroid/app/KeyguardManager$KeyguardLockedStateListener;->onKeyguardLockedStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onKeyguardLockedStateChanged$1(ZLandroid/app/KeyguardManager$KeyguardLockedStateListener;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 261
    new-instance v0, Landroid/app/KeyguardManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Landroid/app/KeyguardManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/KeyguardManager$KeyguardLockedStateListener;Z)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method


# virtual methods
.method public blacklist onKeyguardLockedStateChanged(Z)V
    .registers 5

    .line 259
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v0}, Landroid/app/KeyguardManager;->-$$Nest$fgetmKeyguardLockedStateListeners(Landroid/app/KeyguardManager;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 260
    :try_start_7
    iget-object v1, p0, Landroid/app/KeyguardManager$1;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v1}, Landroid/app/KeyguardManager;->-$$Nest$fgetmKeyguardLockedStateListeners(Landroid/app/KeyguardManager;)Landroid/util/ArrayMap;

    move-result-object v1

    new-instance v2, Landroid/app/KeyguardManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/app/KeyguardManager$1$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 264
    monitor-exit v0

    .line 265
    return-void

    .line 264
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p1
.end method
