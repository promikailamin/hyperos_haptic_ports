.class public abstract Lcom/android/server/wm/RootDisplayArea;
.super Lcom/android/server/wm/DisplayArea$Dimmable;
.source "RootDisplayArea.java"


# instance fields
.field private mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

.field mFeatureToDisplayAreas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea;",
            ">;>;"
        }
    .end annotation
.end field

.field mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private mHasBuiltHierarchy:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V
    .registers 5

    .line 60
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/wm/DisplayArea$Dimmable;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;
    .registers 1

    .line 0
    return-object p0
.end method

.method public findAreaForTokenInLayer(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 4

    .line 132
    iget v0, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v1, p1, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    iget-boolean p1, p1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/RootDisplayArea;->findAreaForWindowTypeInLayer(IZZ)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p0

    return-object p0
.end method

.method public findAreaForWindowTypeInLayer(IZZ)Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_10

    .line 146
    iget-object p0, p0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    aget-object p0, p0, p1

    return-object p0

    .line 143
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There shouldn\'t be WindowToken on APPLICATION_LAYER"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;
    .registers 1

    .line 0
    return-object p0
.end method

.method public isOrientationDifferentFromDisplay()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onHierarchyBuilt(Ljava/util/ArrayList;[Lcom/android/server/wm/DisplayArea$Tokens;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;[",
            "Lcom/android/server/wm/DisplayArea$Tokens;",
            "Ljava/util/Map<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea;",
            ">;>;)V"
        }
    .end annotation

    .line 152
    iget-boolean v0, p0, Lcom/android/server/wm/RootDisplayArea;->mHasBuiltHierarchy:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/android/server/wm/RootDisplayArea;->mHasBuiltHierarchy:Z

    .line 156
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    .line 157
    iput-object p2, p0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    .line 158
    iput-object p3, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatureToDisplayAreas:Ljava/util/Map;

    return-void

    .line 153
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Root should only build the hierarchy once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public placeImeContainer(Lcom/android/server/wm/DisplayArea$Tokens;)Z
    .registers 9

    .line 85
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    .line 88
    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_49

    .line 89
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 90
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->getId()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_46

    .line 91
    iget-object v1, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatureToDisplayAreas:Ljava/util/Map;

    .line 92
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 93
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3e

    const/4 v3, 0x0

    .line 98
    invoke-virtual {v0, v3}, Lcom/android/server/wm/RootDisplayArea;->updateImeContainerForLayers(Lcom/android/server/wm/DisplayArea$Tokens;)V

    .line 99
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootDisplayArea;->updateImeContainerForLayers(Lcom/android/server/wm/DisplayArea$Tokens;)V

    return v4

    .line 94
    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There must be exactly one DisplayArea for the FEATURE_IME_PLACEHOLDER"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 108
    :cond_49
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-nez p0, :cond_56

    .line 114
    const-string p0, "WindowManager"

    const-string p1, "The IME layering target is not in the same root as the IME container, but there is no DisplayArea of FEATURE_IME_PLACEHOLDER in the target RootDisplayArea"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return v2
.end method

.method public final updateImeContainerForLayers(Lcom/android/server/wm/DisplayArea$Tokens;)V
    .registers 5

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 163
    iget-object v1, p0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    const/16 v2, 0x7db

    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v2

    aput-object p1, v1, v2

    .line 164
    iget-object p0, p0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    const/16 v1, 0x7dc

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v0

    aput-object p1, p0, v0

    return-void
.end method
