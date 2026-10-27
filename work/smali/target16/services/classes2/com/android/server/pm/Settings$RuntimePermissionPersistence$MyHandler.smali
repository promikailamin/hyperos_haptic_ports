.class public final Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
.super Landroid/os/Handler;
.source "Settings.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V
    .registers 2

    .line 6679
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 6680
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 6685
    iget v0, p1, Landroid/os/Message;->what:I

    .line 6686
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    .line 6687
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->-$$Nest$fgetmInvokeWriteUserStateAsyncCallback(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    if-eqz p1, :cond_18

    .line 6689
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_18
    return-void
.end method
