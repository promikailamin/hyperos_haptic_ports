.class final Lcom/android/server/wm/WindowManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mAnimationDurationScaleUri:Landroid/net/Uri;

.field private final mDevEnableNonResizableMultiWindowUri:Landroid/net/Uri;

.field private final mDisplayInversionEnabledUri:Landroid/net/Uri;

.field private final mDisplaySettingsPathUri:Landroid/net/Uri;

.field private final mForceDesktopModeOnExternalDisplaysUri:Landroid/net/Uri;

.field private final mForceResizableUri:Landroid/net/Uri;

.field private final mFreeformWindowUri:Landroid/net/Uri;

.field private final mImmersiveModeConfirmationsUri:Landroid/net/Uri;

.field private final mMaximumObscuringOpacityForTouchUri:Landroid/net/Uri;

.field private final mPointerLocationUri:Landroid/net/Uri;

.field private final mPolicyControlUri:Landroid/net/Uri;

.field private final mRenderShadowsInCompositorUri:Landroid/net/Uri;

.field private final mScreenProjectionHangUpOnUri:Landroid/net/Uri;

.field private final mScreenProjectionOnOffUri:Landroid/net/Uri;

.field private final mScreenProjectionPrivateOnfUri:Landroid/net/Uri;

.field private final mScreenProjectionSamllWindowUri:Landroid/net/Uri;

.field private final mScreenShareProtectionUri:Landroid/net/Uri;

.field private final mTransitionAnimationScaleUri:Landroid/net/Uri;

.field private final mWindowAnimationScaleUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 24
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .line 928
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 929
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 885
    nop

    .line 886
    const-string v2, "accessibility_display_inversion_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    .line 887
    nop

    .line 888
    const-string/jumbo v3, "window_animation_scale"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mWindowAnimationScaleUri:Landroid/net/Uri;

    .line 889
    nop

    .line 890
    const-string/jumbo v4, "transition_animation_scale"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mTransitionAnimationScaleUri:Landroid/net/Uri;

    .line 891
    nop

    .line 892
    const-string v5, "animator_duration_scale"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mAnimationDurationScaleUri:Landroid/net/Uri;

    .line 893
    nop

    .line 894
    const-string v6, "immersive_mode_confirmations"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mImmersiveModeConfirmationsUri:Landroid/net/Uri;

    .line 895
    nop

    .line 896
    const-string/jumbo v7, "policy_control"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mPolicyControlUri:Landroid/net/Uri;

    .line 897
    nop

    .line 898
    const-string/jumbo v8, "pointer_location"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mPointerLocationUri:Landroid/net/Uri;

    .line 899
    const-string v9, "force_desktop_mode_on_external_displays"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mForceDesktopModeOnExternalDisplaysUri:Landroid/net/Uri;

    .line 901
    const-string v10, "enable_freeform_support"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mFreeformWindowUri:Landroid/net/Uri;

    .line 903
    const-string v11, "force_resizable_activities"

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mForceResizableUri:Landroid/net/Uri;

    .line 905
    const-string v12, "enable_non_resizable_multi_window"

    invoke-static {v12}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDevEnableNonResizableMultiWindowUri:Landroid/net/Uri;

    .line 907
    const-string/jumbo v13, "render_shadows_in_compositor"

    invoke-static {v13}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mRenderShadowsInCompositorUri:Landroid/net/Uri;

    .line 909
    const-string/jumbo v13, "wm_display_settings_path"

    invoke-static {v13}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplaySettingsPathUri:Landroid/net/Uri;

    .line 911
    const-string/jumbo v14, "maximum_obscuring_opacity_for_touch"

    invoke-static {v14}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    iput-object v14, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mMaximumObscuringOpacityForTouchUri:Landroid/net/Uri;

    .line 914
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$sfgetimp()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v15

    .line 915
    invoke-interface {v15}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getMiuiInScreeningSettingsKey()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    iput-object v15, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mScreenProjectionOnOffUri:Landroid/net/Uri;

    .line 916
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$sfgetimp()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v16

    .line 917
    invoke-interface/range {v16 .. v16}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getMiuiHangUpSettingsKey()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v15

    invoke-static/range {v16 .. v16}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    iput-object v15, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mScreenProjectionHangUpOnUri:Landroid/net/Uri;

    .line 918
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$sfgetimp()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v16

    .line 919
    invoke-interface/range {v16 .. v16}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getMiuiSmallWindowSettingsKey()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v15

    invoke-static/range {v16 .. v16}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    iput-object v15, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mScreenProjectionSamllWindowUri:Landroid/net/Uri;

    .line 920
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$sfgetimp()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v16

    .line 921
    invoke-interface/range {v16 .. v16}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getMiuiPrivacyOnSettingsKey()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v19, v15

    invoke-static/range {v16 .. v16}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    iput-object v15, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mScreenProjectionPrivateOnfUri:Landroid/net/Uri;

    .line 923
    nop

    .line 924
    const-string/jumbo v16, "screen_share_protection_on"

    move-object/from16 v20, v15

    invoke-static/range {v16 .. v16}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    iput-object v15, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mScreenShareProtectionUri:Landroid/net/Uri;

    .line 930
    move-object/from16 v16, v15

    iget-object v15, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 931
    .local v15, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    move-object/from16 v21, v14

    const/4 v14, -0x1

    invoke-virtual {v15, v2, v1, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 933
    invoke-virtual {v15, v3, v1, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 935
    invoke-virtual {v15, v4, v1, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 937
    invoke-virtual {v15, v5, v1, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 939
    invoke-virtual {v15, v6, v1, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 941
    invoke-virtual {v15, v7, v1, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 942
    invoke-virtual {v15, v8, v1, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 943
    invoke-virtual {v15, v9, v1, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 945
    invoke-virtual {v15, v10, v1, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 946
    invoke-virtual {v15, v11, v1, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 947
    invoke-virtual {v15, v12, v1, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 949
    invoke-virtual {v15, v13, v1, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 951
    move-object/from16 v2, v21

    invoke-virtual {v15, v2, v1, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 954
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v2

    move v3, v1

    move-object/from16 v1, p1

    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v2, v4, v0}, Lcom/android/server/wm/WindowManagerServiceStub;->registerSettingsObserver(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService$SettingsObserver;)V

    .line 956
    move-object/from16 v2, v17

    invoke-virtual {v15, v2, v3, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 958
    move-object/from16 v2, v18

    invoke-virtual {v15, v2, v3, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 960
    move-object/from16 v2, v19

    invoke-virtual {v15, v2, v3, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 962
    move-object/from16 v2, v20

    invoke-virtual {v15, v2, v3, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 965
    move-object/from16 v2, v16

    invoke-virtual {v15, v2, v3, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 969
    return-void
.end method


# virtual methods
.method synthetic lambda$updateDisplaySettingsLocation$0$com-android-server-wm-WindowManagerService$SettingsObserver(Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 1175
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1176
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 1177
    return-void
.end method

.method loadSettings()V
    .registers 2

    .line 1080
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateSystemUiSettings(Z)V

    .line 1081
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updatePointerLocation()V

    .line 1082
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateMaximumObscuringOpacityForTouch()V

    .line 1083
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 10
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 973
    if-nez p2, :cond_3

    .line 974
    return-void

    .line 977
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mImmersiveModeConfirmationsUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mPolicyControlUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_1e7

    .line 982
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mPointerLocationUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 983
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updatePointerLocation()V

    .line 984
    return-void

    .line 987
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mForceDesktopModeOnExternalDisplaysUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 988
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateForceDesktopModeOnExternalDisplays()V

    .line 989
    return-void

    .line 992
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mFreeformWindowUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 993
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateFreeformWindowManagement()V

    .line 994
    return-void

    .line 997
    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mForceResizableUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 998
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateForceResizableTasks()V

    .line 999
    return-void

    .line 1002
    :cond_45
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDevEnableNonResizableMultiWindowUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1003
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateDevEnableNonResizableMultiWindow()V

    .line 1004
    return-void

    .line 1007
    :cond_51
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplaySettingsPathUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateDisplaySettingsLocation()V

    .line 1009
    return-void

    .line 1012
    :cond_5d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mMaximumObscuringOpacityForTouchUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateMaximumObscuringOpacityForTouch()V

    .line 1014
    return-void

    .line 1018
    :cond_69
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/WindowManagerServiceStub;->onSettingsObserverChange(ZLandroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1019
    return-void

    .line 1025
    :cond_74
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mScreenShareProtectionUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1026
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerServiceStub;->updateScreenShareProjectFlag()V

    .line 1027
    return-void

    .line 1032
    :cond_84
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mScreenProjectionOnOffUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_e3

    .line 1033
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$sfgetimp()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v5

    .line 1034
    invoke-interface {v5}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getMiuiInScreeningSettingsKey()Ljava/lang/String;

    move-result-object v5

    .line 1033
    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fputmScreenProjectionOnOrOff(Lcom/android/server/wm/WindowManagerService;I)V

    .line 1035
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmScreenProjectionOnOrOff(Lcom/android/server/wm/WindowManagerService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmIsScreenProjectionPrivace(Lcom/android/server/wm/WindowManagerService;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setScreenProjectionList(II)V

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScreenProjectionOnOrOff ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmScreenProjectionOnOrOff(Lcom/android/server/wm/WindowManagerService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmScreenProjectionOnOrOff(Lcom/android/server/wm/WindowManagerService;)I

    move-result v0

    if-nez v0, :cond_e2

    .line 1038
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->exitProjectionMode()V

    .line 1040
    :cond_e2
    return-void

    .line 1041
    :cond_e3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mScreenProjectionSamllWindowUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, " ,mScreenProjectionOnOrOff = "

    if-eqz v0, :cond_15e

    .line 1042
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$sfgetimp()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v6

    .line 1043
    invoke-interface {v6}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getMiuiSmallWindowSettingsKey()Ljava/lang/String;

    move-result-object v6

    .line 1042
    invoke-static {v5, v6, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fputmIsScreenProjectionSmallWindow(Lcom/android/server/wm/WindowManagerService;I)V

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsScreenProjectionSmallWindow = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmIsScreenProjectionSmallWindow(Lcom/android/server/wm/WindowManagerService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmScreenProjectionOnOrOff(Lcom/android/server/wm/WindowManagerService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmIsScreenProjectionSmallWindow(Lcom/android/server/wm/WindowManagerService;)I

    move-result v0

    if-lez v0, :cond_146

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmScreenProjectionOnOrOff(Lcom/android/server/wm/WindowManagerService;)I

    move-result v0

    if-lez v0, :cond_146

    .line 1048
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTopActivityToCastMode()V

    goto :goto_15d

    .line 1049
    :cond_146
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmScreenProjectionOnOrOff(Lcom/android/server/wm/WindowManagerService;)I

    move-result v0

    if-eqz v0, :cond_156

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmIsScreenProjectionSmallWindow(Lcom/android/server/wm/WindowManagerService;)I

    move-result v0

    if-nez v0, :cond_15d

    .line 1050
    :cond_156
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->exitCastMode()V

    .line 1052
    :cond_15d
    :goto_15d
    return-void

    .line 1053
    :cond_15e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mScreenProjectionPrivateOnfUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 1054
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$sfgetimp()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v6

    .line 1055
    invoke-interface {v6}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getMiuiPrivacyOnSettingsKey()Ljava/lang/String;

    move-result-object v6

    .line 1054
    invoke-static {v5, v6, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fputmIsScreenProjectionPrivace(Lcom/android/server/wm/WindowManagerService;I)V

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsScreenProjectionPrivace = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmIsScreenProjectionPrivace(Lcom/android/server/wm/WindowManagerService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmScreenProjectionOnOrOff(Lcom/android/server/wm/WindowManagerService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmScreenProjectionOnOrOff(Lcom/android/server/wm/WindowManagerService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmIsScreenProjectionPrivace(Lcom/android/server/wm/WindowManagerService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setScreenProjectionList(II)V

    .line 1059
    return-void

    .line 1065
    :cond_1b7
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mWindowAnimationScaleUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 1066
    const/4 v0, 0x0

    .local v0, "mode":I
    goto :goto_1d4

    .line 1067
    .end local v0    # "mode":I
    :cond_1c1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mTransitionAnimationScaleUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cb

    .line 1068
    const/4 v0, 0x1

    .restart local v0    # "mode":I
    goto :goto_1d4

    .line 1069
    .end local v0    # "mode":I
    :cond_1cb
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mAnimationDurationScaleUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e6

    .line 1070
    const/4 v0, 0x2

    .line 1075
    .restart local v0    # "mode":I
    :goto_1d4
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x33

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1076
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1077
    return-void

    .line 1073
    .end local v0    # "mode":I
    .end local v1    # "m":Landroid/os/Message;
    :cond_1e6
    return-void

    .line 978
    :cond_1e7
    :goto_1e7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateSystemUiSettings(Z)V

    .line 979
    return-void
.end method

.method updateDevEnableNonResizableMultiWindow()V
    .registers 4

    .line 1161
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1162
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "enable_non_resizable_multi_window"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v2, 0x1

    :cond_12
    move v1, v2

    .line 1165
    .local v1, "devEnableNonResizableMultiWindow":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-boolean v1, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDevEnableNonResizableMultiWindow:Z

    .line 1166
    return-void
.end method

.method updateDisplaySettingsLocation()V
    .registers 6

    .line 1169
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1170
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "wm_display_settings_path"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    .local v1, "filePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1173
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->setBaseSettingsFilePath(Ljava/lang/String;)V

    .line 1174
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/WindowManagerService$SettingsObserver$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowManagerService$SettingsObserver;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 1178
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1179
    return-void

    .line 1178
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method updateForceDesktopModeOnExternalDisplays()V
    .registers 4

    .line 1128
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1129
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "force_desktop_mode_on_external_displays"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v2, 0x1

    :cond_12
    move v1, v2

    .line 1131
    .local v1, "enableForceDesktopMode":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-ne v2, v1, :cond_1a

    .line 1132
    return-void

    .line 1134
    :cond_1a
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->setForceDesktopModeOnExternalDisplays(Z)V

    .line 1135
    return-void
.end method

.method updateForceResizableTasks()V
    .registers 4

    .line 1153
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1154
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "force_resizable_activities"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v2, 0x1

    :cond_12
    move v1, v2

    .line 1157
    .local v1, "forceResizable":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-boolean v1, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    .line 1158
    return-void
.end method

.method updateFreeformWindowManagement()V
    .registers 5

    .line 1138
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1139
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.freeform_window_management"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_21

    const-string v1, "enable_freeform_support"

    .line 1140
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_22

    :cond_21
    const/4 v2, 0x1

    :cond_22
    move v1, v2

    .line 1143
    .local v1, "freeformWindowManagement":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eq v2, v1, :cond_4b

    .line 1144
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-boolean v1, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 1145
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1147
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->onSettingsRetrieved()V

    .line 1148
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_4b

    :catchall_45
    move-exception v3

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 1150
    :cond_4b
    :goto_4b
    return-void
.end method

.method updateMaximumObscuringOpacityForTouch()V
    .registers 5

    .line 1086
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1087
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "maximum_obscuring_opacity_for_touch"

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/WindowManagerService;->mMaximumObscuringOpacityForTouch:F

    .line 1090
    return-void
.end method

.method updatePointerLocation()V
    .registers 7

    .line 1110
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1111
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "pointer_location"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v2, 0x1

    :cond_14
    move v1, v2

    .line 1114
    .local v1, "enablePointerLocation":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-ne v2, v1, :cond_1c

    .line 1115
    return-void

    .line 1117
    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v1, v2, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    .line 1118
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1119
    new-instance v3, Lcom/android/server/wm/WindowManagerService$SettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/wm/WindowManagerService$SettingsObserver$$ExternalSyntheticLambda0;-><init>()V

    .line 1120
    invoke-static {}, Lcom/android/internal/util/function/pooled/PooledLambda;->__()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    .line 1121
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1119
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v3

    .line 1122
    .local v3, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    .line 1123
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 1124
    .end local v3    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_25 .. :try_end_48} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1125
    return-void

    .line 1124
    :catchall_4c
    move-exception v3

    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method updateSystemUiSettings(Z)V
    .registers 6
    .param p1, "handleChange"    # Z

    .line 1093
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1094
    const/4 v1, 0x0

    .line 1095
    .local v1, "changed":Z
    if-eqz p1, :cond_1b

    .line 1096
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    .line 1097
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->onSystemUiSettingsChanged()Z

    move-result v2

    move v1, v2

    goto :goto_31

    .line 1099
    :cond_1b
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/server/wm/ImmersiveModeConfirmation;->loadSetting(ILandroid/content/Context;)Z

    .line 1101
    invoke-static {}, Lcom/android/server/wm/ImmersiveModeConfirmationStub;->get()Lcom/android/server/wm/ImmersiveModeConfirmationStub;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/android/server/wm/ImmersiveModeConfirmationStub;->reloadFromSetting(Landroid/content/Context;)Z

    .line 1103
    :goto_31
    if-eqz v1, :cond_3a

    .line 1104
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1106
    .end local v1    # "changed":Z
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1107
    return-void

    .line 1106
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
