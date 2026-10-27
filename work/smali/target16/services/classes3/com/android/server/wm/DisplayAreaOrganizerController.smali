.class public Lcom/android/server/wm/DisplayAreaOrganizerController;
.super Landroid/window/IDisplayAreaOrganizerController$Stub;
.source "DisplayAreaOrganizerController.java"


# instance fields
.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mNextTaskDisplayAreaFeatureId:I

.field public final mOrganizersByFeatureIds:Ljava/util/HashMap;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public static synthetic $r8$lambda$0W4dxQY8A11mbgGB8IAalv-CNbY(ILcom/android/server/wm/DisplayArea;)Lcom/android/server/wm/RootDisplayArea;
    .registers 3

    .line 214
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_f

    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-ne v0, p0, :cond_f

    .line 215
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0vyYOhrVpYnNQvaW4mfJFY1YdR0(ILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 3

    .line 222
    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-ne v0, p0, :cond_5

    return-object p1

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CvQU9LqFTmbUEmALsGj5S7UV_PU(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayAreaOrganizerController;->lambda$registerOrganizer$0(ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i_FduVmijwgFw-MnGSZd4ElsXSg(Lcom/android/server/wm/RootDisplayArea;Lcom/android/server/wm/DisplayArea;)Lcom/android/server/wm/DisplayArea;
    .registers 4

    .line 330
    iget-object v0, p1, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    if-eq v0, v1, :cond_7

    goto :goto_10

    .line 334
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    if-eq v0, p0, :cond_12

    if-ne v0, p1, :cond_10

    goto :goto_12

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return-object p0

    :cond_12
    :goto_12
    return-object p1
.end method

.method public static synthetic $r8$lambda$pw6XtEQ_1QT3fJee-FhRa5Ap7sI(Landroid/window/IDisplayAreaOrganizer;Ljava/util/Map$Entry;)Z
    .registers 3

    .line 177
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-static {v0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;)Landroid/window/IDisplayAreaOrganizer;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 178
    invoke-interface {p0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 180
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->destroy()V

    :cond_21
    return p0
.end method

.method public static synthetic $r8$lambda$wSnU_Pe7TXl_HhzB7fVcyiY4FP4(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayAreaOrganizerController;->lambda$registerOrganizer$1(ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalLock(Lcom/android/server/wm/DisplayAreaOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOrganizersByFeatureIds(Lcom/android/server/wm/DisplayAreaOrganizerController;)Ljava/util/HashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdeleteTaskDisplayArea(Lcom/android/server/wm/DisplayAreaOrganizerController;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->deleteTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 112
    invoke-direct {p0}, Landroid/window/IDisplayAreaOrganizerController$Stub;-><init>()V

    const/16 v0, 0x4e22

    .line 49
    iput v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mNextTaskDisplayAreaFeatureId:I

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    .line 113
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 114
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method


# virtual methods
.method public createTaskDisplayArea(Landroid/window/IDisplayAreaOrganizer;IILjava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;
    .registers 13

    .line 193
    const-string v0, "createTaskDisplayArea()"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 197
    :try_start_e
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_d8

    .line 198
    :try_start_14
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_32

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const-wide v6, 0x476e2f467f9b3523L    # 1.2538221157681851E36

    invoke-static {v5, v6, v7, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_32

    :catchall_2f
    move-exception p0

    goto/16 :goto_d3

    .line 200
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 201
    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 206
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 213
    new-instance p2, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayArea;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/RootDisplayArea;

    if-nez p2, :cond_5b

    .line 221
    new-instance v1, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_5c

    :cond_5b
    const/4 v0, 0x0

    :goto_5c
    if-nez p2, :cond_78

    if-eqz v0, :cond_61

    goto :goto_78

    .line 229
    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t find a parent DisplayArea with featureId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 233
    :cond_78
    :goto_78
    iget p3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mNextTaskDisplayAreaFeatureId:I

    add-int/lit8 v1, p3, 0x1

    iput v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mNextTaskDisplayAreaFeatureId:I

    .line 234
    new-instance v1, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V

    if-eqz p2, :cond_8a

    .line 238
    invoke-virtual {p0, p2, p4, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController;->createTaskDisplayArea(Lcom/android/server/wm/RootDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    goto :goto_8e

    .line 239
    :cond_8a
    invoke-virtual {p0, v0, p4, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController;->createTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    .line 240
    :goto_8e
    const-string p4, "DisplayAreaOrganizerController.createTaskDisplayArea"

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/wm/DisplayAreaOrganizerController;->organizeDisplayArea(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;Ljava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;

    move-result-object p1

    .line 242
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    monitor-exit v4
    :try_end_9e
    .catchall {:try_start_14 .. :try_end_9e} :catchall_2f

    .line 246
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 207
    :cond_a5
    :try_start_a5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createTaskDisplayArea untrusted displayId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 203
    :cond_bc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createTaskDisplayArea unknown displayId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 244
    :goto_d3
    monitor-exit v4
    :try_end_d4
    .catchall {:try_start_a5 .. :try_end_d4} :catchall_2f

    :try_start_d4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_d8
    .catchall {:try_start_d4 .. :try_end_d8} :catchall_d8

    :catchall_d8
    move-exception p0

    .line 246
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    throw p0
.end method

.method public final createTaskDisplayArea(Lcom/android/server/wm/RootDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;
    .registers 10

    .line 324
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea;

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZZ)V

    .line 329
    new-instance p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda4;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/RootDisplayArea;)V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayArea;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DisplayArea;

    if-eqz p0, :cond_28

    .line 346
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    .line 347
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 348
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    return-object v0

    .line 342
    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Root must either contain TDA or DAG root="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;
    .registers 10

    .line 358
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea;

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZZ)V

    const p0, 0x7fffffff

    .line 363
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    return-object v0
.end method

.method public deleteTaskDisplayArea(Landroid/window/WindowContainerToken;)V
    .registers 10

    .line 252
    const-string v0, "deleteTaskDisplayArea()"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 254
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 256
    :try_start_e
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_62

    .line 257
    :try_start_14
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_31

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v6, -0x1707a85b29a7c0e7L    # -4.549040835844609E197

    const/4 v1, 0x1

    invoke-static {v5, v6, v7, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_83

    .line 259
    :cond_31
    :goto_31
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eqz p1, :cond_7b

    .line 260
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 263
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    .line 264
    iget-boolean v0, p1, Lcom/android/server/wm/TaskDisplayArea;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_64

    .line 270
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    iget p1, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->destroy()V

    .line 271
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_14 .. :try_end_5b} :catchall_2f

    :try_start_5b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_62

    .line 273
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_62
    move-exception p0

    goto :goto_88

    .line 265
    :cond_64
    :try_start_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to delete TaskDisplayArea not created by organizer TaskDisplayArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 261
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t resolve TaskDisplayArea from token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :goto_83
    monitor-exit v4
    :try_end_84
    .catchall {:try_start_64 .. :try_end_84} :catchall_2f

    :try_start_84
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_62

    .line 273
    :goto_88
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    throw p0
.end method

.method public final deleteTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 3

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 375
    :try_start_d
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->prepareForRemoval()Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_23

    .line 377
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 380
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->removeImmediately()V

    if-eqz v0, :cond_22

    .line 385
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    :cond_22
    return-void

    :catchall_23
    move-exception p1

    .line 377
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 378
    throw p1
.end method

.method public final enforceTaskPermission(Ljava/lang/String;)V
    .registers 2

    .line 118
    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    return-void
.end method

.method public getOrganizerByFeature(I)Landroid/window/IDisplayAreaOrganizer;
    .registers 2

    .line 123
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    if-eqz p0, :cond_13

    .line 124
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;)Landroid/window/IDisplayAreaOrganizer;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic lambda$registerOrganizer$0(ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 6

    .line 153
    iget v0, p4, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-eq v0, p1, :cond_5

    return-void

    .line 154
    :cond_5
    const-string p1, "DisplayAreaOrganizerController.registerOrganizer"

    invoke-virtual {p0, p3, p4, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->organizeDisplayArea(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;Ljava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic lambda$registerOrganizer$1(ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    .line 146
    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_26

    .line 147
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 p1, 0x3

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_25

    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    int-to-long p0, p0

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide p3, -0x2a8def86e341c7bfL    # -4.0459528513661465E103

    const/4 p1, 0x1

    invoke-static {p2, p3, p4, p1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_25
    return-void

    .line 152
    :cond_26
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;)V

    invoke-virtual {p4, v0}, Lcom/android/server/wm/DisplayArea;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDisplayAreaAppeared(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 7

    .line 278
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_1d

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x3ea7b1952866c1b9L    # -6371755.368728227

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, v3, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 279
    :cond_1d
    new-instance p0, Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const-string v1, "DisplayAreaOrganizerController.onDisplayAreaAppeared"

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 282
    :try_start_28
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_38
    .catchall {:try_start_28 .. :try_end_2f} :catchall_33

    .line 286
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    return-void

    :catchall_33
    move-exception p1

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    .line 287
    throw p1

    .line 286
    :catch_38
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method public onDisplayAreaInfoChanged(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 7

    .line 304
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_1d

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0xdf9b29faaa7cce4L    # -1.8588966594811073E241

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, v3, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 306
    :cond_1d
    :try_start_1d
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method

.method public onDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 7

    .line 291
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_1d

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0xdd1f4d4fc1b3a6fL

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, v3, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 292
    :cond_1d
    invoke-interface {p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-nez p0, :cond_2f

    .line 293
    const-string p0, "DisplayAreaOrganizerController"

    const-string p1, "Organizer died before sending onDisplayAreaVanished"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 297
    :cond_2f
    :try_start_2f
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_36

    :catch_36
    return-void
.end method

.method public final organizeDisplayArea(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;Ljava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;
    .registers 5

    const/4 p0, 0x1

    .line 314
    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V

    .line 315
    new-instance p0, Landroid/window/DisplayAreaAppearedInfo;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object p1

    new-instance v0, Landroid/view/SurfaceControl;

    .line 316
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Landroid/window/DisplayAreaAppearedInfo;-><init>(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    return-object p0
.end method

.method public registerOrganizer(Landroid/window/IDisplayAreaOrganizer;I)Landroid/content/pm/ParceledListSlice;
    .registers 12

    .line 130
    const-string v0, "registerOrganizer()"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 134
    :try_start_e
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_9b

    .line 135
    :try_start_14
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_39

    invoke-interface {p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v7, 0x3713507346c530fdL    # 2.165203315745264E-43

    const/4 v1, 0x4

    invoke-static {v6, v7, v8, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_96

    .line 137
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->destroy()V

    .line 139
    const-string v0, "DisplayAreaOrganizerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replacing dead organizer for feature="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_6a
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v5, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v6, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, p2, v1, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 159
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v4
    :try_end_8f
    .catchall {:try_start_14 .. :try_end_8f} :catchall_37

    .line 163
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 161
    :goto_96
    :try_start_96
    monitor-exit v4
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_37

    :try_start_97
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_9b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_9b

    :catchall_9b
    move-exception p0

    .line 163
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    throw p0
.end method

.method public unregisterOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .registers 11

    .line 169
    const-string v0, "unregisterTaskOrganizer()"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 173
    :try_start_e
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_4f

    .line 174
    :try_start_14
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_39

    invoke-interface {p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v7, -0xd17fa2edcfbcb43L    # -3.28056544953695E245

    const/4 v1, 0x4

    invoke-static {v6, v7, v8, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_51

    .line 176
    :cond_39
    :goto_39
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda0;-><init>(Landroid/window/IDisplayAreaOrganizer;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 184
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_14 .. :try_end_48} :catchall_37

    :try_start_48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4f

    .line 186
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4f
    move-exception p0

    goto :goto_56

    .line 184
    :goto_51
    :try_start_51
    monitor-exit v4
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_37

    :try_start_52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_4f

    .line 186
    :goto_56
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 187
    throw p0
.end method
