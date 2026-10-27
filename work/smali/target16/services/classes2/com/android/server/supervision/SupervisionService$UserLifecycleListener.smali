.class public final Lcom/android/server/supervision/SupervisionService$UserLifecycleListener;
.super Ljava/lang/Object;
.source "SupervisionService.java"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/supervision/SupervisionService;


# direct methods
.method public constructor <init>(Lcom/android/server/supervision/SupervisionService;)V
    .registers 2

    .line 960
    iput-object p1, p0, Lcom/android/server/supervision/SupervisionService$UserLifecycleListener;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/supervision/SupervisionService;Lcom/android/server/supervision/SupervisionService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/supervision/SupervisionService$UserLifecycleListener;-><init>(Lcom/android/server/supervision/SupervisionService;)V

    return-void
.end method


# virtual methods
.method public onUserRemoved(Landroid/content/pm/UserInfo;)V
    .registers 3

    .line 963
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$UserLifecycleListener;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-static {v0}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$mgetLockObject(Lcom/android/server/supervision/SupervisionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 965
    :try_start_7
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$UserLifecycleListener;->this$0:Lcom/android/server/supervision/SupervisionService;

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mSupervisionSettings:Lcom/android/server/supervision/SupervisionSettings;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionSettings;->removeUserData(I)V

    .line 969
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method
