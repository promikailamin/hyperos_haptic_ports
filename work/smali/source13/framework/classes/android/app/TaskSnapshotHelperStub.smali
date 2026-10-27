.class public interface abstract Landroid/app/TaskSnapshotHelperStub;
.super Ljava/lang/Object;
.source "TaskSnapshotHelperStub.java"


# static fields
.field public static final blacklist sInstance:Landroid/app/TaskSnapshotHelperStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    const-class v0, Landroid/app/TaskSnapshotHelperStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/TaskSnapshotHelperStub;

    sput-object v0, Landroid/app/TaskSnapshotHelperStub;->sInstance:Landroid/app/TaskSnapshotHelperStub;

    return-void
.end method

.method public static blacklist get()Landroid/app/TaskSnapshotHelperStub;
    .registers 1

    .line 16
    sget-object v0, Landroid/app/TaskSnapshotHelperStub;->sInstance:Landroid/app/TaskSnapshotHelperStub;

    return-object v0
.end method


# virtual methods
.method public blacklist checkExpired(Ljava/lang/String;JJ)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "current"    # J
    .param p4, "beforeTime"    # J

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist delayTime(Ljava/lang/String;)J
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 25
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist destroyQS(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 31
    return-void
.end method

.method public blacklist ensureEnable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist ensureEnable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist ensureSysLite(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCompatibilityMode()Z
    .registers 2

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isMiuiHome(Ljava/lang/String;)Z
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setBackgroundWithQS(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setBackgroundWithQS(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist shouldDelay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ActivityInfo;Z)J
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "launchedFromPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "processRunning"    # Z

    .line 27
    const-wide/16 v0, 0x0

    return-wide v0
.end method
