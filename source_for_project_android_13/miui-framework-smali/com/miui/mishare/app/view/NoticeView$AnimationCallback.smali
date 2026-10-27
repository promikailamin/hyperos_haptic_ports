.class Lcom/miui/mishare/app/view/NoticeView$AnimationCallback;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "NoticeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/view/NoticeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationCallback"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/miui/mishare/app/view/NoticeView$AnimationCallback-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/mishare/app/view/NoticeView$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 55
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 56
    return-void
.end method
