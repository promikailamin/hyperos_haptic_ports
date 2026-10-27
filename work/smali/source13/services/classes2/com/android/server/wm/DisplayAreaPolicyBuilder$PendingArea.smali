.class Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingArea"
.end annotation


# instance fields
.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;",
            ">;"
        }
    .end annotation
.end field

.field mExisting:Lcom/android/server/wm/DisplayArea;

.field final mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

.field mMaxLayer:I

.field final mMinLayer:I

.field final mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

.field mSkipTokens:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V
    .registers 5
    .param p1, "feature"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
    .param p2, "minLayer"    # I
    .param p3, "parent"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    .line 899
    iput p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    .line 900
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 901
    iput-object p3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 902
    return-void
.end method

.method private createArea(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayArea;
    .registers 9
    .param p2, "areaForLayer"    # [Lcom/android/server/wm/DisplayArea$Tokens;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayArea<",
            "Lcom/android/server/wm/DisplayArea;",
            ">;[",
            "Lcom/android/server/wm/DisplayArea$Tokens;",
            ")",
            "Lcom/android/server/wm/DisplayArea;"
        }
    .end annotation

    .line 933
    .local p1, "parent":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<Lcom/android/server/wm/DisplayArea;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    if-eqz v0, :cond_16

    .line 934
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->asTokens()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 936
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->asTokens()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->fillAreaForLayers(Lcom/android/server/wm/DisplayArea$Tokens;[Lcom/android/server/wm/DisplayArea$Tokens;)V

    .line 938
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    return-object v0

    .line 940
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    if-eqz v0, :cond_1c

    .line 941
    const/4 v0, 0x0

    return-object v0

    .line 944
    :cond_1c
    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_24

    .line 945
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .local v0, "type":Lcom/android/server/wm/DisplayArea$Type;
    goto :goto_2d

    .line 946
    .end local v0    # "type":Lcom/android/server/wm/DisplayArea$Type;
    :cond_24
    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    if-ge v0, v1, :cond_2b

    .line 947
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .restart local v0    # "type":Lcom/android/server/wm/DisplayArea$Type;
    goto :goto_2d

    .line 949
    .end local v0    # "type":Lcom/android/server/wm/DisplayArea$Type;
    :cond_2b
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    .line 951
    .restart local v0    # "type":Lcom/android/server/wm/DisplayArea$Type;
    :goto_2d
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    const-string v2, ":"

    if-nez v1, :cond_5d

    .line 952
    new-instance v1, Lcom/android/server/wm/DisplayArea$Tokens;

    iget-object v3, p1, Lcom/android/server/wm/DisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Leaf:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/wm/DisplayArea$Tokens;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;)V

    .line 954
    .local v1, "leaf":Lcom/android/server/wm/DisplayArea$Tokens;
    invoke-direct {p0, v1, p2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->fillAreaForLayers(Lcom/android/server/wm/DisplayArea$Tokens;[Lcom/android/server/wm/DisplayArea$Tokens;)V

    .line 955
    return-object v1

    .line 957
    .end local v1    # "leaf":Lcom/android/server/wm/DisplayArea$Tokens;
    :cond_5d
    invoke-static {v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->-$$Nest$fgetmNewDisplayAreaSupplier(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/wm/DisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    invoke-static {v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->-$$Nest$fgetmName(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    invoke-static {v4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->-$$Nest$fgetmId(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)I

    move-result v4

    invoke-interface {v1, v3, v0, v2, v4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;->create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)Lcom/android/server/wm/DisplayArea;

    move-result-object v1

    return-object v1
.end method

.method private fillAreaForLayers(Lcom/android/server/wm/DisplayArea$Tokens;[Lcom/android/server/wm/DisplayArea$Tokens;)V
    .registers 5
    .param p1, "leaf"    # Lcom/android/server/wm/DisplayArea$Tokens;
    .param p2, "areaForLayer"    # [Lcom/android/server/wm/DisplayArea$Tokens;

    .line 963
    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    .local v0, "i":I
    :goto_2
    iget v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    if-gt v0, v1, :cond_b

    .line 964
    aput-object p1, p2, v0

    .line 963
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 966
    .end local v0    # "i":I
    :cond_b
    return-void
.end method

.method static synthetic lambda$instantiateChildren$0(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)I
    .registers 2
    .param p0, "pendingArea"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 913
    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    return v0
.end method


# virtual methods
.method computeMaxLayer()I
    .registers 4

    .line 905
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 906
    iget v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->computeMaxLayer()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 905
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 908
    .end local v0    # "i":I
    :cond_20
    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    return v0
.end method

.method instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V
    .registers 9
    .param p2, "areaForLayer"    # [Lcom/android/server/wm/DisplayArea$Tokens;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayArea<",
            "Lcom/android/server/wm/DisplayArea;",
            ">;[",
            "Lcom/android/server/wm/DisplayArea$Tokens;",
            "I",
            "Ljava/util/Map<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;>;)V"
        }
    .end annotation

    .line 913
    .local p1, "parent":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<Lcom/android/server/wm/DisplayArea;>;"
    .local p4, "areas":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;Ljava/util/List<Lcom/android/server/wm/DisplayArea<Lcom/android/server/wm/WindowContainer;>;>;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 914
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 915
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 916
    .local v1, "child":Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    invoke-direct {v1, p1, p2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->createArea(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayArea;

    move-result-object v2

    .line 917
    .local v2, "area":Lcom/android/server/wm/DisplayArea;
    if-nez v2, :cond_26

    .line 920
    goto :goto_3e

    .line 922
    :cond_26
    const v3, 0x7fffffff

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/DisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 923
    iget-object v3, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    if-eqz v3, :cond_39

    .line 924
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    :cond_39
    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v1, v2, p2, v3, p4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V

    .line 914
    .end local v1    # "child":Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    .end local v2    # "area":Lcom/android/server/wm/DisplayArea;
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 928
    .end local v0    # "i":I
    :cond_41
    return-void
.end method
