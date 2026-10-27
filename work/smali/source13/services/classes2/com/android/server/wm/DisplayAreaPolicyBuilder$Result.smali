.class Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;
.super Lcom/android/server/wm/DisplayAreaPolicy;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation


# instance fields
.field private final mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field final mDisplayAreaGroupRoots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;"
        }
    .end annotation
.end field

.field final mSelectRootForWindowFunc:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;Ljava/util/function/BiFunction;Ljava/util/function/Function;)V
    .registers 8
    .param p1, "wmService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "root"    # Lcom/android/server/wm/RootDisplayArea;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowManagerService;",
            "Lcom/android/server/wm/RootDisplayArea;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;)V"
        }
    .end annotation

    .line 798
    .local p3, "displayAreaGroupRoots":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/RootDisplayArea;>;"
    .local p4, "selectRootForWindowFunc":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Lcom/android/server/wm/RootDisplayArea;>;"
    .local p5, "selectTaskDisplayAreaFunc":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/Bundle;Lcom/android/server/wm/TaskDisplayArea;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayAreaPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/RootDisplayArea;)V

    .line 799
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    .line 800
    iput-object p4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    .line 803
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    new-instance v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootDisplayArea;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 807
    if-eqz v0, :cond_28

    .line 811
    if-eqz p5, :cond_20

    .line 812
    move-object v1, p5

    goto :goto_25

    .line 813
    :cond_20
    new-instance v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    :goto_25
    iput-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;

    .line 814
    return-void

    .line 808
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No display area with FEATURE_DEFAULT_TASK_CONTAINER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;ILjava/util/List;)V
    .registers 7
    .param p0, "root"    # Lcom/android/server/wm/RootDisplayArea;
    .param p1, "featureId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/RootDisplayArea;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;)V"
        }
    .end annotation

    .line 857
    .local p2, "displayAreas":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/DisplayArea<+Lcom/android/server/wm/WindowContainer;>;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    .line 858
    .local v0, "features":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 859
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 860
    .local v2, "feature":Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
    invoke-static {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->-$$Nest$fgetmId(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)I

    move-result v3

    if-ne v3, p1, :cond_20

    .line 861
    iget-object v3, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatureToDisplayAreas:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 858
    .end local v2    # "feature":Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 864
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method static synthetic lambda$new$0(Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 3
    .param p0, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 804
    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFeatureId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 805
    move-object v0, p0

    goto :goto_8

    .line 806
    :cond_7
    const/4 v0, 0x0

    .line 804
    :goto_8
    return-object v0
.end method


# virtual methods
.method public addWindow(Lcom/android/server/wm/WindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 818
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    .line 819
    .local v0, "area":Lcom/android/server/wm/DisplayArea$Tokens;
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayArea$Tokens;->addChild(Lcom/android/server/wm/WindowToken;)V

    .line 820
    return-void
.end method

.method findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 5
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 824
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    iget v1, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->mOptions:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/RootDisplayArea;

    .line 825
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootDisplayArea;->findAreaForTokenInLayer(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    .line 824
    return-object v0
.end method

.method public findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 7
    .param p1, "type"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ownerCanManageAppTokens"    # Z
    .param p4, "roundedCornerOverlay"    # Z

    .line 831
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/RootDisplayArea;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/wm/RootDisplayArea;->findAreaForWindowTypeInLayer(IZZ)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 2

    .line 868
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method

.method public getDisplayAreas(I)Ljava/util/List;
    .registers 5
    .param p1, "featureId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;"
        }
    .end annotation

    .line 847
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .local v0, "displayAreas":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/DisplayArea<+Lcom/android/server/wm/WindowContainer;>;>;"
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    invoke-static {v1, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;ILjava/util/List;)V

    .line 849
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 850
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RootDisplayArea;

    invoke-static {v2, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;ILjava/util/List;)V

    .line 849
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 852
    .end local v1    # "i":I
    :cond_21
    return-object v0
.end method

.method getFeatures()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;"
        }
    .end annotation

    .line 837
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 838
    .local v0, "features":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;>;"
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iget-object v1, v1, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 839
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 840
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RootDisplayArea;

    iget-object v2, v2, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 839
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 842
    .end local v1    # "i":I
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getTaskDisplayArea(Landroid/os/Bundle;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 3
    .param p1, "options"    # Landroid/os/Bundle;

    .line 874
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method
