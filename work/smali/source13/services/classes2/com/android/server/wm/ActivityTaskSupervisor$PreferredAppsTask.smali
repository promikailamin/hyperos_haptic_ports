.class Lcom/android/server/wm/ActivityTaskSupervisor$PreferredAppsTask;
.super Landroid/os/AsyncTask;
.source "ActivityTaskSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreferredAppsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 3002
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 3002
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$PreferredAppsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 11
    .param p1, "params"    # [Ljava/lang/Void;

    .line 3005
    const/4 v0, 0x0

    .line 3006
    .local v0, "res":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3007
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 3009
    .local v2, "trimLevel":I
    const/4 v3, 0x0

    :try_start_a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getMemoryTrimLevel()I

    move-result v4
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_81

    move v2, v4

    .line 3012
    nop

    .line 3013
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v4, :cond_80

    const/4 v4, 0x3

    if-ge v2, v4, :cond_80

    .line 3015
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    iget v4, v4, Landroid/util/BoostFramework;->board_first_api_lvl:I

    const/16 v5, 0x21

    if-ge v4, v5, :cond_39

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    iget v4, v4, Landroid/util/BoostFramework;->board_api_lvl:I

    if-ge v4, v5, :cond_39

    .line 3017
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/util/BoostFramework;->perfUXEngine_trigger(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 3019
    :cond_39
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    const/16 v5, 0x1604

    invoke-virtual {v4, v5}, Landroid/util/BoostFramework;->perfSyncRequest(I)Ljava/lang/String;

    move-result-object v0

    .line 3021
    :goto_43
    if-nez v0, :cond_46

    .line 3022
    return-object v3

    .line 3023
    :cond_46
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3024
    .local v4, "p_apps":[Ljava/lang/String;
    array-length v5, v4

    if-eqz v5, :cond_80

    .line 3025
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3026
    .local v5, "apps_l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3027
    .local v6, "bParams":Landroid/os/Bundle;
    nop

    .line 3029
    const-string/jumbo v7, "start_empty_apps"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3030
    new-instance v7, Lcom/android/server/wm/ActivityTaskSupervisor$PreferredAppsTask$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/wm/ActivityTaskSupervisor$PreferredAppsTask$$ExternalSyntheticLambda0;-><init>()V

    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v7, v8, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 3032
    .local v7, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v8, v7}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3035
    .end local v4    # "p_apps":[Ljava/lang/String;
    .end local v5    # "apps_l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "bParams":Landroid/os/Bundle;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_80
    return-object v3

    .line 3010
    :catch_81
    move-exception v4

    .line 3011
    .local v4, "e":Landroid/os/RemoteException;
    return-object v3
.end method
