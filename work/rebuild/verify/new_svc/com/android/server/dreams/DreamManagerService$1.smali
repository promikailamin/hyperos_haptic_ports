.class public Lcom/android/server/dreams/DreamManagerService$1;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Lcom/android/server/wm/ActivityInterceptorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityLaunched(Landroid/app/TaskInfo;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .registers 7

    .line 205
    invoke-virtual {p1}, Landroid/app/TaskInfo;->getActivityType()I

    move-result p1

    const/4 p3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p3, :cond_12

    const/4 p3, 0x5

    if-eq p1, p3, :cond_12

    const/4 p3, 0x4

    if-ne p1, p3, :cond_10

    goto :goto_12

    :cond_10
    move p1, v1

    goto :goto_13

    :cond_12
    :goto_12
    move p1, v0

    .line 211
    :goto_13
    iget-object p3, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p3}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmLock(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 212
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isWaking:Z

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    if-nez v2, :cond_3b

    if-nez p1, :cond_3b

    goto :goto_3c

    :catchall_39
    move-exception p0

    goto :goto_59

    :cond_3b
    move v0, v1

    .line 214
    :goto_3c
    monitor-exit p3
    :try_end_3d
    .catchall {:try_start_1a .. :try_end_3d} :catchall_39

    if-eqz v0, :cond_58

    .line 217
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "stopping dream due to activity start: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mrequestAwakenInternal(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    :cond_58
    return-void

    .line 214
    :goto_59
    :try_start_59
    monitor-exit p3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_39

    throw p0
.end method

.method public onInterceptActivityLaunch(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method
