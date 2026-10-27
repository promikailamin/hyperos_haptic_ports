.class public Lcom/android/server/appop/AppOpsServiceStub;
.super Ljava/lang/Object;
.source "AppOpsServiceStub.java"


# static fields
.field public static final FLAG_NOT_RECORD:I = 0x20

.field public static final OPERATION_TYPE_AI_ALLOW:I = 0x5

.field public static final OPERATION_TYPE_FINISH:I = 0x3

.field public static final OPERATION_TYPE_NOTE:I = 0x1

.field public static final OPERATION_TYPE_RESTRICTED:I = 0x7

.field public static final OPERATION_TYPE_START:I = 0x2

.field public static final OPERATION_TYPE_USER_ALLOW:I = 0x6

.field public static final OPERATION_TYPE_VIRTUAL:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/appop/AppOpsServiceStub;
    .registers 1

    .line 23
    const-class v0, Lcom/android/server/appop/AppOpsServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsServiceStub;

    return-object v0
.end method


# virtual methods
.method public askOperationLocked(IILjava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public assessVirtualEnable(III)Z
    .registers 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public convertVirtualOp(I)I
    .registers 3
    .param p1, "code"    # I

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getNotificationRequestDelay(Landroid/content/pm/ActivityInfo;)I
    .registers 3
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    return-void
.end method

.method public initSwitchedOp(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 78
    .local p1, "switchedOps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    return-void
.end method

.method public isSupportVirtualGrant(I)Z
    .registers 3
    .param p1, "code"    # I

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onAppApplyOperation(ILjava/lang/String;IIIIIZ)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "op"    # I
    .param p4, "mode"    # I
    .param p5, "operationType"    # I
    .param p6, "processState"    # I
    .param p7, "capability"    # I
    .param p8, "appWidgetVisible"    # Z

    .line 36
    return-void
.end method

.method public onAppApplyOperation(ILjava/lang/String;IIIIIZILjava/lang/String;)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "op"    # I
    .param p4, "mode"    # I
    .param p5, "operationType"    # I
    .param p6, "processState"    # I
    .param p7, "capability"    # I
    .param p8, "appWidgetVisible"    # Z
    .param p9, "flags"    # I
    .param p10, "message"    # Ljava/lang/String;

    .line 33
    return-void
.end method

.method public registerCallback(Landroid/os/IBinder;)I
    .registers 3
    .param p1, "callback"    # Landroid/os/IBinder;

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public registerCallback(Landroid/os/IBinder;I)I
    .registers 4
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public skipNotificationRequest(Landroid/content/pm/ActivityInfo;)Z
    .registers 3
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public skipSyncAppOpsWithRuntime(III)Z
    .registers 5
    .param p1, "code"    # I
    .param p2, "mode"    # I
    .param p3, "oldMode"    # I

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public supportForegroundByMiui(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public systemReady()V
    .registers 1

    .line 28
    return-void
.end method

.method public updateProcessState(II)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 30
    return-void
.end method
