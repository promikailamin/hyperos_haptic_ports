.class Lcom/android/server/dreams/DreamManagerService$1;
.super Lcom/android/server/wm/ActivityInterceptorCallback;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;

    .line 113
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityInterceptorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
    .registers 3
    .param p1, "info"    # Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityLaunched(Landroid/app/TaskInfo;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .registers 9
    .param p1, "taskInfo"    # Landroid/app/TaskInfo;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "info"    # Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    .line 123
    invoke-virtual {p1}, Landroid/app/TaskInfo;->getActivityType()I

    move-result v0

    .line 124
    .local v0, "activityType":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x5

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v1, 0x1

    .line 127
    .local v1, "activityAllowed":Z
    :goto_11
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmCurrentDreamToken(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/Binder;

    move-result-object v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmCurrentDreamIsWaking(Lcom/android/server/dreams/DreamManagerService;)Z

    move-result v2

    if-nez v2, :cond_46

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmCurrentDreamIsDozing(Lcom/android/server/dreams/DreamManagerService;)Z

    move-result v2

    if-nez v2, :cond_46

    if-nez v1, :cond_46

    .line 129
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopping dream due to activity start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mrequestAwakenInternal(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 132
    :cond_46
    return-void
.end method
