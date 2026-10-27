.class public Lcom/android/internal/widget/ViewClippingUtil;
.super Ljava/lang/Object;
.source "ViewClippingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;
    }
.end annotation


# static fields
.field private static final blacklist CLIP_CHILDREN_TAG:I = 0x1020280

.field private static final blacklist CLIP_CLIPPING_SET:I = 0x102027f

.field private static final blacklist CLIP_TO_PADDING:I = 0x1020282


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V
    .registers 9

    .line 36
    if-nez p1, :cond_9

    invoke-interface {p2, p0}, Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;->isClippingEnablingAllowed(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 37
    return-void

    .line 39
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_12

    .line 40
    return-void

    .line 42
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 44
    :goto_18
    if-nez p1, :cond_21

    invoke-interface {p2, p0}, Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;->isClippingEnablingAllowed(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 45
    return-void

    .line 47
    :cond_21
    const v1, 0x102027f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 48
    if-nez v2, :cond_34

    .line 49
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    .line 52
    :cond_34
    const v3, 0x1020280

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 53
    if-nez v4, :cond_4a

    .line 54
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 55
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    .line 57
    :cond_4a
    const v3, 0x1020282

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 58
    if-nez v5, :cond_60

    .line 59
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 60
    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    .line 62
    :cond_60
    if-nez p1, :cond_82

    .line 63
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 65
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 66
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 67
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    .line 68
    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;->onClippingStateChanged(Landroid/view/View;Z)V

    goto :goto_8f

    .line 71
    :cond_82
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 72
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 74
    invoke-interface {p2, v0, v1}, Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;->onClippingStateChanged(Landroid/view/View;Z)V

    .line 76
    :cond_8f
    :goto_8f
    invoke-interface {p2, v0}, Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;->shouldFinish(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 77
    return-void

    .line 79
    :cond_96
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 80
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_a2

    .line 81
    check-cast v0, Landroid/view/ViewGroup;

    .line 85
    goto/16 :goto_18

    .line 83
    :cond_a2
    return-void
.end method
