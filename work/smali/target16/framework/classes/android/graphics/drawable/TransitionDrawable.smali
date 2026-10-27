.class public Landroid/graphics/drawable/TransitionDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "TransitionDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    }
.end annotation


# static fields
.field private static final greylist-max-o TRANSITION_NONE:I = 0x2

.field private static final greylist-max-o TRANSITION_RUNNING:I = 0x1

.field private static final greylist-max-o TRANSITION_STARTING:I


# instance fields
.field private greylist mAlpha:I

.field private greylist mCrossFade:Z

.field private greylist-max-o mDuration:I

.field private greylist-max-o mFrom:I

.field private greylist-max-o mOriginalDuration:I

.field private greylist-max-o mReverse:Z

.field private greylist-max-o mStartTimeMillis:J

.field private greylist mTo:I

.field private greylist-max-o mTransitionState:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 4

    .line 94
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    move-object v2, v1

    check-cast v2, Landroid/content/res/Resources;

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    .line 95
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V
    .registers 3

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 65
    const/4 p1, 0x2

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 74
    const/4 p1, 0x0

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 99
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/graphics/drawable/TransitionDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 102
    invoke-direct {p0, p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    .line 65
    const/4 p1, 0x2

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 74
    const/4 p1, 0x0

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 103
    return-void
.end method

.method public constructor whitelist <init>([Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 84
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method


# virtual methods
.method greylist-max-o createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .registers 4

    .line 107
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    check-cast p1, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 185
    nop

    .line 187
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_8e

    goto :goto_44

    .line 195
    :pswitch_9
    iget-wide v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_44

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    iget v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 198
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_25

    move v4, v2

    goto :goto_26

    :cond_25
    move v4, v1

    .line 199
    :goto_26
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 200
    iget v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    int-to-float v3, v3

    iget v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    float-to-int v0, v3

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    goto :goto_45

    .line 189
    :pswitch_39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    .line 190
    nop

    .line 191
    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 192
    move v4, v1

    goto :goto_45

    .line 205
    :cond_44
    :goto_44
    move v4, v2

    :goto_45
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 206
    iget-boolean v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    .line 207
    iget-object v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 209
    const/16 v6, 0xff

    if-eqz v4, :cond_66

    .line 212
    if-eqz v3, :cond_55

    if-nez v0, :cond_5c

    .line 213
    :cond_55
    aget-object v1, v5, v1

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 215
    :cond_5c
    if-ne v0, v6, :cond_65

    .line 216
    aget-object v0, v5, v2

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 218
    :cond_65
    return-void

    .line 222
    :cond_66
    aget-object v1, v5, v1

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 223
    if-eqz v3, :cond_71

    .line 224
    rsub-int v7, v0, 0xff

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 226
    :cond_71
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 227
    if-eqz v3, :cond_79

    .line 228
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 231
    :cond_79
    if-lez v0, :cond_88

    .line 232
    aget-object v1, v5, v2

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 233
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 234
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 238
    :cond_88
    if-nez v4, :cond_8d

    .line 239
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 241
    :cond_8d
    return-void

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_39
        :pswitch_9
    .end packed-switch
.end method

.method public whitelist isCrossFadeEnabled()Z
    .registers 2

    .line 261
    iget-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    return v0
.end method

.method public whitelist resetTransition()V
    .registers 2

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 142
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 143
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 144
    return-void
.end method

.method public whitelist reverseTransition(I)V
    .registers 10

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 157
    iget-wide v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v2, v0, v2

    iget v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/16 v4, 0xff

    const/4 v5, 0x0

    if-lez v2, :cond_32

    .line 158
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    if-nez v0, :cond_20

    .line 159
    iput v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 160
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 161
    iput v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 162
    iput-boolean v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    goto :goto_28

    .line 164
    :cond_20
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 165
    iput v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 166
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 167
    iput-boolean v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 169
    :goto_28
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 170
    iput v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 171
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 172
    return-void

    .line 175
    :cond_32
    iget-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 176
    iget p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 177
    iget-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-eqz p1, :cond_40

    move v4, v5

    :cond_40
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 178
    iget-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-eqz p1, :cond_4a

    iget-wide v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long/2addr v0, v2

    goto :goto_52

    .line 179
    :cond_4a
    iget p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    int-to-long v2, p1

    iget-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long/2addr v0, v6

    sub-long v0, v2, v0

    :goto_52
    long-to-int p1, v0

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 180
    iput v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 181
    return-void
.end method

.method public whitelist setCrossFadeEnabled(Z)V
    .registers 2

    .line 252
    iput-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    .line 253
    return-void
.end method

.method public greylist-max-o showSecondLayer()V
    .registers 2

    .line 131
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 133
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 134
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 135
    return-void
.end method

.method public whitelist startTransition(I)V
    .registers 4

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 117
    const/16 v1, 0xff

    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 118
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 119
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 120
    iput-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 121
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 122
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 123
    return-void
.end method
