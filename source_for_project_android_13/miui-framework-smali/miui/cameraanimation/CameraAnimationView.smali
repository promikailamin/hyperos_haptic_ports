.class public Lmiui/cameraanimation/CameraAnimationView;
.super Landroid/widget/ImageView;
.source "CameraAnimationView.java"


# instance fields
.field private blacklist anim:Landroid/graphics/drawable/AnimationDrawable;

.field private blacklist mHandler:Landroid/os/Handler;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p2}, Lmiui/cameraanimation/CameraAnimationView;->init(Landroid/os/Looper;)V

    .line 19
    return-void
.end method

.method private blacklist init(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 22
    const v0, 0x11080062

    invoke-virtual {p0, v0}, Lmiui/cameraanimation/CameraAnimationView;->setBackgroundResource(I)V

    .line 23
    invoke-virtual {p0}, Lmiui/cameraanimation/CameraAnimationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lmiui/cameraanimation/CameraAnimationView;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/cameraanimation/CameraAnimationView;->mHandler:Landroid/os/Handler;

    .line 25
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmiui/cameraanimation/CameraAnimationView;->setVisibility(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public whitelist startAnimation()V
    .registers 5

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/cameraanimation/CameraAnimationView;->setVisibility(I)V

    .line 30
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationView;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2e

    .line 31
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 32
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationView;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 33
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationView;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 34
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationView;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    iget-object v2, p0, Lmiui/cameraanimation/CameraAnimationView;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v0

    mul-int/2addr v1, v0

    int-to-long v0, v1

    .line 35
    .local v0, "time":J
    iget-object v2, p0, Lmiui/cameraanimation/CameraAnimationView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lmiui/cameraanimation/CameraAnimationView$1;

    invoke-direct {v3, p0}, Lmiui/cameraanimation/CameraAnimationView$1;-><init>(Lmiui/cameraanimation/CameraAnimationView;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    .end local v0    # "time":J
    :cond_2e
    return-void
.end method

.method public whitelist stopAnimation()V
    .registers 2

    .line 45
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmiui/cameraanimation/CameraAnimationView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationView;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_c

    .line 47
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 49
    :cond_c
    return-void
.end method
