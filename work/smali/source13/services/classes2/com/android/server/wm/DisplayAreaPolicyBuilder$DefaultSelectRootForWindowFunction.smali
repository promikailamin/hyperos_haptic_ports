.class Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSelectRootForWindowFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Ljava/lang/Integer;",
        "Landroid/os/Bundle;",
        "Lcom/android/server/wm/RootDisplayArea;",
        ">;"
    }
.end annotation


# instance fields
.field final mDisplayAreaGroupRoots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;"
        }
    .end annotation
.end field

.field final mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;)V
    .registers 4
    .param p1, "displayRoot"    # Lcom/android/server/wm/RootDisplayArea;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/RootDisplayArea;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;)V"
        }
    .end annotation

    .line 364
    .local p2, "displayAreaGroupRoots":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/RootDisplayArea;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 366
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    .line 367
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Integer;Landroid/os/Bundle;)Lcom/android/server/wm/RootDisplayArea;
    .registers 6
    .param p1, "windowType"    # Ljava/lang/Integer;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 371
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    return-object v0

    .line 376
    :cond_b
    if-eqz p2, :cond_45

    const-string/jumbo v0, "root_display_area_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 377
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 378
    .local v0, "rootId":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    iget v1, v1, Lcom/android/server/wm/RootDisplayArea;->mFeatureId:I

    if-ne v1, v0, :cond_23

    .line 379
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    return-object v1

    .line 381
    :cond_23
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_2b
    if-ltz v1, :cond_45

    .line 382
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RootDisplayArea;

    iget v2, v2, Lcom/android/server/wm/RootDisplayArea;->mFeatureId:I

    if-ne v2, v0, :cond_42

    .line 383
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RootDisplayArea;

    return-object v2

    .line 381
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_2b

    .line 387
    .end local v0    # "rootId":I
    .end local v1    # "i":I
    :cond_45
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 358
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->apply(Ljava/lang/Integer;Landroid/os/Bundle;)Lcom/android/server/wm/RootDisplayArea;

    move-result-object p1

    return-object p1
.end method
