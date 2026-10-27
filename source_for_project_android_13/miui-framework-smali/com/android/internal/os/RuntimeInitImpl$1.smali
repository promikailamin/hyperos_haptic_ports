.class Lcom/android/internal/os/RuntimeInitImpl$1;
.super Ljava/lang/Object;
.source "RuntimeInitImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/RuntimeInitImpl;->onJE(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/RuntimeInitImpl;

.field final synthetic blacklist val$event:Lmiui/mqsas/sdk/event/JavaExceptionEvent;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/RuntimeInitImpl;Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/os/RuntimeInitImpl;

    .line 116
    iput-object p1, p0, Lcom/android/internal/os/RuntimeInitImpl$1;->this$0:Lcom/android/internal/os/RuntimeInitImpl;

    iput-object p2, p0, Lcom/android/internal/os/RuntimeInitImpl$1;->val$event:Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist call()Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/RuntimeInitImpl$1;->val$event:Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 120
    iget-object v0, p0, Lcom/android/internal/os/RuntimeInitImpl$1;->val$event:Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    invoke-static {v0}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->writeEvent(Lmiui/mqsas/sdk/event/ExceptionEvent;)V

    .line 122
    :cond_11
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/os/RuntimeInitImpl$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
