.class final Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider;
.super Ljava/lang/Object;
.source "DisplayAreaPolicy.java"

# interfaces
.implements Lcom/android/server/wm/DisplayAreaPolicy$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultProvider"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private configureTrustedHierarchyBuilder(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 10
    .param p1, "rootHierarchy"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
    .param p2, "wmService"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "content"    # Lcom/android/server/wm/DisplayContent;

    .line 124
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v1, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v2, "WindowedMagnification"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    .line 126
    const/16 v1, 0x7f7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->upTo(I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v4, 0x0

    aput v1, v2, v4

    .line 127
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->except([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider$$ExternalSyntheticLambda0;-><init>()V

    .line 129
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->setNewDisplayAreaSupplier(Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 131
    iget-boolean v0, p3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x6

    if-eqz v0, :cond_6b

    .line 134
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v4, "HideDisplayCutout"

    invoke-direct {v0, v2, v4, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    .line 136
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->all()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    new-array v2, v3, [I

    fill-array-data v2, :array_a6

    .line 137
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->except([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v0

    .line 134
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v3, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v4, "OneHanded"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    .line 142
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->all()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v2

    new-array v3, v5, [I

    fill-array-data v3, :array_b2

    .line 143
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->except([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v2

    .line 145
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 147
    :cond_6b
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v3, 0x5

    const-string v4, "FullscreenMagnification"

    invoke-direct {v0, v2, v4, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    .line 150
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->all()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    new-array v1, v1, [I

    fill-array-data v1, :array_bc

    .line 151
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->except([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v0

    .line 148
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v3, 0x7

    const-string v4, "ImePlaceholder"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_cc

    .line 157
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->and([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 159
    return-void

    :array_a6
    .array-data 4
        0x7e3
        0x7e8
        0x7d0
        0x7f8
    .end array-data

    :array_b2
    .array-data 4
        0x7e3
        0x7e8
        0x7df
    .end array-data

    :array_bc
    .array-data 4
        0x7f7
        0x7db
        0x7dc
        0x7eb
        0x7e3
        0x7e8
    .end array-data

    :array_cc
    .array-data 4
        0x7db
        0x7dc
    .end array-data
.end method


# virtual methods
.method public instantiate(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/RootDisplayArea;Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayAreaPolicy;
    .registers 9
    .param p1, "wmService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "content"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "root"    # Lcom/android/server/wm/RootDisplayArea;
    .param p4, "imeContainer"    # Lcom/android/server/wm/DisplayArea$Tokens;

    .line 100
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea;

    const-string v1, "DefaultTaskDisplayArea"

    const/4 v2, 0x1

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V

    .line 102
    .local v0, "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v1, "tdaList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskDisplayArea;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-direct {v2, p3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;-><init>(Lcom/android/server/wm/RootDisplayArea;)V

    .line 109
    .local v2, "rootHierarchy":Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
    invoke-virtual {v2, p4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->setImeContainer(Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->setTaskDisplayAreas(Ljava/util/List;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 110
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 112
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider;->configureTrustedHierarchyBuilder(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    .line 117
    :cond_25
    new-instance v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder;

    invoke-direct {v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;-><init>()V

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->setRootHierarchy(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->build(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    move-result-object v3

    return-object v3
.end method
