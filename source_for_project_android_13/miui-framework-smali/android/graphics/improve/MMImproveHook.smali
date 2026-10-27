.class public Landroid/graphics/improve/MMImproveHook;
.super Ljava/lang/Object;
.source "MMImproveHook.java"

# interfaces
.implements Landroid/graphics/improve/ImproveHookAble;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/improve/MMImproveHook$MMDrawable;
    }
.end annotation


# static fields
.field private static final blacklist ACTIVITY_BROWSEUI:Ljava/lang/String; = "SnsBrowseUI"

.field private static final blacklist IMAGE_VIEW_MULTI_TOUCH:Ljava/lang/String; = "MultiTouchImageView"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public blacklist getBitmap(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "imgName"    # Ljava/lang/String;

    .line 31
    const-string v0, "SnsBrowseUI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "MultiTouchImageView"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 32
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1c

    .line 33
    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 35
    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bitmap not bitmap drawable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setBitmap(Landroid/graphics/improve/SuperResolution$ImproveInfo;Landroid/widget/ImageView;)V
    .registers 5
    .param p1, "info"    # Landroid/graphics/improve/SuperResolution$ImproveInfo;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 44
    iget-object v0, p1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->clsName:Ljava/lang/String;

    const-string v1, "SnsBrowseUI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 45
    iget-object v0, p1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2e

    .line 46
    invoke-virtual {p2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_22

    .line 47
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "set bitmap error"

    invoke-static {v0, v1}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void

    .line 50
    :cond_22
    new-instance v0, Landroid/graphics/improve/MMImproveHook$MMDrawable;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/improve/MMImproveHook$MMDrawable;-><init>(Landroid/graphics/improve/MMImproveHook;Landroid/graphics/improve/SuperResolution$ImproveInfo;Landroid/content/res/Resources;)V

    .line 51
    .local v0, "drawable":Landroid/graphics/improve/MMImproveHook$MMDrawable;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .end local v0    # "drawable":Landroid/graphics/improve/MMImproveHook$MMDrawable;
    :cond_2e
    return-void
.end method
