.class public Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;
.super Ljava/lang/Object;
.source "ThemeSupport.java"


# instance fields
.field blacklist mContext:Landroid/content/Context;

.field blacklist mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getColorFromResource(I)I
    .registers 4

    .line 235
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 236
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->mContext:Landroid/content/Context;

    .line 237
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    filled-new-array {p1}, [I

    move-result-object p1

    .line 238
    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 239
    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_17
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_22

    .line 240
    nop

    .line 241
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V

    .line 240
    :cond_21
    return v0

    .line 236
    :catchall_22
    move-exception v0

    if-eqz p1, :cond_2d

    :try_start_25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2d
    :goto_2d
    throw v0
.end method

.method private blacklist setRColor(Ljava/lang/String;I)V
    .registers 4

    .line 229
    invoke-direct {p0, p2}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->getColorFromResource(I)I

    move-result p2

    .line 230
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setColor(Ljava/lang/String;I)V

    .line 231
    return-void
.end method


# virtual methods
.method public blacklist mapColors(Landroid/content/Context;Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;)V
    .registers 9

    .line 30
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    .line 33
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getNamedColors()[Ljava/lang/String;

    move-result-object p1

    .line 36
    if-nez p1, :cond_d

    .line 37
    return-void

    .line 39
    :cond_d
    nop

    .line 40
    const/4 p2, 0x0

    move v0, p2

    :goto_10
    array-length v1, p1

    const-string v2, "android."

    const/4 v3, 0x1

    if-ge v0, v1, :cond_24

    .line 41
    aget-object v1, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 42
    nop

    .line 43
    move v0, v3

    goto :goto_25

    .line 40
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_24
    move v0, p2

    .line 46
    :goto_25
    if-nez v0, :cond_28

    .line 47
    return-void

    .line 50
    :cond_28
    move v0, p2

    :goto_29
    array-length v1, p1

    if-ge v0, v1, :cond_43e

    .line 51
    aget-object v1, p1, v0

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 53
    goto/16 :goto_43a

    .line 55
    :cond_36
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_440

    :cond_45
    goto/16 :goto_2ae

    :sswitch_47
    const-string v5, "activatedBackgroundIndicator"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/4 v4, 0x3

    goto/16 :goto_2af

    :sswitch_52
    const-string v5, "colorPrimary"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x15

    goto/16 :goto_2af

    :sswitch_5e
    const-string/jumbo v5, "popupBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x21

    goto/16 :goto_2af

    :sswitch_6b
    const-string/jumbo v5, "panelBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x1e

    goto/16 :goto_2af

    :sswitch_78
    const-string v5, "colorBackgroundCacheHint"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/4 v4, 0x7

    goto/16 :goto_2af

    :sswitch_83
    const-string v5, "colorSwitchThumbNormal"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x30

    goto/16 :goto_2af

    :sswitch_8f
    const-string v5, "galleryItemBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x1a

    goto/16 :goto_2af

    :sswitch_9b
    const-string/jumbo v5, "textColorPrimaryInverse"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x28

    goto/16 :goto_2af

    :sswitch_a8
    const-string v5, "headerBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x1b

    goto/16 :goto_2af

    :sswitch_b4
    const-string v5, "itemBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x1c

    goto/16 :goto_2af

    :sswitch_c0
    const-string v5, "colorError"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0xe

    goto/16 :goto_2af

    :sswitch_cc
    const-string v5, "colorButtonNormal"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x9

    goto/16 :goto_2af

    :sswitch_d8
    const-string v5, "actionModeSplitBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/4 v4, 0x2

    goto/16 :goto_2af

    :sswitch_e3
    const-string/jumbo v5, "textColorTertiary"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x2a

    goto/16 :goto_2af

    :sswitch_f0
    const-string/jumbo v5, "textColorTertiaryInverse"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x2b

    goto/16 :goto_2af

    :sswitch_fd
    const-string v5, "colorBackgroundFloating"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x8

    goto/16 :goto_2af

    :sswitch_109
    const-string/jumbo v5, "submitBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x24

    goto/16 :goto_2af

    :sswitch_116
    const-string v5, "colorLongPressedHighlight"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x12

    goto/16 :goto_2af

    :sswitch_122
    const-string v5, "colorFocusedHighlight"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0xf

    goto/16 :goto_2af

    :sswitch_12e
    const-string v5, "actionModeBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    move v4, v3

    goto/16 :goto_2af

    :sswitch_139
    const-string/jumbo v5, "textColorPrimary"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x31

    goto/16 :goto_2af

    :sswitch_146
    const-string v5, "colorAccent"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/4 v4, 0x4

    goto/16 :goto_2af

    :sswitch_151
    const-string v5, "colorBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/4 v4, 0x6

    goto/16 :goto_2af

    :sswitch_15c
    const-string v5, "detailsElementBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x18

    goto/16 :goto_2af

    :sswitch_168
    const-string v5, "colorControlNormal"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0xc

    goto/16 :goto_2af

    :sswitch_174
    const-string/jumbo v5, "textColorSecondaryInverse"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x29

    goto/16 :goto_2af

    :sswitch_181
    const-string/jumbo v5, "selectableItemBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x23

    goto/16 :goto_2af

    :sswitch_18e
    const-string/jumbo v5, "panelFullBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x20

    goto/16 :goto_2af

    :sswitch_19b
    const-string v5, "colorActivatedHighlight"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/4 v4, 0x5

    goto/16 :goto_2af

    :sswitch_1a6
    const-string/jumbo v5, "queryBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x22

    goto/16 :goto_2af

    :sswitch_1b3
    const-string/jumbo v5, "windowBackgroundFallback"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x27

    goto/16 :goto_2af

    :sswitch_1c0
    const-string v5, "colorPressedHighlight"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x14

    goto/16 :goto_2af

    :sswitch_1cc
    const-string v5, "colorControlActivated"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0xa

    goto/16 :goto_2af

    :sswitch_1d8
    const-string v5, "colorForeground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x10

    goto/16 :goto_2af

    :sswitch_1e4
    const-string v5, "colorEdgeEffect"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0xd

    goto/16 :goto_2af

    :sswitch_1f0
    const-string v5, "actionBarItemBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    move v4, p2

    goto/16 :goto_2af

    :sswitch_1fb
    const-string v5, "numbersBackgroundColor"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x1d

    goto/16 :goto_2af

    :sswitch_207
    const-string/jumbo v5, "textColorHighlight"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x2c

    goto/16 :goto_2af

    :sswitch_214
    const-string v5, "colorMultiSelectHighlight"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x13

    goto/16 :goto_2af

    :sswitch_220
    const-string/jumbo v5, "textColor"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x25

    goto/16 :goto_2af

    :sswitch_22d
    const-string/jumbo v5, "textColorSecondary"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x32

    goto/16 :goto_2af

    :sswitch_23a
    const-string v5, "editTextBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x19

    goto/16 :goto_2af

    :sswitch_246
    const-string v5, "colorControlHighlight"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0xb

    goto :goto_2af

    :sswitch_251
    const-string/jumbo v5, "windowBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x26

    goto :goto_2af

    :sswitch_25d
    const-string v5, "colorSecondary"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x17

    goto :goto_2af

    :sswitch_268
    const-string v5, "colorForegroundInverse"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x11

    goto :goto_2af

    :sswitch_273
    const-string/jumbo v5, "textColorHintInverse"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x2f

    goto :goto_2af

    :sswitch_27f
    const-string/jumbo v5, "panelColorBackground"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x1f

    goto :goto_2af

    :sswitch_28b
    const-string/jumbo v5, "textColorLink"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x2d

    goto :goto_2af

    :sswitch_297
    const-string/jumbo v5, "textColorHint"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x2e

    goto :goto_2af

    :sswitch_2a3
    const-string v5, "colorPrimaryDark"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x16

    goto :goto_2af

    :goto_2ae
    const/4 v4, -0x1

    :goto_2af
    const v5, 0x1010429

    packed-switch v4, :pswitch_data_50e

    goto/16 :goto_43a

    .line 222
    :pswitch_2b7
    const v4, 0x1010038

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_43a

    .line 219
    :pswitch_2bf
    const v4, 0x1010036

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 220
    goto/16 :goto_43a

    .line 216
    :pswitch_2c7
    invoke-direct {p0, v1, v5}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 217
    goto/16 :goto_43a

    .line 212
    :pswitch_2cc
    const v4, 0x101003f

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 213
    goto/16 :goto_43a

    .line 208
    :pswitch_2d4
    const v4, 0x101009a

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 209
    goto/16 :goto_43a

    .line 204
    :pswitch_2dc
    const v4, 0x101009b

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 205
    goto/16 :goto_43a

    .line 200
    :pswitch_2e4
    const v4, 0x1010099

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 201
    goto/16 :goto_43a

    .line 196
    :pswitch_2ec
    const v4, 0x1010213

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 197
    goto/16 :goto_43a

    .line 192
    :pswitch_2f4
    const v4, 0x1010212

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 193
    goto/16 :goto_43a

    .line 188
    :pswitch_2fc
    const v4, 0x101003a

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 189
    goto/16 :goto_43a

    .line 184
    :pswitch_304
    const v4, 0x1010039

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 185
    goto/16 :goto_43a

    .line 180
    :pswitch_30c
    const v4, 0x1010503

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 181
    goto/16 :goto_43a

    .line 177
    :pswitch_314
    const v4, 0x1010054

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 178
    goto/16 :goto_43a

    .line 174
    :pswitch_31c
    const v4, 0x1010098

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 175
    goto/16 :goto_43a

    .line 171
    :pswitch_324
    const v4, 0x1010488

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 172
    goto/16 :goto_43a

    .line 168
    :pswitch_32c
    const v4, 0x101030e

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 169
    goto/16 :goto_43a

    .line 165
    :pswitch_334
    const v4, 0x1010487

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 166
    goto/16 :goto_43a

    .line 162
    :pswitch_33c
    const v4, 0x1010176

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 163
    goto/16 :goto_43a

    .line 159
    :pswitch_344
    const v4, 0x101005f

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 160
    goto/16 :goto_43a

    .line 156
    :pswitch_34c
    const v4, 0x1010061

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 157
    goto/16 :goto_43a

    .line 153
    :pswitch_354
    const v4, 0x101005e

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 154
    goto/16 :goto_43a

    .line 150
    :pswitch_35c
    const v4, 0x10104a2

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 151
    goto/16 :goto_43a

    .line 147
    :pswitch_364
    const v4, 0x1010130

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 148
    goto/16 :goto_43a

    .line 144
    :pswitch_36c
    const v4, 0x101012f

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 145
    goto/16 :goto_43a

    .line 141
    :pswitch_374
    const v4, 0x101004c

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 142
    goto/16 :goto_43a

    .line 138
    :pswitch_37c
    const v4, 0x1010352

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 139
    goto/16 :goto_43a

    .line 135
    :pswitch_384
    const v4, 0x101034e

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 136
    goto/16 :goto_43a

    .line 132
    :pswitch_38c
    const v4, 0x1010530

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 133
    goto/16 :goto_43a

    .line 129
    :pswitch_394
    const v4, 0x1010434

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 130
    goto/16 :goto_43a

    .line 126
    :pswitch_39c
    const v4, 0x1010433

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 127
    goto/16 :goto_43a

    .line 123
    :pswitch_3a4
    const v4, 0x101038d

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 124
    goto/16 :goto_43a

    .line 120
    :pswitch_3ac
    const v4, 0x1010391

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 121
    goto/16 :goto_43a

    .line 117
    :pswitch_3b4
    const v4, 0x101038e

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 118
    goto/16 :goto_43a

    .line 114
    :pswitch_3bc
    const v4, 0x1010206

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 115
    goto/16 :goto_43a

    .line 110
    :pswitch_3c4
    const v4, 0x1010030

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 111
    goto/16 :goto_43a

    .line 107
    :pswitch_3cc
    const v4, 0x101038f

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 108
    goto/16 :goto_43a

    .line 104
    :pswitch_3d4
    const v4, 0x1010543

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 105
    goto :goto_43a

    .line 101
    :pswitch_3db
    const v4, 0x10104ce

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 102
    goto :goto_43a

    .line 97
    :pswitch_3e2
    invoke-direct {p0, v1, v5}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 98
    goto :goto_43a

    .line 93
    :pswitch_3e6
    const v4, 0x101042c

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 94
    goto :goto_43a

    .line 90
    :pswitch_3ed
    const v4, 0x101042a

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 91
    goto :goto_43a

    .line 86
    :pswitch_3f4
    const v4, 0x101042b

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 87
    goto :goto_43a

    .line 83
    :pswitch_3fb
    const v4, 0x10104e2

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 84
    goto :goto_43a

    .line 79
    :pswitch_402
    const v4, 0x10102ab

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 80
    goto :goto_43a

    .line 76
    :pswitch_409
    const v4, 0x1010031

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 77
    goto :goto_43a

    .line 73
    :pswitch_410
    const v4, 0x1010390

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 74
    goto :goto_43a

    .line 70
    :pswitch_417
    const v4, 0x1010435

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 71
    goto :goto_43a

    .line 67
    :pswitch_41e
    const v4, 0x10102fd

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 68
    goto :goto_43a

    .line 64
    :pswitch_425
    const v4, 0x101039d

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 65
    goto :goto_43a

    .line 61
    :pswitch_42c
    const v4, 0x10102db

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 62
    goto :goto_43a

    .line 58
    :pswitch_433
    const v4, 0x101039c

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->setRColor(Ljava/lang/String;I)V

    .line 59
    nop

    .line 50
    :goto_43a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_29

    .line 226
    :cond_43e
    return-void

    nop

    :sswitch_data_440
    .sparse-switch
        -0x7d4b52cb -> :sswitch_2a3
        -0x79908a23 -> :sswitch_297
        -0x798eb8b0 -> :sswitch_28b
        -0x6a3f59b3 -> :sswitch_27f
        -0x625ee56d -> :sswitch_273
        -0x5efbf4b6 -> :sswitch_268
        -0x5ee4feaf -> :sswitch_25d
        -0x5df81ec2 -> :sswitch_251
        -0x4cd1b2a6 -> :sswitch_246
        -0x430e7d1b -> :sswitch_23a
        -0x41b30022 -> :sswitch_22d
        -0x3f64d1ca -> :sswitch_220
        -0x3a2a2f5e -> :sswitch_214
        -0x3991e4e2 -> :sswitch_207
        -0x367b7cd5 -> :sswitch_1fb
        -0x29fa7002 -> :sswitch_1f0
        -0x2555828f -> :sswitch_1e4
        -0x20bc2afa -> :sswitch_1d8
        -0x18087589 -> :sswitch_1cc
        -0x15af2bcb -> :sswitch_1c0
        -0x159c31c0 -> :sswitch_1b3
        -0xd790fea -> :sswitch_1a6
        -0x74ea95a -> :sswitch_19b
        0x14aac41 -> :sswitch_18e
        0x2b89a97 -> :sswitch_181
        0xd357d72 -> :sswitch_174
        0xe082e01 -> :sswitch_168
        0x10e99f28 -> :sswitch_15c
        0x1993c0f1 -> :sswitch_151
        0x1add7a0d -> :sswitch_146
        0x1b0a2eec -> :sswitch_139
        0x21122f07 -> :sswitch_12e
        0x26566480 -> :sswitch_122
        0x2d8aed51 -> :sswitch_116
        0x31673366 -> :sswitch_109
        0x39eaac17 -> :sswitch_fd
        0x45926168 -> :sswitch_f0
        0x45d104a8 -> :sswitch_e3
        0x45d919af -> :sswitch_d8
        0x479ba9bc -> :sswitch_cc
        0x4b6fd865 -> :sswitch_c0
        0x4d3730a1 -> :sswitch_b4
        0x5563079b -> :sswitch_a8
        0x5765e2a4 -> :sswitch_9b
        0x57763c93 -> :sswitch_8f
        0x5ef2ad66 -> :sswitch_83
        0x60354f38 -> :sswitch_78
        0x62508652 -> :sswitch_6b
        0x6824bafa -> :sswitch_5e
        0x743ff11f -> :sswitch_52
        0x7f61def0 -> :sswitch_47
    .end sparse-switch

    :pswitch_data_50e
    .packed-switch 0x0
        :pswitch_433
        :pswitch_42c
        :pswitch_425
        :pswitch_41e
        :pswitch_417
        :pswitch_410
        :pswitch_409
        :pswitch_402
        :pswitch_3fb
        :pswitch_3f4
        :pswitch_3ed
        :pswitch_3e6
        :pswitch_3e2
        :pswitch_3db
        :pswitch_3d4
        :pswitch_3cc
        :pswitch_3c4
        :pswitch_3bc
        :pswitch_3b4
        :pswitch_3ac
        :pswitch_3a4
        :pswitch_39c
        :pswitch_394
        :pswitch_38c
        :pswitch_384
        :pswitch_37c
        :pswitch_374
        :pswitch_36c
        :pswitch_364
        :pswitch_35c
        :pswitch_354
        :pswitch_34c
        :pswitch_344
        :pswitch_33c
        :pswitch_334
        :pswitch_32c
        :pswitch_324
        :pswitch_31c
        :pswitch_314
        :pswitch_30c
        :pswitch_304
        :pswitch_2fc
        :pswitch_2f4
        :pswitch_2ec
        :pswitch_2e4
        :pswitch_2dc
        :pswitch_2d4
        :pswitch_2cc
        :pswitch_2c7
        :pswitch_2bf
        :pswitch_2b7
    .end packed-switch
.end method
