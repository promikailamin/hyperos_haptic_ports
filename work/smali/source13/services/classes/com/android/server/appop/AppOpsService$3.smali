.class Lcom/android/server/appop/AppOpsService$3;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;

    .line 1958
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1961
    const-string v0, "android.intent.extra.changed_uid_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 1962
    .local v0, "changedUids":[I
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1964
    .local v1, "changedPkgs":[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/appop/AppOpsService;->-$$Nest$sfgetOPS_RESTRICTED_ON_SUSPEND()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_44

    aget v5, v2, v4

    .line 1966
    .local v5, "code":I
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v6

    .line 1967
    :try_start_19
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 1968
    .local v7, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v7, :cond_27

    .line 1969
    monitor-exit v6

    goto :goto_3e

    .line 1971
    :cond_27
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8, v7}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v7, v8

    .line 1972
    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_41

    .line 1973
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2f
    array-length v8, v0

    if-ge v6, v8, :cond_3e

    .line 1974
    aget v8, v0, v6

    .line 1975
    .local v8, "changedUid":I
    aget-object v9, v1, v6

    .line 1978
    .local v9, "changedPkg":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v10, v7, v5, v8, v9}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnotifyOpChanged(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V

    .line 1973
    .end local v8    # "changedUid":I
    .end local v9    # "changedPkg":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 1964
    .end local v5    # "code":I
    .end local v6    # "i":I
    .end local v7    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_3e
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1972
    .restart local v5    # "code":I
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v6
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v2

    .line 1981
    .end local v5    # "code":I
    :cond_44
    return-void
.end method
