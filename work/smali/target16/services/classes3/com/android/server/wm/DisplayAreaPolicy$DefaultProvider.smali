.class public final Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider;
.super Ljava/lang/Object;
.source "DisplayAreaPolicy.java"

# interfaces
.implements Lcom/android/server/wm/DisplayAreaPolicy$Provider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configureTrustedHierarchyBuilder(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 10

    .line 146
    new-instance p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v1, "WindowedMagnification"

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    const/16 v0, 0x7f7

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->upTo(I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object p0

    filled-new-array {v0}, [I

    move-result-object v0

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->except([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object p0

    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider$$ExternalSyntheticLambda0;-><init>()V

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->setNewDisplayAreaSupplier(Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object p0

    .line 146
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 153
    iget-boolean p0, p3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 p3, 0x7

    if-eqz p0, :cond_94

    .line 156
    new-instance p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v1, "HideDisplayCutout"

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->all()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object p0

    const/16 v0, 0x7e3

    const/16 v1, 0x7e8

    const/16 v2, 0x7d0

    const/16 v3, 0x7f8

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v2

    .line 159
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->except([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object p0

    .line 156
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    move-result-object p0

    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v3, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v4, "OneHanded"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    .line 164
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->all()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v2

    const/16 v3, 0x7df

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    .line 165
    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->except([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    move-result-object p0

    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v1, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v2, "AppZoomOut"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    const/16 v1, 0x7e4

    .line 170
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->upTo(I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    new-array v1, p3, [I

    fill-array-data v1, :array_b2

    .line 171
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->except([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v0

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 187
    :cond_94
    new-instance p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v0, "ImePlaceholder"

    invoke-direct {p0, p2, v0, p3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    const/16 p2, 0x7db

    const/16 p3, 0x7dc

    filled-new-array {p2, p3}, [I

    move-result-object p2

    .line 190
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->and([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object p0

    .line 191
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object p0

    .line 188
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    return-void

    nop

    :array_b2
    .array-data 4
        0x7e3
        0x7e8
        0x7d0
        0x7e1
        0x7f8
        0x7d9
        0x7dd
    .end array-data
.end method

.method public instantiate(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/RootDisplayArea;Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayAreaPolicy;
    .registers 11

    .line 120
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v2, "DefaultTaskDisplayArea"

    const/4 v3, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZZ)V

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-direct {v0, p3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;-><init>(Lcom/android/server/wm/RootDisplayArea;)V

    .line 130
    invoke-virtual {v0, p4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->setImeContainer(Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->setTaskDisplayAreas(Ljava/util/List;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 131
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 133
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider;->configureTrustedHierarchyBuilder(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    .line 138
    :cond_28
    new-instance p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;-><init>(ILcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->build(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    move-result-object p0

    return-object p0
.end method
