.class public Lcom/android/server/wm/BackgroundActivityStartController;
.super Ljava/lang/Object;
.source "BackgroundActivityStartController.java"


# static fields
.field public static final ACTIVITY_OPTIONS_SYSTEM_DEFINED:Landroid/app/ActivityOptions;

.field public static final BAL_CHECK_BACKGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

.field public static final BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

.field public static final BAL_CHECK_GRACE_PERIOD:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;


# instance fields
.field public final mCheckCallerHasBackgroundPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerHasBgStartAppOp:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerHasSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerIsAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerNonActivityTop:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerProcessAllowsBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerProcessInGracePeriod:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerBalPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerProcessAllowsBalBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerProcessAllowsBalForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerProcessInGracePeriod:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mStrictModeBalCallbacks:Landroid/util/SparseArray;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTaskIdToFinishedActivity:Ljava/util/HashMap;

.field public mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;


# direct methods
.method public static synthetic $r8$lambda$3YV4Gt9klPwpELsmx88PfOYBlqM(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$20(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6TVRYNE6Cxp3nO0u87ffmhmpv2Q(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/util/function/Predicate;[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;ILcom/android/server/wm/TaskFragment;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$checkTopActivityForAsm$27(Ljava/util/function/Predicate;[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;ILcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7kJ-1o5eS3rE1QXrS81BLMcOATY(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 3

    .line 1169
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUidProcState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_21

    .line 1171
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 v0, 0x9

    const-string v1, "callingUid is the current top"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1173
    :cond_21
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public static synthetic $r8$lambda$AJ_88IglCp0cub4bbjwVFo7ENOg(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$3(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BSn_PZ1Gf7aRLCU8NHv6pxgvanA(Lcom/android/server/wm/BackgroundActivityStartController;ILandroid/os/IBinder;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$addStrictModeCallback$0(ILandroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DPad7u79g6HxgXdO3cL_AqUUrP4(Ljava/util/StringJoiner;Ljava/util/function/Function;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 2005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ASM] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method public static synthetic $r8$lambda$DQ5Mv-u4Q6UeOPX7nfVD18sSkLk(ILcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 1834
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$DhQDAQyQgw-XKj1Nh-wjYh-21vo(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$1(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$F9D2dPU57gb3WP448as4Tu30Ayo(Ljava/util/StringJoiner;Ljava/util/function/Function;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ASM] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method public static synthetic $r8$lambda$FJFLqdYoRSV-0g5di0PIFpH82xo(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$5(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O7THblxGKuoxnvtQiY_Lezx3J0g(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 1840
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_11

    .line 1841
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$Od7BjIo7nc5ZkIyMtzE-Y25LfyQ(Ljava/util/StringJoiner;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 2043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ASM]    T: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->toFullString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method public static synthetic $r8$lambda$RlbspcKMeFIefBYHCbRzPx4zavI(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$9(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W1djLwQGgGetfpNERa3xUsGgpxA(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$10(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XaS70U1q4sCoO8Vgk1NurZ3tk-Y(Ljava/util/StringJoiner;Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;)V
    .registers 4

    .line 2035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ASM]   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mDebugInfo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method public static synthetic $r8$lambda$YEACyGi1QEkWj7IoZ-Dk1Us-EAU(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$6(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YcD5uswiD7bReEci-IdwP331IZY(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$13(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YmsGUOiGV30tgTdcBAXkvH1Rc5I(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$12(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ctWjo5OoBSE3eJa3g-llQ3bC1hc(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$14(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dfoBJHTz7ndC7TW6_aien8-ODpM(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$17(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$e1I5Nm8sbXHZdRvNjTeWFpYdCWA(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 3

    .line 1362
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    goto :goto_12

    .line 1366
    :cond_c
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAllowBalExemptionForSystemProcess(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_21

    :goto_12
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIsRealCallingUidPersistentSystemProcess(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 1368
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v0, 0x2

    const-string v1, "realCallingUid is persistent system process AND intent sender forced to allow."

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1372
    :cond_21
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public static synthetic $r8$lambda$eO5wNpeEncNKiXRRdElFUx9OyYM(IIILcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 1651
    invoke-virtual {p3, p0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result p0

    if-nez p0, :cond_15

    invoke-virtual {p3, p1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result p0

    if-nez p0, :cond_15

    invoke-virtual {p3, p2}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$fhzKZx2jwtcIfnwBzgvuYW0E5DU(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$11(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fubHGLlso2xfyhk0AW3aiFqD3UM(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 3

    .line 1197
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1198
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p0

    if-eqz p0, :cond_1a

    const/16 p0, 0x3e8

    if-eq v0, p0, :cond_1a

    const/16 p0, 0x403

    if-ne v0, p0, :cond_17

    goto :goto_1a

    .line 1203
    :cond_17
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0

    .line 1201
    :cond_1a
    :goto_1a
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v0, 0x2

    const-string v1, "Important callingUid"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public static synthetic $r8$lambda$kS7MK094THGkRDZroVab3BNNxY4(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$15(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$l6IA_Ti7Cq5xLtbKEmJzFBQK-P8(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$showToast$22(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$niGkPI9_LvYivKBTX6006BhUL14(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 1738
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$qCt1gpIWx_SpX-kl5tGi2HKsBp4(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .registers 5

    if-nez p3, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1958
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-ne p3, p0, :cond_e

    const-string p0, " [source]=> "

    goto :goto_1a

    :cond_e
    if-ne p3, p1, :cond_13

    .line 1959
    const-string p0, " [ top  ]=> "

    goto :goto_1a

    :cond_13
    if-ne p3, p2, :cond_18

    .line 1960
    const-string p0, " [target]=> "

    goto :goto_1a

    .line 1961
    :cond_18
    const-string p0, "         => "

    :goto_1a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1962
    invoke-static {p3}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qwKE29ZgLVq82R1Dbs6thRoF194(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$7(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u0MSpVdY1DiAurlqyQTuWl94L4A(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$18(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uVjAnc6CEWSG0Erw3uRpeGN1dHs(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$8(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vyj7s1W6pRu3yEfkXpW4IHEGgtw(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 1538
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$z54b6n8LeNZuXZ5FhGgTWacNyw4(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$16(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskIdToFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;)Ljava/util/HashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmTopFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTargetSdk(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/lang/String;)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 8

    .line 122
    new-instance v0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;-><init>(ZZZJ)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    .line 127
    new-instance v1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;-><init>(ZZZJ)V

    sput-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_BACKGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    .line 132
    new-instance v2, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    const/4 v5, 0x0

    const-wide/16 v6, 0x2710

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;-><init>(ZZZJ)V

    sput-object v2, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_GRACE_PERIOD:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    .line 153
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->ACTIVITY_OPTIONS_SYSTEM_DEFINED:Landroid/app/ActivityOptions;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 4

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 1147
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1164
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda15;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonActivityTop:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1192
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1195
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda17;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1206
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1248
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBackgroundPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1256
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1265
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBgStartAppOp:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1281
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1284
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1286
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessInGracePeriod:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1309
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1323
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1329
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1333
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1335
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessInGracePeriod:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1338
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerBalPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1348
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1361
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda13;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1375
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 301
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 302
    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-void
.end method

.method public static balCodeToString(I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_4b

    packed-switch p0, :pswitch_data_4e

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :pswitch_1e
    const-string p0, "BAL_ALLOW_WALLPAPER"

    return-object p0

    .line 271
    :pswitch_21
    const-string p0, "BAL_ALLOW_NOTIFICATION_TOKEN"

    return-object p0

    .line 260
    :pswitch_24
    const-string p0, "BAL_ALLOW_BOUND_BY_FOREGROUND"

    return-object p0

    .line 269
    :pswitch_27
    const-string p0, "BAL_ALLOW_TOKEN"

    return-object p0

    .line 264
    :pswitch_2a
    const-string p0, "BAL_ALLOW_NON_APP_VISIBLE_WINDOW"

    return-object p0

    .line 268
    :pswitch_2d
    const-string p0, "BAL_ALLOW_SDK_SANDBOX"

    return-object p0

    .line 262
    :pswitch_30
    const-string p0, "BAL_ALLOW_FOREGROUND"

    return-object p0

    .line 263
    :pswitch_33
    const-string p0, "BAL_ALLOW_GRACE_PERIOD"

    return-object p0

    .line 267
    :pswitch_36
    const-string p0, "BAL_ALLOW_SAW_PERMISSION"

    return-object p0

    .line 266
    :pswitch_39
    const-string p0, "BAL_ALLOW_PERMISSION"

    return-object p0

    .line 265
    :pswitch_3c
    const-string p0, "BAL_ALLOW_PENDING_INTENT"

    return-object p0

    .line 270
    :pswitch_3f
    const-string p0, "BAL_ALLOW_VISIBLE_WINDOW"

    return-object p0

    .line 258
    :pswitch_42
    const-string p0, "BAL_ALLOW_ALLOWLISTED_COMPONENT"

    return-object p0

    .line 259
    :pswitch_45
    const-string p0, "BAL_ALLOW_ALLOWLISTED_UID"

    return-object p0

    .line 261
    :pswitch_48
    const-string p0, "BAL_ALLOW_DEFAULT"

    return-object p0

    .line 273
    :cond_4b
    const-string p0, "BAL_BLOCK"

    return-object p0

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method public static balStartModeToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_37

    if-eqz p0, :cond_34

    const/4 v0, 0x1

    if-eq p0, v0, :cond_31

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_28

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MODE_BACKGROUND_ACTIVITY_START_ALLOWED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 288
    :cond_28
    const-string p0, "MODE_BACKGROUND_ACTIVITY_START_ALLOW_IF_VISIBLE"

    return-object p0

    .line 286
    :cond_2b
    const-string p0, "MODE_BACKGROUND_ACTIVITY_START_ALWAYS"

    return-object p0

    .line 284
    :cond_2e
    const-string p0, "MODE_BACKGROUND_ACTIVITY_START_DENIED"

    return-object p0

    .line 280
    :cond_31
    const-string p0, "MODE_BACKGROUND_ACTIVITY_START_ALLOWED"

    return-object p0

    .line 282
    :cond_34
    const-string p0, "MODE_BACKGROUND_ACTIVITY_START_SYSTEM_DEFINED"

    return-object p0

    .line 283
    :cond_37
    const-string p0, "MODE_BACKGROUND_ACTIVITY_START_COMPAT"

    return-object p0
.end method

.method public static getDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .registers 4

    .line 2298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " :: visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2299
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", visibleRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2300
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", finishing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alwaysOnTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2302
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastLaunchTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastVisibleTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskFragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2305
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSystemExemptFlagEnabled()Z
    .registers 3

    .line 2090
    const-string v0, "system_exempt_from_activity_bg_start_restriction_enabled"

    const/4 v1, 0x1

    const-string v2, "window_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z
    .registers 5

    .line 2148
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getCode()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_7d

    .line 2149
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptInOrAutoOptIn()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    .line 2151
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    .line 2152
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getCode()I

    move-result v0

    if-eq v0, p2, :cond_28

    return v1

    .line 2155
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptInOrAutoOptIn()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    .line 2157
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    .line 2158
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getCode()I

    move-result v0

    if-eq v0, p2, :cond_49

    return v1

    .line 2163
    :cond_49
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_7b

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity start ONLY allowed by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->-$$Nest$fgetmMessage(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    const/4 p0, 0x1

    return p0

    :cond_7d
    return v1
.end method

.method public static shouldRestrictActivitySwitch(I)Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldShowToast(I)Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final abortLaunch(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 7

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Background activity launch blocked! goo.gle/android-bal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_33

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    .line 968
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 970
    :cond_2e
    const-string v0, "BAL blocked. goo.gle/android-bal"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    .line 972
    :cond_33
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    .line 974
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result v1

    if-eqz v1, :cond_be

    .line 975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PendingIntent Activity start blocked in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". PendingIntent was created in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_83

    .line 982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " could opt in to grant BAL privileges when sending. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_84

    :cond_83
    move-object v2, v3

    .line 983
    :goto_84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 986
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " could opt in to grant BAL privileges when creating."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 987
    :cond_a6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "The intent would have started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/content/Intent;

    move-result-object v2

    .line 988
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d7

    .line 990
    :cond_be
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity start blocked. The intent would have started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/content/Intent;

    move-result-object v2

    .line 991
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 993
    :goto_d7
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->strictModeLaunchAborted(ILjava/lang/String;)V

    .line 994
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$mcallerIsRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v2

    if-nez v2, :cond_eb

    .line 995
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->strictModeLaunchAborted(ILjava/lang/String;)V

    :cond_eb
    return-object v0
.end method

.method public addStrictModeCallback(ILandroid/os/IBinder;)Z
    .registers 8

    .line 1028
    invoke-static {p2}, Landroid/app/IBackgroundActivityLaunchCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackgroundActivityLaunchCallback;

    move-result-object v0

    .line 1029
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1030
    :try_start_7
    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    .line 1031
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_1e

    .line 1033
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1034
    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_39

    .line 1036
    :cond_1e
    :goto_1e
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_27

    .line 1037
    monitor-exit v1

    return v4

    .line 1039
    :cond_27
    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_1c

    .line 1042
    :try_start_2b
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;ILandroid/os/IBinder;)V

    invoke-interface {p2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_33} :catch_34

    goto :goto_37

    .line 1044
    :catch_34
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->removeStrictModeCallback(ILandroid/os/IBinder;)V

    :goto_37
    const/4 p0, 0x1

    return p0

    .line 1040
    :goto_39
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_1c

    throw p0
.end method

.method public final allowBasedOnCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 3

    .line 954
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final allowBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 3

    .line 961
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final allowedByAsmGracePeriod(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;ZZ)Z
    .registers 9

    .line 2054
    invoke-virtual {p4}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isBasedOnCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    invoke-virtual {p4}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isInGracePeriod()Z

    move-result p4

    if-eqz p4, :cond_4f

    const/4 p4, 0x1

    if-eqz p5, :cond_19

    .line 2056
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v0, :cond_19

    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    if-ne v0, p1, :cond_19

    return p4

    :cond_19
    if-eqz p5, :cond_1d

    if-eqz p6, :cond_4f

    :cond_1d
    if-eqz p3, :cond_34

    .line 2072
    iget-object p5, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    iget p3, p3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2073
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz p3, :cond_34

    .line 2074
    iget p3, p3, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    if-ne p3, p1, :cond_34

    return p4

    :cond_34
    if-eqz p2, :cond_4f

    .line 2080
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 2081
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz p0, :cond_4f

    .line 2082
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    if-ne p0, p1, :cond_4f

    return p4

    :cond_4f
    return v1
.end method

.method public checkActivityAllowedToClearTask(Lcom/android/server/wm/Task;IILjava/lang/String;)V
    .registers 35

    move-object/from16 v13, p1

    move/from16 v15, p2

    const/16 v0, 0x3e8

    if-eq v15, v0, :cond_13d

    .line 1706
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_13d

    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_13d

    .line 1710
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 1711
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    const/4 v11, 0x0

    .line 1712
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v12

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p3

    move v2, v15

    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 1713
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v3, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v4, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBackgroundPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v5, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v6, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBgStartAppOp:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v7, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v8, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v9, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    filled-new-array/range {v2 .. v9}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;Z[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    .line 1722
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v0

    if-eqz v0, :cond_5a

    goto/16 :goto_13d

    .line 1726
    :cond_5a
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_62

    goto/16 :goto_13d

    .line 1732
    :cond_62
    new-instance v2, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;-><init>(Lcom/android/server/wm/BackgroundActivityStartController-IA;)V

    invoke-virtual {v1, v13, v15, v4, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v2

    .line 1734
    invoke-static {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v5

    if-eqz v5, :cond_74

    goto/16 :goto_13d

    .line 1738
    :cond_74
    new-instance v5, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v13, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_83

    const/4 v6, -0x1

    :goto_80
    move/from16 v17, v6

    goto :goto_88

    .line 1745
    :cond_83
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v6

    goto :goto_80

    :goto_88
    if-nez v5, :cond_8d

    :goto_8a
    move-object/from16 v18, v4

    goto :goto_92

    .line 1747
    :cond_8d
    iget-object v4, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_8a

    :goto_92
    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v14, 0x1ef

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x4

    const/16 v25, 0xc

    const/16 v26, 0x0

    move-object/from16 v16, p4

    .line 1739
    invoke-static/range {v14 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIIZILjava/lang/String;)V

    .line 1770
    invoke-static {v15}, Lcom/android/server/wm/BackgroundActivityStartController;->shouldRestrictActivitySwitch(I)Z

    move-result v4

    if-eqz v4, :cond_ba

    invoke-static {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v2

    if-eqz v2, :cond_ba

    const/4 v3, 0x1

    .line 1773
    :cond_ba
    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1774
    invoke-virtual {v2, v15}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d0

    .line 1777
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_d9

    .line 1780
    :cond_d0
    invoke-static {v2, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->getApplicationLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v29, v4

    move-object v4, v2

    move-object/from16 v2, v29

    .line 1783
    :goto_d9
    invoke-static {v15}, Lcom/android/server/wm/BackgroundActivityStartController;->shouldShowToast(I)Z

    move-result v5

    if-eqz v5, :cond_fd

    .line 1784
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "go/android-asm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_ee

    .line 1785
    const-string v6, " returned home due to "

    goto :goto_f0

    .line 1786
    :cond_ee
    const-string v6, " would return home due to "

    :goto_f0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1784
    invoke-virtual {v1, v4}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    .line 1793
    :cond_fd
    const-string v1, " is not on top of task t: "

    const-string v4, "ActivityTaskManager"

    if-eqz v3, :cond_123

    .line 1794
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ASM] Return to home as source: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const-string v1, "taskRemoved"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeActivityToTop(Ljava/lang/String;)V

    return-void

    .line 1798
    :cond_123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ASM] Would return to home as source: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13d
    :goto_13d
    return-void
.end method

.method public checkActivityAllowedToStart(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/Task;ILcom/android/server/wm/BackgroundActivityStartController$BalVerdict;IILcom/android/server/wm/TaskDisplayArea;)Z
    .registers 23

    move-object/from16 v6, p5

    move/from16 v2, p8

    .line 1440
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isBasedOnCaller()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isAllowlistedUid()Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 1446
    :cond_12
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isBasedOnCaller()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1447
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isInGracePeriod()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getCode()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_27

    return v1

    :cond_27
    const/4 v0, 0x0

    if-nez p3, :cond_33

    const/high16 v3, 0x10000000

    and-int v4, p6, v3

    if-ne v4, v3, :cond_31

    goto :goto_33

    :cond_31
    move v11, v0

    goto :goto_34

    :cond_33
    :goto_33
    move v11, v1

    :goto_34
    if-eqz v11, :cond_44

    .line 1461
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isBasedOnRealCaller()Z

    move-result v3

    if-eqz v3, :cond_3d

    return v1

    .line 1467
    :cond_3d
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowsNewTask()Z

    move-result v3

    if-eqz v3, :cond_44

    return v1

    .line 1475
    :cond_44
    new-instance v3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;-><init>(Lcom/android/server/wm/BackgroundActivityStartController-IA;)V

    if-eqz p1, :cond_75

    .line 1477
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v11, :cond_54

    move-object v5, v4

    goto :goto_55

    :cond_54
    move-object v5, v6

    .line 1480
    :goto_55
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v7

    invoke-virtual {p0, v5, v7, p1, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v3

    if-eqz v11, :cond_73

    .line 1487
    invoke-static {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v5

    if-eqz v5, :cond_73

    if-eqz v4, :cond_70

    .line 1489
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    if-nez v5, :cond_6f

    if-ne v4, v6, :cond_70

    :cond_6f
    move v0, v1

    :cond_70
    invoke-static {v3, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fputmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;Z)V

    :cond_73
    :goto_73
    move-object v10, v3

    goto :goto_a8

    :cond_75
    if-eqz v6, :cond_80

    if-eqz v11, :cond_7b

    if-eqz p4, :cond_80

    .line 1494
    :cond_7b
    invoke-virtual {p0, v6, v2, v4, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v3

    goto :goto_73

    :cond_80
    if-eqz v6, :cond_8d

    .line 1498
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-eqz v5, :cond_8d

    .line 1499
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    goto :goto_8f

    :cond_8d
    move-object/from16 v5, p10

    :goto_8f
    if-eqz v5, :cond_73

    .line 1502
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 1503
    :goto_95
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_73

    .line 1504
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    .line 1506
    invoke-virtual {p0, v7, v2, v4, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_95

    .line 1519
    :goto_a8
    invoke-static {v10}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v0

    if-eqz v0, :cond_af

    return v1

    :cond_af
    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v9, p6

    move-object/from16 v8, p7

    move/from16 v3, p9

    .line 1527
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/wm/BackgroundActivityStartController;->logAsmFailureAndCheckFeatureEnabled(Lcom/android/server/wm/ActivityRecord;IIZZLcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;Z)Z

    move-result p0

    return p0
.end method

.method public checkBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 25

    if-nez p11, :cond_6

    .line 864
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->ACTIVITY_OPTIONS_SYSTEM_DEFINED:Landroid/app/ActivityOptions;

    move-object v12, v0

    goto :goto_8

    :cond_6
    move-object/from16 v12, p11

    .line 867
    :goto_8
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 873
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 874
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    .line 875
    invoke-static {v2}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v2

    .line 878
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 879
    new-instance v2, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 v3, 0xa

    const-string v4, "uid in SDK sandbox has visible (non-toast) window"

    invoke-direct {v2, v3, v4}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 880
    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    .line 879
    invoke-virtual {v0, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->setResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)V

    .line 881
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0

    .line 885
    :cond_51
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStartAllowedByCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    .line 886
    invoke-virtual {v0, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->setResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)V

    .line 888
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$mhasRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 889
    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 890
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0

    .line 892
    :cond_69
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->abortLaunch(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0

    .line 902
    :cond_6e
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$mcallerIsRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v3

    if-eqz v3, :cond_7c

    move-object v3, v2

    goto :goto_80

    .line 904
    :cond_7c
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStartAllowedByRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v3

    .line 905
    :goto_80
    invoke-virtual {v0, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->setResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)V

    .line 907
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_99

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v4

    if-eqz v4, :cond_99

    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->blocks()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 908
    invoke-virtual {v2, v5}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->setOnlyCreatorAllows(Z)V

    .line 912
    :cond_99
    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v4

    if-eqz v4, :cond_aa

    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptInOrAutoOptIn()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 913
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0

    .line 915
    :cond_aa
    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v4

    if-eqz v4, :cond_bb

    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptInOrAutoOptIn()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 916
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0

    .line 919
    :cond_bb
    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_ca

    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptOut()Z

    move-result v2

    if-nez v2, :cond_ca

    move v2, v5

    goto :goto_cb

    :cond_ca
    move v2, v4

    .line 920
    :goto_cb
    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 921
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptOut()Z

    move-result v3

    if-nez v3, :cond_d8

    goto :goto_d9

    :cond_d8
    move v5, v4

    .line 922
    :goto_d9
    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_fe

    .line 924
    iget-object v4, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v4}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 925
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "With Android 15 BAL hardening this activity start may be blocked if the PI creator upgrades target_sdk to 35+! goo.gle/android-bal (missing opt in by PI creator)!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0

    :cond_fe
    if-eqz v5, :cond_121

    .line 934
    iget-object v4, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v4}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v4

    if-eqz v4, :cond_121

    .line 935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "With Android 14 BAL hardening this activity start will be blocked if the PI sender upgrades target_sdk to 34+!  goo.gle/android-bal (missing opt in by PI sender)!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0

    :cond_121
    if-nez v2, :cond_125

    if-eqz v5, :cond_12a

    .line 944
    :cond_125
    const-string v2, "Without BAL hardening this activity start would be allowed"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_12a
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->abortLaunch(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0
.end method

.method public checkBackgroundActivityStartAllowedByCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 16

    .line 1091
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1092
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-eqz v0, :cond_20

    .line 1096
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    filled-new-array {v0, v1, v3}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;Z[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1099
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1103
    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v5, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBackgroundPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v6, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v7, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBgStartAppOp:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v8, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v9, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v10, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v11, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v12, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessInGracePeriod:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    filled-new-array/range {v3 .. v12}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;Z[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1110
    :cond_43
    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v5, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonActivityTop:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v6, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v7, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v8, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v9, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBackgroundPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v10, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v11, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBgStartAppOp:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v12, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v13, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessInGracePeriod:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    filled-new-array/range {v3 .. v13}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;Z[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public checkBackgroundActivityStartAllowedByRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 14

    .line 1294
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1295
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_20

    .line 1299
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    filled-new-array {v0, v1, v3}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;Z[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1302
    :cond_20
    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v5, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v6, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerBalPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v7, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v8, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v9, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v10, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v11, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessInGracePeriod:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    filled-new-array/range {v3 .. v11}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;Z[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .registers 8

    .line 1897
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1898
    invoke-virtual {p3}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->matchesSource()Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    return-object p0

    .line 1902
    :cond_b
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mAllowCrossUidActivitySwitchFromBelow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1903
    invoke-static {p3, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fputmTopActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;Z)V

    .line 1904
    invoke-virtual {p3}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->matchesSource()Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    return-object p0

    :cond_18
    const/16 v0, 0x3e8

    .line 1907
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    if-eqz v0, :cond_21

    return-object p3

    :cond_21
    const-wide/32 v2, 0xdbe868a

    .line 1915
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    invoke-static {v2, v3, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_69

    .line 1920
    :cond_2f
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1921
    const-string v2, "Package name: "

    const-string v3, "ActivityTaskManager"

    if-nez v0, :cond_53

    .line 1922
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " not found."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    invoke-virtual {p3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    return-object p0

    .line 1926
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1929
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 1931
    :try_start_61
    invoke-virtual {p0, v0, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_65
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_61 .. :try_end_65} :catch_6f

    .line 1939
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    if-eqz p0, :cond_6a

    :goto_69
    return-object p3

    :cond_6a
    invoke-virtual {p3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    return-object p0

    .line 1934
    :catch_6f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    invoke-virtual {p3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    return-object p0
.end method

.method public final checkNonAppVisibleWindow(IZ)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 4

    if-eqz p2, :cond_4e

    .line 1179
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MirrorActiveUids;->getNonAppVisibleWindowDetails(I)Landroid/util/SparseIntArray;

    move-result-object p0

    .line 1180
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2d

    const/16 p1, 0x7dd

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-lez p1, :cond_2d

    .line 1182
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 p1, 0xf

    const-string p2, "uid has wallpaper window"

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 1183
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->setVisibleOrForeground()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1185
    :cond_2d
    new-instance p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uid has non-app visible window "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0xb

    invoke-direct {p1, p2, p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 1187
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->setVisibleOrForeground()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1189
    :cond_4e
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 8

    if-nez p1, :cond_5

    .line 1400
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0

    .line 1403
    :cond_5
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    .line 1404
    invoke-virtual {p1, v0, p3}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    .line 1405
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1406
    const-string p0, "callerApp process"

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->withProcessInfo(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1410
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget v0, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object p0

    if-eqz p0, :cond_50

    .line 1412
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2e
    if-ltz v0, :cond_50

    .line 1413
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowProcessController;

    if-eq v1, p1, :cond_4d

    .line 1415
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-virtual {v1, v2, p3}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    .line 1417
    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1418
    const-string p0, "process"

    invoke-virtual {v2, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->withProcessInfo(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    :cond_4d
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 1424
    :cond_50
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .registers 6

    if-eqz p3, :cond_d

    .line 1816
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1817
    invoke-virtual {p4}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->matchesSource()Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    return-object p0

    .line 1821
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_33

    .line 1823
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activities for task: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    invoke-virtual {p4, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    return-object p0

    .line 1827
    :cond_33
    invoke-virtual {p0, v0, p2, p4}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p4

    .line 1828
    invoke-static {p4}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_59

    .line 1833
    :cond_3e
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;

    invoke-direct {v0, p2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1835
    invoke-virtual {p4}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->matchesSource()Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    return-object p0

    .line 1840
    :cond_4e
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;

    invoke-direct {v0, p3}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 1844
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_5a

    :goto_59
    return-object p4

    .line 1849
    :cond_5a
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p3

    .line 1850
    invoke-static {p3}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result p4

    if-eqz p4, :cond_65

    goto :goto_72

    .line 1856
    :cond_65
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-nez p1, :cond_6c

    goto :goto_72

    .line 1861
    :cond_6c
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result p4

    if-nez p4, :cond_73

    :goto_72
    return-object p3

    .line 1866
    :cond_73
    filled-new-array {p3}, [Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p3

    .line 1867
    new-instance p4, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda26;

    invoke-direct {p4, p0, v0, p3, p2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/util/function/Predicate;[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;I)V

    invoke-virtual {p1, p4}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    .line 1873
    aget-object p0, p3, p0

    return-object p0
.end method

.method public clearTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;IIILcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)V
    .registers 22

    move/from16 v1, p4

    move/from16 v2, p6

    const/high16 v3, 0x10000000

    and-int v5, v2, v3

    if-ne v5, v3, :cond_c2

    .line 1638
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isBasedOnCaller()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isAllowlistedUid()Z

    move-result v3

    if-eqz v3, :cond_18

    goto/16 :goto_c2

    .line 1649
    :cond_18
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    .line 1650
    new-instance v5, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;

    move/from16 v6, p5

    invoke-direct {v5, v3, v1, v6}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;-><init>(III)V

    .line 1655
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_c2

    .line 1656
    invoke-interface {v5, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    goto/16 :goto_c2

    :cond_31
    const/4 v7, 0x1

    .line 1666
    new-array v7, v7, [I

    .line 1667
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->shouldRestrictActivitySwitch(I)Z

    move-result v8

    .line 1668
    new-instance v9, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;-><init>(Lcom/android/server/wm/BackgroundActivityStartController-IA;)V

    invoke-virtual {p0, v3, v1, v9}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v9

    .line 1670
    const-string v13, "ActivityTaskManager"

    const/4 v10, 0x0

    if-eqz v8, :cond_82

    invoke-static {v9}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v11

    if-eqz v11, :cond_82

    .line 1671
    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_55

    move-object/from16 v5, p3

    .line 1677
    :cond_55
    invoke-virtual {p1, v5, v2, v7}, Lcom/android/server/wm/Task;->performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    .line 1678
    aget v2, v7, v10

    if-lez v2, :cond_82

    .line 1679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleared top n: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v7, v10

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " activities from task t: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not matching top uid: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_82
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->shouldShowToast(I)Z

    move-result v1

    if-eqz v1, :cond_c2

    if-eqz v8, :cond_8e

    aget v1, v7, v10

    if-lez v1, :cond_c2

    .line 1686
    :cond_8e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_98

    .line 1687
    const-string v2, "Top activities cleared by "

    goto :goto_9a

    .line 1688
    :cond_98
    const-string v2, "Top activities would be cleared by "

    :goto_9a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "go/android-asm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1686
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 1691
    invoke-static {v9}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    const-string v1, "Clear Top"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p7

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BalVerdict;ZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    :goto_c2
    return-void
.end method

.method public final varargs evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;Z[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 9

    .line 1124
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 1125
    array-length v1, p3

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_3e

    aget-object v3, p3, v2

    .line 1126
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1127
    invoke-interface {v3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;->evaluate(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    goto :goto_3b

    .line 1130
    :cond_13
    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessInGracePeriod:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    if-eq v3, v4, :cond_30

    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessInGracePeriod:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    if-ne v3, v4, :cond_1c

    goto :goto_30

    .line 1133
    :cond_1c
    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    if-eq v3, v4, :cond_24

    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    if-ne v3, v4, :cond_3b

    .line 1135
    :cond_24
    invoke-interface {v3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;->evaluate(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->setAllowlisteUid(Z)V

    goto :goto_3b

    .line 1132
    :cond_30
    :goto_30
    invoke-interface {v3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;->evaluate(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->setInGracePeriod(Z)V

    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3e
    if-eqz p2, :cond_49

    .line 1141
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isImmutable()Z

    move-result p0

    if-nez p0, :cond_49

    .line 1142
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->setBasedOnRealCaller()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    :cond_49
    return-object v0
.end method

.method public final getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BalVerdict;ZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .registers 25

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p8

    .line 1953
    new-instance v5, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda27;

    invoke-direct {v5, p2, v3, p3}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 1965
    new-instance v6, Ljava/util/StringJoiner;

    const-string v7, "\n"

    invoke-direct {v6, v7}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 1966
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ASM] ------ Activity Security "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Debug Logging Start ------"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1967
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ASM] Block Enabled: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/4 v7, 0x0

    if-nez v4, :cond_56

    .line 1969
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ASM] Restrictions Enabled: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1970
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1969
    invoke-virtual {v6, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1972
    :cond_56
    const-string v4, "[ASM] ASM Version: 12"

    invoke-virtual {v6, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1973
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ASM] System Time: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1974
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ASM] Activity Opted In: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p12

    invoke-interface {v5, v9}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz v2, :cond_9b

    if-eqz p2, :cond_9b

    .line 1977
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-ne v4, v2, :cond_9b

    const/4 v4, 0x1

    goto :goto_9c

    :cond_9b
    move v4, v7

    :goto_9c
    if-nez p2, :cond_da

    .line 1980
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ASM] Source Package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1981
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    move/from16 v10, p6

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    .line 1983
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ASM] Real Calling Uid Package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto/16 :goto_169

    .line 1985
    :cond_da
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ASM] Source Record: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1986
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ASM] Source Launch Package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1987
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ASM] Source Launch Intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz v4, :cond_140

    .line 1989
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ASM] Source/Target Task: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1990
    const-string v9, "[ASM] Source/Target Task Stack: "

    invoke-virtual {v6, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_15d

    .line 1992
    :cond_140
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ASM] Source Task: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1993
    const-string v9, "[ASM] Source Task Stack: "

    invoke-virtual {v6, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1995
    :goto_15d
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    new-instance v10, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda28;

    invoke-direct {v10, v6, v5}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda28;-><init>(Ljava/util/StringJoiner;Ljava/util/function/Function;)V

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1999
    :goto_169
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ASM] Target Task Top: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-nez v4, :cond_1a8

    .line 2001
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] Target Task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz v2, :cond_1a8

    .line 2003
    const-string v3, "[ASM] Target Task Stack: "

    invoke-virtual {v6, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2004
    new-instance v3, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda29;

    invoke-direct {v3, v6, v5}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda29;-><init>(Ljava/util/StringJoiner;Ljava/util/function/Function;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2009
    :cond_1a8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] Target Record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2010
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ASM] TaskToFront: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ASM] AvoidMoveToFront: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p10

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ASM] BalCode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] BalVerdict.isAllowlistedUid: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isAllowlistedUid()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] BalVerdict.isInGracePeriod: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isInGracePeriod()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] BalVerdict.isBasedOnRealCaller: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isBasedOnRealCaller()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] BalVerdict.isVisibleOrForeground: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isVisibleOrForeground()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2017
    invoke-virtual {v6, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2019
    invoke-static {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->-$$Nest$fgetmAdditionalBalCodes(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    if-eqz v1, :cond_2a2

    invoke-static {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->-$$Nest$fgetmAdditionalBalCodes(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_2a2

    .line 2020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] BalVerdict.additionalBalCodes: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->-$$Nest$fgetmAdditionalBalCodes(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2022
    :cond_2a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] BalVerdict.allowsNewTask: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowsNewTask()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] Allowed By Grace Period: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p11

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] LastResumedActivity: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v5, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2024
    invoke-virtual {v6, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] System opted into enforcement: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2028
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v1, :cond_320

    .line 2029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] TopFinishedActivity: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    iget-object v4, v4, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mDebugInfo:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2032
    :cond_320
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33b

    .line 2033
    const-string v1, "[ASM] TaskIdToFinishedActivity: "

    invoke-virtual {v6, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2034
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda30;

    invoke-direct {v1, v6}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda30;-><init>(Ljava/util/StringJoiner;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 2038
    :cond_33b
    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isVisibleOrForeground()Z

    move-result p0

    if-eqz p0, :cond_362

    if-eqz p2, :cond_348

    .line 2039
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_349

    :cond_348
    move-object p0, v2

    :goto_349
    if-eqz p0, :cond_362

    .line 2040
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_362

    .line 2041
    const-string v0, "[ASM] Tasks: "

    invoke-virtual {v6, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2042
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda31;

    invoke-direct {v0, v6}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda31;-><init>(Ljava/util/StringJoiner;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 2047
    :cond_362
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Debug Logging End ------"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2048
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getService()Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    .line 306
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public getStrictModeBalCallbacks(I)Ljava/util/Map;
    .registers 3

    .line 1008
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1009
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    .line 1010
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 1012
    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    goto :goto_19

    .line 1014
    :cond_12
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-object p1

    .line 1015
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_10

    throw p0
.end method

.method public final getSupervisor()Lcom/android/server/wm/ActivityTaskSupervisor;
    .registers 1

    .line 310
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-object p0
.end method

.method public final getTargetSdk(Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 2314
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2315
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    return p0

    :catch_13
    return v0
.end method

.method public hasBalPermission(II)Z
    .registers 3

    .line 1386
    const-string p0, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-static {p0, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final isHomeApp(ILjava/lang/String;)Z
    .registers 7

    .line 314
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    .line 315
    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_12

    if-nez p2, :cond_16

    :cond_12
    if-ne p1, v0, :cond_15

    return v1

    :cond_15
    return v2

    :cond_16
    if-nez p2, :cond_19

    return v2

    .line 323
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    .line 324
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 325
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    return v1

    :cond_36
    return v2
.end method

.method public final synthetic lambda$addStrictModeCallback$0(ILandroid/os/IBinder;)V
    .registers 3

    .line 1042
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->removeStrictModeCallback(ILandroid/os/IBinder;)V

    return-void
.end method

.method public final synthetic lambda$checkTopActivityForAsm$27(Ljava/util/function/Predicate;[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;ILcom/android/server/wm/TaskFragment;)V
    .registers 6

    .line 1868
    invoke-virtual {p4, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_f

    const/4 p4, 0x0

    .line 1870
    aget-object v0, p2, p4

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    aput-object p0, p2, p4

    :cond_f
    return-void
.end method

.method public final synthetic lambda$new$1(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 4

    .line 1154
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v1

    .line 1156
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->isHomeApp(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 1157
    :cond_1c
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUidHasVisibleActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 1158
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x4

    const-string v0, "callingUid has visible window"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 1159
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->setVisibleOrForeground()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1161
    :cond_33
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$10(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 4

    .line 1285
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_BACKGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$11(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 4

    .line 1287
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_GRACE_PERIOD:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$12(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 4

    .line 1313
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v1

    .line 1315
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->isHomeApp(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 1316
    :cond_1c
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUidHasVisibleActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 1317
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x4

    const-string v0, "realCallingUid has visible window"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 1318
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->setVisibleOrForeground()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1320
    :cond_33
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$13(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 3

    .line 1324
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUidHasNonAppVisibleWindow(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkNonAppVisibleWindow(IZ)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$14(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 4

    .line 1330
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$15(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 4

    .line 1334
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_BACKGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$16(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 4

    .line 1336
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_GRACE_PERIOD:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$17(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 4

    .line 1339
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 1341
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p1

    .line 1342
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->hasBalPermission(II)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 1343
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x6

    const-string v0, "realCallingUid has BAL permission."

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1345
    :cond_22
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$18(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 4

    .line 1349
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    .line 1353
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 1355
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x7

    const-string v0, "SYSTEM_ALERT_WINDOW permission is granted"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 1356
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1358
    :cond_2e
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$20(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 3

    .line 1377
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    .line 1378
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p1

    .line 1377
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 1379
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x3

    const-string v0, "realCallingUid is a companion app."

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 1380
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1382
    :cond_23
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$3(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 3

    .line 1193
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUidHasNonAppVisibleWindow(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkNonAppVisibleWindow(IZ)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$5(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 5

    .line 1208
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->isHomeApp(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1b

    .line 1209
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Home app"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1212
    :cond_1b
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1215
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 1216
    iget v2, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, v2, :cond_3f

    .line 1217
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Active ime"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1221
    :cond_3f
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIsCallingUidPersistentSystemProcess(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1222
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "callingUid is persistent system process"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 1223
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1227
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getSupervisor()Lcom/android/server/wm/ActivityTaskSupervisor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1228
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Recents Component"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 1229
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1232
    :cond_6d
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1233
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Device Owner"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1236
    :cond_87
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isAffiliatedProfileOwner(I)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 1237
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Affiliated Profile Owner"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 1238
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1241
    :cond_a1
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1242
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result p0

    if-eqz p0, :cond_c3

    .line 1243
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Companion App"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1245
    :cond_c3
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$6(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 3

    .line 1250
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->hasBalPermission(II)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 1251
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x6

    const-string v0, "START_ACTIVITIES_FROM_BACKGROUND permission granted"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1254
    :cond_1b
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$7(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 4

    .line 1258
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 1260
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x7

    const-string v0, "SYSTEM_ALERT_WINDOW permission is granted"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 1261
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1263
    :cond_23
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$8(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 4

    .line 1268
    invoke-static {}, Lcom/android/server/wm/BackgroundActivityStartController;->isSystemExemptFlagEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x82

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2b

    .line 1271
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x6

    const-string v0, "OP_SYSTEM_EXEMPT_FROM_ACTIVITY_BG_START_RESTRICTION appop is granted"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 1273
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1275
    :cond_2b
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$9(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 4

    .line 1282
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$showToast$22(Ljava/lang/String;)V
    .registers 3

    .line 1624
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1625
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final logAsmFailureAndCheckFeatureEnabled(Lcom/android/server/wm/ActivityRecord;IIZZLcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;Z)Z
    .registers 44

    move/from16 v13, p4

    move-object/from16 v4, p6

    const/4 v14, 0x0

    if-nez v4, :cond_9

    move-object v7, v14

    goto :goto_13

    .line 1538
    :cond_9
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda32;-><init>()V

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v7, v0

    :goto_13
    const/4 v15, 0x1

    if-nez v13, :cond_2a

    if-nez p1, :cond_19

    goto :goto_2a

    .line 1542
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    move/from16 v26, v15

    goto :goto_2c

    :cond_26
    const/4 v0, 0x2

    :goto_27
    move/from16 v26, v0

    goto :goto_2c

    :cond_2a
    :goto_2a
    const/4 v0, 0x3

    goto :goto_27

    .line 1546
    :goto_2c
    invoke-static/range {p10 .. p10}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v0

    const/16 v31, 0x0

    if-eqz v0, :cond_49

    .line 1547
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/BackgroundActivityStartController;->shouldRestrictActivitySwitch(I)Z

    move-result v0

    if-eqz v0, :cond_49

    move v8, v15

    :goto_3b
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v1, p2

    move/from16 v6, p5

    move/from16 v5, p11

    move-object v3, v4

    move-object/from16 v4, p8

    goto :goto_4c

    :cond_49
    move/from16 v8, v31

    goto :goto_3b

    .line 1549
    :goto_4c
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/BackgroundActivityStartController;->allowedByAsmGracePeriod(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;ZZ)Z

    move-result v11

    .line 1552
    const-string v1, "Launch"

    invoke-static/range {p10 .. p10}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v6, p3

    move/from16 v10, p5

    move-object/from16 v4, p6

    move-object/from16 v3, p7

    move/from16 v9, p11

    move-object v5, v7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BalVerdict;ZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v30

    if-eqz v2, :cond_74

    .line 1559
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    move/from16 v17, v0

    goto :goto_76

    :cond_74
    move/from16 v17, p2

    :goto_76
    if-eqz v2, :cond_7f

    .line 1561
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_81

    :cond_7f
    move-object/from16 v18, v14

    :goto_81
    if-eqz v5, :cond_8a

    .line 1563
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    :goto_87
    move/from16 v19, v0

    goto :goto_8c

    :cond_8a
    const/4 v0, -0x1

    goto :goto_87

    :goto_8c
    if-eqz v5, :cond_92

    .line 1565
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_92
    move-object/from16 v20, v14

    if-nez v13, :cond_a8

    if-eqz v2, :cond_a8

    if-eqz v4, :cond_a8

    .line 1568
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    goto :goto_a8

    :cond_a5
    move/from16 v21, v31

    goto :goto_aa

    :cond_a8
    :goto_a8
    move/from16 v21, v15

    .line 1570
    :goto_aa
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v22

    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1574
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    if-eqz v4, :cond_cf

    if-eqz v2, :cond_cf

    .line 1583
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_cf

    move/from16 v28, v15

    goto :goto_d1

    :cond_cf
    move/from16 v28, v31

    .line 1585
    :goto_d1
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isBasedOnCaller()Z

    move-result v1

    if-eqz v1, :cond_de

    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getCode()I

    move-result v1

    :goto_db
    move/from16 v29, v1

    goto :goto_e0

    :cond_de
    const/4 v1, 0x5

    goto :goto_db

    :goto_e0
    const/16 v16, 0x1ef

    const/16 v27, 0xc

    move/from16 v25, p9

    move-object/from16 v23, v0

    .line 1557
    invoke-static/range {v16 .. v30}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIIZILjava/lang/String;)V

    move-object/from16 v0, v30

    .line 1590
    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1591
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/BackgroundActivityStartController;->shouldShowToast(I)Z

    move-result v4

    const-string v6, "ActivityTaskManager"

    if-eqz v4, :cond_128

    .line 1592
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "go/android-asm"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_106

    .line 1593
    const-string v7, " blocked "

    goto :goto_108

    :cond_106
    const-string v7, " would block "

    :goto_108
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getApplicationLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, p0

    .line 1596
    invoke-virtual {v7, v4}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    .line 1598
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_128
    if-eqz v8, :cond_164

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] Abort Launching r: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as source: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_13f

    move-object v1, v2

    .line 1604
    :cond_13f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is in background. New task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ". Top activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". BAL Verdict: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1602
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v31

    :cond_164
    return v15
.end method

.method public onActivityRequestedFinishing(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 2239
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 2240
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v0, :cond_22

    .line 2241
    iget v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v1

    if-eqz v1, :cond_22

    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mLaunchCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_22

    goto :goto_51

    .line 2246
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_33

    .line 2247
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq p1, v0, :cond_33

    goto :goto_51

    .line 2251
    :cond_33
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/ActivityRecord;)V

    .line 2252
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2253
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz p1, :cond_51

    .line 2254
    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    :cond_51
    :goto_51
    return-void
.end method

.method public onNewActivityLaunched(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 2263
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3d

    .line 2267
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 2268
    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 2271
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 2272
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v0, :cond_3d

    .line 2273
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mTaskId:I

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->isTaskId(I)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 2274
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    iget p1, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    :goto_3d
    return-void
.end method

.method public removeStrictModeCallback(ILandroid/os/IBinder;)V
    .registers 6

    .line 1057
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1058
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    .line 1059
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz p2, :cond_27

    .line 1060
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_27

    .line 1063
    :cond_14
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_25

    .line 1065
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_29

    .line 1067
    :cond_25
    :goto_25
    monitor-exit v0

    return-void

    .line 1061
    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    .line 1067
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_23

    throw p0
.end method

.method public shouldLogIntentActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .registers 5

    .line 2190
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isBasedOnRealCaller()Z

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x2710

    if-eqz p0, :cond_12

    .line 2191
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p0

    if-ge p0, v1, :cond_11

    return v0

    :cond_11
    return p1

    .line 2192
    :cond_12
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p0

    if-ge p0, v1, :cond_19

    return v0

    :cond_19
    return p1
.end method

.method public shouldLogStats(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .registers 4

    .line 2175
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getCode()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_16

    .line 2176
    invoke-virtual {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_f

    return p2

    .line 2180
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isBasedOnRealCaller()Z

    move-result p0

    if-eqz p0, :cond_16

    return p2

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4

    .line 1624
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 16

    .line 2097
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->blocks()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isActivityStartsLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2099
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2100
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v4

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUidProcState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v6

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUidHasVisibleActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_3d

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUidHasNonAppVisibleWindow(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3d

    :cond_39
    move v0, v7

    move v7, v8

    move v9, v7

    goto :goto_3f

    :cond_3d
    :goto_3d
    move v0, v7

    move v9, v8

    :goto_3f
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v8

    move v10, v9

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUidProcState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v9

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUidHasVisibleActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v11

    if-nez v11, :cond_57

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUidHasNonAppVisibleWindow(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v11

    if-eqz v11, :cond_55

    goto :goto_57

    :cond_55
    move v11, v10

    goto :goto_59

    :cond_57
    :goto_57
    move v11, v10

    move v10, v0

    :goto_59
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmOriginatingPendingIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v12

    if-eqz v12, :cond_60

    move v11, v0

    .line 2101
    :cond_60
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/ActivityMetricsLogger;->logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V

    :cond_63
    const/16 v0, 0x8

    .line 2116
    invoke-static {p1, p2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity start is only allowed by grace period. This may stop working in the future. intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2120
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->strictModeLaunchAborted(ILjava/lang/String;)V

    :cond_87
    const/16 v0, 0xb

    .line 2122
    invoke-static {p1, p2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z

    const/16 v0, 0xe

    .line 2123
    invoke-static {p1, p2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z

    const/16 v0, 0xf

    .line 2124
    invoke-static {p1, p2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z

    .line 2126
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->shouldLogStats(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 2128
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->shouldLogIntentActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 2129
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_ab

    .line 2130
    const-string v0, "noIntent"

    goto :goto_bc

    .line 2131
    :cond_ab
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_bc

    .line 2133
    :cond_ba
    const-string v0, ""

    .line 2135
    :goto_bc
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getCode()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->writeBalAllowedLog(Ljava/lang/String;ILcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    return-object p1

    .line 2137
    :cond_c4
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getCode()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->writeBalAllowedLogMinimal(Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)V

    return-object p1
.end method

.method public final strictModeLaunchAborted(ILjava/lang/String;)V
    .registers 6

    .line 1072
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->getStrictModeBalCallbacks(I)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_2f

    .line 1077
    :cond_7
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1079
    :try_start_1b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IBackgroundActivityLaunchCallback;

    invoke-interface {v2, p2}, Landroid/app/IBackgroundActivityLaunchCallback;->onBackgroundActivityLaunchAborted(Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25

    goto :goto_f

    .line 1081
    :catch_25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->removeStrictModeCallback(ILandroid/os/IBinder;)V

    goto :goto_f

    :cond_2f
    :goto_2f
    return-void
.end method

.method public writeBalAllowedLog(Ljava/lang/String;ILcom/android/server/wm/BackgroundActivityStartController$BalState;)V
    .registers 17

    move-object/from16 v0, p3

    .line 2196
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v3

    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v4

    .line 2201
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    const/16 v2, 0x7f

    if-nez v1, :cond_14

    move v5, v2

    goto :goto_1d

    :cond_14
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getCode()I

    move-result v1

    move v5, v1

    :goto_1d
    iget-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    .line 2202
    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v6

    .line 2203
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptInOrOut()Z

    move-result v7

    .line 2204
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    if-nez v1, :cond_2f

    :goto_2d
    move v8, v2

    goto :goto_38

    .line 2205
    :cond_2f
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getCode()I

    move-result v2

    goto :goto_2d

    :goto_38
    iget-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 2206
    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v9

    .line 2207
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptInOrOut()Z

    move-result v10

    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v1

    .line 2208
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v11

    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v0

    .line 2209
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v12

    const/16 v0, 0x278

    move-object v1, p1

    move v2, p2

    .line 2196
    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIIIZZIZZII)V

    return-void
.end method

.method public writeBalAllowedLogMinimal(Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2219
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    const/16 v3, 0x7f

    if-nez v2, :cond_e

    move v9, v3

    goto :goto_17

    :cond_e
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getCode()I

    move-result v2

    move v9, v2

    :goto_17
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    .line 2220
    invoke-virtual {v2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v10

    .line 2221
    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptInOrOut()Z

    move-result v11

    .line 2222
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    if-nez v2, :cond_29

    :goto_27
    move v12, v3

    goto :goto_32

    .line 2223
    :cond_29
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getCode()I

    move-result v3

    goto :goto_27

    :goto_32
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 2224
    invoke-virtual {v2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v13

    .line 2225
    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptInOrOut()Z

    move-result v14

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v2

    .line 2226
    invoke-virtual {v0, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v15

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v1

    .line 2227
    invoke-virtual {v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v16

    const/16 v4, 0x278

    .line 2214
    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static/range {v4 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIIIZZIZZII)V

    return-void
.end method
