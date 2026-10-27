.class public Lcom/android/server/dreams/DreamManagerService$4;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Lcom/android/server/dreams/DreamController$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2

    .line 1069
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamStarted(Landroid/os/Binder;)V
    .registers 2

    .line 1076
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mreportDreamingStarted(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method

.method public onDreamStopped(Landroid/os/Binder;)V
    .registers 4

    .line 1081
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmLock(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1082
    :try_start_7
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    if-ne v1, p1, :cond_21

    .line 1083
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcleanupDreamLocked(Lcom/android/server/dreams/DreamManagerService;)V

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_28

    .line 1085
    :cond_21
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_1f

    .line 1087
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mreportDreamingStopped(Lcom/android/server/dreams/DreamManagerService;)V

    return-void

    .line 1085
    :goto_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_1f

    throw p0
.end method
