.class public Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final mDisplayAreaGroupRoots:Ljava/util/List;

.field public final mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;)V
    .registers 4

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/RootDisplayArea;

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 394
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    .line 393
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Integer;Landroid/os/Bundle;)Lcom/android/server/wm/RootDisplayArea;
    .registers 4

    .line 399
    iget-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 400
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    return-object p0

    :cond_b
    if-eqz p2, :cond_42

    .line 404
    const-string p1, "root_display_area_id"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 405
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 406
    iget-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    iget v0, p2, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-ne v0, p1, :cond_20

    return-object p2

    .line 409
    :cond_20
    iget-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_28
    if-ltz p2, :cond_42

    .line 410
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/RootDisplayArea;

    iget v0, v0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-ne v0, p1, :cond_3f

    .line 411
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/RootDisplayArea;

    return-object p0

    :cond_3f
    add-int/lit8 p2, p2, -0x1

    goto :goto_28

    .line 415
    :cond_42
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 383
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->apply(Ljava/lang/Integer;Landroid/os/Bundle;)Lcom/android/server/wm/RootDisplayArea;

    move-result-object p0

    return-object p0
.end method
