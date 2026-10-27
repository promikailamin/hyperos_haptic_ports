.class public Lcom/miui/mishare/app/view/NoticeView;
.super Landroid/widget/ImageView;
.source "NoticeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/app/view/NoticeView$AnimationCallback;
    }
.end annotation


# instance fields
.field private blacklist callback:Lcom/miui/mishare/app/view/NoticeView$AnimationCallback;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public blacklist start()V
    .registers 5

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/NoticeView;->setVisibility(I)V

    .line 32
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/NoticeView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 33
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_18

    .line 34
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/NoticeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11080159

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/NoticeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    :cond_18
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_39

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_39

    .line 38
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v2, Lcom/miui/mishare/app/view/NoticeView$AnimationCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/miui/mishare/app/view/NoticeView$AnimationCallback;-><init>(Lcom/miui/mishare/app/view/NoticeView$AnimationCallback-IA;)V

    iput-object v2, p0, Lcom/miui/mishare/app/view/NoticeView;->callback:Lcom/miui/mishare/app/view/NoticeView$AnimationCallback;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 39
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 41
    :cond_39
    return-void
.end method

.method public blacklist stop()V
    .registers 4

    .line 44
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/NoticeView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 45
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1f

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 46
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v2, p0, Lcom/miui/mishare/app/view/NoticeView;->callback:Lcom/miui/mishare/app/view/NoticeView$AnimationCallback;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 49
    :cond_1f
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/miui/mishare/app/view/NoticeView;->setVisibility(I)V

    .line 50
    return-void
.end method
