.class Lcom/android/server/wm/DisplayWindowSettings;
.super Ljava/lang/Object;
.source "DisplayWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;
    }
.end annotation


# instance fields
.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "settingsProvider"    # Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 53
    iput-object p2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 54
    return-void
.end method

.method private getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;Lcom/android/server/wm/DisplayContent;)I
    .registers 7
    .param p1, "settings"    # Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    .param p2, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 125
    iget v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 128
    .local v0, "windowingMode":I
    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_f

    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-nez v3, :cond_f

    .line 130
    return v1

    .line 133
    :cond_f
    if-nez v0, :cond_29

    .line 135
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez v3, :cond_25

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->forceDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 136
    :cond_25
    move v1, v2

    goto :goto_28

    .line 137
    :cond_27
    nop

    :goto_28
    move v0, v1

    .line 139
    :cond_29
    return v0
.end method


# virtual methods
.method applyRotationSettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 294
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 295
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 297
    .local v1, "settings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    iget-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    if-eqz v2, :cond_15

    .line 298
    iget-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    .line 299
    .local v2, "ignoreOrientationRequest":Z
    :goto_16
    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->setIgnoreOrientationRequest(Z)Z

    .line 301
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation;->resetAllowAllRotations()V

    .line 302
    return-void
.end method

.method applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;Z)V

    .line 248
    return-void
.end method

.method applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 22
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "includeRotationSettings"    # Z

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    .line 252
    .local v8, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, v0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v1, v8}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v9

    .line 255
    .local v9, "settings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    invoke-direct {v0, v9, v7}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;Lcom/android/server/wm/DisplayContent;)I

    move-result v10

    .line 256
    .local v10, "windowingMode":I
    invoke-virtual {v7, v10}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 257
    iget-object v1, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    if-eqz v1, :cond_20

    .line 258
    iget-object v1, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    move v12, v1

    .line 259
    .local v12, "userRotationMode":I
    iget-object v1, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    if-eqz v1, :cond_2d

    .line 260
    iget-object v1, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    move v13, v1

    .line 261
    .local v13, "userRotation":I
    iget-object v1, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    if-eqz v1, :cond_3a

    .line 262
    iget-object v1, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    move v14, v1

    .line 263
    .local v14, "mFixedToUserRotation":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    invoke-virtual {v1, v12, v13, v14}, Lcom/android/server/wm/DisplayRotation;->restoreSettings(III)V

    .line 266
    iget v1, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    if-eqz v1, :cond_49

    const/4 v1, 0x1

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    move v6, v1

    .line 267
    .local v6, "hasDensityOverride":Z
    iget v1, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    if-eqz v1, :cond_55

    iget v1, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    if-eqz v1, :cond_55

    const/4 v1, 0x1

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    :goto_56
    move v5, v1

    .line 268
    .local v5, "hasSizeOverride":Z
    iput-boolean v6, v7, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    .line 269
    iput-boolean v5, v7, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    .line 271
    iget-object v1, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    if-eqz v1, :cond_66

    .line 272
    iget-object v1, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_67

    :cond_66
    const/4 v1, 0x0

    .line 273
    .local v1, "ignoreDisplayCutout":Z
    :goto_67
    iput-boolean v1, v7, Lcom/android/server/wm/DisplayContent;->mIgnoreDisplayCutout:Z

    .line 275
    if-eqz v5, :cond_6e

    iget v2, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    goto :goto_70

    :cond_6e
    iget v2, v7, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 276
    .local v2, "width":I
    :goto_70
    if-eqz v5, :cond_75

    iget v3, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    goto :goto_77

    :cond_75
    iget v3, v7, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 277
    .local v3, "height":I
    :goto_77
    if-eqz v6, :cond_7c

    iget v4, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    goto :goto_7e

    .line 278
    :cond_7c
    iget v4, v7, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    :goto_7e
    nop

    .line 279
    .local v4, "density":I
    iget v11, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    iget v15, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    move/from16 v17, v1

    .end local v1    # "ignoreDisplayCutout":Z
    .local v17, "ignoreDisplayCutout":Z
    move-object/from16 v1, p1

    move/from16 v18, v5

    .end local v5    # "hasSizeOverride":Z
    .local v18, "hasSizeOverride":Z
    move v5, v11

    move v11, v6

    .end local v6    # "hasDensityOverride":Z
    .local v11, "hasDensityOverride":Z
    move v6, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    .line 282
    iget-object v1, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    if-eqz v1, :cond_9a

    .line 283
    iget-object v1, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_9b

    :cond_9a
    const/4 v1, 0x0

    .line 284
    .local v1, "forcedScalingMode":I
    :goto_9b
    const/4 v5, 0x1

    if-ne v1, v5, :cond_a0

    move v15, v5

    goto :goto_a1

    :cond_a0
    const/4 v15, 0x0

    :goto_a1
    iput-boolean v15, v7, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 286
    iget-object v5, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    if-eqz v5, :cond_b0

    .line 287
    iget-object v5, v9, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v16, v5

    goto :goto_b2

    :cond_b0
    const/16 v16, 0x0

    :goto_b2
    move/from16 v5, v16

    .line 288
    .local v5, "dontMoveToTop":Z
    iput-boolean v5, v7, Lcom/android/server/wm/DisplayContent;->mDontMoveToTop:Z

    .line 290
    if-eqz p2, :cond_bb

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/DisplayWindowSettings;->applyRotationSettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 291
    :cond_bb
    return-void
.end method

.method getImePolicyLocked(Lcom/android/server/wm/DisplayContent;)I
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 227
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_8

    .line 229
    const/4 v0, 0x0

    return v0

    .line 232
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 233
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 234
    .local v1, "settings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    iget-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1e

    .line 235
    :cond_1d
    const/4 v2, 0x1

    .line 234
    :goto_1e
    return v2
.end method

.method getRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;)I
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 158
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 159
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 160
    .local v1, "settings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    iget v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    if-nez v2, :cond_18

    .line 161
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 163
    const/4 v2, 0x2

    return v2

    .line 166
    :cond_16
    const/4 v2, 0x1

    return v2

    .line 168
    :cond_18
    iget v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    return v2
.end method

.method getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 143
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 144
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 145
    .local v1, "settings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;Lcom/android/server/wm/DisplayContent;)I

    move-result v2

    return v2
.end method

.method setDisplayImePolicy(Lcom/android/server/wm/DisplayContent;I)V
    .registers 6
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "imePolicy"    # I

    .line 239
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 240
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 241
    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 242
    .local v1, "overrideSettings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 243
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 244
    return-void
.end method

.method setDontMoveToTop(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 6
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "dontMoveToTop"    # Z

    .line 200
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 201
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 202
    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 203
    .local v1, "overrideSettings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 204
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 205
    return-void
.end method

.method setFixedToUserRotation(Lcom/android/server/wm/DisplayContent;I)V
    .registers 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "fixedToUserRotation"    # I

    .line 108
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 109
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 110
    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 111
    .local v1, "overrideSettings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 112
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 113
    return-void
.end method

.method setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V
    .registers 7
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "density"    # I
    .param p3, "userId"    # I

    .line 81
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_1a

    .line 82
    if-nez p2, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "densityString":Ljava/lang/String;
    :goto_d
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_density_forced"

    invoke-static {v1, v2, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 87
    .end local v0    # "densityString":Ljava/lang/String;
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 88
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 89
    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 90
    .local v1, "overrideSettings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    iput p2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 91
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 92
    return-void
.end method

.method setForcedScalingMode(Lcom/android/server/wm/DisplayContent;I)V
    .registers 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "mode"    # I

    .line 95
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_11

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_scaling_force"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 101
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 102
    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 103
    .local v1, "overrideSettings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 104
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 105
    return-void
.end method

.method setForcedSize(Lcom/android/server/wm/DisplayContent;II)V
    .registers 7
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 66
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_30

    .line 67
    if-eqz p2, :cond_21

    if-nez p3, :cond_9

    goto :goto_21

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_21
    :goto_21
    const-string v0, ""

    .line 68
    .local v0, "sizeString":Ljava/lang/String;
    :goto_23
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_size_forced"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    .end local v0    # "sizeString":Ljava/lang/String;
    :cond_30
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 73
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 74
    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 75
    .local v1, "overrideSettings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    iput p2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 76
    iput p3, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 77
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 78
    return-void
.end method

.method setIgnoreOrientationRequest(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "ignoreOrientationRequest"    # Z

    .line 117
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 118
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 119
    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 120
    .local v1, "overrideSettings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 121
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 122
    return-void
.end method

.method setRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 6
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "mode"    # I

    .line 172
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 173
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 174
    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 175
    .local v1, "overrideSettings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    iput p2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 176
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 177
    return-void
.end method

.method setShouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 6
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "shouldShow"    # Z

    .line 219
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 220
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 221
    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 222
    .local v1, "overrideSettings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 223
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 224
    return-void
.end method

.method setShouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 6
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "shouldShow"    # Z

    .line 187
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_11

    if-nez p2, :cond_9

    goto :goto_11

    .line 188
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Public display can\'t be allowed to show content when locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_11
    :goto_11
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 193
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 194
    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 195
    .local v1, "overrideSettings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 196
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 197
    return-void
.end method

.method setUserRotation(Lcom/android/server/wm/DisplayContent;II)V
    .registers 7
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "rotationMode"    # I
    .param p3, "rotation"    # I

    .line 57
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 58
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 59
    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 60
    .local v1, "overrideSettings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 61
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 62
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 63
    return-void
.end method

.method setWindowingModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 6
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "mode"    # I

    .line 149
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 150
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 151
    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 152
    .local v1, "overrideSettings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    iput p2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 153
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 154
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 155
    return-void
.end method

.method shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 208
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_8

    .line 210
    const/4 v0, 0x1

    return v0

    .line 213
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 214
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 215
    .local v1, "settings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    iget-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    return v2
.end method

.method shouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 180
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 181
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 182
    .local v1, "settings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    iget-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    if-eqz v2, :cond_15

    .line 183
    iget-object v2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    .line 182
    :goto_16
    return v2
.end method

.method updateSettingsForDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 4
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 313
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 316
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 317
    const/4 v0, 0x1

    return v0

    .line 319
    :cond_13
    const/4 v0, 0x0

    return v0
.end method
