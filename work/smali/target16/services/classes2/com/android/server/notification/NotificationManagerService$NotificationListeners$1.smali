.class public Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;
.super Landroid/service/notification/IDispatchCompletionListener$Stub;
.source "NotificationManagerService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field public final synthetic val$session:Landroid/app/IBinderSession;


# direct methods
.method public static synthetic $r8$lambda$QiDnMMKg1JpZvr40fh3mCflc3tA(Landroid/app/IBinderSession;J)V
    .registers 3

    .line 13958
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/IBinderSession;->binderTransactionCompleted(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Landroid/app/IBinderSession;)V
    .registers 3

    .line 13953
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$session:Landroid/app/IBinderSession;

    invoke-direct {p0}, Landroid/service/notification/IDispatchCompletionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDispatchComplete(J)V
    .registers 5

    .line 13956
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$session:Landroid/app/IBinderSession;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/IBinderSession;J)V

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->-$$Nest$sfgetNLS_COMPLETION_GRACE_PERIOD()Ljava/time/Duration;

    move-result-object p0

    .line 13962
    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide p0

    .line 13956
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
