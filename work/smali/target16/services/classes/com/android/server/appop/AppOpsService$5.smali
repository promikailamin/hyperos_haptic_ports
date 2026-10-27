.class public Lcom/android/server/appop/AppOpsService$5;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2

    .line 1167
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    .line 1170
    const-string p1, "android.intent.extra.changed_uid_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    .line 1171
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1173
    invoke-static {}, Lcom/android/server/appop/AppOpsService;->-$$Nest$sfgetOPS_RESTRICTED_ON_SUSPEND()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_7a

    aget v6, v0, v3

    .line 1175
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v4

    .line 1176
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpModeWatchers(Lcom/android/server/appop/AppOpsService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    if-nez v5, :cond_2d

    .line 1178
    monitor-exit v4

    goto :goto_75

    :catchall_2a
    move-exception v0

    move-object p0, v0

    goto :goto_78

    :cond_2d
    move-object v7, v5

    .line 1180
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v7}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1181
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_2a

    move v10, v2

    .line 1182
    :goto_35
    array-length v4, p1

    if-ge v10, v4, :cond_75

    .line 1183
    aget v7, p1, v10

    .line 1184
    aget-object v8, p2, v10

    .line 1187
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 1188
    const-string v9, "default:0"

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1190
    iget-object v9, p0, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v9}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmVirtualDeviceManagerInternal(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v9

    if-eqz v9, :cond_5b

    .line 1191
    iget-object v9, p0, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v9}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmVirtualDeviceManagerInternal(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v9

    .line 1192
    invoke-virtual {v9}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getAllPersistentDeviceIds()Ljava/util/Set;

    move-result-object v9

    .line 1191
    invoke-interface {v4, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1194
    :cond_5b
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    .line 1195
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static/range {v4 .. v9}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnotifyOpChanged(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    :cond_72
    add-int/lit8 v10, v10, 0x1

    goto :goto_35

    :cond_75
    :goto_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1181
    :goto_78
    :try_start_78
    monitor-exit v4
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_2a

    throw p0

    :cond_7a
    return-void
.end method
