.class public Lcom/android/server/policy/PermissionPolicyService$Internal;
.super Lcom/android/server/policy/PermissionPolicyInternal;
.source "PermissionPolicyService.java"


# instance fields
.field public final mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public static bridge synthetic -$$Nest$misNoDisplayActivity(Lcom/android/server/policy/PermissionPolicyService$Internal;Landroid/content/pm/ActivityInfo;I)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isNoDisplayActivity(Landroid/content/pm/ActivityInfo;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monActivityManagerReady(Lcom/android/server/policy/PermissionPolicyService$Internal;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService$Internal;->onActivityManagerReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldShowNotificationDialogOrClearFlags(Lcom/android/server/policy/PermissionPolicyService$Internal;Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/policy/PermissionPolicyService$Internal;->shouldShowNotificationDialogOrClearFlags(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 2

    .line 1092
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyInternal;-><init>()V

    .line 1094
    new-instance p1, Lcom/android/server/policy/PermissionPolicyService$Internal$1;

    invoke-direct {p1, p0}, Lcom/android/server/policy/PermissionPolicyService$Internal$1;-><init>(Lcom/android/server/policy/PermissionPolicyService$Internal;)V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService$Internal;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    return-void
.end method


# virtual methods
.method public checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p3, :cond_3b

    .line 1134
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isActionRemovedForCallingPackage(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 1136
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action Removed: starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (uid="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1141
    :cond_3b
    const-string p0, "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/16 p0, 0x3e8

    if-ne p2, p0, :cond_53

    const-string p0, "android"

    .line 1142
    invoke-virtual {p0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    :cond_53
    return v0

    :cond_54
    const/4 p0, 0x1

    return p0
.end method

.method public final isActionRemovedForCallingPackage(Landroid/content/Intent;ILjava/lang/String;)Z
    .registers 7

    .line 1322
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1326
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const-string v2, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    return v1

    .line 1331
    :cond_1c
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1332
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 1331
    invoke-virtual {p0, p3, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1333
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_30} :catch_36

    const/16 p2, 0x1d

    if-lt p0, p2, :cond_4e

    const/4 p0, 0x1

    return p0

    .line 1339
    :catch_36
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find application info for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_4e
    const-string p0, "android.intent.extra.CALLING_PACKAGE"

    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return v1
.end method

.method public isIntentToPermissionDialog(Landroid/content/Intent;)Z
    .registers 3

    .line 1168
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1169
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1168
    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 1170
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    .line 1171
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    :cond_2c
    const/4 p0, 0x1

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public final isLauncherIntent(Landroid/content/Intent;)Z
    .registers 3

    .line 1256
    const-string p0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    .line 1257
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 1258
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    .line 1259
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    const-string v0, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    .line 1260
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    const-string p1, "android.intent.category.CAR_LAUNCHER"

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    :cond_36
    const/4 p0, 0x1

    return p0

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method public final isNoDisplayActivity(Landroid/content/pm/ActivityInfo;I)Z
    .registers 4

    .line 1182
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1187
    :cond_8
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmActivityTaskManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isNoDisplay(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final isTaskPotentialTrampoline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/TaskInfo;Landroid/content/Intent;)Z
    .registers 6

    .line 1230
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    iget-object p0, p4, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0, p5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_1e

    iget p0, p4, Landroid/app/TaskInfo;->numActivities:I

    const/4 p2, 0x1

    if-ne p0, p2, :cond_1e

    iget-object p0, p4, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1232
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    return p2

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final isTaskStartedFromLauncher(Ljava/lang/String;Landroid/app/TaskInfo;)Z
    .registers 4

    .line 1264
    iget-object v0, p2, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_18

    .line 1265
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p2, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1266
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final launchNotificationPermissionRequestDialog(Ljava/lang/String;Landroid/os/UserHandle;ILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .registers 11

    .line 1271
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1272
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10040000

    .line 1274
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1275
    const-string v1, "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1277
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_3d

    .line 1279
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 1280
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_3d

    .line 1281
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getClearOptionsAnimationRunnable()Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_3d

    move v3, v2

    goto :goto_3e

    :cond_3d
    move v3, v1

    :goto_3e
    if-eqz v3, :cond_55

    .line 1283
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v4

    .line 1284
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v5

    .line 1282
    invoke-static {v4, v5}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    move-result-object v4

    goto :goto_5f

    .line 1285
    :cond_55
    new-instance v4, Landroid/app/ActivityOptions;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v4, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 1286
    :goto_5f
    invoke-virtual {v4, v2, v1}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 1287
    invoke-virtual {v4, p3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    if-eqz v3, :cond_6e

    .line 1294
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getClearOptionsAnimationRunnable()Ljava/lang/Runnable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1297
    :cond_6e
    :try_start_6e
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmContext(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p0, v0, p3, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7b} :catch_7c

    return-void

    :catch_7c
    move-exception p0

    .line 1299
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "couldn\'t start grant permission dialogfor other package "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onActivityManagerReady()V
    .registers 3

    .line 1126
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmActivityTaskManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V

    return-void
.end method

.method public final pkgHasRunningLauncherTask(Ljava/lang/String;Landroid/app/TaskInfo;)Z
    .registers 9

    .line 1236
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1237
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x0

    .line 1240
    :try_start_9
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1241
    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAppTasks(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    move v2, v1

    .line 1242
    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_41

    .line 1243
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    .line 1244
    iget v4, v3, Landroid/app/TaskInfo;->taskId:I

    iget v5, p2, Landroid/app/TaskInfo;->taskId:I

    if-eq v4, v5, :cond_3e

    iget-boolean v4, v3, Landroid/app/TaskInfo;->isFocused:Z

    if-eqz v4, :cond_3e

    iget-boolean v4, v3, Landroid/app/TaskInfo;->isRunning:Z

    if-eqz v4, :cond_3e

    .line 1245
    invoke-virtual {p0, p1, v3}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isTaskStartedFromLauncher(Ljava/lang/String;Landroid/app/TaskInfo;)Z

    move-result v3
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_3a} :catch_41

    if-eqz v3, :cond_3e

    const/4 p0, 0x1

    return p0

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :catch_41
    :cond_41
    return v1
.end method

.method public final shouldForceShowNotificationPermissionRequest(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 9

    .line 1352
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c1

    .line 1353
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c1

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1354
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c1

    .line 1355
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    const/16 v3, 0x17

    if-ge v2, v3, :cond_2d

    goto/16 :goto_c1

    .line 1363
    :cond_2d
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmLock(Lcom/android/server/policy/PermissionPolicyService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1364
    :try_start_34
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v3}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmBootCompleted(Lcom/android/server/policy/PermissionPolicyService;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 1365
    monitor-exit v2

    return v1

    :catchall_3e
    move-exception p0

    goto/16 :goto_bf

    .line 1367
    :cond_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_3e

    .line 1369
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    const-wide/32 v2, 0xb9cec21

    .line 1370
    invoke-static {v2, v3, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_be

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/app/KeyguardManager;

    move-result-object v2

    .line 1371
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_64

    goto :goto_be

    .line 1375
    :cond_64
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserHandle;->getUid(I)I

    move-result v0

    .line 1376
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmNotificationManager(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/notification/NotificationManagerInternal;

    move-result-object v2

    if-nez v2, :cond_81

    .line 1377
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    const-class v3, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v2, v3}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fputmNotificationManager(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/notification/NotificationManagerInternal;)V

    .line 1379
    :cond_81
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmNotificationManager(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/notification/NotificationManagerInternal;

    move-result-object v2

    const/4 v3, 0x1

    .line 1380
    invoke-interface {v2, p1, v0, v3}, Lcom/android/server/notification/NotificationManagerInternal;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v2

    if-lez v2, :cond_90

    move v2, v3

    goto :goto_91

    :cond_90
    move v2, v1

    .line 1381
    :goto_91
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v4}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPermissionManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v4

    const-string v5, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v4, v0, v5, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkUidPermission(ILjava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a1

    move v0, v3

    goto :goto_a2

    :cond_a1
    move v0, v1

    .line 1383
    :goto_a2
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v4, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0

    const p1, 0x8037

    and-int/2addr p0, p1

    if-eqz p0, :cond_b6

    move p0, v3

    goto :goto_b7

    :cond_b6
    move p0, v1

    :goto_b7
    if-nez v0, :cond_be

    if-eqz v2, :cond_be

    if-nez p0, :cond_be

    return v3

    :cond_be
    :goto_be
    return v1

    .line 1367
    :goto_bf
    :try_start_bf
    monitor-exit v2
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_3e

    throw p0

    :cond_c1
    :goto_c1
    if-nez v0, :cond_db

    .line 1357
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot check for Notification prompt, no package for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_db
    return v1
.end method

.method public shouldShowNotificationDialogForTask(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 14

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 1177
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/policy/PermissionPolicyService$Internal;->shouldShowNotificationDialogOrClearFlags(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final shouldShowNotificationDialogOrClearFlags(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z
    .registers 15

    const/4 v0, 0x0

    if-eqz p4, :cond_44

    if-eqz p2, :cond_44

    if-eqz p1, :cond_44

    if-eqz p6, :cond_44

    .line 1215
    iget-boolean v1, p1, Landroid/app/TaskInfo;->isFocused:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p1, Landroid/app/TaskInfo;->isRunning:Z

    if-nez v1, :cond_18

    :cond_15
    if-nez p7, :cond_18

    goto :goto_44

    .line 1220
    :cond_18
    invoke-virtual {p0, p4}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_42

    if-eqz p5, :cond_26

    .line 1221
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->isEligibleForLegacyPermissionPrompt()Z

    move-result p5

    if-nez p5, :cond_42

    .line 1222
    :cond_26
    invoke-virtual {p0, p2, p1}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isTaskStartedFromLauncher(Ljava/lang/String;Landroid/app/TaskInfo;)Z

    move-result p5

    if-nez p5, :cond_42

    move-object v1, p0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v2, p6

    .line 1223
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isTaskPotentialTrampoline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/TaskInfo;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_41

    if-eqz p7, :cond_42

    .line 1225
    invoke-virtual {v1, v3, v5}, Lcom/android/server/policy/PermissionPolicyService$Internal;->pkgHasRunningLauncherTask(Ljava/lang/String;Landroid/app/TaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_42

    :cond_41
    return v0

    :cond_42
    :goto_42
    const/4 p0, 0x1

    return p0

    :cond_44
    :goto_44
    return v0
.end method

.method public showNotificationPromptIfNeeded(Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x0

    .line 1152
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PermissionPolicyService$Internal;->showNotificationPromptIfNeeded(Ljava/lang/String;IILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    return-void
.end method

.method public showNotificationPromptIfNeeded(Ljava/lang/String;IILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .registers 6

    .line 1157
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    if-eqz p1, :cond_13

    const/4 v0, -0x1

    if-eq p3, v0, :cond_13

    .line 1159
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService$Internal;->shouldForceShowNotificationPermissionRequest(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_13

    .line 1163
    :cond_10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PermissionPolicyService$Internal;->launchNotificationPermissionRequestDialog(Ljava/lang/String;Landroid/os/UserHandle;ILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    :cond_13
    :goto_13
    return-void
.end method
