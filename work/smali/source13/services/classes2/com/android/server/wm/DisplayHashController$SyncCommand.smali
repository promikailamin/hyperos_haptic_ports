.class Lcom/android/server/wm/DisplayHashController$SyncCommand;
.super Ljava/lang/Object;
.source "DisplayHashController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayHashController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncCommand"
.end annotation


# static fields
.field private static final WAIT_TIME_S:I = 0x5


# instance fields
.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mResult:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/server/wm/DisplayHashController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/DisplayHashController;)V
    .registers 3

    .line 439
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/DisplayHashController;Lcom/android/server/wm/DisplayHashController$SyncCommand-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayHashController$SyncCommand;-><init>(Lcom/android/server/wm/DisplayHashController;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-android-server-wm-DisplayHashController$SyncCommand(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Bundle;

    .line 447
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mResult:Landroid/os/Bundle;

    .line 448
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 449
    return-void
.end method

.method synthetic lambda$run$1$com-android-server-wm-DisplayHashController$SyncCommand(Ljava/util/function/BiConsumer;Landroid/service/displayhash/IDisplayHashingService;)V
    .registers 5
    .param p1, "func"    # Ljava/util/function/BiConsumer;
    .param p2, "service"    # Landroid/service/displayhash/IDisplayHashingService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayHashController$SyncCommand;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 450
    .local v0, "callback":Landroid/os/RemoteCallback;
    invoke-interface {p1, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 451
    return-void
.end method

.method public run(Ljava/util/function/BiConsumer;)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/service/displayhash/IDisplayHashingService;",
            "Landroid/os/RemoteCallback;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 445
    .local p1, "func":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/service/displayhash/IDisplayHashingService;Landroid/os/RemoteCallback;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->this$0:Lcom/android/server/wm/DisplayHashController;

    new-instance v1, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayHashController$SyncCommand;Ljava/util/function/BiConsumer;)V

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayHashController;->-$$Nest$mconnectAndRun(Lcom/android/server/wm/DisplayHashController;Lcom/android/server/wm/DisplayHashController$Command;)V

    .line 454
    :try_start_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_14

    .line 457
    goto :goto_1c

    .line 455
    :catch_14
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "Failed to wait for command"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mResult:Landroid/os/Bundle;

    return-object v0
.end method
