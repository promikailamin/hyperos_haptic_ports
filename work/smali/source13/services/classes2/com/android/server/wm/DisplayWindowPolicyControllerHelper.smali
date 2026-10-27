.class Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;
.super Ljava/lang/Object;
.source "DisplayWindowPolicyControllerHelper.java"


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

.field private mRunningUid:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    .line 51
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mRunningUid:Landroid/util/ArraySet;

    .line 54
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 55
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 56
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayWindowPolicyController(I)Landroid/window/DisplayWindowPolicyController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    .line 57
    return-void
.end method

.method static synthetic lambda$onRunningActivityChanged$0([ZLandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p0, "notifyChanged"    # [Z
    .param p1, "runningUids"    # Landroid/util/ArraySet;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 129
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_16

    .line 130
    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    aput-boolean v1, p0, v0

    .line 132
    :cond_16
    return-void
.end method


# virtual methods
.method public canActivityBeLaunched(Landroid/content/pm/ActivityInfo;IIZ)Z
    .registers 6
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "windowingMode"    # I
    .param p3, "launchingFromDisplayId"    # I
    .param p4, "isNewTask"    # Z

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez v0, :cond_6

    .line 84
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_6
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/window/DisplayWindowPolicyController;->canActivityBeLaunched(Landroid/content/pm/ActivityInfo;IIZ)Z

    move-result v0

    return v0
.end method

.method public canContainActivities(Ljava/util/List;I)Z
    .registers 4
    .param p2, "windowingMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 71
    .local p1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez v0, :cond_6

    .line 72
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_6
    invoke-virtual {v0, p1, p2}, Landroid/window/DisplayWindowPolicyController;->canContainActivities(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public final canShowTasksInRecents()Z
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez v0, :cond_6

    .line 160
    const/4 v0, 0x1

    return v0

    .line 162
    :cond_6
    invoke-virtual {v0}, Landroid/window/DisplayWindowPolicyController;->canShowTasksInRecents()Z

    move-result v0

    return v0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-eqz v0, :cond_c

    .line 167
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    invoke-virtual {v0, p1, p2}, Landroid/window/DisplayWindowPolicyController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 170
    :cond_c
    return-void
.end method

.method public hasController()Z
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final isWindowingModeSupported(I)Z
    .registers 3
    .param p1, "windowingMode"    # I

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez v0, :cond_6

    .line 150
    const/4 v0, 0x1

    return v0

    .line 152
    :cond_6
    invoke-virtual {v0, p1}, Landroid/window/DisplayWindowPolicyController;->isWindowingModeSupported(I)Z

    move-result v0

    return v0
.end method

.method keepActivityOnWindowFlagsChanged(Landroid/content/pm/ActivityInfo;II)Z
    .registers 6
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "flagChanges"    # I
    .param p3, "privateFlagChanges"    # I

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 96
    return v1

    .line 99
    :cond_6
    invoke-virtual {v0, p2, p3}, Landroid/window/DisplayWindowPolicyController;->isInterestedWindowFlags(II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 101
    return v1

    .line 104
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    invoke-virtual {v0, p1, p2, p3}, Landroid/window/DisplayWindowPolicyController;->keepActivityOnWindowFlagsChanged(Landroid/content/pm/ActivityInfo;II)Z

    move-result v0

    return v0
.end method

.method onRunningActivityChanged()V
    .registers 7

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez v0, :cond_5

    .line 111
    return-void

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 117
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v3, :cond_2d

    .line 118
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    .line 119
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    .line 120
    if-nez v0, :cond_19

    const/4 v4, 0x0

    goto :goto_1f

    :cond_19
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 121
    :goto_1f
    if-nez v0, :cond_24

    .line 122
    const/16 v5, -0x2710

    goto :goto_2a

    :cond_24
    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 119
    :goto_2a
    invoke-virtual {v3, v4, v5}, Landroid/window/DisplayWindowPolicyController;->onTopActivityChanged(Landroid/content/ComponentName;I)V

    .line 126
    :cond_2d
    new-array v2, v2, [Z

    aput-boolean v1, v2, v1

    .line 127
    .local v2, "notifyChanged":[Z
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 128
    .local v3, "runningUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v5, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v3}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper$$ExternalSyntheticLambda0;-><init>([ZLandroid/util/ArraySet;)V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 138
    aget-boolean v1, v2, v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mRunningUid:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-eq v1, v4, :cond_57

    .line 139
    :cond_50
    iput-object v3, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mRunningUid:Landroid/util/ArraySet;

    .line 140
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    invoke-virtual {v1, v3}, Landroid/window/DisplayWindowPolicyController;->onRunningAppsChanged(Landroid/util/ArraySet;)V

    .line 142
    :cond_57
    return-void
.end method
