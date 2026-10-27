.class public Lcom/android/server/wm/DisplayAreaOrganizerController;
.super Landroid/window/IDisplayAreaOrganizerController$Stub;
.source "DisplayAreaOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;,
        Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayAreaOrganizerController"


# instance fields
.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mNextTaskDisplayAreaFeatureId:I

.field private final mOrganizersByFeatureIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGlobalLock(Lcom/android/server/wm/DisplayAreaOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrganizersByFeatureIds(Lcom/android/server/wm/DisplayAreaOrganizerController;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdeleteTaskDisplayArea(Lcom/android/server/wm/DisplayAreaOrganizerController;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->deleteTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 112
    invoke-direct {p0}, Landroid/window/IDisplayAreaOrganizerController$Stub;-><init>()V

    .line 49
    const/16 v0, 0x4e22

    iput v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mNextTaskDisplayAreaFeatureId:I

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    .line 113
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 114
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 115
    return-void
.end method

.method private createTaskDisplayArea(Lcom/android/server/wm/RootDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;
    .registers 11
    .param p1, "root"    # Lcom/android/server/wm/RootDisplayArea;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "taskDisplayAreaFeatureId"    # I

    .line 328
    new-instance v6, Lcom/android/server/wm/TaskDisplayArea;

    iget-object v1, p1, Lcom/android/server/wm/RootDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p1, Lcom/android/server/wm/RootDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZ)V

    .line 332
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    new-instance v1, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/RootDisplayArea;)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/RootDisplayArea;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayArea;

    .line 344
    .local v1, "topTaskContainer":Lcom/android/server/wm/DisplayArea;
    if-eqz v1, :cond_2a

    .line 349
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 350
    .local v2, "parent":Lcom/android/server/wm/WindowContainer;
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 351
    .local v3, "index":I
    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 353
    return-object v0

    .line 345
    .end local v2    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "index":I
    :cond_2a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root must either contain TDA or DAG root="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private createTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;
    .registers 11
    .param p1, "parentTda"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "taskDisplayAreaFeatureId"    # I

    .line 361
    new-instance v6, Lcom/android/server/wm/TaskDisplayArea;

    iget-object v1, p1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p1, Lcom/android/server/wm/TaskDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZ)V

    .line 366
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 368
    return-object v0
.end method

.method private deleteTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 4
    .param p1, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 378
    :try_start_d
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->remove()Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_24

    .line 380
    .local v0, "lastReparentedRootTask":Lcom/android/server/wm/Task;
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 381
    nop

    .line 383
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->removeImmediately()V

    .line 387
    if-eqz v0, :cond_23

    .line 388
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    .line 390
    :cond_23
    return-void

    .line 380
    .end local v0    # "lastReparentedRootTask":Lcom/android/server/wm/Task;
    :catchall_24
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 381
    throw v0
.end method

.method private enforceTaskPermission(Ljava/lang/String;)V
    .registers 2
    .param p1, "func"    # Ljava/lang/String;

    .line 118
    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method static synthetic lambda$createTaskDisplayArea$3(ILcom/android/server/wm/DisplayArea;)Lcom/android/server/wm/RootDisplayArea;
    .registers 3
    .param p0, "parentFeatureId"    # I
    .param p1, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 220
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_f

    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-ne v0, p0, :cond_f

    .line 221
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    goto :goto_10

    .line 222
    :cond_f
    const/4 v0, 0x0

    .line 220
    :goto_10
    return-object v0
.end method

.method static synthetic lambda$createTaskDisplayArea$4(ILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 3
    .param p0, "parentFeatureId"    # I
    .param p1, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 228
    iget v0, p1, Lcom/android/server/wm/TaskDisplayArea;->mFeatureId:I

    if-ne v0, p0, :cond_6

    .line 229
    move-object v0, p1

    goto :goto_7

    .line 230
    :cond_6
    const/4 v0, 0x0

    .line 228
    :goto_7
    return-object v0
.end method

.method static synthetic lambda$createTaskDisplayArea$5(Lcom/android/server/wm/RootDisplayArea;Lcom/android/server/wm/DisplayArea;)Lcom/android/server/wm/DisplayArea;
    .registers 5
    .param p0, "root"    # Lcom/android/server/wm/RootDisplayArea;
    .param p1, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 333
    iget-object v0, p1, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 334
    return-object v2

    .line 337
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    .line 338
    .local v0, "rootDA":Lcom/android/server/wm/RootDisplayArea;
    if-eq v0, p0, :cond_12

    if-ne v0, p1, :cond_11

    goto :goto_12

    .line 342
    :cond_11
    return-object v2

    .line 340
    :cond_12
    :goto_12
    return-object p1
.end method

.method static synthetic lambda$unregisterOrganizer$2(Landroid/window/IDisplayAreaOrganizer;Ljava/util/Map$Entry;)Z
    .registers 4
    .param p0, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 183
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-static {v0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;)Landroid/window/IDisplayAreaOrganizer;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 184
    invoke-interface {p0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 185
    .local v0, "matches":Z
    if-eqz v0, :cond_21

    .line 186
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->destroy()V

    .line 188
    :cond_21
    return v0
.end method

.method private organizeDisplayArea(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;Ljava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;
    .registers 8
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "displayArea"    # Lcom/android/server/wm/DisplayArea;
    .param p3, "callsite"    # Ljava/lang/String;

    .line 318
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V

    .line 319
    new-instance v0, Landroid/window/DisplayAreaAppearedInfo;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v1

    new-instance v2, Landroid/view/SurfaceControl;

    .line 320
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Landroid/window/DisplayAreaAppearedInfo;-><init>(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    .line 319
    return-object v0
.end method


# virtual methods
.method public createTaskDisplayArea(Landroid/window/IDisplayAreaOrganizer;IILjava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;
    .registers 24
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "displayId"    # I
    .param p3, "parentFeatureId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 199
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    const-string v0, "createTaskDisplayArea()"

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v6, v0

    .line 201
    .local v6, "uid":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 203
    .local v8, "origId":J
    :try_start_18
    iget-object v10, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v10
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_f6

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 204
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_3a

    move-wide v11, v6

    .local v11, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v13, v15, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v13, v17
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_ea

    move-wide/from16 v17, v6

    const v6, -0x388825e0    # -63450.125f

    .end local v6    # "uid":J
    .local v17, "uid":J
    :try_start_36
    invoke-static {v0, v6, v15, v14, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3c

    .end local v11    # "protoLogParam0":J
    .end local v17    # "uid":J
    .restart local v6    # "uid":J
    :cond_3a
    move-wide/from16 v17, v6

    .line 206
    .end local v6    # "uid":J
    .restart local v17    # "uid":J
    :goto_3c
    iget-object v0, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 207
    invoke-virtual {v0, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 208
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_cf

    .line 212
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 219
    new-instance v6, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;

    invoke-direct {v6, v4}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayContent;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/RootDisplayArea;

    .line 224
    .local v6, "parentRoot":Lcom/android/server/wm/RootDisplayArea;
    if-nez v6, :cond_65

    .line 227
    new-instance v7, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda2;

    invoke-direct {v7, v4}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v7}, Lcom/android/server/wm/DisplayContent;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/TaskDisplayArea;

    .local v7, "parentTda":Lcom/android/server/wm/TaskDisplayArea;
    goto :goto_66

    .line 232
    .end local v7    # "parentTda":Lcom/android/server/wm/TaskDisplayArea;
    :cond_65
    const/4 v7, 0x0

    .line 234
    .restart local v7    # "parentTda":Lcom/android/server/wm/TaskDisplayArea;
    :goto_66
    if-nez v6, :cond_84

    if-eqz v7, :cond_6b

    goto :goto_84

    .line 235
    :cond_6b
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t find a parent DisplayArea with featureId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v8    # "origId":J
    .end local v17    # "uid":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .end local p2    # "displayId":I
    .end local p3    # "parentFeatureId":I
    .end local p4    # "name":Ljava/lang/String;
    throw v11

    .line 239
    .restart local v8    # "origId":J
    .restart local v17    # "uid":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .restart local p2    # "displayId":I
    .restart local p3    # "parentFeatureId":I
    .restart local p4    # "name":Ljava/lang/String;
    :cond_84
    :goto_84
    iget v11, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mNextTaskDisplayAreaFeatureId:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mNextTaskDisplayAreaFeatureId:I

    .line 240
    .local v11, "taskDisplayAreaFeatureId":I
    new-instance v12, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-direct {v12, v1, v2, v11}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V

    .line 243
    .local v12, "state":Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;
    if-eqz v6, :cond_96

    .line 244
    invoke-direct {v1, v6, v5, v11}, Lcom/android/server/wm/DisplayAreaOrganizerController;->createTaskDisplayArea(Lcom/android/server/wm/RootDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v13

    goto :goto_9a

    .line 245
    :cond_96
    invoke-direct {v1, v7, v5, v11}, Lcom/android/server/wm/DisplayAreaOrganizerController;->createTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v13

    :goto_9a
    nop

    .line 246
    .local v13, "tda":Lcom/android/server/wm/TaskDisplayArea;
    const-string v14, "DisplayAreaOrganizerController.createTaskDisplayArea"

    invoke-direct {v1, v2, v13, v14}, Lcom/android/server/wm/DisplayAreaOrganizerController;->organizeDisplayArea(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;Ljava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;

    move-result-object v14

    .line 248
    .local v14, "tdaInfo":Landroid/window/DisplayAreaAppearedInfo;
    iget-object v15, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    move-object/from16 v16, v0

    .end local v0    # "display":Lcom/android/server/wm/DisplayContent;
    .local v16, "display":Lcom/android/server/wm/DisplayContent;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    monitor-exit v10
    :try_end_ad
    .catchall {:try_start_36 .. :try_end_ad} :catchall_f4

    .line 252
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 249
    return-object v14

    .line 213
    .end local v6    # "parentRoot":Lcom/android/server/wm/RootDisplayArea;
    .end local v7    # "parentTda":Lcom/android/server/wm/TaskDisplayArea;
    .end local v11    # "taskDisplayAreaFeatureId":I
    .end local v12    # "state":Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;
    .end local v13    # "tda":Lcom/android/server/wm/TaskDisplayArea;
    .end local v14    # "tdaInfo":Landroid/window/DisplayAreaAppearedInfo;
    .end local v16    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v0    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_b4
    move-object/from16 v16, v0

    .end local v0    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v16    # "display":Lcom/android/server/wm/DisplayContent;
    :try_start_b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createTaskDisplayArea untrusted displayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v8    # "origId":J
    .end local v17    # "uid":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .end local p2    # "displayId":I
    .end local p3    # "parentFeatureId":I
    .end local p4    # "name":Ljava/lang/String;
    throw v0

    .line 209
    .end local v16    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v0    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v8    # "origId":J
    .restart local v17    # "uid":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .restart local p2    # "displayId":I
    .restart local p3    # "parentFeatureId":I
    .restart local p4    # "name":Ljava/lang/String;
    :cond_cf
    move-object/from16 v16, v0

    .end local v0    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v16    # "display":Lcom/android/server/wm/DisplayContent;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createTaskDisplayArea unknown displayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v8    # "origId":J
    .end local v17    # "uid":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .end local p2    # "displayId":I
    .end local p3    # "parentFeatureId":I
    .end local p4    # "name":Ljava/lang/String;
    throw v0

    .line 250
    .end local v16    # "display":Lcom/android/server/wm/DisplayContent;
    .local v6, "uid":J
    .restart local v8    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .restart local p2    # "displayId":I
    .restart local p3    # "parentFeatureId":I
    .restart local p4    # "name":Ljava/lang/String;
    :catchall_ea
    move-exception v0

    move-wide/from16 v17, v6

    .end local v6    # "uid":J
    .restart local v17    # "uid":J
    :goto_ed
    monitor-exit v10
    :try_end_ee
    .catchall {:try_start_b6 .. :try_end_ee} :catchall_f4

    :try_start_ee
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v8    # "origId":J
    .end local v17    # "uid":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .end local p2    # "displayId":I
    .end local p3    # "parentFeatureId":I
    .end local p4    # "name":Ljava/lang/String;
    throw v0
    :try_end_f2
    .catchall {:try_start_ee .. :try_end_f2} :catchall_f2

    .line 252
    .restart local v8    # "origId":J
    .restart local v17    # "uid":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .restart local p2    # "displayId":I
    .restart local p3    # "parentFeatureId":I
    .restart local p4    # "name":Ljava/lang/String;
    :catchall_f2
    move-exception v0

    goto :goto_f9

    .line 250
    :catchall_f4
    move-exception v0

    goto :goto_ed

    .line 252
    .end local v17    # "uid":J
    .restart local v6    # "uid":J
    :catchall_f6
    move-exception v0

    move-wide/from16 v17, v6

    .end local v6    # "uid":J
    .restart local v17    # "uid":J
    :goto_f9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 253
    throw v0
.end method

.method public deleteTaskDisplayArea(Landroid/window/WindowContainerToken;)V
    .registers 16
    .param p1, "token"    # Landroid/window/WindowContainerToken;

    .line 258
    const-string v0, "deleteTaskDisplayArea()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 260
    .local v0, "uid":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 262
    .local v2, "origId":J
    :try_start_e
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_85

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 263
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v5, :cond_2c

    move-wide v5, v0

    .local v5, "protoLogParam0":J
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x2396e36f

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v7, v8, v10, v9, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 265
    .end local v5    # "protoLogParam0":J
    :cond_2c
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 266
    .local v5, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v5, :cond_77

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    if-eqz v6, :cond_77

    .line 269
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 270
    .local v6, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-boolean v7, v6, Lcom/android/server/wm/TaskDisplayArea;->mCreatedByOrganizer:Z

    if-eqz v7, :cond_5e

    .line 276
    iget-object v7, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    iget v8, v6, Lcom/android/server/wm/TaskDisplayArea;->mFeatureId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->destroy()V

    .line 277
    .end local v5    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_11 .. :try_end_56} :catchall_7f

    :try_start_56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_85

    .line 279
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    nop

    .line 281
    return-void

    .line 271
    .restart local v5    # "wc":Lcom/android/server/wm/WindowContainer;
    .restart local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_5e
    :try_start_5e
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempt to delete TaskDisplayArea not created by organizer TaskDisplayArea="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "uid":J
    .end local v2    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    throw v7

    .line 267
    .end local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v0    # "uid":J
    .restart local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    :cond_77
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Can\'t resolve TaskDisplayArea from token"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "uid":J
    .end local v2    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    throw v6

    .line 277
    .end local v5    # "wc":Lcom/android/server/wm/WindowContainer;
    .restart local v0    # "uid":J
    .restart local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    :catchall_7f
    move-exception v5

    monitor-exit v4
    :try_end_81
    .catchall {:try_start_5e .. :try_end_81} :catchall_7f

    :try_start_81
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "uid":J
    .end local v2    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    throw v5
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_85

    .line 279
    .restart local v0    # "uid":J
    .restart local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    :catchall_85
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    throw v4
.end method

.method getOrganizerByFeature(I)Landroid/window/IDisplayAreaOrganizer;
    .registers 4
    .param p1, "featureId"    # I

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    .line 124
    .local v0, "state":Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;
    if-eqz v0, :cond_13

    invoke-static {v0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;)Landroid/window/IDisplayAreaOrganizer;

    move-result-object v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return-object v1
.end method

.method synthetic lambda$registerOrganizer$0$com-android-server-wm-DisplayAreaOrganizerController(ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 6
    .param p1, "feature"    # I
    .param p2, "displayAreaInfos"    # Ljava/util/List;
    .param p3, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p4, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 159
    iget v0, p4, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-eq v0, p1, :cond_5

    return-void

    .line 160
    :cond_5
    const-string v0, "DisplayAreaOrganizerController.registerOrganizer"

    invoke-direct {p0, p3, p4, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->organizeDisplayArea(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;Ljava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method synthetic lambda$registerOrganizer$1$com-android-server-wm-DisplayAreaOrganizerController(ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayContent;)V
    .registers 14
    .param p1, "feature"    # I
    .param p2, "displayAreaInfos"    # Ljava/util/List;
    .param p3, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p4, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 152
    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_23

    .line 153
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_22

    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    int-to-long v0, v0

    .local v0, "protoLogParam0":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x6548caa1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 156
    .end local v0    # "protoLogParam0":J
    :cond_22
    return-void

    .line 158
    :cond_23
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;)V

    invoke-virtual {p4, v0}, Lcom/android/server/wm/DisplayContent;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 163
    return-void
.end method

.method onDisplayAreaAppeared(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 9
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 284
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x760b8baf

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 286
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_1b
    :try_start_1b
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    const-string v2, "DisplayAreaOrganizerController.onDisplayAreaAppeared"

    invoke-direct {v0, v1, v2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 288
    .local v0, "outSurfaceControl":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2d} :catch_2e

    .line 291
    .end local v0    # "outSurfaceControl":Landroid/view/SurfaceControl;
    goto :goto_2f

    .line 289
    :catch_2e
    move-exception v0

    .line 292
    :goto_2f
    return-void
.end method

.method onDisplayAreaInfoChanged(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 9
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 308
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0xa67c59f

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 310
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_1b
    :try_start_1b
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_23

    .line 313
    goto :goto_24

    .line 311
    :catch_23
    move-exception v0

    .line 314
    :goto_24
    return-void
.end method

.method onDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 9
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 295
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x1d1081b7

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 296
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_1b
    invoke-interface {p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 297
    const-string v0, "DisplayAreaOrganizerController"

    const-string v1, "Organizer died before sending onDisplayAreaVanished"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 301
    :cond_2d
    :try_start_2d
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_35

    .line 304
    goto :goto_36

    .line 302
    :catch_35
    move-exception v0

    .line 305
    :goto_36
    return-void
.end method

.method public registerOrganizer(Landroid/window/IDisplayAreaOrganizer;I)Landroid/content/pm/ParceledListSlice;
    .registers 21
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/IDisplayAreaOrganizer;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/window/DisplayAreaAppearedInfo;",
            ">;"
        }
    .end annotation

    .line 130
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string/jumbo v0, "registerOrganizer()"

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v4, v0

    .line 132
    .local v4, "uid":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 134
    .local v6, "origId":J
    :try_start_15
    iget-object v8, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v8
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_c9

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 135
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_41

    invoke-interface/range {p1 .. p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    move-wide v9, v4

    .local v9, "protoLogParam1":J
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0xf025ae1

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v0, v15, v16

    const/16 v16, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v11, v12, v13, v14, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 137
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v9    # "protoLogParam1":J
    :cond_41
    iget-object v0, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 138
    iget-object v0, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-static {v0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;)Landroid/window/IDisplayAreaOrganizer;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 144
    iget-object v0, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->destroy()V

    .line 145
    const-string v0, "DisplayAreaOrganizerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Replacing dead organizer for feature="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 140
    :cond_8f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v9, "Replacing existing organizer currently unsupported"

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "uid":J
    .end local v6    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .end local p2    # "feature":I
    throw v0

    .line 148
    .restart local v4    # "uid":J
    .restart local v6    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .restart local p2    # "feature":I
    :cond_97
    :goto_97
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V

    .line 150
    .local v0, "state":Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v9, "displayAreaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/window/DisplayAreaAppearedInfo;>;"
    iget-object v10, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v11, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda0;

    invoke-direct {v11, v1, v3, v9, v2}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;)V

    invoke-virtual {v10, v11}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 165
    iget-object v10, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v10, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v10, v9}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v8
    :try_end_bc
    .catchall {:try_start_18 .. :try_end_bc} :catchall_c3

    .line 169
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    return-object v10

    .line 167
    .end local v0    # "state":Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;
    .end local v9    # "displayAreaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/window/DisplayAreaAppearedInfo;>;"
    :catchall_c3
    move-exception v0

    :try_start_c4
    monitor-exit v8
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    :try_start_c5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v4    # "uid":J
    .end local v6    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .end local p2    # "feature":I
    throw v0
    :try_end_c9
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_c9

    .line 169
    .restart local v4    # "uid":J
    .restart local v6    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .restart local p2    # "feature":I
    :catchall_c9
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    throw v0
.end method

.method public unregisterOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .registers 18
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;

    .line 175
    move-object/from16 v1, p0

    const-string/jumbo v0, "unregisterTaskOrganizer()"

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v2, v0

    .line 177
    .local v2, "uid":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 179
    .local v4, "origId":J
    :try_start_11
    iget-object v6, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_60

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 180
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_3b

    invoke-interface/range {p1 .. p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    move-wide v7, v2

    .local v7, "protoLogParam1":J
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x4482d2ba

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/4 v14, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 182
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam1":J
    :cond_3b
    iget-object v0, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v7, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda4;
    :try_end_43
    .catchall {:try_start_14 .. :try_end_43} :catchall_54

    move-object/from16 v8, p1

    :try_start_45
    invoke-direct {v7, v8}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda4;-><init>(Landroid/window/IDisplayAreaOrganizer;)V

    invoke-interface {v0, v7}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 190
    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_5e

    :try_start_4c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5c

    .line 192
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    nop

    .line 194
    return-void

    .line 190
    :catchall_54
    move-exception v0

    move-object/from16 v8, p1

    :goto_57
    :try_start_57
    monitor-exit v6
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_5e

    :try_start_58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v2    # "uid":J
    .end local v4    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    throw v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5c

    .line 192
    .restart local v2    # "uid":J
    .restart local v4    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    :catchall_5c
    move-exception v0

    goto :goto_63

    .line 190
    :catchall_5e
    move-exception v0

    goto :goto_57

    .line 192
    :catchall_60
    move-exception v0

    move-object/from16 v8, p1

    :goto_63
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    throw v0
.end method
