.class Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"


# instance fields
.field private final mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayId:I

.field private final mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

.field private mSelectRootForWindowFunc:Ljava/util/function/BiFunction;
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

.field private mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;
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
.method public static bridge synthetic -$$Nest$smcanBeWindowingLayer(I)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->canBeWindowingLayer(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(ILcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)V
    .registers 4

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    .line 174
    iput p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayId:I

    .line 175
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    return-void
.end method

.method private static canBeWindowingLayer(I)Z
    .registers 2

    .line 0
    const/4 v0, 0x4

    if-eq p0, v0, :cond_a

    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_a
    const/4 p0, 0x1

    return p0
.end method

.method private static containsDefaultTaskDisplayArea(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 272
    :goto_2
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmTaskDisplayAreas(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 273
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmTaskDisplayAreas(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskDisplayArea;

    iget v2, v2, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    return v3

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    return v0
.end method

.method private validate()V
    .registers 10

    .line 222
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 223
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 224
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-static {v2, v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->validateIds(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/Set;Ljava/util/Set;)V

    .line 225
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-static {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmImeContainer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1b

    move v2, v4

    goto :goto_1c

    :cond_1b
    move v2, v3

    .line 226
    :goto_1c
    iget-object v5, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-static {v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->containsDefaultTaskDisplayArea(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Z

    move-result v5

    move v6, v3

    .line 227
    :goto_23
    iget-object v7, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7a

    .line 228
    iget-object v7, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 229
    invoke-static {v7, v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->validateIds(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/Set;Ljava/util/Set;)V

    .line 231
    invoke-static {v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmTaskDisplayAreas(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_72

    if-eqz v2, :cond_51

    .line 237
    invoke-static {v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmImeContainer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v8

    if-nez v8, :cond_49

    goto :goto_5a

    .line 238
    :cond_49
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Only one DisplayArea hierarchy can contain the IME container"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 242
    :cond_51
    invoke-static {v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmImeContainer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v2

    if-eqz v2, :cond_59

    move v2, v4

    goto :goto_5a

    :cond_59
    move v2, v3

    :goto_5a
    if-eqz v5, :cond_6b

    .line 246
    invoke-static {v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->containsDefaultTaskDisplayArea(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Z

    move-result v7

    if-nez v7, :cond_63

    goto :goto_6f

    .line 247
    :cond_63
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Only one TaskDisplayArea can have the feature id of FEATURE_DEFAULT_TASK_CONTAINER"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 251
    :cond_6b
    invoke-static {v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->containsDefaultTaskDisplayArea(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Z

    move-result v5

    :goto_6f
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 232
    :cond_72
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "DisplayAreaGroup must contain at least one TaskDisplayArea."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7a
    if-eqz v2, :cond_97

    if-eqz v5, :cond_8f

    .line 264
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->hasValidWindowingLayer()Z

    move-result p0

    if-eqz p0, :cond_87

    return-void

    .line 265
    :cond_87
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "WindowingLayer must exist at the top level index"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 260
    :cond_8f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "There must be a default TaskDisplayArea with id of FEATURE_DEFAULT_TASK_CONTAINER."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 256
    :cond_97
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "IME container must be set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateIds(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/Set;Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 301
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmRoot(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 302
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " is not unique."

    if-eqz v1, :cond_f3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3

    const/16 v1, 0x4e21

    if-gt v0, v1, :cond_eb

    const/4 v0, 0x0

    move v3, v0

    .line 312
    :goto_22
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmTaskDisplayAreas(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_73

    .line 313
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmTaskDisplayAreas(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskDisplayArea;

    iget v4, v4, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 314
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    if-gt v4, v1, :cond_51

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 319
    :cond_51
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "TaskDisplayArea declared in the policy should nothave an id greater than FEATURE_VENDOR_LAST."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 315
    :cond_59
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TaskDisplayArea must have unique id, but id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 325
    :cond_73
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 326
    :goto_78
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmFeatures(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_e7

    .line 327
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmFeatures(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->getId()I

    move-result v4

    .line 328
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cb

    .line 332
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    if-gt v4, v1, :cond_a9

    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 337
    :cond_a9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Feature should not have an id greater than FEATURE_VENDOR_LAST."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 333
    :cond_b1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Feature below the same root must have unique id, but id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 329
    :cond_cb
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Feature must not have same id with any RootDisplayArea or TaskDisplayArea, but id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is used"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 344
    :cond_e7
    invoke-interface {p2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 307
    :cond_eb
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RootDisplayArea should not have an id greater than FEATURE_VENDOR_LAST."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 303
    :cond_f3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RootDisplayArea must have unique id, but id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addDisplayAreaGroupHierarchy(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;
    .registers 12

    .line 349
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->hasValidWindowingLayer()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-static {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmFeatures(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v4, "WindowingLayer"

    const/16 v5, 0x9

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    .line 353
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->setExcludeRoundedCornerOverlay(Z)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->all()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v2

    .line 351
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 355
    :cond_29
    invoke-direct {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->validate()V

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$mbuild(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/List;)V

    .line 359
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    .line 360
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    :goto_3e
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5b

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 363
    invoke-static {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$mbuild(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)V

    .line 364
    invoke-static {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmRoot(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 367
    :cond_5b
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    if-nez v0, :cond_6c

    .line 368
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-static {v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmRoot(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;-><init>(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    .line 371
    :cond_6c
    new-instance v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    iget v5, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayId:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-static {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmRoot(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/RootDisplayArea;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    iget-object v9, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/RootDisplayArea;Ljava/util/List;Ljava/util/function/BiFunction;Ljava/util/function/Function;)V

    return-object v3
.end method

.method public setSelectRootForWindowFunc(Ljava/util/function/BiFunction;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;)",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder;"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    return-object p0
.end method

.method public setSelectTaskDisplayAreaFunc(Ljava/util/function/Function;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;)",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder;"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;

    return-object p0
.end method
