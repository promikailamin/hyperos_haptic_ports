.class public Lcom/android/server/wm/StartingSurfaceController;
.super Ljava/lang/Object;
.source "StartingSurfaceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/StartingSurfaceController$StartingSurface;,
        Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;
    }
.end annotation


# static fields
.field private static final ALLOW_COPY_SOLID_COLOR_VIEW:J = 0xc45e600L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDeferringAddStartActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferringAddStartingWindow:Z

.field mInitNewTask:Z

.field mInitProcessRunning:Z

.field mInitTaskSwitch:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;


# direct methods
.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/StartingSurfaceController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-string v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    .line 77
    iput-object p1, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 78
    new-instance v0, Lcom/android/server/wm/SplashScreenExceptionList;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/SplashScreenExceptionList;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;

    .line 79
    return-void
.end method

.method private addDeferringRecord(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V
    .registers 8
    .param p1, "deferring"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "newTask"    # Z
    .param p4, "isTaskSwitch"    # Z
    .param p5, "source"    # Lcom/android/server/wm/ActivityRecord;

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 211
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitProcessRunning:Z

    .line 212
    iput-boolean p3, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitNewTask:Z

    .line 213
    iput-boolean p4, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitTaskSwitch:Z

    .line 215
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;

    invoke-direct {v1, p1, p2, p5}, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method static makeStartingWindowTypeParameter(ZZZZZZZZILjava/lang/String;I)I
    .registers 15
    .param p0, "newTask"    # Z
    .param p1, "taskSwitch"    # Z
    .param p2, "processRunning"    # Z
    .param p3, "allowTaskSnapshot"    # Z
    .param p4, "activityCreated"    # Z
    .param p5, "isSolidColor"    # Z
    .param p6, "useLegacy"    # Z
    .param p7, "activityDrawn"    # Z
    .param p8, "startingWindowType"    # I
    .param p9, "packageName"    # Ljava/lang/String;
    .param p10, "userId"    # I

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "parameter":I
    if-eqz p0, :cond_5

    .line 107
    or-int/lit8 v0, v0, 0x1

    .line 109
    :cond_5
    if-eqz p1, :cond_9

    .line 110
    or-int/lit8 v0, v0, 0x2

    .line 112
    :cond_9
    if-eqz p2, :cond_d

    .line 113
    or-int/lit8 v0, v0, 0x4

    .line 115
    :cond_d
    if-eqz p3, :cond_11

    .line 116
    or-int/lit8 v0, v0, 0x8

    .line 118
    :cond_11
    if-nez p4, :cond_16

    const/4 v1, 0x1

    if-ne p8, v1, :cond_18

    .line 119
    :cond_16
    or-int/lit8 v0, v0, 0x10

    .line 121
    :cond_18
    if-eqz p5, :cond_1c

    .line 122
    or-int/lit8 v0, v0, 0x20

    .line 124
    :cond_1c
    if-eqz p6, :cond_21

    .line 125
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 127
    :cond_21
    if-eqz p7, :cond_25

    .line 128
    or-int/lit8 v0, v0, 0x40

    .line 130
    :cond_25
    const/4 v1, 0x2

    if-ne p8, v1, :cond_37

    const-wide/32 v1, 0xc45e600

    .line 132
    invoke-static {p10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 131
    invoke-static {v1, v2, p9, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 133
    or-int/lit16 v0, v0, 0x80

    .line 135
    :cond_37
    return v0
.end method

.method private showStartingWindowFromDeferringActivities(Landroid/app/ActivityOptions;)V
    .registers 14
    .param p1, "topOptions"    # Landroid/app/ActivityOptions;

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_62

    .line 222
    iget-object v1, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;

    .line 223
    .local v1, "next":Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;
    iget-object v2, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_47

    .line 224
    sget-object v2, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No task exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    .line 225
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    goto :goto_5f

    .line 228
    :cond_47
    iget-object v4, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mPrev:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v6, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitNewTask:Z

    iget-boolean v7, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitTaskSwitch:Z

    iget-boolean v8, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitProcessRunning:Z

    const/4 v9, 0x1

    iget-object v10, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mSource:Lcom/android/server/wm/ActivityRecord;

    move-object v11, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 231
    iget-object v2, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_5f

    .line 232
    goto :goto_62

    .line 221
    .end local v1    # "next":Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;
    :cond_5f
    :goto_5f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 235
    .end local v0    # "i":I
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 236
    return-void
.end method


# virtual methods
.method beginDeferAddStartingWindow()V
    .registers 2

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    .line 247
    return-void
.end method

.method createSplashScreenStartingSurface(Lcom/android/server/wm/ActivityRecord;II)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
    .registers 12
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "theme"    # I
    .param p3, "mOverrideTheme"    # I

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 84
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 85
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_29

    iget-object v2, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const/4 v6, 0x0

    move-object v3, v1

    move-object v4, p1

    move v5, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TaskOrganizerController;->addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 87
    new-instance v2, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;-><init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;)V

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 89
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_29
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 89
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method createTaskSnapshotSurface(Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
    .registers 13
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "taskSnapshot"    # Landroid/window/TaskSnapshot;

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 142
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 143
    .local v1, "task":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    if-nez v1, :cond_2c

    .line 144
    sget-object v3, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TaskSnapshotSurface.create: Failed to find task for activity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 148
    :cond_2c
    nop

    .line 149
    :try_start_2d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    move-object v8, v3

    .line 150
    .local v8, "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    if-nez v8, :cond_55

    .line 151
    sget-object v3, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TaskSnapshotSurface.create: Failed to find top fullscreen for task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_2d .. :try_end_51} :catchall_a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 155
    :cond_55
    :try_start_55
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    move-object v9, v3

    .line 156
    .local v9, "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    if-nez v9, :cond_79

    .line 157
    sget-object v3, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TaskSnapshotSurface.create: no opaque window in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_55 .. :try_end_75} :catchall_a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 161
    :cond_79
    :try_start_79
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getRotation()I

    move-result v3

    if-eq v2, v3, :cond_8b

    .line 166
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 169
    :cond_8b
    iget-object v2, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TaskOrganizerController;->addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;I)Z

    .line 171
    new-instance v2, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;-><init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;)V

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_79 .. :try_end_9f} :catchall_a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 172
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v8    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    :catchall_a3
    move-exception v1

    :try_start_a4
    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "topOptions"    # Landroid/app/ActivityOptions;

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    .line 254
    invoke-direct {p0, p1}, Lcom/android/server/wm/StartingSurfaceController;->showStartingWindowFromDeferringActivities(Landroid/app/ActivityOptions;)V

    .line 255
    return-void
.end method

.method isExceptionApp(Ljava/lang/String;ILjava/util/function/Supplier;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .line 98
    .local p3, "infoProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SplashScreenExceptionList;->isException(Ljava/lang/String;ILjava/util/function/Supplier;)Z

    move-result v0

    return v0
.end method

.method showStartingWindow(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V
    .registers 13
    .param p1, "target"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "newTask"    # Z
    .param p4, "isTaskSwitch"    # Z
    .param p5, "source"    # Lcom/android/server/wm/ActivityRecord;

    .line 194
    iget-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    if-eqz v0, :cond_8

    .line 195
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/StartingSurfaceController;->addDeferringRecord(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_11

    .line 197
    :cond_8
    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZLcom/android/server/wm/ActivityRecord;)V

    .line 200
    :goto_11
    return-void
.end method
