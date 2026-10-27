.class Landroid/graphics/drawable/AnimatedVectorDrawable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatedVectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1014
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    .line 1026
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$fgetmAnimationCallbacks(Landroid/graphics/drawable/AnimatedVectorDrawable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1027
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1028
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 1029
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 1028
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1031
    :cond_20
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 6

    .line 1017
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$fgetmAnimationCallbacks(Landroid/graphics/drawable/AnimatedVectorDrawable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1018
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1019
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 1020
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 1019
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1022
    :cond_20
    return-void
.end method
