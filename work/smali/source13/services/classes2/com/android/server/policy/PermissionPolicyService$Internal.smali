.class Lcom/android/server/policy/PermissionPolicyService$Internal;
.super Lcom/android/server/policy/PermissionPolicyInternal;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PermissionPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Internal"
.end annotation


# instance fields
.field private final mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

.field final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method static bridge synthetic -$$Nest$misNoDisplayActivity(Lcom/android/server/policy/PermissionPolicyService$Internal;Landroid/content/pm/ActivityInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isNoDisplayActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monActivityManagerReady(Lcom/android/server/policy/PermissionPolicyService$Internal;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyService$Internal;->onActivityManagerReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldShowNotificationDialogOrClearFlags(Lcom/android/server/policy/PermissionPolicyService$Internal;Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/policy/PermissionPolicyService$Internal;->shouldShowNotificationDialogOrClearFlags(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 2

    .line 1173
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyInternal;-><init>()V

    .line 1175
    new-instance p1, Lcom/android/server/policy/PermissionPolicyService$Internal$1;

    invoke-direct {p1, p0}, Lcom/android/server/policy/PermissionPolicyService$Internal$1;-><init>(Lcom/android/server/policy/PermissionPolicyService$Internal;)V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyService$Internal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService$Internal;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    return-void
.end method

.method private isActionRemovedForCallingPackage(Landroid/content/Intent;ILjava/lang/String;)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 1420
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1421
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1422
    return v1

    .line 1424
    :cond_8
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_64

    :cond_11
    goto :goto_25

    :sswitch_12
    const-string v3, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v2, v1

    goto :goto_25

    :sswitch_1c
    const-string v3, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v2, v4

    :goto_25
    packed-switch v2, :pswitch_data_6e

    .line 1444
    return v1

    .line 1429
    :pswitch_29
    :try_start_29
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v2}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1430
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1429
    invoke-virtual {v2, p3, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1431
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_3d} :catch_43

    const/16 v5, 0x1d

    if-lt v3, v5, :cond_42

    .line 1434
    return v4

    .line 1438
    :cond_42
    goto :goto_5e

    .line 1436
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_43
    move-exception v2

    .line 1437
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find application info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_5e
    const-string v2, "android.intent.extra.CALLING_PACKAGE"

    invoke-virtual {p1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1441
    return v1

    :sswitch_data_64
    .sparse-switch
        -0x63c6bb19 -> :sswitch_1c
        0x228937c8 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method private isLauncherIntent(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1355
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1356
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1357
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1358
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1359
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.intent.category.CAR_LAUNCHER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_36
    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    .line 1355
    :goto_39
    return v0
.end method

.method private isNoDisplayActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 8
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 1275
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v0

    .line 1276
    .local v0, "themeResource":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1277
    return v1

    .line 1280
    :cond_8
    const/4 v2, 0x0

    .line 1281
    .local v2, "noDisplay":Z
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    .line 1282
    invoke-virtual {v3, v4, v0, v5, v1}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v3

    .line 1283
    .local v3, "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    if-eqz v3, :cond_1f

    .line 1284
    iget-object v4, v3, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 1287
    :cond_1f
    return v2
.end method

.method private isTaskPotentialTrampoline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/TaskInfo;Landroid/content/Intent;)Z
    .registers 8
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "currPkg"    # Ljava/lang/String;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "taskInfo"    # Landroid/app/TaskInfo;
    .param p5, "intent"    # Landroid/content/Intent;

    .line 1329
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p4, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0, p5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p4, Landroid/app/TaskInfo;->numActivities:I

    if-ne v0, v1, :cond_1e

    iget-object v0, p4, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1331
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 1329
    :goto_1f
    return v1
.end method

.method private isTaskStartedFromLauncher(Ljava/lang/String;Landroid/app/TaskInfo;)Z
    .registers 4
    .param p1, "currPkg"    # Ljava/lang/String;
    .param p2, "taskInfo"    # Landroid/app/TaskInfo;

    .line 1363
    iget-object v0, p2, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p2, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1364
    invoke-direct {p0, v0}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1363
    :goto_17
    return v0
.end method

.method private launchNotificationPermissionRequestDialog(Ljava/lang/String;Landroid/os/UserHandle;ILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "taskId"    # I
    .param p4, "info"    # Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    .line 1369
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1370
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1372
    .local v0, "grantPermission":Landroid/content/Intent;
    const/high16 v1, 0x10040000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1373
    const-string v1, "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1375
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1377
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_37

    iget-object v3, p4, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->checkedOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_37

    iget-object v3, p4, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->checkedOptions:Landroid/app/ActivityOptions;

    .line 1378
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_37

    iget-object v3, p4, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->clearOptionsAnimation:Ljava/lang/Runnable;

    if-eqz v3, :cond_37

    move v3, v1

    goto :goto_38

    :cond_37
    move v3, v2

    .line 1380
    .local v3, "remoteAnimation":Z
    :goto_38
    if-eqz v3, :cond_4b

    iget-object v4, p4, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->checkedOptions:Landroid/app/ActivityOptions;

    .line 1381
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v4

    iget-object v5, p4, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->checkedOptions:Landroid/app/ActivityOptions;

    .line 1382
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v5

    .line 1380
    invoke-static {v4, v5}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    move-result-object v4

    goto :goto_55

    .line 1383
    :cond_4b
    new-instance v4, Landroid/app/ActivityOptions;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v4, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    :goto_55
    nop

    .line 1384
    .local v4, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v4, v1, v2}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 1385
    invoke-virtual {v4, p3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 1386
    if-eqz v3, :cond_63

    .line 1392
    iget-object v1, p4, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->clearOptionsAnimation:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1395
    :cond_63
    :try_start_63
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmContext(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_70} :catch_71

    .line 1399
    goto :goto_8c

    .line 1396
    :catch_71
    move-exception v1

    .line 1397
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t start grant permission dialogfor other package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1400
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_8c
    return-void
.end method

.method private onActivityManagerReady()V
    .registers 4

    .line 1217
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1218
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1219
    .local v0, "atm":Lcom/android/server/wm/ActivityTaskManagerInternal;
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V

    .line 1222
    return-void
.end method

.method private pkgHasRunningLauncherTask(Ljava/lang/String;Landroid/app/TaskInfo;)Z
    .registers 10
    .param p1, "currPkg"    # Ljava/lang/String;
    .param p2, "taskInfo"    # Landroid/app/TaskInfo;

    .line 1335
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1336
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1339
    .local v0, "m":Lcom/android/server/wm/ActivityTaskManagerInternal;
    const/4 v1, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1340
    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAppTasks(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 1341
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_41

    .line 1342
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v4}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    .line 1343
    .local v4, "other":Landroid/app/TaskInfo;
    iget v5, v4, Landroid/app/TaskInfo;->taskId:I

    iget v6, p2, Landroid/app/TaskInfo;->taskId:I

    if-eq v5, v6, :cond_3e

    iget-boolean v5, v4, Landroid/app/TaskInfo;->isFocused:Z

    if-eqz v5, :cond_3e

    iget-boolean v5, v4, Landroid/app/TaskInfo;->isRunning:Z

    if-eqz v5, :cond_3e

    .line 1344
    invoke-direct {p0, p1, v4}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isTaskStartedFromLauncher(Ljava/lang/String;Landroid/app/TaskInfo;)Z

    move-result v5
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_3a} :catch_42

    if-eqz v5, :cond_3e

    .line 1345
    const/4 v1, 0x1

    return v1

    .line 1341
    .end local v4    # "other":Landroid/app/TaskInfo;
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1350
    .end local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    .end local v3    # "i":I
    :cond_41
    goto :goto_43

    .line 1348
    :catch_42
    move-exception v2

    .line 1351
    :goto_43
    return v1
.end method

.method private shouldForceShowNotificationPermissionRequest(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1450
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1451
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v1, 0x0

    if-eqz v0, :cond_c0

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c0

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1452
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c0

    .line 1453
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    const/16 v3, 0x17

    if-ge v2, v3, :cond_2d

    goto/16 :goto_c0

    .line 1461
    :cond_2d
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmLock(Lcom/android/server/policy/PermissionPolicyService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1462
    :try_start_34
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v3}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmBootCompleted(Lcom/android/server/policy/PermissionPolicyService;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1463
    monitor-exit v2

    return v1

    .line 1465
    :cond_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_bd

    .line 1467
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    const-wide/32 v2, 0xb9cec21

    .line 1468
    invoke-static {v2, v3, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_bc

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/app/KeyguardManager;

    move-result-object v2

    .line 1469
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_61

    goto :goto_bc

    .line 1473
    :cond_61
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/UserHandle;->getUid(I)I

    move-result v2

    .line 1474
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v3}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmNotificationManager(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/notification/NotificationManagerInternal;

    move-result-object v3

    if-nez v3, :cond_7e

    .line 1475
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    const-class v4, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v3, v4}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fputmNotificationManager(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/notification/NotificationManagerInternal;)V

    .line 1477
    :cond_7e
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v3}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmNotificationManager(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/notification/NotificationManagerInternal;

    move-result-object v3

    .line 1478
    const/4 v4, 0x1

    invoke-interface {v3, p1, v2, v4}, Lcom/android/server/notification/NotificationManagerInternal;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v3

    if-lez v3, :cond_8d

    move v3, v4

    goto :goto_8e

    :cond_8d
    move v3, v1

    .line 1479
    .local v3, "hasCreatedNotificationChannels":Z
    :goto_8e
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v5}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPermissionManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v5

    const-string v6, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v5, v2, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkUidPermission(ILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_9e

    move v5, v4

    goto :goto_9f

    :cond_9e
    move v5, v1

    .line 1481
    .local v5, "granted":Z
    :goto_9f
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v6}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v6, v7, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v6

    .line 1482
    .local v6, "flags":I
    const v7, 0x8037

    and-int/2addr v7, v6

    if-eqz v7, :cond_b3

    move v7, v4

    goto :goto_b4

    :cond_b3
    move v7, v1

    .line 1483
    .local v7, "explicitlySet":Z
    :goto_b4
    if-nez v5, :cond_bb

    if-eqz v3, :cond_bb

    if-nez v7, :cond_bb

    move v1, v4

    :cond_bb
    return v1

    .line 1470
    .end local v2    # "uid":I
    .end local v3    # "hasCreatedNotificationChannels":Z
    .end local v5    # "granted":Z
    .end local v6    # "flags":I
    .end local v7    # "explicitlySet":Z
    :cond_bc
    :goto_bc
    return v1

    .line 1465
    :catchall_bd
    move-exception v1

    :try_start_be
    monitor-exit v2
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw v1

    .line 1454
    :cond_c0
    :goto_c0
    if-nez v0, :cond_dc

    .line 1455
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot check for Notification prompt, no package for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_dc
    return v1
.end method

.method private shouldShowNotificationDialogOrClearFlags(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z
    .registers 15
    .param p1, "taskInfo"    # Landroid/app/TaskInfo;
    .param p2, "currPkg"    # Ljava/lang/String;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "topActivityName"    # Ljava/lang/String;
    .param p7, "startedActivity"    # Z

    .line 1314
    const/4 v0, 0x0

    if-eqz p4, :cond_44

    if-eqz p2, :cond_44

    if-eqz p1, :cond_44

    if-eqz p6, :cond_44

    iget-boolean v1, p1, Landroid/app/TaskInfo;->isFocused:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p1, Landroid/app/TaskInfo;->isRunning:Z

    if-nez v1, :cond_18

    :cond_15
    if-nez p7, :cond_18

    goto :goto_44

    .line 1319
    :cond_18
    invoke-direct {p0, p4}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_42

    if-eqz p5, :cond_26

    .line 1320
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->isEligibleForLegacyPermissionPrompt()Z

    move-result v1

    if-nez v1, :cond_42

    .line 1321
    :cond_26
    invoke-direct {p0, p2, p1}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isTaskStartedFromLauncher(Ljava/lang/String;Landroid/app/TaskInfo;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 1322
    move-object v1, p0

    move-object v2, p6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isTaskPotentialTrampoline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/TaskInfo;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_41

    if-eqz p7, :cond_42

    .line 1324
    invoke-direct {p0, p2, p1}, Lcom/android/server/policy/PermissionPolicyService$Internal;->pkgHasRunningLauncherTask(Ljava/lang/String;Landroid/app/TaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_42

    :cond_41
    goto :goto_43

    :cond_42
    :goto_42
    const/4 v0, 0x1

    .line 1319
    :goto_43
    return v0

    .line 1317
    :cond_44
    :goto_44
    return v0
.end method


# virtual methods
.method public checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 1227
    const/4 v0, 0x0

    if-eqz p3, :cond_42

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isActionRemovedForCallingPackage(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1229
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action Removed: starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    return v0

    .line 1234
    :cond_42
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_5a

    .line 1235
    const-string v1, "android"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 1236
    :cond_5a
    return v0

    .line 1239
    :cond_5b
    const/4 v0, 0x1

    return v0
.end method

.method public isInitialized(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1404
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0, p1}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$misStarted(Lcom/android/server/policy/PermissionPolicyService;I)Z

    move-result v0

    return v0
.end method

.method public isIntentToPermissionDialog(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1261
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1262
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1261
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1263
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1264
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 1261
    :goto_2f
    return v0
.end method

.method public setOnInitializedCallback(Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    .line 1409
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmLock(Lcom/android/server/policy/PermissionPolicyService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1410
    :try_start_7
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, p1}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fputmOnInitializedCallback(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)V

    .line 1411
    monitor-exit v0

    .line 1412
    return-void

    .line 1411
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public shouldShowNotificationDialogForTask(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 14
    .param p1, "taskInfo"    # Landroid/app/TaskInfo;
    .param p2, "currPkg"    # Ljava/lang/String;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "activityName"    # Ljava/lang/String;

    .line 1270
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/PermissionPolicyService$Internal;->shouldShowNotificationDialogOrClearFlags(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showNotificationPromptIfNeeded(Ljava/lang/String;II)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "taskId"    # I

    .line 1245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PermissionPolicyService$Internal;->showNotificationPromptIfNeeded(Ljava/lang/String;IILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    .line 1246
    return-void
.end method

.method showNotificationPromptIfNeeded(Ljava/lang/String;IILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "taskId"    # I
    .param p4, "info"    # Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    .line 1250
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 1251
    .local v0, "user":Landroid/os/UserHandle;
    if-eqz p1, :cond_14

    const/4 v1, -0x1

    if-eq p3, v1, :cond_14

    .line 1252
    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/PermissionPolicyService$Internal;->shouldForceShowNotificationPermissionRequest(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_14

    .line 1256
    :cond_10
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/policy/PermissionPolicyService$Internal;->launchNotificationPermissionRequestDialog(Ljava/lang/String;Landroid/os/UserHandle;ILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    .line 1257
    return-void

    .line 1253
    :cond_14
    :goto_14
    return-void
.end method
