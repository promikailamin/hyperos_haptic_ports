.class Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mExcludeRoundedCorner:Z

.field private final mId:I

.field private final mLayers:[Z

.field private final mName:Ljava/lang/String;

.field private mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

.field private final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V
    .registers 6
    .param p1, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mExcludeRoundedCorner:Z

    .line 699
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 700
    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mName:Ljava/lang/String;

    .line 701
    iput p3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mId:I

    .line 702
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy;->getMaxWindowLayer()I

    move-result v1

    add-int/2addr v1, v0

    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    .line 703
    return-void
.end method

.method private layerFromType(IZ)I
    .registers 4
    .param p1, "type"    # I
    .param p2, "internalWindows"    # Z

    .line 783
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0
.end method

.method private set(IZ)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "value"    # Z

    .line 773
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v2

    aput-boolean p2, v0, v2

    .line 774
    const/16 v0, 0x7f6

    if-ne p1, v0, :cond_34

    .line 775
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v1

    aput-boolean p2, v0, v1

    .line 776
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    const/16 v1, 0x7d3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v1

    aput-boolean p2, v0, v1

    .line 777
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    const/16 v1, 0x7d6

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v1

    aput-boolean p2, v0, v1

    .line 778
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    const/16 v1, 0x7da

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v1

    aput-boolean p2, v0, v1

    .line 780
    :cond_34
    return-void
.end method


# virtual methods
.method all()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    .registers 3

    .line 709
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 710
    return-object p0
.end method

.method varargs and([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    .registers 5
    .param p1, "types"    # [I

    .line 717
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_d

    .line 718
    aget v1, p1, v0

    .line 719
    .local v1, "type":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->set(IZ)V

    .line 717
    .end local v1    # "type":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 721
    .end local v0    # "i":I
    :cond_d
    return-object p0
.end method

.method build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
    .registers 10

    .line 765
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mExcludeRoundedCorner:Z

    if-eqz v0, :cond_f

    .line 767
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->getMaxWindowLayer()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 769
    :cond_f
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mId:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Z

    iget-object v7, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;-><init>(Ljava/lang/String;I[ZLcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature-IA;)V

    return-object v0
.end method

.method varargs except([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    .registers 5
    .param p1, "types"    # [I

    .line 728
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_d

    .line 729
    aget v1, p1, v0

    .line 730
    .local v1, "type":I
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->set(IZ)V

    .line 728
    .end local v1    # "type":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 732
    .end local v0    # "i":I
    :cond_d
    return-object p0
.end method

.method setExcludeRoundedCornerOverlay(Z)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    .registers 2
    .param p1, "excludeRoundedCorner"    # Z

    .line 760
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mExcludeRoundedCorner:Z

    .line 761
    return-object p0
.end method

.method setNewDisplayAreaSupplier(Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    .registers 2
    .param p1, "newDisplayAreaSupplier"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    .line 753
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    .line 754
    return-object p0
.end method

.method upTo(I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    .registers 6
    .param p1, "typeInclusive"    # I

    .line 740
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v0

    .line 741
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    const/4 v2, 0x1

    if-ge v1, v0, :cond_10

    .line 742
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    aput-boolean v2, v3, v1

    .line 741
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 744
    .end local v1    # "i":I
    :cond_10
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->set(IZ)V

    .line 745
    return-object p0
.end method
