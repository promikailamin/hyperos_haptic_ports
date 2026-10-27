.class public Lcom/android/server/appbinding/AppBindingService$1;
.super Landroid/app/supervision/SupervisionManager$SupervisionListener;
.source "AppBindingService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appbinding/AppBindingService;


# direct methods
.method public constructor <init>(Lcom/android/server/appbinding/AppBindingService;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService$1;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-direct {p0}, Landroid/app/supervision/SupervisionManager$SupervisionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSupervisionDisabled(I)V
    .registers 5

    .line 266
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService$1;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v0}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$fgetmLock(Lcom/android/server/appbinding/AppBindingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 267
    :try_start_7
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$1;->this$0:Lcom/android/server/appbinding/AppBindingService;

    const-string/jumbo v1, "supervision disabled"

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v1}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$munbindServicesLocked(Lcom/android/server/appbinding/AppBindingService;ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 268
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method
