.class public final Lcom/android/server/pm/BroadcastHelper;
.super Ljava/lang/Object;
.source "BroadcastHelper.java"


# instance fields
.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

.field public final mUmInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$0B9HCn1vf6QimS7wJUMJ9dvoh3c(Ljava/util/function/Supplier;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 238
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 237
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/BroadcastHelper;->filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D70H7ky9q6h4G5Q35Lsgrv5YLOA(Lcom/android/server/pm/BroadcastHelper;ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendMyPackageSuspendedOrUnsuspended$8(ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LaHdmMUvJ9UawhmO5eyjF4t1D68(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPackageAddedForNewUsers$2(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MJMB0qlrojqhYKHthOSSagY91y4(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13

    .line 0
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPackageChangedBroadcast$4(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oug9dEN74-YzL_S_zLOLodG8ONM(Lcom/android/server/pm/BroadcastHelper;[ILjava/lang/String;Z)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPackageAddedForNewUsers$3([ILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$U8HVWwxx8XZlOvvlHzULhiCt5C4(Lcom/android/server/pm/BroadcastHelper;Landroid/os/Bundle;ILjava/util/function/Supplier;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendDistractingPackagesChanged$10(Landroid/os/Bundle;ILjava/util/function/Supplier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a2Z1Nu599yOcxet0uhIrvF8v35U(Ljava/util/function/Supplier;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 1189
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1188
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/BroadcastHelper;->filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$clcBGnQt-06kKHBsgiJHusWsyNs(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .registers 11

    .line 0
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPackageBroadcastAndNotify$5(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i8o0iZdBhpYueYoVdN3iTtpw0PY(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/function/BiFunction;Landroid/os/Bundle;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPackagesSuspendedOrUnsuspendedForUser$7(Ljava/lang/String;Landroid/os/Bundle;ILjava/util/function/BiFunction;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nOHrbCKi_oIEn_MfbAgPLe4KPbA(I)V
    .registers 18

    .line 570
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 575
    :cond_7
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    const-string v1, "android.intent.extra.user_handle"

    move/from16 v2, p0

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 577
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move/from16 v16, p0

    .line 579
    :try_start_2a
    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_2d

    :catch_2d
    return-void
.end method

.method public static synthetic $r8$lambda$rnKNtcTVJ4yPTacJOjnngz30icw(Ljava/util/function/Supplier;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 1260
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1259
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/BroadcastHelper;->filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .registers 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 99
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 100
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 102
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageMonitorCallbackHelper()Lcom/android/server/pm/PackageMonitorCallbackHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 103
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppsFilter()Lcom/android/server/pm/AppsFilterImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    return-void
.end method

.method public static filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    .line 908
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p2

    .line 912
    :cond_7
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 913
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    return-object p2

    .line 916
    :cond_14
    const-string v2, "android.intent.extra.user_handle"

    .line 917
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 916
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 918
    const-string v3, "android.intent.extra.changed_uid_list"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 919
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Computer;

    .line 921
    invoke-static {p0, v1, v4, p1, v2}, Lcom/android/server/pm/BroadcastHelper;->filterPackages(Lcom/android/server/pm/Computer;[Ljava/lang/String;[III)Landroid/util/Pair;

    move-result-object p0

    .line 922
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    const/4 p0, 0x0

    return-object p0

    .line 926
    :cond_3a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 927
    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 928
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, [I

    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p1
.end method

.method public static filterPackages(Lcom/android/server/pm/Computer;[Ljava/lang/String;[III)Landroid/util/Pair;
    .registers 13

    .line 945
    array-length v0, p1

    .line 946
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    array-length v1, p2

    goto :goto_b

    :cond_a
    move v1, v2

    .line 948
    :goto_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    if-lez v1, :cond_19

    .line 949
    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5, v1}, Landroid/util/IntArray;-><init>(I)V

    goto :goto_1a

    :cond_19
    move-object v5, v4

    :goto_1a
    if-ge v2, v0, :cond_38

    .line 951
    aget-object v6, p1, v2

    .line 953
    invoke-interface {p0, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    .line 952
    invoke-interface {p0, v7, p3, p4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-eqz v7, :cond_29

    goto :goto_35

    .line 956
    :cond_29
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_35

    if-ge v2, v1, :cond_35

    .line 958
    aget v6, p2, v2

    invoke-virtual {v5, v6}, Landroid/util/IntArray;->add(I)V

    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 961
    :cond_38
    new-instance p0, Landroid/util/Pair;

    .line 962
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_4e

    :cond_4d
    move-object p1, v4

    :goto_4e
    if-eqz v5, :cond_5a

    .line 963
    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result p2

    if-lez p2, :cond_5a

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    :cond_5a
    invoke-direct {p0, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static isPrivacySafetyLabelChangeNotificationsEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 934
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 935
    const-string/jumbo v0, "privacy"

    const-string/jumbo v1, "safety_label_change_notifications_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "android.hardware.type.automotive"

    .line 937
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "android.software.leanback"

    .line 938
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "android.hardware.type.watch"

    .line 939
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2a

    return v2

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public static sendDeviceCustomizationReadyBroadcast()V
    .registers 17

    .line 495
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.DEVICE_CUSTOMIZATION_READY"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 496
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 497
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 498
    const-string v1, "android.permission.RECEIVE_DEVICE_CUSTOMIZATION_READY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 502
    :try_start_25
    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception v0

    .line 506
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static tracePackageChangedBroadcastEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11

    const-wide/32 v0, 0x80000

    .line 1305
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-nez v2, :cond_a

    return-void

    .line 1309
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1310
    const-string v3, "broadcastPackageChanged; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    const-string v3, "af="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1312
    const-string p0, ",rft="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    const-string p0, ",pn="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    const-string p0, ",tpn="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    const-string p0, ",tc="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    const-string p0, ",cs="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1317
    const-string p0, ",cpnft="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;ZILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V
    .registers 10

    if-eqz p3, :cond_d

    .line 203
    const-class p3, Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_INSTANT_APPS"

    invoke-static {p3, p8, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    move-object p8, p3

    check-cast p8, [Ljava/lang/String;

    :cond_d
    move-object p3, p8

    .line 212
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-nez p5, :cond_14

    const/4 p5, 0x0

    goto :goto_1a

    .line 214
    :cond_14
    invoke-virtual {p5, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [I

    .line 212
    :goto_1a
    invoke-virtual/range {p0 .. p7}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    return-void
.end method

.method public canLauncherAccessProfile(Landroid/content/ComponentName;I)Z
    .registers 6

    .line 549
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/UserProperties;->getProfileApiVisibility()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_e

    return v0

    .line 553
    :cond_e
    iget-object p2, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v1, "android.permission.ACCESS_HIDDEN_PROFILES_FULL"

    .line 555
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 553
    invoke-virtual {p2, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_21

    return v0

    .line 560
    :cond_21
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p2, "android.permission.ACCESS_HIDDEN_PROFILES"

    .line 562
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 560
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_34

    return v0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public final doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V
    .registers 29

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v9, p9

    .line 172
    array-length v13, v3

    const/4 v4, 0x0

    move v14, v4

    :goto_d
    if-ge v14, v13, :cond_7b

    aget v8, v3, v14

    .line 173
    new-instance v5, Landroid/content/Intent;

    const/4 v4, 0x0

    if-eqz v0, :cond_1d

    .line 174
    const-string/jumbo v6, "package"

    invoke-static {v6, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :cond_1d
    move-object/from16 v15, p1

    invoke-direct {v5, v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v1, :cond_27

    .line 176
    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_27
    if-eqz v2, :cond_2c

    .line 179
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2c
    const/4 v4, -0x1

    .line 182
    const-string v6, "android.intent.extra.UID"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_46

    .line 183
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eq v7, v8, :cond_46

    .line 184
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v8, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 185
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_46
    if-eqz v9, :cond_5b

    .line 187
    const-string v4, "android"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 189
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 188
    const-string v6, "android.intent.extra.VISIBILITY_ALLOW_LIST"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 191
    :cond_5b
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {v5, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    or-int v4, p4, v4

    .line 192
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v4, p0

    move-object/from16 v6, p6

    move/from16 v7, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    .line 193
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/pm/BroadcastHelper;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;ZILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p9

    goto :goto_d

    :cond_7b
    return-void
.end method

.method public final getAllNotExportedComponents(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7

    .line 302
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 304
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 305
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 306
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result v3

    if-nez v3, :cond_34

    .line 307
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_11

    goto/16 :goto_c9

    .line 315
    :cond_3a
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 316
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 317
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isExported()Z

    move-result v3

    if-nez v3, :cond_65

    .line 318
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_65
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_42

    goto :goto_c9

    .line 326
    :cond_6a
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 327
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 328
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedService;->isExported()Z

    move-result v3

    if-nez v3, :cond_95

    .line 329
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_95
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_72

    goto :goto_c9

    .line 337
    :cond_9a
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 338
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 339
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result v2

    if-nez v2, :cond_c5

    .line 340
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c5
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_a2

    :cond_c9
    :goto_c9
    return-object p0
.end method

.method public final getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;
    .registers 10

    .line 290
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz p0, :cond_a

    .line 291
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v0

    :goto_8
    move-wide v3, v0

    goto :goto_d

    :cond_a
    const-wide/16 v0, 0x2710

    goto :goto_8

    .line 293
    :goto_d
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    const/4 v5, 0x0

    .line 294
    const-string v7, ""

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    return-object v2
.end method

.method public final getTemporaryBroadcastOptionsForSystemPackageUpdate(I)Landroid/app/BroadcastOptions;
    .registers 10

    .line 1073
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz p0, :cond_a

    .line 1074
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v0

    :goto_8
    move-wide v3, v0

    goto :goto_d

    :cond_a
    const-wide/16 v0, 0x2710

    goto :goto_8

    .line 1076
    :goto_d
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    const/4 v5, 0x0

    .line 1077
    const-string v7, ""

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    return-object v2
.end method

.method public final synthetic lambda$sendDistractingPackagesChanged$10(Landroid/os/Bundle;ILjava/util/function/Supplier;)V
    .registers 17

    .line 1254
    filled-new-array {p2}, [I

    move-result-object v7

    new-instance v10, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda10;

    move-object/from16 p2, p3

    invoke-direct {v10, p2}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda10;-><init>(Ljava/util/function/Supplier;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v1, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$sendMyPackageSuspendedOrUnsuspended$8(ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    move-object/from16 v0, p4

    .line 1207
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IActivityManager null. Cannot send MY_PACKAGE_ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_17

    .line 1210
    const-string v1, ""

    goto :goto_19

    :cond_17
    const-string v1, "UN"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SUSPENDED broadcasts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1209
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1213
    :cond_2b
    filled-new-array/range {p2 .. p2}, [I

    move-result-object v9

    .line 1214
    invoke-interface/range {p3 .. p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Computer;

    .line 1215
    array-length v15, v0

    const/4 v2, 0x0

    :goto_37
    if-ge v2, v15, :cond_6d

    aget-object v7, v0, v2

    const/4 v3, 0x0

    if-eqz p1, :cond_47

    const/16 v4, 0x3e8

    move/from16 v5, p2

    .line 1217
    invoke-static {v1, v7, v5, v4}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedPackageAppExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_4a

    :cond_47
    move/from16 v5, p2

    move-object v4, v3

    :goto_4a
    if-eqz v4, :cond_57

    .line 1222
    new-instance v3, Landroid/os/Bundle;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 1223
    const-string v6, "android.intent.extra.SUSPENDED_PACKAGE_EXTRAS"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_57
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/high16 v6, 0x1000000

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v16, v2

    move-object v5, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    .line 1227
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    add-int/lit8 v2, v16, 0x1

    goto :goto_37

    :cond_6d
    return-void
.end method

.method public final synthetic lambda$sendPackageAddedForNewUsers$2(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V
    .registers 8

    .line 817
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForNewUsers(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V

    return-void
.end method

.method public final synthetic lambda$sendPackageAddedForNewUsers$3([ILjava/lang/String;Z)V
    .registers 7

    .line 823
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget v2, p1, v1

    .line 824
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/pm/BroadcastHelper;->sendBootCompletedBroadcastToSystemApp(Ljava/lang/String;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public final synthetic lambda$sendPackageBroadcastAndNotify$5(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .registers 24

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v11, p10

    .line 1021
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$sendPackageChangedBroadcast$4(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13

    .line 1005
    invoke-interface {p9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p9

    .line 1003
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastInternal(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/AndroidPackage;[Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$sendPackagesSuspendedOrUnsuspendedForUser$7(Ljava/lang/String;Landroid/os/Bundle;ILjava/util/function/BiFunction;Landroid/os/Bundle;)V
    .registers 19

    .line 1190
    filled-new-array/range {p3 .. p3}, [I

    move-result-object v7

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/high16 v4, 0x50000000

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method public final notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;)V
    .registers 17

    .line 1288
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iget-object v7, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V
    .registers 11

    .line 1296
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iget-object v5, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[ILandroid/os/Handler;)V

    return-void
.end method

.method public sendApplicationHiddenForUser(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;ILcom/android/server/pm/PackageSender;)V
    .registers 11

    .line 970
    new-instance v1, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v1}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    .line 971
    iput-object p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 972
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iput-object p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 973
    filled-new-array {p3}, [I

    move-result-object p1

    iput-object p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 974
    filled-new-array {p3}, [I

    move-result-object p1

    iput-object p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 975
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-static {p3, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    iput p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 976
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide p1

    iput-wide p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p4

    .line 977
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    return-void
.end method

.method public final sendBootCompletedBroadcastToSystemApp(Ljava/lang/String;ZI)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 251
    const-string v3, "android.intent.extra.user_handle"

    iget-object v4, v0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_9f

    .line 254
    :cond_12
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 257
    :try_start_16
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 259
    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v6, 0x4000000

    .line 260
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v6, 0x20

    if-eqz p2, :cond_30

    .line 262
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    :cond_30
    const-string v7, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v9

    const/16 v7, 0xca

    .line 265
    invoke-virtual {v0, v7}, Lcom/android/server/pm/BroadcastHelper;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v19

    .line 269
    invoke-virtual/range {v19 .. v19}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v7, v3

    const/4 v3, 0x0

    move-object v2, v4

    const/4 v4, 0x0

    move v8, v6

    const/4 v6, 0x0

    move-object v10, v7

    const/4 v7, 0x0

    move v11, v8

    const/4 v8, 0x0

    move v12, v11

    move-object v11, v9

    const/4 v9, 0x0

    move-object v13, v10

    const/4 v10, 0x0

    move v14, v12

    const/4 v12, 0x0

    move-object/from16 v18, v13

    const/4 v13, 0x0

    move/from16 v20, v14

    const/4 v14, -0x1

    move-object/from16 v21, v18

    move/from16 v18, p3

    .line 267
    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-object v3, v2

    move/from16 v2, v18

    .line 272
    iget-object v0, v0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object/from16 v13, v21

    .line 274
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_84

    const/16 v12, 0x20

    .line 276
    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 280
    :cond_84
    invoke-virtual/range {v19 .. v19}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v9, v11

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object/from16 v16, v3

    move-object v3, v0

    move-object/from16 v0, v16

    move/from16 v16, p3

    .line 278
    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_9f} :catch_a0

    :cond_9f
    :goto_9f
    return-void

    :catch_a0
    move-exception v0

    .line 283
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public sendDistractingPackagesChanged(Ljava/util/function/Supplier;[Ljava/lang/String;[III)V
    .registers 8

    .line 1249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1250
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1251
    const-string p2, "android.intent.extra.changed_uid_list"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1252
    const-string p2, "android.intent.extra.distraction_restrictions"

    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1254
    iget-object p2, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0, v0, p4, p1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/BroadcastHelper;Landroid/os/Bundle;ILjava/util/function/Supplier;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V
    .registers 18

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 890
    const-string v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method public sendMyPackageSuspendedOrUnsuspended(Ljava/util/function/Supplier;[Ljava/lang/String;ZI)V
    .registers 13

    if-eqz p3, :cond_6

    .line 1204
    const-string v0, "android.intent.action.MY_PACKAGE_SUSPENDED"

    :goto_4
    move-object v7, v0

    goto :goto_9

    .line 1205
    :cond_6
    const-string v0, "android.intent.action.MY_PACKAGE_UNSUSPENDED"

    goto :goto_4

    .line 1206
    :goto_9
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/BroadcastHelper;ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[IZI)V
    .registers 19

    move-object v3, p6

    .line 810
    invoke-static {p6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static/range {p7 .. p7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_56

    .line 813
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    const/16 v1, 0x3e8

    .line 814
    invoke-interface {p1, p2, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 815
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2

    .line 813
    invoke-interface {v0, p1, v1, p6, v2}, Lcom/android/server/pm/AppsFilterSnapshot;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v7

    .line 816
    iget-object p1, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object v4, v3

    move-object v8, v7

    move v3, p5

    move/from16 v7, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V

    move-object v7, v8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 819
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iget-object v8, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move-object v1, p2

    move v2, p5

    move-object v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageAddedForNewUsers(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;Landroid/os/Handler;)V

    if-eqz p3, :cond_56

    .line 821
    invoke-static {p6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result p1

    if-nez p1, :cond_56

    .line 822
    iget-object p1, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p6, p2, p4}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/BroadcastHelper;[ILjava/lang/String;Z)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_56
    :goto_56
    return-void
.end method

.method public final sendPackageAddedForNewUsers(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V
    .registers 21

    .line 839
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 842
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    aget v1, p4, v2

    goto :goto_12

    :cond_10
    aget v1, p3, v2

    .line 841
    :goto_12
    invoke-static {v1, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 843
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v3, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p5, :cond_22

    .line 845
    const-string p2, "android.intent.extra.ARCHIVAL"

    invoke-virtual {v3, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 847
    :cond_22
    const-string p2, "android.content.pm.extra.DATA_LOADER_TYPE"

    move/from16 v0, p6

    invoke-virtual {v3, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 849
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 855
    iget-object p2, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/server/pm/BroadcastHelper;->isPrivacySafetyLabelChangeNotificationsEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_60

    .line 856
    iget-object p2, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 858
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 856
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    :cond_60
    return-void
.end method

.method public sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;IZILjava/lang/String;)V
    .registers 20

    move/from16 v0, p4

    .line 872
    invoke-interface/range {p3 .. p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    .line 873
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v5

    .line 874
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_16

    .line 875
    sget-object v6, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    :goto_14
    move-object v8, v6

    goto :goto_1b

    :cond_16
    new-array v6, v4, [I

    aput v0, v6, v3

    goto :goto_14

    :goto_1b
    if-eqz v2, :cond_23

    .line 876
    new-array v2, v4, [I

    aput v0, v2, v3

    :goto_21
    move-object v9, v2

    goto :goto_26

    :cond_23
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_21

    :goto_26
    const/4 v6, 0x0

    .line 878
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v10, p5

    move/from16 v11, p6

    .line 877
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[IZI)V

    .line 882
    new-instance p3, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {p3}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 883
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v1

    iput v1, p3, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 884
    iput-object p2, p3, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    move-object/from16 p2, p7

    .line 885
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/server/pm/BroadcastHelper;->sendSessionCommitBroadcast(Lcom/android/server/pm/Computer;Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/lang/String;)V

    return-void
.end method

.method public sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V
    .registers 36

    .line 129
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_4f

    :cond_7
    if-nez p7, :cond_f

    .line 133
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0

    move-object v8, v0

    goto :goto_11

    :cond_f
    move-object/from16 v8, p7

    .line 138
    :goto_11
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 139
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void

    :cond_32
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p8

    move-object/from16 v21, p11

    move-object/from16 v22, p12

    .line 144
    invoke-virtual/range {v10 .. v22}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4f} :catch_4f

    :catch_4f
    :goto_4f
    return-void
.end method

.method public final sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .registers 24

    .line 1021
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda4;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez p5, :cond_2e

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 1031
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/BroadcastHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;)V

    :cond_2e
    return-void
.end method

.method public sendPackageBroadcastWithIntent(Landroid/content/Intent;IZI[ILandroid/content/IIntentReceiver;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V
    .registers 18

    const/high16 v0, 0x4000000

    or-int/2addr p4, v0

    .line 115
    invoke-virtual {p1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 117
    invoke-virtual {v5, p2, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v3, p3

    move-object v2, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 118
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/BroadcastHelper;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;ZILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method public sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v2, 0x3e8

    .line 989
    invoke-interface {v0, v1, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    if-eqz v10, :cond_6f

    .line 991
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-nez v3, :cond_14

    goto/16 :goto_6f

    .line 994
    :cond_14
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 996
    invoke-interface {v0, v1, v3, v2}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_24

    .line 997
    sget-object v6, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    :goto_22
    move-object v7, v6

    goto :goto_29

    :cond_24
    new-array v6, v5, [I

    aput v3, v6, v4

    goto :goto_22

    :goto_29
    if-eqz v2, :cond_31

    .line 998
    new-array v5, v5, [I

    aput v3, v5, v4

    :goto_2f
    move-object v8, v5

    goto :goto_34

    :cond_31
    sget-object v5, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_2f

    :goto_34
    if-eqz v2, :cond_39

    const/4 v2, 0x0

    :goto_37
    move-object v9, v2

    goto :goto_3e

    .line 1000
    :cond_39
    invoke-interface {v0, v1, v7}, Lcom/android/server/pm/Computer;->getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;

    move-result-object v2

    goto :goto_37

    .line 1002
    :goto_3e
    invoke-interface {v0, v1, v3}, Lcom/android/server/pm/Computer;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 1003
    iget-object v14, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1007
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageChanged(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Handler;)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method public final sendPackageChangedBroadcastInternal(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/AndroidPackage;[Ljava/lang/String;Ljava/lang/String;I)V
    .registers 28

    move-object/from16 v1, p1

    move-object/from16 v7, p3

    move-object/from16 v0, p10

    .line 363
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 364
    iget-object v3, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move/from16 v4, p12

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_63

    .line 367
    const-string/jumbo v4, "whole"

    .line 369
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x1

    .line 367
    const-string v3, "<implicit>"

    move-object v2, v1

    move-object/from16 v1, p11

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v2

    .line 372
    new-instance v0, Landroid/app/BroadcastOptions;

    invoke-direct {v0}, Landroid/app/BroadcastOptions;-><init>()V

    const/4 v2, 0x1

    .line 373
    invoke-virtual {v0, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v3, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move/from16 v2, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v11, p11

    move-object v3, v7

    move-object/from16 v7, p7

    .line 377
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    return-void

    :cond_63
    move-object/from16 v2, p9

    move-object v3, v7

    .line 389
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/BroadcastHelper;->getAllNotExportedComponents(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    .line 391
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/util/ArrayList;

    .line 392
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 394
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_dc

    .line 398
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 400
    const-string v3, "android"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 401
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_8a
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 408
    :goto_8e
    array-length v4, v0

    if-ge v3, v4, :cond_9f

    .line 409
    aget-object v4, v0, v3

    .line 410
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9c

    .line 411
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8e

    .line 416
    :cond_9f
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 418
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 417
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/BroadcastOptions;->setIncludedPackages([Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v12

    .line 419
    const-string/jumbo v4, "notExported"

    .line 422
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x1

    .line 419
    const-string v3, "<explicit-pkg-list>"

    move-object v2, v1

    move-object/from16 v1, p11

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v14, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v11, p11

    move-object v3, v8

    move-object/from16 v8, p8

    .line 423
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    goto :goto_dd

    :cond_dc
    move-object v14, v6

    .line 442
    :goto_dd
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10c

    .line 443
    const-string v4, "exported"

    .line 445
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x1

    .line 443
    const-string v3, "<implicit>"

    move-object/from16 v2, p1

    move-object/from16 v1, p11

    move-object v6, v14

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v11, p11

    move-object v3, v13

    .line 446
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    :cond_10c
    return-void
.end method

.method public final sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/BroadcastOptions;)V
    .registers 26

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    .line 469
    new-instance v3, Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(I)V

    const/4 v2, 0x0

    .line 470
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "android.intent.extra.changed_component_name"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 472
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 473
    const-string v5, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 474
    const-string v4, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 475
    const-string p2, "android.intent.extra.UID"

    move/from16 v4, p4

    invoke-virtual {v3, p2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v1, :cond_37

    .line 477
    const-string p2, "android.intent.extra.REASON"

    invoke-virtual {v3, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    if-nez p12, :cond_40

    .line 480
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    :goto_3d
    move-object/from16 v1, p11

    goto :goto_43

    :cond_40
    move-object/from16 p2, p12

    goto :goto_3d

    .line 481
    :goto_43
    invoke-virtual {p2, v1}, Landroid/app/BroadcastOptions;->setDebugReason(Ljava/lang/String;)Landroid/app/BroadcastOptions;

    .line 486
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    const/high16 v2, 0x40000000    # 2.0f

    :cond_4e
    move v4, v2

    const/4 v10, 0x0

    .line 491
    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    .line 488
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v5, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method public sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V
    .registers 24

    move-object/from16 v0, p1

    .line 1090
    iget-object v3, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 1091
    iget-object v6, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 1092
    iget-object v8, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 1093
    iget-object v9, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    .line 1094
    iget-object v12, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 1095
    iget-boolean v13, v0, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    .line 1096
    iget-boolean v1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    .line 1097
    iget-boolean v14, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    .line 1099
    iget-boolean v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    .line 1100
    iget-boolean v15, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    .line 1102
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1103
    const-string v5, "android.intent.extra.UID"

    iget v7, v0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1104
    const-string v5, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v4, v5, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1105
    const-string v5, "android.intent.extra.SYSTEM_UPDATE_UNINSTALL"

    invoke-virtual {v4, v5, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v5, 0x1

    xor-int/lit8 v7, p3, 0x1

    .line 1106
    const-string v10, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {v4, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1107
    const-string v7, "android.intent.extra.USER_INITIATED"

    xor-int/lit8 v10, p4, 0x1

    invoke-virtual {v4, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez v1, :cond_44

    if-eqz v14, :cond_40

    goto :goto_44

    :cond_40
    const/4 v1, 0x0

    move/from16 v16, v1

    goto :goto_46

    :cond_44
    :goto_44
    move/from16 v16, v5

    :goto_46
    if-nez v16, :cond_4a

    if-eqz p5, :cond_4f

    .line 1110
    :cond_4a
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4f
    if-eqz p5, :cond_56

    .line 1113
    const-string v1, "android.intent.extra.ARCHIVAL"

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1115
    :cond_56
    const-string v1, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v3, :cond_6a

    if-eqz v6, :cond_6a

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1119
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    :cond_6a
    if-eqz v15, :cond_6d

    goto :goto_bb

    :cond_6d
    if-eqz v3, :cond_9a

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 1129
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v10, v12

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1132
    const-string v2, "android.intent.action.PACKAGE_REMOVED_INTERNAL"

    const-string v6, "android"

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    if-eqz v13, :cond_9b

    if-nez v14, :cond_9b

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 1137
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    const/high16 v5, 0x1000000

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1140
    iget v1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    move-object/from16 v2, p2

    invoke-interface {v2, v3, v1}, Lcom/android/server/pm/PackageSender;->notifyPackageRemoved(Ljava/lang/String;I)V

    goto :goto_9b

    :cond_9a
    move-object v10, v12

    .line 1143
    :cond_9b
    :goto_9b
    iget-boolean v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    if-eqz v0, :cond_bb

    if-nez v16, :cond_a3

    if-eqz p5, :cond_a8

    .line 1154
    :cond_a3
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a8
    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object v14, v8

    .line 1157
    const-string v8, "android.intent.action.UID_REMOVED"

    move-object v15, v9

    const/4 v9, 0x0

    const/high16 v11, 0x1000000

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v16, v10

    move-object v10, v4

    invoke-virtual/range {v7 .. v17}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    :cond_bb
    :goto_bb
    return-void
.end method

.method public sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[IZI)V
    .registers 15

    .line 1177
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 1178
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1179
    const-string p3, "android.intent.extra.changed_uid_list"

    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    if-eqz p5, :cond_18

    .line 1181
    const-string p3, "android.intent.extra.quarantined"

    const/4 p4, 0x1

    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1184
    :cond_18
    new-instance p3, Landroid/app/BroadcastOptions;

    invoke-direct {p3}, Landroid/app/BroadcastOptions;-><init>()V

    const/4 p4, 0x2

    .line 1185
    invoke-virtual {p3, p4}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p3

    .line 1186
    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    .line 1187
    new-instance p5, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;

    invoke-direct {p5, p1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Supplier;)V

    .line 1190
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move-object p1, p0

    new-instance p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda7;

    move p4, p6

    move-object p6, p3

    move-object p3, v3

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/function/BiFunction;Landroid/os/Bundle;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1195
    filled-new-array {p4}, [I

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/BroadcastHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public sendPostInstallBroadcasts(Ljava/util/function/Supplier;Lcom/android/server/pm/InstallRequest;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/PackageSender;ZZZZ)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v11, p5

    .line 599
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_41

    .line 600
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    if-eqz v1, :cond_32

    .line 606
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    .line 607
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    filled-new-array {v1}, [I

    move-result-object v5

    .line 608
    invoke-virtual {v0, v12, v13, v4, v5}, Lcom/android/server/pm/BroadcastHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v1, p1

    .line 610
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[I)V

    .line 614
    :cond_32
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p7

    move/from16 v3, p9

    .line 613
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    .line 618
    :cond_41
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getFirstTimeBroadcastUserIds()[I

    move-result-object v14

    .line 619
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getFirstTimeBroadcastInstantUserIds()[I

    move-result-object v15

    .line 620
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getUpdateBroadcastUserIds()[I

    move-result-object v7

    .line 621
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getUpdateBroadcastInstantUserIds()[I

    move-result-object v16

    .line 624
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 625
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_5b
    move-object v5, v0

    goto :goto_6c

    .line 626
    :cond_5d
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 627
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    goto :goto_5b

    :cond_6a
    const/4 v0, 0x0

    goto :goto_5b

    .line 630
    :goto_6c
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 631
    const-string v0, "android.intent.extra.UID"

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p10, :cond_81

    .line 633
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v3, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_81
    if-eqz p11, :cond_88

    .line 636
    const-string v0, "android.intent.extra.ARCHIVAL"

    invoke-virtual {v3, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 638
    :cond_88
    const-string v0, "android.content.pm.extra.DATA_LOADER_TYPE"

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 640
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v17

    if-eqz v5, :cond_b5

    if-eqz v17, :cond_b5

    move-object v0, v7

    .line 647
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getNewUsers()[I

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 644
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p3

    move-object v12, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object v10, v3

    move-object/from16 v18, v5

    goto :goto_b9

    :cond_b5
    move-object v10, v3

    move-object/from16 v18, v5

    move-object v12, v7

    .line 651
    :goto_b9
    invoke-interface/range {p1 .. p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/Computer;

    if-nez v17, :cond_24a

    .line 656
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 657
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v0

    .line 659
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v2

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_d9

    move v4, v13

    goto :goto_da

    :cond_d9
    const/4 v4, 0x0

    :goto_da
    if-nez v0, :cond_e1

    if-eqz v4, :cond_df

    goto :goto_e1

    :cond_df
    const/4 v3, 0x0

    goto :goto_e2

    :cond_e1
    :goto_e1
    move v3, v13

    .line 663
    :goto_e2
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v8, p11

    move-object v6, v14

    move-object v7, v15

    .line 660
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[IZI)V

    .line 669
    iget-object v3, v0, Lcom/android/server/pm/BroadcastHelper;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    const/16 v4, 0x3e8

    .line 671
    invoke-interface {v1, v2, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 672
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v5

    .line 670
    invoke-interface {v3, v1, v4, v12, v5}, Lcom/android/server/pm/AppsFilterSnapshot;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v9

    const/4 v6, 0x0

    move-object v3, v10

    const/4 v10, 0x0

    .line 673
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v12

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    if-eqz v18, :cond_121

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 679
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object v12, v5

    goto :goto_125

    :cond_121
    move-object/from16 v0, p0

    move-object/from16 v12, v18

    .line 686
    :goto_125
    iget-object v1, v0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/pm/BroadcastHelper;->isPrivacySafetyLabelChangeNotificationsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13a

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 687
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 693
    :cond_13a
    array-length v0, v11

    const/4 v1, 0x0

    :goto_13c
    if-ge v1, v0, :cond_169

    aget-object v5, v11, v1

    if-eqz v5, :cond_15d

    .line 694
    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15d

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v2, v1

    .line 696
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    :goto_15a
    move-object/from16 v18, v7

    goto :goto_162

    :cond_15d
    move/from16 v16, v0

    move/from16 v17, v1

    goto :goto_15a

    :goto_162
    add-int/lit8 v1, v17, 0x1

    move/from16 v0, v16

    move-object/from16 v7, v18

    goto :goto_13c

    :cond_169
    move-object/from16 v18, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 706
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/high16 v4, 0x1000000

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p6

    move-object v7, v14

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object v6, v7

    if-eqz p10, :cond_1df

    .line 717
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v0

    iget-object v9, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    const/4 v10, 0x0

    .line 713
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    if-eqz v12, :cond_1a4

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 719
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object v5, v12

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 725
    :cond_1a4
    array-length v14, v11

    const/4 v15, 0x0

    :goto_1a6
    if-ge v15, v14, :cond_1c5

    aget-object v5, v11, v15

    if-eqz v5, :cond_1c0

    .line 726
    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 728
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    goto :goto_1c2

    :cond_1c0
    move-object/from16 v0, p0

    :goto_1c2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1a6

    :cond_1c5
    move-object/from16 v0, p0

    const/16 v1, 0x137

    .line 739
    invoke-virtual {v0, v1}, Lcom/android/server/pm/BroadcastHelper;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 740
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    .line 734
    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object v2, v5

    goto :goto_1ee

    :cond_1df
    move-object/from16 v0, p0

    move-object/from16 v2, p3

    if-eqz p8, :cond_1ee

    .line 741
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v1

    if-nez v1, :cond_1ee

    .line 748
    invoke-virtual {v0, v2, v12, v6, v15}, Lcom/android/server/pm/BroadcastHelper;->sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V

    .line 753
    :cond_1ee
    :goto_1ee
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v1

    if-eqz v1, :cond_29d

    if-nez p10, :cond_223

    .line 755
    iget-object v1, v0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 759
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    .line 758
    invoke-static {v3}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 759
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 757
    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 761
    invoke-static {v1, v13}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageExternalStorageType(Landroid/os/storage/VolumeInfo;Z)I

    move-result v1

    if-eqz v1, :cond_223

    const/16 v3, 0xb5

    .line 765
    invoke-static {v3, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;)V

    :cond_223
    if-nez p11, :cond_29d

    .line 774
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 p3, p1

    move-object/from16 p2, v0

    move-object/from16 p6, v1

    move-object/from16 p7, v2

    move/from16 p4, v3

    move/from16 p5, v4

    .line 776
    invoke-virtual/range {p2 .. p7}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[I)V

    .line 778
    invoke-virtual {v0, v13, v13, v1, v2}, Lcom/android/server/pm/BroadcastHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V

    return-void

    :cond_24a
    move-object/from16 v0, p0

    .line 783
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getLibraryConsumers()Ljava/util/ArrayList;

    move-result-object v2

    .line 784
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_29d

    xor-int/lit8 v3, p10, 0x1

    const/4 v12, 0x0

    .line 787
    :goto_259
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_29d

    .line 788
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 790
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    .line 792
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 793
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v4

    const-string/jumbo v7, "static_shared_library_changed"

    const/16 v8, 0x3e8

    const/4 v9, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move/from16 p4, v3

    move/from16 p6, v4

    move-object/from16 p3, v5

    move-object/from16 p5, v6

    move-object/from16 p8, v7

    move/from16 p9, v8

    move-object/from16 p7, v9

    .line 790
    invoke-virtual/range {p1 .. p9}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    move/from16 v0, p4

    add-int/lit8 v12, v12, 0x1

    move v3, v0

    move-object/from16 v0, p0

    goto :goto_259

    :cond_29d
    return-void
.end method

.method public sendPreferredActivityChangedBroadcast(I)V
    .registers 3

    .line 569
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[I)V
    .registers 21

    move/from16 v0, p3

    .line 223
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_46

    .line 226
    :cond_f
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 227
    const-string v1, "android.intent.extra.changed_package_list"

    move-object/from16 v2, p4

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 228
    const-string v1, "android.intent.extra.changed_uid_list"

    move-object/from16 v2, p5

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    if-eqz v0, :cond_29

    .line 230
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_29
    if-eqz p2, :cond_2f

    .line 232
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    :goto_2d
    move-object v3, v0

    goto :goto_32

    .line 233
    :cond_2f
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    goto :goto_2d

    .line 234
    :goto_32
    new-instance v12, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Supplier;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v14}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;)V
    .registers 12

    .line 1268
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1269
    new-array v5, v0, [Ljava/lang/String;

    .line 1270
    new-array v6, v0, [I

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_20

    .line 1272
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1273
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 1274
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    aput v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_20
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 1276
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[I)V

    .line 1278
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/server/pm/BroadcastHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V

    return-void
.end method

.method public sendSessionCommitBroadcast(Lcom/android/server/pm/Computer;Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/lang/String;)V
    .registers 11

    .line 514
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 515
    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6b

    .line 518
    :cond_d
    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 519
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_17

    :cond_16
    move v0, p3

    .line 520
    :goto_17
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 521
    const-string v1, "android.intent.extra.USER"

    const-string v2, "android.content.pm.extra.SESSION"

    const-string v3, "android.content.pm.action.SESSION_COMMITTED"

    if-eqz p1, :cond_4b

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/BroadcastHelper;->canLauncherAccessProfile(Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 522
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    .line 524
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    .line 525
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 526
    iget-object v4, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4b
    if-eqz p4, :cond_6b

    .line 529
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 531
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 532
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 533
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public sendSystemPackageUpdatedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;)V
    .registers 14

    .line 1037
    iget-boolean v0, p1, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    if-nez v0, :cond_5

    return-void

    .line 1041
    :cond_5
    iget-object v3, p1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 1042
    iget-object v0, p1, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 1043
    iget-object v10, p1, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 1045
    new-instance v4, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1046
    const-string v1, "android.intent.extra.UID"

    iget p1, p1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1047
    const-string p1, "android.intent.extra.REPLACING"

    const/4 v1, 0x1

    invoke-virtual {v4, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 1048
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object p0, v10

    if-eqz v0, :cond_3e

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1052
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1056
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    :cond_3e
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 1061
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    const/16 p0, 0x137

    .line 1065
    invoke-virtual {v1, p0}, Lcom/android/server/pm/BroadcastHelper;->getTemporaryBroadcastOptionsForSystemPackageUpdate(I)Landroid/app/BroadcastOptions;

    move-result-object p0

    .line 1066
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    .line 1063
    const-string v2, "android.intent.action.MY_PACKAGE_REPLACED"

    move-object v6, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    return-void
.end method
