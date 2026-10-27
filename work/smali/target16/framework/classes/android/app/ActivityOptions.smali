.class public Landroid/app/ActivityOptions;
.super Landroid/app/ComponentOptions;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptions$OnAnimationStartedListener;,
        Landroid/app/ActivityOptions$OnAnimationFinishedListener;,
        Landroid/app/ActivityOptions$SceneTransitionInfo;,
        Landroid/app/ActivityOptions$SourceInfo;,
        Landroid/app/ActivityOptions$LaunchCookie;,
        Landroid/app/ActivityOptions$WindowingLayer;,
        Landroid/app/ActivityOptions$BackgroundActivityStartMode;
    }
.end annotation


# static fields
.field public static final greylist-max-o ANIM_CLIP_REVEAL:I = 0xb

.field public static final greylist-max-o ANIM_CUSTOM:I = 0x1

.field public static final greylist-max-o ANIM_CUSTOM_IN_PLACE:I = 0xa

.field public static final greylist-max-o ANIM_DEFAULT:I = 0x6

.field public static final blacklist ANIM_FROM_STYLE:I = 0xe

.field public static final greylist-max-o ANIM_LAUNCH_TASK_BEHIND:I = 0x7

.field public static final greylist-max-o ANIM_NONE:I = 0x0

.field public static final greylist-max-o ANIM_OPEN_CROSS_PROFILE_APPS:I = 0xc

.field public static final greylist-max-o ANIM_REMOTE_ANIMATION:I = 0xd

.field public static final greylist-max-o ANIM_SCALE_UP:I = 0x2

.field public static final greylist-max-o ANIM_SCENE_TRANSITION:I = 0x5

.field public static final greylist-max-o ANIM_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x9

.field public static final greylist-max-o ANIM_THUMBNAIL_ASPECT_SCALE_UP:I = 0x8

.field public static final greylist-max-o ANIM_THUMBNAIL_SCALE_DOWN:I = 0x4

.field public static final greylist-max-o ANIM_THUMBNAIL_SCALE_UP:I = 0x3

.field public static final blacklist ANIM_UNDEFINED:I = -0x1

.field public static final whitelist EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final whitelist EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"

.field private static final blacklist KEY_ALLOW_PASS_THROUGH_ON_TOUCH_OUTSIDE:Ljava/lang/String; = "android.activity.allowPassThroughOnTouchOutside"

.field private static final greylist-max-o KEY_ANIMATION_FINISHED_LISTENER:Ljava/lang/String; = "android:activity.animationFinishedListener"

.field private static final blacklist KEY_ANIM_ABORT_LISTENER:Ljava/lang/String; = "android:activity.animAbortListener"

.field public static final blacklist KEY_ANIM_BACKGROUND_COLOR:Ljava/lang/String; = "android:activity.backgroundColor"

.field public static final greylist-max-o KEY_ANIM_ENTER_RES_ID:Ljava/lang/String; = "android:activity.animEnterRes"

.field public static final greylist-max-o KEY_ANIM_EXIT_RES_ID:Ljava/lang/String; = "android:activity.animExitRes"

.field public static final greylist-max-o KEY_ANIM_HEIGHT:Ljava/lang/String; = "android:activity.animHeight"

.field public static final greylist-max-o KEY_ANIM_IN_PLACE_RES_ID:Ljava/lang/String; = "android:activity.animInPlaceRes"

.field public static final greylist-max-o KEY_ANIM_START_LISTENER:Ljava/lang/String; = "android:activity.animStartListener"

.field public static final greylist-max-o KEY_ANIM_START_X:Ljava/lang/String; = "android:activity.animStartX"

.field public static final greylist-max-o KEY_ANIM_START_Y:Ljava/lang/String; = "android:activity.animStartY"

.field public static final greylist-max-o KEY_ANIM_THUMBNAIL:Ljava/lang/String; = "android:activity.animThumbnail"

.field public static final greylist-max-o KEY_ANIM_TYPE:Ljava/lang/String; = "android:activity.animType"

.field public static final greylist-max-o KEY_ANIM_WIDTH:Ljava/lang/String; = "android:activity.animWidth"

.field private static final blacklist KEY_APPLY_ACTIVITY_FLAGS_FOR_BUBBLES:Ljava/lang/String; = "android:activity.applyActivityFlagsForBubbles"

.field private static final blacklist KEY_APPLY_MULTIPLE_TASK_FLAG_FOR_SHORTCUT:Ljava/lang/String; = "android:activity.applyMultipleTaskFlagForShortcut"

.field private static final blacklist KEY_APPLY_NO_USER_ACTION_FLAG_FOR_SHORTCUT:Ljava/lang/String; = "android:activity.applyNoUserActionFlagForShortcut"

.field private static final greylist-max-o KEY_AVOID_MOVE_TO_FRONT:Ljava/lang/String; = "android.activity.avoidMoveToFront"

.field private static final blacklist KEY_CALLER_DISPLAY_ID:Ljava/lang/String; = "android.activity.callerDisplayId"

.field private static final blacklist KEY_DISABLE_STARTING_WINDOW:Ljava/lang/String; = "android.activity.disableStarting"

.field private static final greylist-max-o KEY_DISALLOW_ENTER_PICTURE_IN_PICTURE_WHILE_LAUNCHING:Ljava/lang/String; = "android:activity.disallowEnterPictureInPictureWhileLaunching"

.field private static final blacklist KEY_DISMISS_KEYGUARD_IF_INSECURE:Ljava/lang/String; = "android.activity.dismissKeyguardIfInsecure"

.field private static final blacklist KEY_FLEXIBLE_LAUNCH_SIZE:Ljava/lang/String; = "android.activity.flexibleLaunchSize"

.field private static final blacklist KEY_FREEZE_RECENT_TASKS_REORDERING:Ljava/lang/String; = "android.activity.freezeRecentTasksReordering"

.field private static final greylist-max-o KEY_INSTANT_APP_VERIFICATION_BUNDLE:Ljava/lang/String; = "android:instantapps.installerbundle"

.field private static final blacklist KEY_LAUNCHED_FROM_BUBBLE:Ljava/lang/String; = "android.activity.launchTypeBubble"

.field private static final greylist-max-o KEY_LAUNCH_ACTIVITY_TYPE:Ljava/lang/String; = "android.activity.activityType"

.field public static final greylist-max-o KEY_LAUNCH_BOUNDS:Ljava/lang/String; = "android:activity.launchBounds"

.field public static final blacklist KEY_LAUNCH_COOKIE:Ljava/lang/String; = "android.activity.launchCookie"

.field private static final greylist-max-o KEY_LAUNCH_DISPLAY_ID:Ljava/lang/String; = "android.activity.launchDisplayId"

.field private static final blacklist KEY_LAUNCH_INTO_PIP_PARAMS:Ljava/lang/String; = "android.activity.launchIntoPipParams"

.field private static final blacklist KEY_LAUNCH_NEXT_TO_BUBBLE:Ljava/lang/String; = "android.activity.launchNextToBubble"

.field public static final blacklist KEY_LAUNCH_ROOT_TASK_TOKEN:Ljava/lang/String; = "android.activity.launchRootTaskToken"

.field private static final blacklist KEY_LAUNCH_TASK_DISPLAY_AREA_FEATURE_ID:Ljava/lang/String; = "android.activity.launchTaskDisplayAreaFeatureId"

.field private static final blacklist KEY_LAUNCH_TASK_DISPLAY_AREA_TOKEN:Ljava/lang/String; = "android.activity.launchTaskDisplayAreaToken"

.field public static final blacklist KEY_LAUNCH_TASK_FRAGMENT_TOKEN:Ljava/lang/String; = "android.activity.launchTaskFragmentToken"

.field private static final greylist-max-o KEY_LAUNCH_TASK_ID:Ljava/lang/String; = "android.activity.launchTaskId"

.field private static final greylist-max-o KEY_LAUNCH_WINDOWING_MODE:Ljava/lang/String; = "android.activity.windowingMode"

.field public static final blacklist KEY_LEGACY_PERMISSION_PROMPT_ELIGIBLE:Ljava/lang/String; = "android:activity.legacyPermissionPromptEligible"

.field private static final greylist-max-o KEY_LOCK_TASK_MODE:Ljava/lang/String; = "android:activity.lockTaskMode"

.field private static final blacklist KEY_OVERRIDE_TASK_TRANSITION:Ljava/lang/String; = "android:activity.overrideTaskTransition"

.field public static final greylist-max-o KEY_PACKAGE_NAME:Ljava/lang/String; = "android:activity.packageName"

.field private static final blacklist KEY_PENDING_INTENT_CREATOR_BACKGROUND_ACTIVITY_START_MODE:Ljava/lang/String; = "android.activity.pendingIntentCreatorBackgroundActivityStartMode"

.field private static final blacklist KEY_PENDING_INTENT_LAUNCH_FLAGS:Ljava/lang/String; = "android.activity.pendingIntentLaunchFlags"

.field private static final greylist-max-o KEY_REMOTE_ANIMATION_ADAPTER:Ljava/lang/String; = "android:activity.remoteAnimationAdapter"

.field private static final blacklist KEY_REMOTE_TRANSITION:Ljava/lang/String; = "android:activity.remoteTransition"

.field private static final blacklist KEY_REMOVE_WITH_TASK_ORGANIZER:Ljava/lang/String; = "android.activity.removeWithTaskOrganizer"

.field private static final blacklist KEY_REPARENT_LEAF_TASK_TO_TDA:Ljava/lang/String; = "android.activity.reparentLeafTaskToTda"

.field private static final greylist-max-o KEY_ROTATION_ANIMATION_HINT:Ljava/lang/String; = "android:activity.rotationAnimationHint"

.field private static final blacklist KEY_SCENE_TRANSITION_INFO:Ljava/lang/String; = "android:activity.sceneTransitionInfo"

.field private static final blacklist KEY_SHARE_IDENTITY:Ljava/lang/String; = "android:activity.shareIdentity"

.field private static final blacklist KEY_SOURCE_INFO:Ljava/lang/String; = "android.activity.sourceInfo"

.field private static final greylist-max-o KEY_SPECS_FUTURE:Ljava/lang/String; = "android:activity.specsFuture"

.field private static final blacklist KEY_SPLASH_SCREEN_STYLE:Ljava/lang/String; = "android.activity.splashScreenStyle"

.field public static final blacklist KEY_SPLASH_SCREEN_THEME:Ljava/lang/String; = "android.activity.splashScreenTheme"

.field private static final blacklist KEY_TASK_ALWAYS_ON_TOP:Ljava/lang/String; = "android.activity.alwaysOnTop"

.field private static final greylist-max-o KEY_TASK_OVERLAY:Ljava/lang/String; = "android.activity.taskOverlay"

.field private static final greylist-max-o KEY_TASK_OVERLAY_CAN_RESUME:Ljava/lang/String; = "android.activity.taskOverlayCanResume"

.field public static final blacklist KEY_TRANSIENT_LAUNCH:Ljava/lang/String; = "android.activity.transientLaunch"

.field private static final greylist-max-o KEY_USAGE_TIME_REPORT:Ljava/lang/String; = "android:activity.usageTimeReport"

.field public static final blacklist KEY_WINDOWING_LAYER:Ljava/lang/String; = "android.activity.windowingLayer"

.field public static final whitelist MODE_BACKGROUND_ACTIVITY_START_ALLOWED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_BACKGROUND_ACTIVITY_START_ALLOW_ALWAYS:I = 0x3

.field public static final whitelist MODE_BACKGROUND_ACTIVITY_START_ALLOW_IF_VISIBLE:I = 0x4

.field public static final blacklist MODE_BACKGROUND_ACTIVITY_START_COMPAT:I = -0x1

.field public static final whitelist MODE_BACKGROUND_ACTIVITY_START_DENIED:I = 0x2

.field public static final whitelist MODE_BACKGROUND_ACTIVITY_START_SYSTEM_DEFINED:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActivityOptions"

.field public static final blacklist WINDOWING_LAYER_NORMAL_APP:I = 0x1

.field public static final blacklist WINDOWING_LAYER_PINNED:I = 0x2

.field public static final blacklist WINDOWING_LAYER_UNDEFINED:I


# instance fields
.field private blacklist mAllowPassThroughOnTouchOutside:Z

.field private blacklist mAnimationAbortListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationFinishedListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationType:I

.field private greylist-max-o mAppVerificationBundle:Landroid/os/Bundle;

.field private blacklist mApplyActivityFlagsForBubbles:Z

.field private blacklist mApplyMultipleTaskFlagForShortcut:Z

.field private blacklist mApplyNoUserActionFlagForShortcut:Z

.field private greylist-max-o mAvoidMoveToFront:Z

.field private blacklist mCallerDisplayId:I

.field private blacklist mCustomBackgroundColor:I

.field private greylist-max-o mCustomEnterResId:I

.field private greylist-max-o mCustomExitResId:I

.field private greylist-max-o mCustomInPlaceResId:I

.field private blacklist mDisableStartingWindow:Z

.field private greylist-max-o mDisallowEnterPictureInPictureWhileLaunching:Z

.field private blacklist mDismissKeyguardIfInsecure:Z

.field private blacklist mFlexibleLaunchSize:Z

.field private blacklist mFreezeRecentTasksReordering:Z

.field private greylist-max-o mHeight:I

.field private blacklist mIsEligibleForLegacyPermissionPrompt:Z

.field private greylist-max-o mLaunchActivityType:I

.field private greylist-max-o mLaunchBounds:Landroid/graphics/Rect;

.field private blacklist mLaunchCookie:Landroid/os/IBinder;

.field private greylist-max-o mLaunchDisplayId:I

.field private blacklist mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

.field private blacklist mLaunchNextToBubble:Z

.field private blacklist mLaunchRootTask:Landroid/window/WindowContainerToken;

.field private blacklist mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

.field private blacklist mLaunchTaskDisplayAreaFeatureId:I

.field private blacklist mLaunchTaskFragmentToken:Landroid/os/IBinder;

.field private greylist-max-o mLaunchTaskId:I

.field private greylist-max-o mLaunchWindowingMode:I

.field private blacklist mLaunchedFromBubble:Z

.field private greylist-max-o mLockTaskMode:Z

.field private blacklist mOverrideTaskTransition:Z

.field private greylist-max-o mPackageName:Ljava/lang/String;

.field private blacklist mPendingIntentCreatorBackgroundActivityStartMode:I

.field private blacklist mPendingIntentLaunchFlags:I

.field private greylist-max-o mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

.field private blacklist mRemoteTransition:Landroid/window/RemoteTransition;

.field private blacklist mRemoveWithTaskOrganizer:Z

.field private blacklist mReparentLeafTaskToTda:Z

.field private greylist-max-o mRotationAnimationHint:I

.field private blacklist mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

.field private blacklist mShareIdentity:Z

.field private blacklist mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

.field private greylist-max-o mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private blacklist mSplashScreenStyle:I

.field private blacklist mSplashScreenThemeResName:Ljava/lang/String;

.field private greylist-max-o mStartX:I

.field private greylist-max-o mStartY:I

.field private blacklist mTaskAlwaysOnTop:Z

.field private greylist-max-o mTaskOverlay:Z

.field private greylist-max-o mTaskOverlayCanResume:Z

.field private greylist-max-o mThumbnail:Landroid/graphics/Bitmap;

.field private blacklist mTransientLaunch:Z

.field private greylist-max-o mUsageTimeReport:Landroid/app/PendingIntent;

.field private greylist-max-o mWidth:I

.field private blacklist mWindowingLayer:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 1367
    invoke-direct {p0}, Landroid/app/ComponentOptions;-><init>()V

    .line 572
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 587
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 588
    iput v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 590
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    .line 593
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 595
    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 597
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 599
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 600
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    .line 612
    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 620
    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 630
    iput v1, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    .line 633
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mFlexibleLaunchSize:Z

    .line 636
    iput v1, p0, Landroid/app/ActivityOptions;->mWindowingLayer:I

    .line 1368
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .registers 11

    .line 1372
    invoke-direct {p0, p1}, Landroid/app/ComponentOptions;-><init>(Landroid/os/Bundle;)V

    .line 572
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 587
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 588
    iput v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 590
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    .line 593
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 595
    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 597
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 599
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 600
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    .line 612
    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 620
    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 630
    iput v1, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    .line 633
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mFlexibleLaunchSize:Z

    .line 636
    iput v1, p0, Landroid/app/ActivityOptions;->mWindowingLayer:I

    .line 1374
    const-string v2, "android:activity.packageName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1376
    :try_start_29
    const-string v2, "android:activity.usageTimeReport"

    const-class v3, Landroid/app/PendingIntent;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_35} :catch_36

    .line 1379
    goto :goto_3c

    .line 1377
    :catch_36
    move-exception v2

    .line 1378
    const-string v3, "ActivityOptions"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1380
    :goto_3c
    const-string v2, "android:activity.launchBounds"

    const-class v3, Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1381
    const-string v2, "android:activity.animType"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1382
    iget v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const-string v3, "android:activity.animHeight"

    const-string v4, "android:activity.animWidth"

    const-string v5, "android:activity.animStartY"

    const-string v6, "android:activity.animStartX"

    const-string v7, "android:activity.animStartListener"

    packed-switch v2, :pswitch_data_290

    :pswitch_5f
    goto/16 :goto_ec

    .line 1392
    :pswitch_61
    const-string v2, "android:activity.animInPlaceRes"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 1393
    goto/16 :goto_ec

    .line 1421
    :pswitch_6b
    const-string v2, "android:activity.sceneTransitionInfo"

    const-class v3, Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityOptions$SceneTransitionInfo;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    goto :goto_ec

    .line 1408
    :pswitch_78
    const-string v2, "android:activity.animThumbnail"

    const-class v8, Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/HardwareBuffer;

    .line 1409
    if-eqz v2, :cond_8b

    .line 1410
    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1412
    :cond_8b
    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1413
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1414
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1415
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1416
    nop

    .line 1417
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1416
    invoke-static {v2}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1418
    goto :goto_ec

    .line 1397
    :pswitch_af
    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1398
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1399
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1400
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1401
    goto :goto_ec

    .line 1384
    :pswitch_c8
    const-string v2, "android:activity.animEnterRes"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 1385
    const-string v2, "android:activity.animExitRes"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 1386
    const-string v2, "android:activity.backgroundColor"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 1387
    nop

    .line 1388
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1387
    invoke-static {v2}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1389
    nop

    .line 1425
    :goto_ec
    const-string v2, "android:activity.lockTaskMode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 1426
    const-string v2, "android:activity.shareIdentity"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    .line 1427
    const-string v2, "android.activity.launchDisplayId"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 1428
    const-string v2, "android.activity.callerDisplayId"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 1429
    const-string v2, "android.activity.launchTaskDisplayAreaToken"

    const-class v3, Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    .line 1430
    const-string v2, "android.activity.launchTaskDisplayAreaFeatureId"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    .line 1432
    const-string v2, "android.activity.launchRootTaskToken"

    const-class v3, Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 1433
    const-string v2, "android.activity.launchTaskFragmentToken"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    .line 1434
    const-string v2, "android.activity.windowingMode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 1435
    const-string v2, "android.activity.activityType"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 1436
    const-string v2, "android.activity.launchTaskId"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 1437
    const-string v2, "android.activity.pendingIntentLaunchFlags"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    .line 1438
    const-string v2, "android.activity.alwaysOnTop"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    .line 1439
    const-string v2, "android.activity.reparentLeafTaskToTda"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mReparentLeafTaskToTda:Z

    .line 1440
    const-string v2, "android.activity.taskOverlay"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 1441
    const-string v2, "android.activity.taskOverlayCanResume"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    .line 1442
    const-string v2, "android.activity.avoidMoveToFront"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    .line 1443
    const-string v2, "android.activity.freezeRecentTasksReordering"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    .line 1444
    const-string v2, "android:activity.disallowEnterPictureInPictureWhileLaunching"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    .line 1446
    const-string v2, "android:activity.applyActivityFlagsForBubbles"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    .line 1448
    const-string v2, "android:activity.applyMultipleTaskFlagForShortcut"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    .line 1450
    const-string v2, "android:activity.applyNoUserActionFlagForShortcut"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mApplyNoUserActionFlagForShortcut:Z

    .line 1452
    const-string v2, "android:activity.animationFinishedListener"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b7

    .line 1453
    nop

    .line 1454
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1453
    invoke-static {v2}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 1456
    :cond_1b7
    const-string v2, "android.activity.sourceInfo"

    const-class v3, Landroid/app/ActivityOptions$SourceInfo;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityOptions$SourceInfo;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    .line 1457
    const-string v2, "android:activity.rotationAnimationHint"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 1458
    const-string v0, "android:instantapps.installerbundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 1459
    const-string v0, "android:activity.specsFuture"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e5

    .line 1460
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1463
    :cond_1e5
    const-string v0, "android:activity.remoteAnimationAdapter"

    const-class v2, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1464
    const-string v0, "android.activity.launchCookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    .line 1465
    const-string v0, "android:activity.remoteTransition"

    const-class v2, Landroid/window/RemoteTransition;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/RemoteTransition;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1466
    const-string v0, "android:activity.overrideTaskTransition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    .line 1467
    const-string v0, "android.activity.splashScreenTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    .line 1468
    const-string v0, "android.activity.removeWithTaskOrganizer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    .line 1469
    const-string v0, "android.activity.launchTypeBubble"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    .line 1470
    const-string v0, "android.activity.launchNextToBubble"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchNextToBubble:Z

    .line 1471
    const-string v0, "android.activity.transientLaunch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    .line 1472
    const-string v0, "android.activity.splashScreenStyle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 1473
    const-string v0, "android.activity.launchIntoPipParams"

    const-class v2, Landroid/app/PictureInPictureParams;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureParams;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 1474
    nop

    .line 1475
    const-string v0, "android:activity.legacyPermissionPromptEligible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 1476
    const-string v0, "android.activity.dismissKeyguardIfInsecure"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    .line 1477
    const-string v0, "android.activity.pendingIntentCreatorBackgroundActivityStartMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    .line 1480
    const-string v0, "android.activity.flexibleLaunchSize"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mFlexibleLaunchSize:Z

    .line 1481
    const-string v0, "android.activity.disableStarting"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    .line 1482
    const-string v0, "android.activity.allowPassThroughOnTouchOutside"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mAllowPassThroughOnTouchOutside:Z

    .line 1483
    nop

    .line 1484
    const-string v0, "android:activity.animAbortListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1483
    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    .line 1485
    const-string v0, "android.activity.windowingLayer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/app/ActivityOptions;->mWindowingLayer:I

    .line 1486
    return-void

    :pswitch_data_290
    .packed-switch 0x1
        :pswitch_c8
        :pswitch_af
        :pswitch_78
        :pswitch_78
        :pswitch_6b
        :pswitch_5f
        :pswitch_5f
        :pswitch_78
        :pswitch_78
        :pswitch_61
        :pswitch_af
    .end packed-switch
.end method

.method public static greylist-max-o abort(Landroid/app/ActivityOptions;)V
    .registers 1

    .line 1647
    if-eqz p0, :cond_5

    .line 1648
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->abort()V

    .line 1650
    :cond_5
    return-void
.end method

.method public static greylist-max-o fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .registers 2

    .line 1642
    if-eqz p0, :cond_8

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static blacklist hasLaunchTargetContainer(Landroid/app/ActivityOptions;)Z
    .registers 3

    .line 1654
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 1655
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-nez v0, :cond_28

    .line 1656
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayAreaFeatureId()I

    move-result v0

    if-ne v0, v1, :cond_28

    .line 1657
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-nez v0, :cond_28

    .line 1658
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    if-ne v0, v1, :cond_28

    .line 1659
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_26

    goto :goto_28

    :cond_26
    const/4 p0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 p0, 0x1

    .line 1654
    :goto_29
    return p0
.end method

.method private static greylist-max-o makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .registers 11

    .line 1071
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1072
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1073
    if-eqz p8, :cond_14

    const/16 p8, 0x8

    goto :goto_16

    .line 1074
    :cond_14
    const/16 p8, 0x9

    :goto_16
    iput p8, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1075
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1076
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 1077
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1078
    const/4 p0, 0x0

    aget p0, p1, p0

    add-int/2addr p0, p2

    iput p0, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1079
    const/4 p0, 0x1

    aget p0, p1, p0

    add-int/2addr p0, p3

    iput p0, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1080
    iput p4, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1081
    iput p5, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1082
    invoke-direct {v0, p6, p7}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1083
    return-object v0
.end method

.method public static whitelist makeBasic()Landroid/app/ActivityOptions;
    .registers 1

    .line 1293
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1294
    return-object v0
.end method

.method public static whitelist makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .registers 7

    .line 932
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 933
    const/16 v1, 0xb

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 934
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 935
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 936
    const/4 p0, 0x0

    aget p0, v1, p0

    add-int/2addr p0, p1

    iput p0, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 937
    const/4 p0, 0x1

    aget p0, v1, p0

    add-int/2addr p0, p2

    iput p0, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 938
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 939
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 940
    return-object v0
.end method

.method public static whitelist makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    .registers 9

    .line 655
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist makeCustomAnimation(Landroid/content/Context;III)Landroid/app/ActivityOptions;
    .registers 10

    .line 676
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static greylist makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .registers 7

    .line 703
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 704
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 705
    const/4 p0, 0x1

    iput p0, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 706
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 707
    iput p2, v0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 708
    iput p3, v0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 709
    invoke-direct {v0, p4, p5}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 710
    return-object v0
.end method

.method public static blacklist makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .registers 7

    .line 740
    invoke-static/range {p0 .. p5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 742
    invoke-direct {p0, p4, p6}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    .line 743
    return-object p0
.end method

.method public static greylist-max-o makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;
    .registers 3

    .line 795
    if-eqz p1, :cond_14

    .line 799
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 800
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 801
    const/16 p0, 0xa

    iput p0, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 802
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 803
    return-object v0

    .line 796
    :cond_14
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "You must specify a valid animation."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .registers 13

    .line 775
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 777
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    .line 778
    return-object p0
.end method

.method public static whitelist makeLaunchIntoPip(Landroid/app/PictureInPictureParams;)Landroid/app/ActivityOptions;
    .registers 3

    .line 1353
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1354
    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1, p0}, Landroid/app/PictureInPictureParams$Builder;-><init>(Landroid/app/PictureInPictureParams;)V

    .line 1355
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroid/app/PictureInPictureParams$Builder;->setIsLaunchIntoPip(Z)Landroid/app/PictureInPictureParams$Builder;

    move-result-object v1

    .line 1356
    invoke-virtual {v1, p0}, Landroid/app/PictureInPictureParams$Builder;->setAutoEnterEnabled(Z)Landroid/app/PictureInPictureParams$Builder;

    move-result-object p0

    .line 1357
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object p0

    iput-object p0, v0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 1358
    return-object v0
.end method

.method public static greylist makeMultiThumbFutureAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .registers 6

    .line 1030
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1031
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1032
    if-eqz p4, :cond_10

    .line 1033
    const/16 p0, 0x8

    goto :goto_12

    .line 1034
    :cond_10
    const/16 p0, 0x9

    :goto_12
    iput p0, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1035
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1036
    invoke-direct {v0, p1, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1037
    return-object v0
.end method

.method public static greylist-max-o makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;
    .registers 2

    .line 951
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 952
    const/16 v1, 0xc

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 953
    return-object v0
.end method

.method public static greylist makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;
    .registers 2

    .line 1307
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1308
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1309
    const/16 p0, 0xd

    iput p0, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1310
    return-object v0
.end method

.method public static blacklist makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .registers 3

    .line 1322
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1323
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1324
    const/16 p0, 0xd

    iput p0, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1325
    iput-object p1, v0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1326
    return-object v0
.end method

.method public static blacklist makeRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .registers 2

    .line 1337
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1338
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1339
    return-object v0
.end method

.method public static whitelist makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .registers 7

    .line 903
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 904
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 905
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 906
    new-array v1, v1, [I

    .line 907
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 908
    const/4 p0, 0x0

    aget p0, v1, p0

    add-int/2addr p0, p1

    iput p0, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 909
    const/4 p0, 0x1

    aget p0, v1, p0

    add-int/2addr p0, p2

    iput p0, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 910
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 911
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 912
    return-object v0
.end method

.method static greylist-max-o makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/app/ExitTransitionCoordinator;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/Intent;",
            ")",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .line 1253
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1254
    const/4 v1, 0x5

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1255
    new-instance v1, Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-direct {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;-><init>()V

    .line 1256
    invoke-virtual {v1, p2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setSharedElementNames(Ljava/util/ArrayList;)V

    .line 1257
    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setResultReceiver(Landroid/os/ResultReceiver;)V

    .line 1258
    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setReturning(Z)V

    .line 1259
    invoke-virtual {v1, p3}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setResultCode(I)V

    .line 1260
    invoke-virtual {v1, p4}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setResultData(Landroid/content/Intent;)V

    .line 1261
    if-nez p0, :cond_24

    .line 1262
    const/4 p0, -0x1

    invoke-virtual {v1, p0}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setExitCoordinatorKey(I)V

    goto :goto_2d

    .line 1264
    :cond_24
    iget-object p0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 1265
    invoke-virtual {p0, p1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result p0

    .line 1264
    invoke-virtual {v1, p0}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setExitCoordinatorKey(I)V

    .line 1268
    :goto_2d
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setSceneTransitionInfo(Landroid/app/ActivityOptions$SceneTransitionInfo;)Landroid/app/ActivityOptions;

    .line 1269
    return-object v0
.end method

.method public static whitelist makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .registers 5

    .line 1108
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static varargs whitelist makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1134
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1135
    new-instance v1, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;

    invoke-direct {v1, p0}, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 1137
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1135
    invoke-static {v1, v2, v3, v0, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object p1

    .line 1138
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v1

    .line 1139
    if-eqz v1, :cond_23

    .line 1140
    iget-object p0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 1141
    invoke-virtual {p0, p1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result p0

    .line 1140
    invoke-virtual {v1, p0}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setExitCoordinatorKey(I)V

    .line 1143
    :cond_23
    return-object v0
.end method

.method static blacklist makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;",
            "Landroid/app/SharedElementCallback;",
            "Landroid/view/Window;",
            "Landroid/app/ActivityOptions;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ExitTransitionCoordinator;"
        }
    .end annotation

    .line 1202
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1203
    const/4 p0, 0x6

    iput p0, p3, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1204
    const/4 p0, 0x0

    return-object p0

    .line 1206
    :cond_d
    const/4 v0, 0x5

    iput v0, p3, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1208
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1209
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    const/4 v0, 0x0

    if-eqz p4, :cond_4c

    .line 1212
    move v1, v0

    :goto_1e
    array-length v2, p4

    if-ge v1, v2, :cond_4c

    .line 1213
    aget-object v2, p4, v1

    .line 1214
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1215
    if-eqz v3, :cond_44

    .line 1218
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    .line 1220
    if-eqz v3, :cond_3c

    .line 1223
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1221
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Shared element must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1216
    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Shared element name must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1227
    :cond_4c
    new-instance v1, Landroid/app/ExitTransitionCoordinator;

    const/4 v8, 0x0

    move-object v6, v5

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 1229
    new-instance p0, Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-direct {p0}, Landroid/app/ActivityOptions$SceneTransitionInfo;-><init>()V

    .line 1230
    invoke-virtual {p0, v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setResultReceiver(Landroid/os/ResultReceiver;)V

    .line 1231
    invoke-virtual {p0, v5}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setSharedElementNames(Ljava/util/ArrayList;)V

    .line 1232
    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setReturning(Z)V

    .line 1233
    invoke-virtual {p3, p0}, Landroid/app/ActivityOptions;->setSceneTransitionInfo(Landroid/app/ActivityOptions$SceneTransitionInfo;)Landroid/app/ActivityOptions;

    .line 1234
    return-object v1
.end method

.method public static whitelist makeTaskLaunchBehind()Landroid/app/ActivityOptions;
    .registers 2

    .line 1283
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1284
    const/4 v1, 0x7

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1285
    return-object v0
.end method

.method private static greylist-max-o makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .registers 8

    .line 1008
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1009
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1010
    if-eqz p5, :cond_13

    const/4 p5, 0x3

    goto :goto_14

    :cond_13
    const/4 p5, 0x4

    :goto_14
    iput p5, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1011
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1012
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 1013
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1014
    const/4 p5, 0x0

    aget p5, p1, p5

    add-int/2addr p5, p2

    iput p5, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1015
    const/4 p2, 0x1

    aget p1, p1, p2

    add-int/2addr p1, p3

    iput p1, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1016
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-direct {v0, p0, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1017
    return-object v0
.end method

.method public static greylist-max-o makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .registers 17

    .line 1063
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Landroid/app/ActivityOptions;->makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;
    .registers 5

    .line 978
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .registers 11

    .line 1001
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method private blacklist sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V
    .registers 3

    .line 1591
    if-eqz p1, :cond_8

    .line 1593
    :try_start_2
    invoke-interface {p1, p2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1594
    :goto_5
    goto :goto_8

    :catch_6
    move-exception p1

    goto :goto_5

    .line 1596
    :cond_8
    :goto_8
    return-void
.end method

.method public static blacklist setExitTransitionTimeout(J)V
    .registers 2

    .line 1245
    sput-wide p0, Landroid/app/ExitTransitionCoordinator;->sMaxWaitMillis:J

    .line 1246
    return-void
.end method

.method private greylist-max-o setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V
    .registers 4

    .line 837
    if-eqz p2, :cond_9

    .line 838
    new-instance v0, Landroid/app/ActivityOptions$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$2;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 851
    :cond_9
    return-void
.end method

.method private greylist-max-o setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .registers 4

    .line 808
    if-eqz p2, :cond_9

    .line 809
    new-instance v0, Landroid/app/ActivityOptions$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$1;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 821
    :cond_9
    return-void
.end method

.method public static varargs blacklist startSharedElementAnimation(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;",
            "Landroid/app/SharedElementCallback;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/app/ActivityOptions;",
            "Landroid/app/ExitTransitionCoordinator;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1162
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1163
    invoke-static {p1, p2, p0, v0, p3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object p0

    .line 1165
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object p1

    .line 1166
    if-eqz p1, :cond_13

    .line 1167
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setExitCoordinatorKey(I)V

    .line 1169
    :cond_13
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o stopSharedElementAnimation(Landroid/view/Window;)V
    .registers 4

    .line 1182
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 1183
    if-nez p0, :cond_7

    .line 1184
    return-void

    .line 1186
    :cond_7
    nop

    .line 1187
    const v0, 0x10202b7

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ExitTransitionCoordinator;

    .line 1188
    if-eqz v1, :cond_2a

    .line 1189
    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->cancelPendingTransitions()Z

    .line 1190
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1191
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1192
    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    .line 1193
    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    .line 1194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    :cond_2a
    return-void
.end method


# virtual methods
.method public greylist-max-o abort()V
    .registers 3

    .line 1586
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 1587
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 1588
    return-void
.end method

.method public greylist-max-o canTaskOverlayResume()Z
    .registers 2

    .line 2062
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    return v0
.end method

.method public greylist-max-o disallowEnterPictureInPictureWhileLaunching()Z
    .registers 2

    .line 2115
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    return v0
.end method

.method public greylist-max-o forTargetActivity()Landroid/app/ActivityOptions;
    .registers 3

    .line 2784
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 2785
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 2786
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 2787
    return-object v0

    .line 2790
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist freezeRecentTasksReordering()Z
    .registers 2

    .line 2099
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    return v0
.end method

.method public greylist-max-o getAnimationFinishedListener()Landroid/os/IRemoteCallback;
    .registers 2

    .line 1581
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public blacklist getAnimationStartedListener()Landroid/os/IRemoteCallback;
    .registers 2

    .line 1576
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public greylist-max-o getAnimationType()I
    .registers 2

    .line 1521
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    return v0
.end method

.method public greylist-max-o getAvoidMoveToFront()Z
    .registers 2

    .line 2081
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    return v0
.end method

.method public blacklist getCallerDisplayId()I
    .registers 2

    .line 1815
    iget v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    return v0
.end method

.method public blacklist getCustomBackgroundColor()I
    .registers 2

    .line 1541
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    return v0
.end method

.method public greylist-max-o getCustomEnterResId()I
    .registers 2

    .line 1526
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    return v0
.end method

.method public greylist-max-o getCustomExitResId()I
    .registers 2

    .line 1531
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    return v0
.end method

.method public greylist-max-o getCustomInPlaceResId()I
    .registers 2

    .line 1536
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    return v0
.end method

.method public blacklist getDisableStartingWindow()Z
    .registers 2

    .line 1985
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    return v0
.end method

.method public blacklist getDismissKeyguardIfInsecure()Z
    .registers 2

    .line 2408
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    return v0
.end method

.method public blacklist getFlexibleLaunchSize()Z
    .registers 2

    .line 2449
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mFlexibleLaunchSize:Z

    return v0
.end method

.method public greylist-max-o getHeight()I
    .registers 2

    .line 1571
    iget v0, p0, Landroid/app/ActivityOptions;->mHeight:I

    return v0
.end method

.method public greylist-max-o getLaunchActivityType()I
    .registers 2

    .line 1945
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    return v0
.end method

.method public whitelist getLaunchBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1516
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getLaunchCookie()Landroid/os/IBinder;
    .registers 2

    .line 2299
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getLaunchDisplayId()I
    .registers 2

    .line 1792
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    return v0
.end method

.method public blacklist getLaunchIntoPipParams()Landroid/app/PictureInPictureParams;
    .registers 2

    .line 1895
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    return-object v0
.end method

.method public blacklist getLaunchNextToBubble()Z
    .registers 2

    .line 2365
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchNextToBubble:Z

    return v0
.end method

.method public blacklist getLaunchRootTask()Landroid/window/WindowContainerToken;
    .registers 2

    .line 1855
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public greylist-max-o getLaunchTaskBehind()Z
    .registers 3

    .line 1363
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;
    .registers 2

    .line 1826
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getLaunchTaskDisplayAreaFeatureId()I
    .registers 2

    .line 1838
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    return v0
.end method

.method public blacklist getLaunchTaskFragmentToken()Landroid/os/IBinder;
    .registers 2

    .line 1866
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getLaunchTaskId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1969
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    return v0
.end method

.method public greylist-max-o getLaunchWindowingMode()I
    .registers 2

    .line 1878
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    return v0
.end method

.method public blacklist getLaunchedFromBubble()Z
    .registers 2

    .line 2348
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    return v0
.end method

.method public whitelist getLockTaskMode()Z
    .registers 2

    .line 1669
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    return v0
.end method

.method public blacklist getOverrideTaskTransition()Z
    .registers 2

    .line 2315
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    return v0
.end method

.method public greylist-max-o getPackageName()Ljava/lang/String;
    .registers 2

    .line 1506
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPendingIntentBackgroundActivityStartMode()I
    .registers 2

    .line 2861
    invoke-super {p0}, Landroid/app/ComponentOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    return v0
.end method

.method public whitelist getPendingIntentCreatorBackgroundActivityStartMode()I
    .registers 2

    .line 2431
    iget v0, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    return v0
.end method

.method public blacklist getPendingIntentLaunchFlags()I
    .registers 3

    .line 2002
    iget v0, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    const/high16 v1, 0x18000000

    and-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;
    .registers 2

    .line 1621
    iget-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    return-object v0
.end method

.method public blacklist getRemoteTransition()Landroid/window/RemoteTransition;
    .registers 2

    .line 1631
    iget-object v0, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public blacklist getRemoveWithTaskOranizer()Z
    .registers 2

    .line 2331
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    return v0
.end method

.method public blacklist getReparentLeafTaskToTda()Z
    .registers 2

    .line 2036
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mReparentLeafTaskToTda:Z

    return v0
.end method

.method public greylist-max-o getRotationAnimationHint()I
    .registers 2

    .line 2799
    iget v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    return v0
.end method

.method public blacklist getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;
    .registers 2

    .line 1606
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    return-object v0
.end method

.method public blacklist getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;
    .registers 2

    .line 2762
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    return-object v0
.end method

.method public greylist-max-o getSpecsFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;
    .registers 2

    .line 1616
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    return-object v0
.end method

.method public whitelist getSplashScreenStyle()I
    .registers 2

    .line 1700
    iget v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    return v0
.end method

.method public blacklist getSplashScreenThemeResName()Ljava/lang/String;
    .registers 2

    .line 1692
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getStartX()I
    .registers 2

    .line 1556
    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    return v0
.end method

.method public greylist-max-o getStartY()I
    .registers 2

    .line 1561
    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    return v0
.end method

.method public blacklist getTaskAlwaysOnTop()Z
    .registers 2

    .line 2029
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    return v0
.end method

.method public greylist-max-o getTaskOverlay()Z
    .registers 2

    .line 2055
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    return v0
.end method

.method public blacklist getThumbnail()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 1551
    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist getTransientLaunch()Z
    .registers 2

    .line 2387
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    return v0
.end method

.method public greylist-max-o getUsageTimeReport()Landroid/app/PendingIntent;
    .registers 2

    .line 1611
    iget-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public greylist-max-o getWidth()I
    .registers 2

    .line 1566
    iget v0, p0, Landroid/app/ActivityOptions;->mWidth:I

    return v0
.end method

.method public blacklist getWindowingLayer()I
    .registers 2

    .line 2170
    iget v0, p0, Landroid/app/ActivityOptions;->mWindowingLayer:I

    return v0
.end method

.method public whitelist isAllowPassThroughOnTouchOutside()Z
    .registers 2

    .line 1915
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mAllowPassThroughOnTouchOutside:Z

    return v0
.end method

.method public blacklist isApplyActivityFlagsForBubbles()Z
    .registers 2

    .line 2125
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    return v0
.end method

.method public blacklist isApplyMultipleTaskFlagForShortcut()Z
    .registers 2

    .line 2135
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    return v0
.end method

.method public blacklist isApplyNoUserActionFlagForShortcut()Z
    .registers 2

    .line 2145
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyNoUserActionFlagForShortcut:Z

    return v0
.end method

.method public blacklist isEligibleForLegacyPermissionPrompt()Z
    .registers 2

    .line 1724
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    return v0
.end method

.method public blacklist isLaunchIntoPip()Z
    .registers 2

    .line 1903
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 1904
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1903
    :goto_f
    return v0
.end method

.method public whitelist isPendingIntentBackgroundActivityLaunchAllowed()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2885
    invoke-super {p0}, Landroid/app/ComponentOptions;->isPendingIntentBackgroundActivityLaunchAllowed()Z

    move-result v0

    return v0
.end method

.method public whitelist isShareIdentityEnabled()Z
    .registers 2

    .line 1683
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    return v0
.end method

.method public greylist-max-o popAppVerificationBundle()Landroid/os/Bundle;
    .registers 3

    .line 2821
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2822
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2823
    return-object v0
.end method

.method public whitelist requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .registers 2

    .line 2754
    iput-object p1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 2755
    return-void
.end method

.method public whitelist setAllowPassThroughOnTouchOutside(Z)V
    .registers 2

    .line 1940
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mAllowPassThroughOnTouchOutside:Z

    .line 1941
    return-void
.end method

.method public whitelist setAppVerificationBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .registers 2

    .line 2833
    iput-object p1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2834
    return-object p0
.end method

.method public blacklist setApplyActivityFlagsForBubbles(Z)V
    .registers 2

    .line 2120
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    .line 2121
    return-void
.end method

.method public blacklist setApplyMultipleTaskFlagForShortcut(Z)V
    .registers 2

    .line 2130
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    .line 2131
    return-void
.end method

.method public blacklist setApplyNoUserActionFlagForShortcut(Z)V
    .registers 2

    .line 2140
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyNoUserActionFlagForShortcut:Z

    .line 2141
    return-void
.end method

.method public greylist-max-o setAvoidMoveToFront()V
    .registers 2

    .line 2072
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    .line 2073
    return-void
.end method

.method public blacklist setCallerDisplayId(I)Landroid/app/ActivityOptions;
    .registers 2

    .line 1820
    iput p1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 1821
    return-object p0
.end method

.method public blacklist setDisableStartingWindow(Z)V
    .registers 2

    .line 1978
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    .line 1979
    return-void
.end method

.method public greylist-max-o setDisallowEnterPictureInPictureWhileLaunching(Z)V
    .registers 2

    .line 2110
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    .line 2111
    return-void
.end method

.method public blacklist setDismissKeyguardIfInsecure()V
    .registers 2

    .line 2399
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    .line 2400
    return-void
.end method

.method public blacklist setEligibleForLegacyPermissionPrompt(Z)V
    .registers 2

    .line 1733
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 1734
    return-void
.end method

.method public blacklist setFlexibleLaunchSize(Z)Landroid/app/ActivityOptions;
    .registers 2

    .line 2440
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mFlexibleLaunchSize:Z

    .line 2441
    return-object p0
.end method

.method public blacklist setFreezeRecentTasksReordering()V
    .registers 2

    .line 2091
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    .line 2092
    return-void
.end method

.method public blacklist setLaunchActivityType(I)V
    .registers 2

    .line 1951
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 1952
    return-void
.end method

.method public whitelist setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .registers 3

    .line 1500
    if-eqz p1, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1501
    return-object p0
.end method

.method public blacklist setLaunchCookie(Landroid/app/ActivityOptions$LaunchCookie;)V
    .registers 2

    .line 2279
    iget-object p1, p1, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    .line 2280
    return-void
.end method

.method public blacklist setLaunchCookie(Landroid/os/IBinder;)V
    .registers 2

    .line 2290
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    .line 2291
    return-void
.end method

.method public whitelist setLaunchDisplayId(I)Landroid/app/ActivityOptions;
    .registers 2

    .line 1809
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 1810
    return-object p0
.end method

.method public blacklist setLaunchNextToBubble(Z)Landroid/app/ActivityOptions;
    .registers 2

    .line 2356
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLaunchNextToBubble:Z

    .line 2357
    return-object p0
.end method

.method public blacklist setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;
    .registers 2

    .line 1860
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 1861
    return-object p0
.end method

.method public blacklist setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;
    .registers 2

    .line 1832
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    .line 1833
    return-object p0
.end method

.method public blacklist setLaunchTaskDisplayAreaFeatureId(I)V
    .registers 2

    .line 1850
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    .line 1851
    return-void
.end method

.method public blacklist setLaunchTaskFragmentToken(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    .registers 2

    .line 1871
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    .line 1872
    return-object p0
.end method

.method public whitelist setLaunchTaskId(I)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1961
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 1962
    return-void
.end method

.method public blacklist setLaunchWindowingMode(I)V
    .registers 2

    .line 1887
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 1888
    return-void
.end method

.method public blacklist setLaunchedFromBubble(Z)V
    .registers 2

    .line 2340
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    .line 2341
    return-void
.end method

.method public whitelist setLockTaskEnabled(Z)Landroid/app/ActivityOptions;
    .registers 2

    .line 1754
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 1755
    return-object p0
.end method

.method public blacklist setOnAnimationAbortListener(Landroid/os/IRemoteCallback;)V
    .registers 2

    .line 878
    iput-object p1, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    .line 879
    return-void
.end method

.method public blacklist setOnAnimationFinishedListener(Landroid/os/IRemoteCallback;)V
    .registers 2

    .line 858
    iput-object p1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 859
    return-void
.end method

.method public blacklist setOverrideTaskTransition(Z)Landroid/app/ActivityOptions;
    .registers 2

    .line 2309
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    .line 2310
    return-object p0
.end method

.method public whitelist setPendingIntentBackgroundActivityLaunchAllowed(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2873
    invoke-super {p0, p1}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 2874
    return-void
.end method

.method public whitelist setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;
    .registers 2

    .line 2850
    invoke-super {p0, p1}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ComponentOptions;

    .line 2851
    return-object p0
.end method

.method public bridge synthetic blacklist setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ComponentOptions;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;
    .registers 2

    .line 2420
    iput p1, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    .line 2421
    return-object p0
.end method

.method public blacklist setPendingIntentLaunchFlags(I)V
    .registers 2

    .line 1994
    iput p1, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    .line 1995
    return-void
.end method

.method public greylist-max-o setRemoteAnimationAdapter(Landroid/view/RemoteAnimationAdapter;)V
    .registers 2

    .line 1626
    iput-object p1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1627
    return-void
.end method

.method public blacklist setRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .registers 2

    .line 1636
    iput-object p1, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1637
    return-object p0
.end method

.method public blacklist setRemoveWithTaskOrganizer(Z)V
    .registers 2

    .line 2323
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    .line 2324
    return-void
.end method

.method public blacklist setReparentLeafTaskToTda(Z)V
    .registers 2

    .line 2022
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mReparentLeafTaskToTda:Z

    .line 2023
    return-void
.end method

.method public greylist-max-o setRotationAnimationHint(I)V
    .registers 2

    .line 2811
    iput p1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 2812
    return-void
.end method

.method public blacklist setSceneTransitionInfo(Landroid/app/ActivityOptions$SceneTransitionInfo;)Landroid/app/ActivityOptions;
    .registers 2

    .line 1600
    iput-object p1, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 1601
    return-object p0
.end method

.method public whitelist setShareIdentityEnabled(Z)Landroid/app/ActivityOptions;
    .registers 2

    .line 1781
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    .line 1782
    return-object p0
.end method

.method public blacklist setSourceInfo(IJ)V
    .registers 5

    .line 2776
    new-instance v0, Landroid/app/ActivityOptions$SourceInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ActivityOptions$SourceInfo;-><init>(IJ)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    .line 2777
    return-void
.end method

.method public whitelist setSplashScreenStyle(I)Landroid/app/ActivityOptions;
    .registers 3

    .line 1711
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    if-nez p1, :cond_7

    .line 1713
    :cond_5
    iput p1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 1715
    :cond_7
    return-object p0
.end method

.method public greylist setSplitScreenCreateMode(I)V
    .registers 2

    .line 2106
    return-void
.end method

.method public blacklist setTaskAlwaysOnTop(Z)V
    .registers 2

    .line 2012
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    .line 2013
    return-void
.end method

.method public blacklist setTaskOverlay(ZZ)V
    .registers 3

    .line 2047
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 2048
    iput-boolean p2, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    .line 2049
    return-void
.end method

.method public blacklist setTransientLaunch()Landroid/app/ActivityOptions;
    .registers 2

    .line 2377
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    .line 2378
    return-object p0
.end method

.method public blacklist setWindowingLayer(I)Landroid/app/ActivityOptions;
    .registers 2

    .line 2163
    iput p1, p0, Landroid/app/ActivityOptions;->mWindowingLayer:I

    .line 2164
    return-object p0
.end method

.method public whitelist toBundle()Landroid/os/Bundle;
    .registers 12

    .line 2525
    invoke-super {p0}, Landroid/app/ComponentOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 2526
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2527
    const-string v1, "android:activity.packageName"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    :cond_f
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1a

    .line 2530
    const-string v1, "android:activity.launchBounds"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2532
    :cond_1a
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_26

    .line 2533
    const-string v1, "android:activity.animType"

    iget v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2535
    :cond_26
    iget-object v1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    if-eqz v1, :cond_31

    .line 2536
    const-string v1, "android:activity.usageTimeReport"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2538
    :cond_31
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const-string v3, "android:activity.animHeight"

    const-string v4, "android:activity.animWidth"

    const-string v5, "android:activity.animStartY"

    const-string v6, "android:activity.animStartX"

    const-string v7, "android:activity.animStartListener"

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_2e8

    :pswitch_41
    goto/16 :goto_d9

    .line 2547
    :pswitch_43
    const-string v1, "android:activity.animInPlaceRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2548
    goto/16 :goto_d9

    .line 2578
    :pswitch_4c
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-eqz v1, :cond_d9

    .line 2579
    const-string v1, "android:activity.sceneTransitionInfo"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_d9

    .line 2562
    :pswitch_59
    iget-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_79

    .line 2563
    iget-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2564
    if-eqz v1, :cond_72

    .line 2565
    const-string v9, "android:activity.animThumbnail"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_79

    .line 2567
    :cond_72
    const-string v1, "ActivityOptions"

    const-string v9, "Failed to copy thumbnail"

    invoke-static {v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    :cond_79
    :goto_79
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2571
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2572
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2573
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2574
    nop

    .line 2575
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_99

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_9a

    :cond_99
    move-object v1, v8

    .line 2574
    :goto_9a
    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2576
    goto :goto_d9

    .line 2551
    :pswitch_9e
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2552
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2553
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2554
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2555
    goto :goto_d9

    .line 2540
    :pswitch_b3
    const-string v1, "android:activity.animEnterRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2541
    const-string v1, "android:activity.animExitRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2542
    const-string v1, "android:activity.backgroundColor"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2543
    nop

    .line 2544
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_d4

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_d5

    :cond_d4
    move-object v1, v8

    .line 2543
    :goto_d5
    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2545
    nop

    .line 2583
    :cond_d9
    :goto_d9
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    if-eqz v1, :cond_e4

    .line 2584
    const-string v1, "android:activity.lockTaskMode"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2586
    :cond_e4
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    if-eqz v1, :cond_ef

    .line 2587
    const-string v1, "android:activity.shareIdentity"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2589
    :cond_ef
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    if-eq v1, v2, :cond_fa

    .line 2590
    const-string v1, "android.activity.launchDisplayId"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2592
    :cond_fa
    iget v1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    if-eq v1, v2, :cond_105

    .line 2593
    const-string v1, "android.activity.callerDisplayId"

    iget v3, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2595
    :cond_105
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_110

    .line 2596
    const-string v1, "android.activity.launchTaskDisplayAreaToken"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2598
    :cond_110
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    if-eq v1, v2, :cond_11b

    .line 2599
    const-string v1, "android.activity.launchTaskDisplayAreaFeatureId"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2601
    :cond_11b
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_126

    .line 2602
    const-string v1, "android.activity.launchRootTaskToken"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2604
    :cond_126
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_131

    .line 2605
    const-string v1, "android.activity.launchTaskFragmentToken"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2607
    :cond_131
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    if-eqz v1, :cond_13c

    .line 2608
    const-string v1, "android.activity.windowingMode"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2610
    :cond_13c
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    if-eqz v1, :cond_147

    .line 2611
    const-string v1, "android.activity.activityType"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2613
    :cond_147
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    if-eq v1, v2, :cond_152

    .line 2614
    const-string v1, "android.activity.launchTaskId"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2616
    :cond_152
    iget v1, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    if-eqz v1, :cond_15d

    .line 2617
    const-string v1, "android.activity.pendingIntentLaunchFlags"

    iget v3, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2619
    :cond_15d
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    if-eqz v1, :cond_168

    .line 2620
    const-string v1, "android.activity.alwaysOnTop"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2622
    :cond_168
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mReparentLeafTaskToTda:Z

    if-eqz v1, :cond_173

    .line 2623
    const-string v1, "android.activity.reparentLeafTaskToTda"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mReparentLeafTaskToTda:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2625
    :cond_173
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    if-eqz v1, :cond_17e

    .line 2626
    const-string v1, "android.activity.taskOverlay"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2628
    :cond_17e
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    if-eqz v1, :cond_189

    .line 2629
    const-string v1, "android.activity.taskOverlayCanResume"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2631
    :cond_189
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    if-eqz v1, :cond_194

    .line 2632
    const-string v1, "android.activity.avoidMoveToFront"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2634
    :cond_194
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    if-eqz v1, :cond_19f

    .line 2635
    const-string v1, "android.activity.freezeRecentTasksReordering"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2637
    :cond_19f
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    if-eqz v1, :cond_1aa

    .line 2638
    const-string v1, "android:activity.disallowEnterPictureInPictureWhileLaunching"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2641
    :cond_1aa
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    if-eqz v1, :cond_1b5

    .line 2642
    const-string v1, "android:activity.applyActivityFlagsForBubbles"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2644
    :cond_1b5
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    if-eqz v1, :cond_1c0

    .line 2645
    const-string v1, "android:activity.applyMultipleTaskFlagForShortcut"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2648
    :cond_1c0
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyNoUserActionFlagForShortcut:Z

    if-eqz v1, :cond_1ca

    .line 2649
    const-string v1, "android:activity.applyNoUserActionFlagForShortcut"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2651
    :cond_1ca
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_1d9

    .line 2652
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "android:activity.animationFinishedListener"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2654
    :cond_1d9
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v1, :cond_1e8

    .line 2655
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    invoke-interface {v1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "android:activity.specsFuture"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2657
    :cond_1e8
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    if-eqz v1, :cond_1f3

    .line 2658
    const-string v1, "android.activity.sourceInfo"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2660
    :cond_1f3
    iget v1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    if-eq v1, v2, :cond_1fe

    .line 2661
    const-string v1, "android:activity.rotationAnimationHint"

    iget v2, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2663
    :cond_1fe
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_209

    .line 2664
    const-string v1, "android:instantapps.installerbundle"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2666
    :cond_209
    iget-object v1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    if-eqz v1, :cond_214

    .line 2667
    const-string v1, "android:activity.remoteAnimationAdapter"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2669
    :cond_214
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v1, :cond_21f

    .line 2670
    const-string v1, "android.activity.launchCookie"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2672
    :cond_21f
    iget-object v1, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_22a

    .line 2673
    const-string v1, "android:activity.remoteTransition"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2675
    :cond_22a
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    if-eqz v1, :cond_235

    .line 2676
    const-string v1, "android:activity.overrideTaskTransition"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2678
    :cond_235
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    if-eqz v1, :cond_248

    iget-object v1, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_248

    .line 2679
    const-string v1, "android.activity.splashScreenTheme"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    :cond_248
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    if-eqz v1, :cond_253

    .line 2682
    const-string v1, "android.activity.removeWithTaskOrganizer"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2684
    :cond_253
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    if-eqz v1, :cond_25e

    .line 2685
    const-string v1, "android.activity.launchTypeBubble"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2687
    :cond_25e
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchNextToBubble:Z

    if-eqz v1, :cond_269

    .line 2688
    const-string v1, "android.activity.launchNextToBubble"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mLaunchNextToBubble:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2690
    :cond_269
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    if-eqz v1, :cond_274

    .line 2691
    const-string v1, "android.activity.transientLaunch"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2693
    :cond_274
    iget v1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    if-eqz v1, :cond_27f

    .line 2694
    const-string v1, "android.activity.splashScreenStyle"

    iget v2, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2696
    :cond_27f
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    if-eqz v1, :cond_28a

    .line 2697
    const-string v1, "android.activity.launchIntoPipParams"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2699
    :cond_28a
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    if-eqz v1, :cond_295

    .line 2700
    const-string v1, "android:activity.legacyPermissionPromptEligible"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2703
    :cond_295
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    if-eqz v1, :cond_2a0

    .line 2704
    const-string v1, "android.activity.dismissKeyguardIfInsecure"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2706
    :cond_2a0
    iget v1, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    if-eqz v1, :cond_2ab

    .line 2708
    const-string v1, "android.activity.pendingIntentCreatorBackgroundActivityStartMode"

    iget v2, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2711
    :cond_2ab
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mFlexibleLaunchSize:Z

    if-eqz v1, :cond_2b6

    .line 2712
    const-string v1, "android.activity.flexibleLaunchSize"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mFlexibleLaunchSize:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2714
    :cond_2b6
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    if-eqz v1, :cond_2c1

    .line 2715
    const-string v1, "android.activity.disableStarting"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2717
    :cond_2c1
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mAllowPassThroughOnTouchOutside:Z

    if-eqz v1, :cond_2cc

    .line 2718
    const-string v1, "android.activity.allowPassThroughOnTouchOutside"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mAllowPassThroughOnTouchOutside:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2721
    :cond_2cc
    nop

    .line 2722
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_2d7

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 2721
    :cond_2d7
    const-string v1, "android:activity.animAbortListener"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2723
    iget v1, p0, Landroid/app/ActivityOptions;->mWindowingLayer:I

    if-eqz v1, :cond_2e7

    .line 2724
    const-string v1, "android.activity.windowingLayer"

    iget v2, p0, Landroid/app/ActivityOptions;->mWindowingLayer:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2726
    :cond_2e7
    return-object v0

    :pswitch_data_2e8
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_9e
        :pswitch_59
        :pswitch_59
        :pswitch_4c
        :pswitch_41
        :pswitch_41
        :pswitch_59
        :pswitch_59
        :pswitch_43
        :pswitch_9e
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityOptions("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAnimationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLaunchDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist update(Landroid/app/ActivityOptions;)V
    .registers 4

    .line 2458
    iget-object v0, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2459
    iget-object v0, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 2461
    :cond_8
    iget-object v0, p1, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 2462
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 2463
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 2464
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    packed-switch v1, :pswitch_data_a0

    :pswitch_18
    goto :goto_75

    .line 2474
    :pswitch_19
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 2475
    goto :goto_75

    .line 2497
    :pswitch_1e
    iget-object v1, p1, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 2498
    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2499
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_75

    .line 2488
    :pswitch_27
    iget-object v1, p1, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2489
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 2490
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 2491
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 2492
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 2493
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 2494
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2495
    goto :goto_75

    .line 2477
    :pswitch_45
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 2478
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 2479
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 2480
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 2481
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 2482
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2483
    goto :goto_75

    .line 2466
    :pswitch_5d
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 2467
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomExitResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 2468
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 2469
    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2470
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 2471
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2472
    nop

    .line 2502
    :goto_75
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 2503
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mShareIdentity:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    .line 2504
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 2505
    iget-object v1, p1, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2506
    iget-object v1, p1, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 2507
    iget-object v1, p1, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 2508
    iget v1, p1, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 2509
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 2511
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 2512
    iget-object p1, p1, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    iput-object p1, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    .line 2513
    return-void

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_45
        :pswitch_27
        :pswitch_27
        :pswitch_1e
        :pswitch_18
        :pswitch_18
        :pswitch_27
        :pswitch_27
        :pswitch_19
    .end packed-switch
.end method
