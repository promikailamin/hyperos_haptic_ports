.class public Lcom/android/server/wm/PresentationController;
.super Ljava/lang/Object;
.source "PresentationController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mPresentations:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$LB3IVqMTkfvk-kRIRi33YZaozVY(Lcom/android/server/wm/PresentationController;Lcom/android/server/wm/WindowState;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/PresentationController;->lambda$removePresentation$1(Lcom/android/server/wm/WindowState;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rK6q9PpOa2PNp4aGoHIkmH9Czho(I[Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .registers 5

    .line 159
    iget v0, p2, Lcom/android/server/wm/Task;->effectiveUid:I

    const/4 v1, 0x0

    if-ne v0, p0, :cond_15

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 160
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 161
    aput-object p2, p1, v1

    const/4 p0, 0x1

    return p0

    :cond_15
    return v1
.end method

.method public static bridge synthetic -$$Nest$fgetmPresentations(Lcom/android/server/wm/PresentationController;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhasPresentationWindow(Lcom/android/server/wm/PresentationController;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PresentationController;->hasPresentationWindow(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public canPresent(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)Z
    .registers 5

    .line 91
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getUid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/PresentationController;->canPresent(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;II)Z

    move-result p0

    return p0
.end method

.method public canPresent(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;II)Z
    .registers 9

    const/16 v0, 0x7ee

    if-ne p3, v0, :cond_9

    .line 104
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result p0

    return p0

    :cond_9
    const/16 v0, 0x7f5

    const/4 v1, 0x0

    if-eq p3, v0, :cond_f

    return v1

    .line 111
    :cond_f
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->isPublicPresentation()Z

    move-result p3

    if-nez p3, :cond_1a

    return v1

    .line 119
    :cond_1a
    sget-object p3, Landroid/window/DesktopExperienceFlags;->ENABLE_PRESENTATION_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p3}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_24

    return v0

    :cond_24
    move p3, v1

    .line 124
    :goto_25
    iget-object v2, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_b3

    .line 125
    iget-object v2, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 126
    iget v3, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eq v3, v2, :cond_af

    iget-object v3, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    .line 127
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_af

    .line 137
    iget p3, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 138
    invoke-virtual {p0, p3}, Lcom/android/server/wm/PresentationController;->hasPresentationWindow(I)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/PresentationController$Presentation;

    iget-object v2, v2, Lcom/android/server/wm/PresentationController$Presentation;->mWin:Lcom/android/server/wm/WindowState;

    if-eq p1, v2, :cond_60

    return v1

    .line 144
    :cond_60
    iget-object v2, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 145
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedLeafTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PresentationController;->getPresentation(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/PresentationController$Presentation;

    move-result-object p0

    if-eqz p0, :cond_71

    .line 148
    iget-object p0, p0, Lcom/android/server/wm/PresentationController$Presentation;->mHostTask:Lcom/android/server/wm/Task;

    goto :goto_95

    :cond_71
    const/4 p0, 0x0

    if-nez p1, :cond_95

    if-eqz v2, :cond_7b

    .line 150
    iget p1, v2, Lcom/android/server/wm/Task;->effectiveUid:I

    if-ne p4, p1, :cond_7b

    move-object p0, v2

    .line 154
    :cond_7b
    sget-object p1, Landroid/window/DesktopExperienceFlags;->ENABLE_PRESENTATION_DISALLOWED_ON_UNFOCUSED_HOST_TASK:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p1

    if-eqz p1, :cond_95

    if-nez p0, :cond_95

    .line 156
    new-array p0, v0, [Lcom/android/server/wm/Task;

    .line 158
    iget-object p1, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p4, p0}, Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda1;-><init>(I[Lcom/android/server/wm/Task;)V

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    .line 166
    aget-object p0, p0, v1

    :cond_95
    :goto_95
    if-eqz p0, :cond_9e

    .line 169
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p1

    if-ne p3, p1, :cond_9e

    return v1

    :cond_9e
    if-eqz p0, :cond_a3

    if-ne p0, v2, :cond_a3

    goto :goto_ae

    .line 174
    :cond_a3
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    if-ne p0, v0, :cond_ae

    return v1

    :cond_ae
    :goto_ae
    return v0

    :cond_af
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_25

    :cond_b3
    return v1
.end method

.method public final getPresentation(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/PresentationController$Presentation;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 74
    :goto_5
    iget-object v2, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 75
    iget-object v2, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/PresentationController$Presentation;

    .line 76
    iget-object v3, v2, Lcom/android/server/wm/PresentationController$Presentation;->mWin:Lcom/android/server/wm/WindowState;

    if-ne p1, v3, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1d
    return-object v0
.end method

.method public final hasPresentationWindow(I)Z
    .registers 2

    .line 82
    iget-object p0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public isPresentationVisible(I)Z
    .registers 2

    .line 86
    iget-object p0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/PresentationController$Presentation;

    if-eqz p0, :cond_16

    .line 87
    iget-object p0, p0, Lcom/android/server/wm/PresentationController$Presentation;->mWin:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$removePresentation$1(Lcom/android/server/wm/WindowState;ILjava/lang/String;)V
    .registers 9

    .line 255
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 257
    :try_start_8
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v1, :cond_39

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_3e

    .line 258
    :cond_13
    :goto_13
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_PRESENTATION_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_36

    iget-object p0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_PRESENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v3, 0x6009208f78b83627L    # 4.211256583044292E154

    invoke-static {p3, v3, v4, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 261
    :cond_36
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 263
    :cond_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_3e
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onDisplayAdded(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 4

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/PresentationController;->removePresentation(ILjava/lang/String;)V

    return-void
.end method

.method public onPresentationAdded(Lcom/android/server/wm/WindowState;I)V
    .registers 9

    .line 195
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 196
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_PRESENTATION_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    int-to-long v3, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_PRESENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v3, 0x356cd1f34bc735b7L    # 2.4071686273437146E-51

    invoke-static {v5, v3, v4, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 198
    :cond_23
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->onPresentation(IZ)V

    .line 200
    new-instance v1, Lcom/android/server/wm/PresentationController$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/wm/PresentationController$1;-><init>(Lcom/android/server/wm/PresentationController;ILcom/android/server/wm/WindowState;)V

    .line 218
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 221
    sget-object v2, Landroid/window/DesktopExperienceFlags;->ENABLE_PRESENTATION_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v2}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4c

    .line 222
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 223
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedLeafTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 224
    iget v4, v2, Lcom/android/server/wm/Task;->effectiveUid:I

    if-ne p2, v4, :cond_4c

    goto :goto_4d

    :cond_4c
    move-object v2, v3

    :goto_4d
    if-eqz v2, :cond_57

    .line 230
    new-instance v3, Lcom/android/server/wm/PresentationController$2;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/PresentationController$2;-><init>(Lcom/android/server/wm/PresentationController;Lcom/android/server/wm/WindowState;)V

    .line 243
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 246
    :cond_57
    iget-object p0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    new-instance p2, Lcom/android/server/wm/PresentationController$Presentation;

    invoke-direct {p2, p1, v1, v2, v3}, Lcom/android/server/wm/PresentationController$Presentation;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainerListener;)V

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public removePresentation(ILjava/lang/String;)V
    .registers 6

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PresentationController$Presentation;

    .line 252
    sget-object v1, Landroid/window/DesktopExperienceFlags;->ENABLE_PRESENTATION_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_22

    if-eqz v0, :cond_22

    .line 253
    iget-object v0, v0, Lcom/android/server/wm/PresentationController$Presentation;->mWin:Lcom/android/server/wm/WindowState;

    .line 254
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PresentationController;Lcom/android/server/wm/WindowState;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    return-void
.end method

.method public shouldOccludeActivities(I)Z
    .registers 3

    .line 190
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_PRESENTATION_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PresentationController;->isPresentationVisible(I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method
