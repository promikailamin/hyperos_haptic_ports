.class public final Lcom/android/server/dreams/DreamManagerService$BinderService;
.super Landroid/service/dreams/IDreamManager$Stub;
.source "DreamManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public static synthetic $r8$lambda$Kot4oQHonmynVtZKmfng-m1yYDI(Lcom/android/server/dreams/DreamManagerService$BinderService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService$BinderService;->lambda$setDreamIsObscured$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$oS7eqgnpGoVyGkh-XYJl1mJb8_k(Lcom/android/server/dreams/DreamManagerService$BinderService;Landroid/content/Intent;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/dreams/DreamManagerService$BinderService;->lambda$startDreamActivity$0(Landroid/content/Intent;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2

    .line 1150
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method


# virtual methods
.method public awaken()V
    .registers 4

    .line 1327
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 1329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1331
    :try_start_b
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v2, "request awaken"

    invoke-static {p0, v2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mrequestAwakenInternal(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_17

    .line 1333
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1334
    throw p0
.end method

.method public canLaunchDreamActivity(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    .line 1516
    const-string v1, "DreamManagerService"

    if-eqz p1, :cond_5a

    if-nez p2, :cond_8

    goto :goto_5a

    .line 1521
    :cond_8
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmPmInternal(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, p2, p3, v2}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;II)Z

    move-result p0

    if-nez p0, :cond_35

    .line 1522
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot launch dream activity because package="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match callingUid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1526
    :cond_35
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    const/4 p0, 0x1

    return p0

    .line 1529
    :cond_3d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dream packageName does not match active dream. Package "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not match "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1517
    :cond_5a
    :goto_5a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot launch dream activity due to invalid state. dream component= "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", packageName="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public canStartDreaming(Z)Z
    .registers 4

    .line 1290
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 1292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1294
    :try_start_b
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->canStartDreamingInternal(Z)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_15

    .line 1296
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1297
    throw p0
.end method

.method public dream()V
    .registers 3

    .line 1278
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 1280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1282
    :try_start_b
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mrequestDreamInternal(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_14

    .line 1284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1285
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1153
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmContext(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "DreamManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 1154
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1156
    :try_start_13
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mdumpInternal(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    .line 1158
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1159
    throw p0
.end method

.method public finishSelf(Landroid/os/IBinder;Z)V
    .registers 5

    if-eqz p1, :cond_14

    .line 1344
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1346
    :try_start_6
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mfinishSelfInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    .line 1348
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1349
    throw p0

    .line 1341
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "token must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finishSelfOneway(Landroid/os/IBinder;Z)V
    .registers 5

    if-eqz p1, :cond_14

    .line 1359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1361
    :try_start_6
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mfinishSelfInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    .line 1363
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1364
    throw p0

    .line 1356
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "token must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public forceAmbientDisplayEnabled(Z)V
    .registers 4

    .line 1420
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 1422
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1424
    :try_start_b
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mforceAmbientDisplayEnabledInternal(Lcom/android/server/dreams/DreamManagerService;Z)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_14

    .line 1426
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1427
    throw p0
.end method

.method public getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;
    .registers 11

    .line 1239
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 1240
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1241
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string v7, "getDefaultDreamComponent"

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v4, p1

    .line 1240
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1243
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1245
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mgetDefaultDreamComponentForUser(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_27

    .line 1247
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_27
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1248
    throw p0
.end method

.method public getDreamComponents()[Landroid/content/ComponentName;
    .registers 2

    .line 1172
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService$BinderService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    .registers 11

    .line 1177
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 1178
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1179
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string v7, "getDreamComponents"

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v4, p1

    .line 1178
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1181
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1183
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mgetDreamComponentsForUser(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_27

    .line 1185
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_27
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1186
    throw p0
.end method

.method public isDreaming()Z
    .registers 3

    .line 1253
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 1255
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1257
    :try_start_b
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$misDreamingInternal(Lcom/android/server/dreams/DreamManagerService;)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_15

    .line 1259
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1260
    throw p0
.end method

.method public isDreamingOrInPreview()Z
    .registers 3

    .line 1265
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 1267
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1269
    :try_start_b
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$misDreamingOrInPreviewInternal(Lcom/android/server/dreams/DreamManagerService;)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_15

    .line 1271
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1272
    throw p0
.end method

.method public final synthetic lambda$setDreamIsObscured$1(Z)V
    .registers 2

    .line 1477
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmController(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamController;->setDreamIsObscured(Z)V

    return-void
.end method

.method public final synthetic lambda$startDreamActivity$0(Landroid/content/Intent;II)V
    .registers 7

    .line 1439
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmLock(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1440
    :try_start_7
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 1441
    const-string p0, "DreamManagerService"

    const-string p1, "Attempt to start DreamActivity, but the device is not dreaming. Aborting without starting the DreamActivity."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    goto :goto_67

    .line 1445
    :cond_1a
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    .line 1446
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1447
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_18

    .line 1449
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/dreams/DreamManagerService$BinderService;->canLaunchDreamActivity(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1451
    const-string p0, "DreamManagerService"

    const-string p1, "The dream activity can be started only when the device is dreaming and only by the active dream package."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1456
    :cond_41
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmAtmInternal(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startDreamActivity(Landroid/content/Intent;II)Landroid/app/IAppTask;

    move-result-object p1

    if-nez p1, :cond_5d

    .line 1459
    const-string p1, "DreamManagerService"

    const-string p2, "Could not start dream activity."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const/4 p1, 0x1

    const-string p2, "DreamActivity not started"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(ZLjava/lang/String;)V

    return-void

    .line 1463
    :cond_5d
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmController(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/dreams/DreamController;->setDreamAppTask(Landroid/os/Binder;Landroid/app/IAppTask;)V

    return-void

    .line 1447
    :goto_67
    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_18

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 1166
    new-instance v0, Lcom/android/server/dreams/DreamShellCommand;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/dreams/DreamShellCommand;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1167
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public registerDreamOverlayService(Landroid/content/ComponentName;)V
    .registers 4

    .line 1230
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 1234
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fputmDreamOverlayServiceName(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;)V

    return-void
.end method

.method public setDevicePostured(Z)V
    .registers 4

    .line 1489
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 1491
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1493
    :try_start_b
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->setDevicePosturedInternal(Z)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_14

    .line 1495
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1496
    throw p0
.end method

.method public setDreamComponents([Landroid/content/ComponentName;)V
    .registers 5

    .line 1191
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 1193
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1196
    :try_start_f
    invoke-virtual {p0, v0, p1}, Lcom/android/server/dreams/DreamManagerService$BinderService;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_16

    .line 1198
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1199
    throw p0
.end method

.method public setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    .registers 12

    .line 1204
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 1205
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1206
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v7, "setDreamComponents"

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v4, p1

    .line 1205
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1208
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1210
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$msetDreamComponentsForUser(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_27

    .line 1212
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1213
    throw p0
.end method

.method public setDreamIsObscured(Z)V
    .registers 6

    .line 1473
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 1475
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1477
    :try_start_b
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamManagerService$BinderService;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1d

    .line 1479
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1480
    throw p0
.end method

.method public setScreensaverEnabled(Z)V
    .registers 7

    .line 1501
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 1502
    invoke-static {}, Landroid/service/dreams/IDreamManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1503
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1505
    :try_start_f
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v3}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmContext(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screensaver_enabled"

    .line 1507
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1505
    invoke-static {v3, v4, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1508
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManagerInternal;->updateSettings()V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1510
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_30
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1511
    throw p0
.end method

.method public setSystemDreamComponent(Landroid/content/ComponentName;)V
    .registers 4

    .line 1218
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 1220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1222
    :try_start_b
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$msetSystemDreamComponentInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_14

    .line 1224
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1225
    throw p0
.end method

.method public startDozing(Landroid/os/IBinder;IIFZ)V
    .registers 9

    if-eqz p1, :cond_15

    .line 1376
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1378
    :try_start_6
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/dreams/DreamManagerService;->startDozingInternal(Landroid/os/IBinder;IIFZ)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    .line 1381
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1382
    throw p0

    .line 1373
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "token must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startDozingOneway(Landroid/os/IBinder;IIFZ)V
    .registers 9

    if-eqz p1, :cond_15

    .line 1394
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1396
    :try_start_6
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/dreams/DreamManagerService;->startDozingInternal(Landroid/os/IBinder;IIFZ)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    .line 1399
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1400
    throw p0

    .line 1391
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "token must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startDreamActivity(Landroid/content/Intent;)V
    .registers 6

    .line 1432
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1433
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1436
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/dreams/DreamManagerService$BinderService;Landroid/content/Intent;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopDozing(Landroid/os/IBinder;)V
    .registers 4

    if-eqz p1, :cond_14

    .line 1410
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1412
    :try_start_6
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mstopDozingInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    .line 1414
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1415
    throw p0

    .line 1407
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "token must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public testDream(ILandroid/content/ComponentName;)V
    .registers 12

    if-eqz p2, :cond_54

    .line 1305
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 1306
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1307
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v7, "testDream"

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v4, p1

    .line 1306
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1309
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p1, v0, :cond_41

    .line 1312
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Aborted attempt to start a test dream while a different  user is active: userId="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currentUserId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DreamManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1317
    :cond_41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1319
    :try_start_45
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p2, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mtestDreamInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4e

    .line 1321
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4e
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1322
    throw p0

    .line 1303
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dream must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
