.class public Lcom/android/server/wm/Dimmer$DimState;
.super Ljava/lang/Object;
.source "Dimmer.java"


# instance fields
.field public mAnimateExit:Z

.field public final mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

.field public final mDimBounds:Landroid/graphics/Rect;

.field public mDimSurface:Landroid/view/SurfaceControl;

.field public final mHostContainer:Lcom/android/server/wm/WindowContainer;

.field public mIsVisible:Z

.field public mLastDimmingWindow:Lcom/android/server/wm/WindowState;

.field public mSkipAnimation:Z

.field public final synthetic this$0:Lcom/android/server/wm/Dimmer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsVisible(Lcom/android/server/wm/Dimmer$DimState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mIsVisible:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastDimmingWindow(Lcom/android/server/wm/Dimmer$DimState;)Lcom/android/server/wm/WindowState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mLastDimmingWindow:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastDimmingWindow(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mLastDimmingWindow:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/Dimmer;)V
    .registers 5

    .line 73
    iput-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mSkipAnimation:Z

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mIsVisible:Z

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    .line 74
    invoke-static {p1}, Lcom/android/server/wm/Dimmer;->-$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    .line 75
    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper;

    invoke-static {p1}, Lcom/android/server/wm/Dimmer;->-$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/Dimmer;->mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/DimmerAnimationHelper;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;)V

    iput-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

    .line 77
    :try_start_27
    invoke-virtual {p0}, Lcom/android/server/wm/Dimmer$DimState;->makeDimLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 78
    invoke-static {p1}, Lcom/android/server/wm/Dimmer;->-$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/wm/EventLogTags;->writeWmDimCreated(Ljava/lang/String;I)V
    :try_end_3e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_27 .. :try_end_3e} :catch_3f

    return-void

    .line 80
    :catch_3f
    const-string p0, "WindowManagerDimmer"

    const-string p1, "OutOfResourcesException creating dim surface"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public ensureVisible(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 85
    iget-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mIsVisible:Z

    if-nez v0, :cond_12

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mIsVisible:Z

    :cond_12
    return-void
.end method

.method public exit(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->this$0:Lcom/android/server/wm/Dimmer;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/android/server/wm/Dimmer$DimState;->this$0:Lcom/android/server/wm/Dimmer;

    iget-object v1, v1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v1, v1, Lcom/android/server/wm/Dimmer$DimState;->mLastDimmingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_17

    .line 105
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_17
    const-string v1, "-"

    .line 106
    :goto_19
    iget-object v2, p0, Lcom/android/server/wm/Dimmer$DimState;->this$0:Lcom/android/server/wm/Dimmer;

    iget-object v2, v2, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v2, v2, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    .line 107
    iget-boolean v3, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    xor-int/lit8 v3, v3, 0x1

    .line 103
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/EventLogTags;->writeWmDimExit(ILjava/lang/String;II)V

    .line 108
    iget-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    if-nez v0, :cond_32

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    return-void

    .line 111
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

    invoke-virtual {v0}, Lcom/android/server/wm/DimmerAnimationHelper;->setExitParameters()V

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Dimmer$DimState;->setReady(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public isDimming()Z
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mLastDimmingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final makeDimLayer()Landroid/view/SurfaceControl;
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->-$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Dimmer$DimState;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v1}, Lcom/android/server/wm/Dimmer;->-$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dim Layer for - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {p0}, Lcom/android/server/wm/Dimmer;->-$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    .line 170
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const-string v0, "DimLayer.makeDimLayer"

    .line 171
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 172
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public prepareLookChange(FI)V
    .registers 3

    .line 96
    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DimmerAnimationHelper;->setRequestedAppearance(FI)V

    return-void
.end method

.method public prepareReparent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DimmerAnimationHelper;->setRequestedRelativeParent(Lcom/android/server/wm/WindowState;)V

    .line 147
    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DimmerAnimationHelper;->setRequestedGeometryParent(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public remove(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v0

    const-string v1, "ready to remove"

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmDimCancelAnim(ILjava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

    iget-object v1, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper;->stopCurrentAnimation(Landroid/view/SurfaceControl;)V

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/wm/EventLogTags;->writeWmDimRemoved(I)V

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 122
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_46

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v1, 0x0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v2, 0x6e459311c7713e31L    # 1.5597225220299602E223

    invoke-static {v0, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_46
    return-void

    .line 125
    :cond_47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tried to remove "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " multiple times\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManagerDimmer"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setReady(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/DimmerAnimationHelper;->applyChanges(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Dimmer$DimState;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dimmer#DimState with host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
