.class public Lcom/android/server/app/GameManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "GameManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;)V
    .registers 2

    .line 2056
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$4;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 2059
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 2061
    :try_start_4
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    .line 2062
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-eq v0, v1, :cond_10

    goto/16 :goto_bb

    .line 2065
    :cond_10
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_14} :catch_b4

    .line 2067
    :try_start_14
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$4;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x20000

    .line 2068
    invoke-virtual {v1, p1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2070
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_22} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_22} :catch_b4

    if-eqz v1, :cond_26

    goto/16 :goto_bb

    .line 2076
    :catch_26
    :cond_26
    :try_start_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x1f50b9c2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_4d

    const p2, 0x5c1076e2

    if-eq v2, p2, :cond_3b

    goto/16 :goto_bb

    :cond_3b
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_bb

    .line 2078
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$4;->this$0:Lcom/android/server/app/GameManagerService;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v4, p1}, Lcom/android/server/app/GameManagerService;->updateConfigsForUser(IZ[Ljava/lang/String;)V

    goto :goto_bb

    .line 2076
    :cond_4d
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 2081
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_bb

    .line 2082
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$4;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmDeviceConfigLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_65
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_65} :catch_b4

    .line 2083
    :try_start_65
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$4;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmConfigs(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    monitor-exit p2
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_b1

    .line 2085
    :try_start_6f
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$4;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_76
    .catch Ljava/lang/NullPointerException; {:try_start_6f .. :try_end_76} :catch_b4

    .line 2086
    :try_start_76
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$4;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 2087
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$4;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/app/GameManagerSettings;->removeGameLocked(Ljava/lang/String;)V

    goto :goto_9c

    :catchall_9a
    move-exception p0

    goto :goto_af

    .line 2089
    :cond_9c
    :goto_9c
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$4;->this$0:Lcom/android/server/app/GameManagerService;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    const/16 v2, 0x2710

    invoke-static {p1, v0, v4, v1, v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$msendUserMessage(Lcom/android/server/app/GameManagerService;IILjava/lang/String;I)V

    .line 2091
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$4;->this$0:Lcom/android/server/app/GameManagerService;

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    const/4 v1, 0x6

    invoke-static {p0, v0, v1, p1, v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$msendUserMessage(Lcom/android/server/app/GameManagerService;IILjava/lang/String;I)V

    .line 2094
    monitor-exit p2

    goto :goto_bb

    :goto_af
    monitor-exit p2
    :try_end_b0
    .catchall {:try_start_76 .. :try_end_b0} :catchall_9a

    :try_start_b0
    throw p0
    :try_end_b1
    .catch Ljava/lang/NullPointerException; {:try_start_b0 .. :try_end_b1} :catch_b4

    :catchall_b1
    move-exception p0

    .line 2084
    :try_start_b2
    monitor-exit p2
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    :try_start_b3
    throw p0
    :try_end_b4
    .catch Ljava/lang/NullPointerException; {:try_start_b3 .. :try_end_b4} :catch_b4

    .line 2102
    :catch_b4
    const-string p0, "GameManagerService"

    const-string p1, "Failed to get package name for new package"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    :goto_bb
    return-void
.end method
