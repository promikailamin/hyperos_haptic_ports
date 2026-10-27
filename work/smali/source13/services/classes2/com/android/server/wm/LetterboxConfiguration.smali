.class final Lcom/android/server/wm/LetterboxConfiguration;
.super Ljava/lang/Object;
.source "LetterboxConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LetterboxConfiguration$LetterboxReachabilityPosition;,
        Lcom/android/server/wm/LetterboxConfiguration$LetterboxBackgroundType;
    }
.end annotation


# static fields
.field static final LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND:I = 0x1

.field static final LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND_FLOATING:I = 0x2

.field static final LETTERBOX_BACKGROUND_SOLID_COLOR:I = 0x0

.field static final LETTERBOX_BACKGROUND_WALLPAPER:I = 0x3

.field static final LETTERBOX_REACHABILITY_POSITION_CENTER:I = 0x1

.field static final LETTERBOX_REACHABILITY_POSITION_LEFT:I = 0x0

.field static final LETTERBOX_REACHABILITY_POSITION_RIGHT:I = 0x2

.field static final MIN_FIXED_ORIENTATION_LETTERBOX_ASPECT_RATIO:F = 1.0f


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDefaultPositionForReachability:I

.field private mFixedOrientationLetterboxAspectRatio:F

.field private mIsEducationEnabled:Z

.field private mIsReachabilityEnabled:Z

.field private mLetterboxActivityCornersRadius:I

.field private mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

.field private mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

.field private mLetterboxBackgroundType:I

.field private mLetterboxBackgroundWallpaperBlurRadius:I

.field private mLetterboxBackgroundWallpaperDarkScrimAlpha:F

.field private mLetterboxHorizontalPositionMultiplier:F

.field private volatile mLetterboxPositionForReachability:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "systemUiContext"    # Landroid/content/Context;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    .line 139
    invoke-static {p1}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundType:I

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsReachabilityEnabled:Z

    .line 148
    invoke-static {p1}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxReachabilityPositionFromConfig(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultPositionForReachability:I

    .line 149
    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111016d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsEducationEnabled:Z

    .line 152
    return-void
.end method

.method static letterboxBackgroundTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "backgroundType"    # I

    .line 225
    packed-switch p0, :pswitch_data_24

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 233
    :pswitch_18
    const-string v0, "LETTERBOX_BACKGROUND_WALLPAPER"

    return-object v0

    .line 231
    :pswitch_1b
    const-string v0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND_FLOATING"

    return-object v0

    .line 229
    :pswitch_1e
    const-string v0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND"

    return-object v0

    .line 227
    :pswitch_21
    const-string v0, "LETTERBOX_BACKGROUND_SOLID_COLOR"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method

.method static letterboxReachabilityPositionToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "position"    # I

    .line 369
    packed-switch p0, :pswitch_data_26

    .line 377
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox position type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 375
    :pswitch_1c
    const-string v0, "LETTERBOX_REACHABILITY_POSITION_RIGHT"

    return-object v0

    .line 373
    :pswitch_1f
    const-string v0, "LETTERBOX_REACHABILITY_POSITION_CENTER"

    return-object v0

    .line 371
    :pswitch_22
    const-string v0, "LETTERBOX_REACHABILITY_POSITION_LEFT"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private static readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 246
    .local v0, "backgroundType":I
    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    goto :goto_19

    .line 247
    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    move v1, v0

    .line 243
    :goto_1a
    return v1
.end method

.method private static readLetterboxReachabilityPositionFromConfig(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 342
    .local v0, "position":I
    const/4 v1, 0x1

    if-eqz v0, :cond_15

    if-eq v0, v1, :cond_15

    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    goto :goto_15

    .line 343
    :cond_14
    goto :goto_16

    :cond_15
    :goto_15
    move v1, v0

    .line 340
    :goto_16
    return v1
.end method


# virtual methods
.method getDefaultPositionForReachability()I
    .registers 2

    .line 333
    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultPositionForReachability:I

    return v0
.end method

.method getFixedOrientationLetterboxAspectRatio()F
    .registers 2

    .line 179
    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return v0
.end method

.method getHorizontalMultiplierForReachability()F
    .registers 4

    .line 353
    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    packed-switch v0, :pswitch_data_28

    .line 361
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox position type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 359
    :pswitch_20
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 357
    :pswitch_23
    const/high16 v0, 0x3f000000    # 0.5f

    return v0

    .line 355
    :pswitch_26
    const/4 v0, 0x0

    return v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method

.method getIsEducationEnabled()Z
    .registers 2

    .line 401
    iget-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsEducationEnabled:Z

    return v0
.end method

.method getIsReachabilityEnabled()Z
    .registers 2

    .line 304
    iget-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsReachabilityEnabled:Z

    return v0
.end method

.method getLetterboxActivityCornersRadius()I
    .registers 2

    .line 193
    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    return v0
.end method

.method getLetterboxBackgroundColor()Landroid/graphics/Color;
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    if-eqz v0, :cond_5

    .line 203
    return-object v0

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 206
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_11

    .line 207
    :cond_e
    const v0, 0x106017e

    :goto_11
    nop

    .line 210
    .local v0, "colorId":I
    iget-object v1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    return-object v1
.end method

.method getLetterboxBackgroundType()I
    .registers 2

    .line 219
    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundType:I

    return v0
.end method

.method getLetterboxBackgroundWallpaperBlurRadius()I
    .registers 2

    .line 262
    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    return v0
.end method

.method getLetterboxBackgroundWallpaperDarkScrimAlpha()F
    .registers 2

    .line 254
    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    return v0
.end method

.method getLetterboxHorizontalPositionMultiplier()F
    .registers 3

    .line 272
    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_f

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_e

    goto :goto_f

    .line 275
    :cond_e
    goto :goto_11

    :cond_f
    :goto_f
    const/high16 v0, 0x3f000000    # 0.5f

    .line 272
    :goto_11
    return v0
.end method

.method isLetterboxActivityCornersRounded()Z
    .registers 2

    .line 186
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxActivityCornersRadius()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method movePositionForReachabilityToNextLeftStop()V
    .registers 3

    .line 394
    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    .line 395
    return-void
.end method

.method movePositionForReachabilityToNextRightStop()V
    .registers 3

    .line 386
    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    .line 388
    return-void
.end method

.method resetFixedOrientationLetterboxAspectRatio()V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 173
    return-void
.end method

.method resetIsReachabilityEnabled()V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsReachabilityEnabled:Z

    .line 324
    return-void
.end method

.method resetLetterboxHorizontalPositionMultiplier()V
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    .line 297
    return-void
.end method

.method setFixedOrientationLetterboxAspectRatio(F)V
    .registers 2
    .param p1, "aspectRatio"    # F

    .line 162
    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 163
    return-void
.end method

.method setIsEducationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 409
    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsEducationEnabled:Z

    .line 410
    return-void
.end method

.method setIsReachabilityEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 313
    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsReachabilityEnabled:Z

    .line 314
    return-void
.end method

.method setLetterboxHorizontalPositionMultiplier(F)V
    .registers 2
    .param p1, "multiplier"    # F

    .line 286
    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    .line 287
    return-void
.end method
