.class final Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
.super Landroid/os/IExternalVibratorService$Stub;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExternalVibratorService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vibrator/VibratorManagerService;

    .line 1567
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/os/IExternalVibratorService$Stub;-><init>()V

    return-void
.end method

.method private hasExternalControlCapability()Z
    .registers 5

    .line 1688
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrators(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 1689
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrators(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1690
    const/4 v1, 0x1

    return v1

    .line 1688
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1693
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onExternalVibrationStart(Landroid/os/ExternalVibration;)I
    .registers 13
    .param p1, "vib"    # Landroid/os/ExternalVibration;

    .line 1571
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->hasExternalControlCapability()Z

    move-result v0

    const/16 v1, -0x64

    if-nez v0, :cond_9

    .line 1572
    return v1

    .line 1575
    :cond_9
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerServiceStub;->getInstance()Lcom/android/server/vibrator/VibratorManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/vibrator/VibratorManagerServiceStub;->startVibrationLockedInjector(Landroid/os/ExternalVibration;)Ljava/lang/String;

    move-result-object v0

    .line 1576
    .local v0, "injectorInfo":Ljava/lang/String;
    const-string v2, "hapticFeedbackDisable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1577
    const-string v2, "VibratorManagerService"

    const-string v3, "hapticFeedbackDisable"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    return v1

    .line 1581
    :cond_21
    const-string v2, "android.permission.VIBRATE"

    .line 1582
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v3

    const/4 v4, -0x1

    .line 1581
    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v2

    if-eqz v2, :cond_61

    .line 1584
    const-string v2, "VibratorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tried to play externally controlled vibration without VIBRATE permission, ignoring."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    return v1

    .line 1590
    :cond_61
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mfixupVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v2

    .line 1592
    .local v2, "attrs":Landroid/os/VibrationAttributes;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 1595
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrationSettings(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 1598
    :cond_7c
    const/4 v3, 0x0

    .line 1599
    .local v3, "alreadyUnderExternalControl":Z
    const/4 v6, 0x0

    .line 1601
    .local v6, "waitForCompletion":Z
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v7}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1602
    :try_start_85
    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 1603
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v10

    .line 1602
    invoke-static {v8, v9, v10, v2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mshouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v8

    .line 1604
    .local v8, "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    if-eqz v8, :cond_a8

    .line 1605
    new-instance v5, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {v5, v9, p1, v4}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder-IA;)V

    move-object v4, v5

    .line 1606
    .local v4, "vibHolder":Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    iput v1, v4, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    .line 1607
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1, v4, v8}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 1608
    iget v1, v4, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    monitor-exit v7

    return v1

    .line 1610
    .end local v4    # "vibHolder":Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    :cond_a8
    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v9}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v9

    if-eqz v9, :cond_c8

    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v9}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 1611
    invoke-virtual {v9, p1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c8

    .line 1614
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    iget v1, v1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    monitor-exit v7

    return v1

    .line 1616
    :cond_c8
    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v9}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v9

    if-nez v9, :cond_102

    .line 1619
    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v9}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v9

    if-eqz v9, :cond_115

    .line 1622
    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v9}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v9}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v9

    const/16 v10, 0x11

    if-ne v9, v10, :cond_ee

    .line 1623
    monitor-exit v7

    return v1

    .line 1625
    :cond_ee
    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v10, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {v9, v10}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mclearNextVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 1626
    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v9}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v9

    sget-object v10, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v9, v10, v5}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 1628
    const/4 v6, 0x1

    goto :goto_115

    .line 1639
    :cond_102
    const/4 v3, 0x1

    .line 1640
    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v9}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v9}, Landroid/os/ExternalVibration;->mute()Z

    .line 1641
    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v10, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {v9, v10, v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendExternalVibrateLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 1644
    :cond_115
    :goto_115
    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    new-instance v10, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    invoke-direct {v10, v9, p1, v4}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder-IA;)V

    invoke-static {v9, v10}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)V

    .line 1645
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/ExternalVibration;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 1646
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v4

    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v9}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrationScaler(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationScaler;

    move-result-object v9

    .line 1647
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v10

    .line 1646
    invoke-virtual {v9, v10}, Lcom/android/server/vibrator/VibrationScaler;->getExternalVibrationScale(I)I

    move-result v9

    iput v9, v4, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    .line 1648
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v4

    iget v4, v4, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    .line 1649
    .end local v8    # "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    .local v4, "scale":I
    monitor-exit v7
    :try_end_147
    .catchall {:try_start_85 .. :try_end_147} :catchall_199

    .line 1651
    if-eqz v6, :cond_172

    .line 1652
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v7}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrationThread(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v7

    const-wide/16 v8, 0x1388

    invoke-virtual {v7, v8, v9}, Lcom/android/server/vibrator/VibrationThread;->waitForThreadIdle(J)Z

    move-result v7

    if-nez v7, :cond_172

    .line 1653
    const-string v5, "VibratorManagerService"

    const-string v7, "Timed out waiting for vibration to cancel"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1655
    :try_start_165
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v8, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/Vibration$Status;

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendExternalVibrateLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 1657
    monitor-exit v7

    .line 1658
    return v1

    .line 1657
    :catchall_16f
    move-exception v1

    monitor-exit v7
    :try_end_171
    .catchall {:try_start_165 .. :try_end_171} :catchall_16f

    throw v1

    .line 1661
    :cond_172
    if-nez v3, :cond_180

    .line 1663
    const-string v1, "VibratorManagerService"

    const-string v7, "Vibrator going under external control."

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1, v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$msetExternalControl(Lcom/android/server/vibrator/VibratorManagerService;Z)V

    .line 1668
    :cond_180
    const-string v1, "VibratorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Playing external vibration: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    return v4

    .line 1649
    .end local v4    # "scale":I
    :catchall_199
    move-exception v1

    :try_start_19a
    monitor-exit v7
    :try_end_19b
    .catchall {:try_start_19a .. :try_end_19b} :catchall_199

    throw v1
.end method

.method public onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .registers 6
    .param p1, "vib"    # Landroid/os/ExternalVibration;

    .line 1675
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1676
    :try_start_7
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 1677
    invoke-virtual {v1, p1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1679
    const-string v1, "VibratorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping external vibration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendExternalVibrateLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 1684
    :cond_3d
    monitor-exit v0

    .line 1685
    return-void

    .line 1684
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_3f

    throw v1
.end method
