.class public final Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;
.super Ljava/lang/Object;
.source "AppOpService.kt"

# interfaces
.implements Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;
.implements Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;


# instance fields
.field public final pendingChanges:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/permission/access/appop/AppOpService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/AppOpService;)V
    .registers 2

    .line 465
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V
    .registers 10

    .line 562
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    # invokes: Lcom/android/server/permission/access/appop/AppOpService;->evaluateModeFromPermissionFlags(II)I
    invoke-static {v0, p5, p6}, Lcom/android/server/permission/access/appop/AppOpService;->access$evaluateModeFromPermissionFlags(Lcom/android/server/permission/access/appop/AppOpService;II)I

    move-result p5

    .line 563
    iget-object p6, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    # invokes: Lcom/android/server/permission/access/appop/AppOpService;->evaluateModeFromPermissionFlags(II)I
    invoke-static {p6, p7, p8}, Lcom/android/server/permission/access/appop/AppOpService;->access$evaluateModeFromPermissionFlags(Lcom/android/server/permission/access/appop/AppOpService;II)I

    move-result p6

    if-eq p5, p6, :cond_28

    .line 566
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    .line 567
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    new-instance p2, Lcom/android/server/permission/jarjar/kotlin/Triple;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p2, p1, p3, p4}, Lcom/android/server/permission/jarjar/kotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    return-void
.end method

.method public final getPermissionFlags(IILjava/lang/String;)I
    .registers 6

    .line 548
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    # getter for: Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;
    invoke-static {v0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getService$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/AccessCheckingService;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_17
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 549
    # getter for: Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getPermissionPolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object p0

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onDevicePermissionFlagsChanged(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 20

    move-object/from16 v9, p4

    .line 496
    iget-object v3, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    # getter for: Lcom/android/server/permission/access/appop/AppOpService;->backgroundToForegroundPermissionNames:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/server/permission/access/appop/AppOpService;->access$getBackgroundToForegroundPermissionNames$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/util/ArraySet;

    if-eqz v10, :cond_48

    iget-object v9, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    .line 42
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v11

    const/4 v3, 0x0

    move v12, v3

    :goto_19
    if-ge v12, v11, :cond_45

    .line 43
    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 500
    # getter for: Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;
    invoke-static {v9}, Lcom/android/server/permission/access/appop/AppOpService;->access$getRuntimePermissionNameToAppOp$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_42

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 502
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->getPermissionFlags(IILjava/lang/String;)I

    move-result v5

    move v7, v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p5

    move/from16 v8, p6

    .line 503
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V

    :cond_42
    add-int/lit8 v12, v12, 0x1

    goto :goto_19

    .line 496
    :cond_45
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    return-void

    .line 516
    :cond_48
    iget-object v3, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    # getter for: Lcom/android/server/permission/access/appop/AppOpService;->foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/server/permission/access/appop/AppOpService;->access$getForegroundToBackgroundPermissionName$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_7c

    iget-object v5, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    .line 518
    # getter for: Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;
    invoke-static {v5}, Lcom/android/server/permission/access/appop/AppOpService;->access$getRuntimePermissionNameToAppOp$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_7c

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 520
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->getPermissionFlags(IILjava/lang/String;)I

    move-result v6

    move v8, v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p6

    .line 521
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V

    .line 518
    sget-object v4, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    :cond_7c
    if-nez v4, :cond_a2

    .line 533
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    # getter for: Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/permission/access/appop/AppOpService;->access$getRuntimePermissionNameToAppOp$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_a2

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/16 v6, 0x10

    const/16 v8, 0x10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p6

    .line 534
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V

    .line 533
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    :cond_a2
    return-void
.end method

.method public onPermissionFlagsChanged(IILjava/lang/String;II)V
    .registers 13

    .line 481
    const-string v3, "default:0"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 478
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->onDevicePermissionFlagsChanged(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public onStateMutated()V
    .registers 14

    .line 572
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    # getter for: Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;
    invoke-static {v0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getListeners$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArraySet;

    move-result-object v0

    .line 573
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_50

    .line 41
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    check-cast v5, Lcom/android/server/permission/jarjar/kotlin/Triple;

    .line 42
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v7

    move v8, v3

    :goto_25
    if-ge v8, v7, :cond_4d

    .line 43
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;

    .line 575
    invoke-virtual {v5}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 576
    invoke-virtual {v5}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 577
    invoke-virtual {v5}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 579
    invoke-interface {v9, v10, v12, v6, v11}, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;->onUidModeChanged(IIILjava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 583
    :cond_50
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method
