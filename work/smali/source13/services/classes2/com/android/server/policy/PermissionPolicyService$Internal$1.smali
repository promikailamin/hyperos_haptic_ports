.class Lcom/android/server/policy/PermissionPolicyService$Internal$1;
.super Lcom/android/server/wm/ActivityInterceptorCallback;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PermissionPolicyService$Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PermissionPolicyService$Internal;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PermissionPolicyService$Internal;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 1176
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1;->this$1:Lcom/android/server/policy/PermissionPolicyService$Internal;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityInterceptorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
    .registers 3
    .param p1, "info"    # Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    .line 1181
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onActivityLaunched$0$com-android-server-policy-PermissionPolicyService$Internal$1(Landroid/content/pm/ActivityInfo;Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .registers 8
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "taskInfo"    # Landroid/app/TaskInfo;
    .param p3, "info"    # Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    .line 1207
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1;->this$1:Lcom/android/server/policy/PermissionPolicyService$Internal;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v2, p2, Landroid/app/TaskInfo;->userId:I

    iget v3, p2, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/android/server/policy/PermissionPolicyService$Internal;->showNotificationPromptIfNeeded(Ljava/lang/String;IILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    return-void
.end method

.method public onActivityLaunched(Landroid/app/TaskInfo;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .registers 12
    .param p1, "taskInfo"    # Landroid/app/TaskInfo;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "info"    # Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    .line 1187
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityInterceptorCallback;->onActivityLaunched(Landroid/app/TaskInfo;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    .line 1188
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1;->this$1:Lcom/android/server/policy/PermissionPolicyService$Internal;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->callingPackage:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->intent:Landroid/content/Intent;

    iget-object v5, p3, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->checkedOptions:Landroid/app/ActivityOptions;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/android/server/policy/PermissionPolicyService$Internal;->-$$Nest$mshouldShowNotificationDialogOrClearFlags(Lcom/android/server/policy/PermissionPolicyService$Internal;Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1;->this$1:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 1193
    invoke-static {v0, p2}, Lcom/android/server/policy/PermissionPolicyService$Internal;->-$$Nest$misNoDisplayActivity(Lcom/android/server/policy/PermissionPolicyService$Internal;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 1194
    invoke-static {}, Lcom/android/server/appop/AppOpsServiceStub;->getInstance()Lcom/android/server/appop/AppOpsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/appop/AppOpsServiceStub;->skipNotificationRequest(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_55

    .line 1198
    :cond_2a
    iget v0, p1, Landroid/app/TaskInfo;->userId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 1199
    .local v0, "user":Landroid/os/UserHandle;
    const-wide/32 v1, 0xb9cec21

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 1207
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1;->this$1:Lcom/android/server/policy/PermissionPolicyService$Internal;

    iget-object v1, v1, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmHandler(Lcom/android/server/policy/PermissionPolicyService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PermissionPolicyService$Internal$1;Landroid/content/pm/ActivityInfo;Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    .line 1209
    invoke-static {}, Lcom/android/server/appop/AppOpsServiceStub;->getInstance()Lcom/android/server/appop/AppOpsServiceStub;

    move-result-object v3

    .line 1210
    invoke-virtual {v3, p2}, Lcom/android/server/appop/AppOpsServiceStub;->getNotificationRequestDelay(Landroid/content/pm/ActivityInfo;)I

    move-result v3

    int-to-long v3, v3

    .line 1207
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1213
    :cond_54
    return-void

    .line 1196
    .end local v0    # "user":Landroid/os/UserHandle;
    :cond_55
    :goto_55
    return-void
.end method
