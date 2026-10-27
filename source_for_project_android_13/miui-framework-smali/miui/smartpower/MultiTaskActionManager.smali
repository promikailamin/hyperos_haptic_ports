.class public Lmiui/smartpower/MultiTaskActionManager;
.super Ljava/lang/Object;
.source "MultiTaskActionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/smartpower/MultiTaskActionManager$ActionInfo;
    }
.end annotation


# static fields
.field private static final blacklist BASE_TYPE_MASK:I = -0x1000

.field public static final blacklist CVW_ACTION_RESIZE:I = 0x3001

.field private static final blacklist DETAIL_TYPE_MASK:I = 0xfff

.field public static final blacklist FREEFORM_ACTION_CLOSE:I = 0x1003

.field public static final blacklist FREEFORM_ACTION_ELUDE:I = 0x1006

.field public static final blacklist FREEFORM_ACTION_ENTER_FULL_SCREEN:I = 0x1005

.field public static final blacklist FREEFORM_ACTION_MOVE:I = 0x1001

.field public static final blacklist FREEFORM_ACTION_RESIZE:I = 0x1004

.field public static final blacklist FREEFORM_ACTION_SHOW:I = 0x1002

.field public static final blacklist MULTI_TASK_TYPE_CVW:I = 0x3000

.field public static final blacklist MULTI_TASK_TYPE_FREE_FORM:I = 0x1000

.field public static final blacklist MULTI_TASK_TYPE_MWS:I = 0x4000

.field public static final blacklist MULTI_TASK_TYPE_SPLICT_SCREEN:I = 0x2000

.field public static final blacklist MWS_ACTION_MOVE:I = 0x4001

.field public static final blacklist SPLITSCREEN_ACTION_MOVE_DIVIDER:I = 0x2001

.field private static final blacklist TAG:Ljava/lang/String; = "MultiTaskActionManager"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static blacklist actionTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 97
    sparse-switch p0, :sswitch_data_22

    .line 117
    const-string v0, "unknown type"

    return-object v0

    .line 115
    :sswitch_6
    const-string v0, "multi window swtich action: move"

    return-object v0

    .line 113
    :sswitch_9
    const-string v0, "cvw action: resize"

    return-object v0

    .line 111
    :sswitch_c
    const-string v0, "split screen action: move divider"

    return-object v0

    .line 109
    :sswitch_f
    const-string v0, "free form action: elude"

    return-object v0

    .line 105
    :sswitch_12
    const-string v0, "free form action: enter full screen"

    return-object v0

    .line 107
    :sswitch_15
    const-string v0, "free form action: resize"

    return-object v0

    .line 103
    :sswitch_18
    const-string v0, "free form action: close"

    return-object v0

    .line 101
    :sswitch_1b
    const-string v0, "free form action: show"

    return-object v0

    .line 99
    :sswitch_1e
    const-string v0, "free form action: move"

    return-object v0

    nop

    :sswitch_data_22
    .sparse-switch
        0x1001 -> :sswitch_1e
        0x1002 -> :sswitch_1b
        0x1003 -> :sswitch_18
        0x1004 -> :sswitch_15
        0x1005 -> :sswitch_12
        0x1006 -> :sswitch_f
        0x2001 -> :sswitch_c
        0x3001 -> :sswitch_9
        0x4001 -> :sswitch_6
    .end sparse-switch
.end method

.method public static blacklist getBaseActionType(I)I
    .registers 2
    .param p0, "detailType"    # I

    .line 77
    and-int/lit16 v0, p0, -0x1000

    return v0
.end method

.method public static blacklist isCVWAction(I)Z
    .registers 3
    .param p0, "type"    # I

    .line 89
    invoke-static {p0}, Lmiui/smartpower/MultiTaskActionManager;->getBaseActionType(I)I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist isFreeFormAction(I)Z
    .registers 3
    .param p0, "type"    # I

    .line 81
    invoke-static {p0}, Lmiui/smartpower/MultiTaskActionManager;->getBaseActionType(I)I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist isMultiWindowSwitchAction(I)Z
    .registers 3
    .param p0, "type"    # I

    .line 93
    invoke-static {p0}, Lmiui/smartpower/MultiTaskActionManager;->getBaseActionType(I)I

    move-result v0

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist isSplictScreenAction(I)Z
    .registers 3
    .param p0, "type"    # I

    .line 85
    invoke-static {p0}, Lmiui/smartpower/MultiTaskActionManager;->getBaseActionType(I)I

    move-result v0

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public blacklist getRenderThreadTid()I
    .registers 2

    .line 64
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lmiui/process/ProcessManager;->getRenderThreadTidByPid(I)I

    move-result v0

    return v0
.end method

.method public blacklist notifyMultiTaskActionEnd(Lmiui/smartpower/MultiTaskActionManager$ActionInfo;)V
    .registers 4
    .param p1, "actionInfo"    # Lmiui/smartpower/MultiTaskActionManager$ActionInfo;

    .line 72
    invoke-static {}, Lmiui/smartpower/SmartPowerManager;->getService()Lmiui/smartpower/SmartPowerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/smartpower/SmartPowerManager;->onMultiTaskActionEnd(Lmiui/smartpower/MultiTaskActionManager$ActionInfo;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMultiTaskActionEnd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiTaskActionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public blacklist notifyMultiTaskActionStart(Lmiui/smartpower/MultiTaskActionManager$ActionInfo;)V
    .registers 4
    .param p1, "actionInfo"    # Lmiui/smartpower/MultiTaskActionManager$ActionInfo;

    .line 68
    invoke-static {}, Lmiui/smartpower/SmartPowerManager;->getService()Lmiui/smartpower/SmartPowerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/smartpower/SmartPowerManager;->onMultiTaskActionStart(Lmiui/smartpower/MultiTaskActionManager$ActionInfo;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMultiTaskActionStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiTaskActionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method
