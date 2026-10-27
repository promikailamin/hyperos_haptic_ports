.class public Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;
.super Ljava/lang/Object;
.source "DisplayWindowPolicyControllerHelper.java"


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

.field public mRunningUidPackagePairs:Landroid/util/ArraySet;

.field public mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public static synthetic $r8$lambda$yfZfl2PliRnd_2KVsTr2KO03HDc([ZLandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 191
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    .line 192
    aget-boolean v1, p0, v0

    new-instance v2, Landroid/util/Pair;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v1

    aput-boolean p1, p0, v0

    :cond_1f
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    .line 62
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mRunningUidPackagePairs:Landroid/util/ArraySet;

    .line 65
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 66
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 67
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayWindowPolicyController(I)Landroid/window/DisplayWindowPolicyController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    return-void
.end method


# virtual methods
.method public canActivityBeLaunched(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IIZZLjava/util/function/Supplier;)Z
    .registers 9

    move-object v0, p0

    .line 105
    iget-object p0, v0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez p0, :cond_16

    .line 108
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->hasDisplayCategory(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_d

    return p2

    .line 111
    :cond_d
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->launchAllowedByDisplayPolicy(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    if-nez p0, :cond_14

    return p2

    :cond_14
    const/4 p0, 0x1

    return p0

    .line 116
    :cond_16
    invoke-virtual/range {p0 .. p7}, Landroid/window/DisplayWindowPolicyController;->canActivityBeLaunched(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IIZZLjava/util/function/Supplier;)Z

    move-result p0

    return p0
.end method

.method public canContainActivities(Ljava/util/List;I)Z
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez v0, :cond_2b

    const/4 p2, 0x0

    move v0, p2

    .line 83
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->hasDisplayCategory(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-eqz v1, :cond_19

    return p2

    .line 89
    :cond_19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->launchAllowedByDisplayPolicy(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_26

    return p2

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_29
    const/4 p0, 0x1

    return p0

    .line 95
    :cond_2b
    invoke-virtual {v0, p1, p2}, Landroid/window/DisplayWindowPolicyController;->canContainActivities(Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public final canShowTasksInHostDeviceRecents()Z
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 224
    :cond_6
    invoke-virtual {p0}, Landroid/window/DisplayWindowPolicyController;->canShowTasksInHostDeviceRecents()Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-eqz v0, :cond_c

    .line 250
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 251
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    invoke-virtual {p0, p1, p2}, Landroid/window/DisplayWindowPolicyController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_c
    return-void
.end method

.method public getCustomHomeComponent()Landroid/content/ComponentName;
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 245
    :cond_6
    invoke-virtual {p0}, Landroid/window/DisplayWindowPolicyController;->getCustomHomeComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public hasController()Z
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final hasDisplayCategory(Landroid/content/pm/ActivityInfo;)Z
    .registers 2

    .line 121
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-eqz p1, :cond_1d

    .line 122
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 125
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 123
    const-string p1, "Checking activity launch with requiredDisplayCategory=\'%s\' on display %d, which doesn\'t have a matching category."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 122
    const-string p1, "DisplayWindowPolicyControllerHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public final isEnteringPipAllowed(I)Z
    .registers 2

    .line 231
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 234
    :cond_6
    invoke-virtual {p0, p1}, Landroid/window/DisplayWindowPolicyController;->isEnteringPipAllowed(I)Z

    move-result p0

    return p0
.end method

.method public final isWindowingModeSupported(I)Z
    .registers 2

    .line 211
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 214
    :cond_6
    invoke-virtual {p0, p1}, Landroid/window/DisplayWindowPolicyController;->isWindowingModeSupported(I)Z

    move-result p0

    return p0
.end method

.method public keepActivityOnWindowFlagsChanged(Landroid/content/pm/ActivityInfo;IIII)Z
    .registers 8

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 157
    :cond_6
    invoke-virtual {v0, p2, p3}, Landroid/window/DisplayWindowPolicyController;->isInterestedWindowFlags(II)Z

    move-result p2

    if-nez p2, :cond_d

    return v1

    .line 162
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    invoke-virtual {p0, p1, p4, p5}, Landroid/window/DisplayWindowPolicyController;->keepActivityOnWindowFlagsChanged(Landroid/content/pm/ActivityInfo;II)Z

    move-result p0

    return p0
.end method

.method public final launchAllowedByDisplayPolicy(Landroid/content/pm/ActivityInfo;)Z
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    return v2

    .line 137
    :cond_12
    iget p1, p1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v0, 0x10000

    and-int/2addr p1, v0

    if-nez p1, :cond_40

    iget-object p1, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 138
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_40

    .line 139
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 142
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 140
    const-string p1, "Checking activity launch on display %d, activity requires android:canDisplayOnRemoteDevices=true"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 139
    const-string p1, "DisplayWindowPolicyControllerHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_40
    return v2
.end method

.method public onRunningActivityChanged()V
    .registers 7

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez v0, :cond_5

    goto :goto_56

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 175
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v3, :cond_32

    .line 176
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_1f

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    const/4 v3, -0x1

    const/16 v4, -0x2710

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3, v4}, Landroid/window/DisplayWindowPolicyController;->onTopActivityChanged(Landroid/content/ComponentName;II)V

    goto :goto_32

    .line 181
    :cond_1f
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 182
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 181
    invoke-virtual {v3, v4, v5, v0}, Landroid/window/DisplayWindowPolicyController;->onTopActivityChanged(Landroid/content/ComponentName;II)V

    .line 188
    :cond_32
    :goto_32
    new-array v0, v2, [Z

    aput-boolean v1, v0, v1

    .line 189
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 190
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v4, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v2}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper$$ExternalSyntheticLambda0;-><init>([ZLandroid/util/ArraySet;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 200
    aget-boolean v0, v0, v1

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mRunningUidPackagePairs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-eq v0, v1, :cond_56

    goto :goto_57

    :cond_56
    :goto_56
    return-void

    .line 201
    :cond_57
    :goto_57
    iput-object v2, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mRunningUidPackagePairs:Landroid/util/ArraySet;

    .line 202
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    invoke-virtual {p0, v2}, Landroid/window/DisplayWindowPolicyController;->onRunningAppsChanged(Landroid/util/ArraySet;)V

    return-void
.end method
