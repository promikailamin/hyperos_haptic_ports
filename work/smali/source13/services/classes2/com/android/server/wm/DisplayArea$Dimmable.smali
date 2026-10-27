.class Lcom/android/server/wm/DisplayArea$Dimmable;
.super Lcom/android/server/wm/DisplayArea;
.source "DisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dimmable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayArea<",
        "Lcom/android/server/wm/DisplayArea;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDimmer:Lcom/android/server/wm/Dimmer;

.field private final mTmpDimBoundsRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V
    .registers 6
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "type"    # Lcom/android/server/wm/DisplayArea$Type;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "featureId"    # I

    .line 693
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 689
    new-instance v0, Lcom/android/server/wm/Dimmer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 690
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 694
    return-void
.end method

.method static synthetic lambda$prepareSurfaces$0(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 711
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->canAffectSystemUiFlags()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 698
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0
.end method

.method prepareSurfaces()V
    .registers 4

    .line 703
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 704
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->prepareSurfaces()V

    .line 706
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea$Dimmable;->getBounds(Landroid/graphics/Rect;)V

    .line 707
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 711
    new-instance v0, Lcom/android/server/wm/DisplayArea$Dimmable$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayArea$Dimmable$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea$Dimmable;->forAllTasks(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 712
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 715
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea$Dimmable;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 716
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea$Dimmable;->scheduleAnimation()V

    .line 718
    :cond_34
    return-void
.end method
