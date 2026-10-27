.class public Landroid/graphics/drawable/ColorStateListDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorStateListDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;
    }
.end annotation


# instance fields
.field private blacklist mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private blacklist mMutated:Z

.field private blacklist mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    .line 42
    new-instance v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->initializeColorDrawable()V

    .line 44
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    .line 47
    new-instance v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    .line 48
    invoke-direct {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->initializeColorDrawable()V

    .line 49
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorStateListDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    .line 50
    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    .line 53
    iput-object p1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    .line 54
    invoke-direct {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->initializeColorDrawable()V

    .line 55
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;Landroid/graphics/drawable/ColorStateListDrawable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorStateListDrawable;-><init>(Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;)V

    return-void
.end method

.method private blacklist initializeColorDrawable()V
    .registers 3

    .line 297
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 298
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ColorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 300
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1b

    .line 301
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 304
    :cond_1b
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    sget-object v1, Landroid/graphics/drawable/ColorStateListDrawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    if-eq v0, v1, :cond_2c

    .line 305
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 307
    :cond_2c
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3

    .line 86
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 88
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_14

    .line 89
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    .line 92
    :cond_14
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_25

    .line 93
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorStateListDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 95
    :cond_25
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 99
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public whitelist clearAlpha()V
    .registers 3

    .line 113
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    const/4 v1, -0x1

    iput v1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    .line 114
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    .line 115
    return-void
.end method

.method public blacklist clearMutated()V
    .registers 2

    .line 234
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    .line 236
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 60
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 61
    return-void
.end method

.method public whitelist getAlpha()I
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 217
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getColorStateList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 208
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_11

    .line 209
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 211
    :cond_11
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 5

    .line 196
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget v1, v1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mChangingConfigurations:I

    .line 197
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getChangingConfigurations()I

    move-result v2

    iget-object v3, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->getChangingConfigurations()I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mChangingConfigurations:I

    .line 198
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    return-object v0
.end method

.method public whitelist getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->hasFocusStateSpecified()Z

    move-result v0

    return v0
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 175
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 176
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_11
    return-void
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 222
    iget-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    if-nez v0, :cond_16

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_16

    .line 223
    new-instance v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;-><init>(Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;)V

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    .line 226
    :cond_16
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 148
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 149
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 150
    return-void
.end method

.method protected whitelist onStateChange([I)Z
    .registers 6

    .line 154
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    .line 155
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 157
    iget-object v2, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget v2, v2, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2f

    .line 158
    const v2, 0xffffff

    and-int/2addr v0, v2

    iget-object v2, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget v2, v2, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    const/16 v3, 0xff

    invoke-static {v2, v1, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 161
    :cond_2f
    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    if-eq v0, v1, :cond_43

    .line 162
    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 163
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setState([I)Z

    .line 164
    const/4 p1, 0x1

    return p1

    .line 166
    :cond_43
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setState([I)Z

    move-result p1

    return p1

    .line 169
    :cond_4a
    return v1
.end method

.method public whitelist scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    .line 182
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 183
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 185
    :cond_11
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 3

    .line 104
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iput p1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    .line 105
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    .line 106
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 138
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 139
    return-void
.end method

.method public whitelist setColorStateList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 245
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iput-object p1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    .line 246
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    .line 247
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3

    .line 126
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iput-object p1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 127
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 128
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    .line 129
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 119
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iput-object p1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 120
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 121
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    .line 122
    return-void
.end method

.method public whitelist unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4

    .line 189
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 190
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 192
    :cond_11
    return-void
.end method
