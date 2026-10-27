.class final Landroid/graphics/drawable/ClipDrawable$ClipState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "ClipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ClipDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClipState"
.end annotation


# instance fields
.field greylist-max-o mGravity:I

.field greylist-max-o mOrientation:I

.field private greylist-max-o mThemeAttrs:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/ClipDrawable$ClipState;)[I
    .registers 1

    iget-object p0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mThemeAttrs:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/ClipDrawable$ClipState;[I)V
    .registers 2

    iput-object p1, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mThemeAttrs:[I

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V
    .registers 3

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 221
    const/4 p2, 0x1

    iput p2, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 222
    const/4 p2, 0x3

    iput p2, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 227
    if-eqz p1, :cond_13

    .line 228
    iget p2, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    iput p2, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 229
    iget p1, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    iput p1, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 231
    :cond_13
    return-void
.end method


# virtual methods
.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 235
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;Landroid/graphics/drawable/ClipDrawable-IA;)V

    return-object v0
.end method
