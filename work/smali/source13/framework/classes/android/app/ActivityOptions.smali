.class public Landroid/app/ActivityOptions;
.super Landroid/app/ComponentOptions;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptions$ActivityOptionsInjector;,
        Landroid/app/ActivityOptions$SourceInfo;,
        Landroid/app/ActivityOptions$OnAnimationFinishedListener;,
        Landroid/app/ActivityOptions$OnAnimationStartedListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o ANIM_CLIP_REVEAL:I = 0xb

.field public static final greylist-max-o ANIM_CUSTOM:I = 0x1

.field public static final greylist-max-o ANIM_CUSTOM_IN_PLACE:I = 0xa

.field public static final greylist-max-o ANIM_DEFAULT:I = 0x6

.field public static final blacklist ANIM_FROM_STYLE:I = 0xe

.field public static final blacklist ANIM_LAUNCH_ACTIVITY_FROM_ROUNDED_VIEW:I = 0x66

.field public static final blacklist ANIM_LAUNCH_ACTIVITY_WITH_SCALED_THUMB:I = 0x67

.field public static final blacklist ANIM_LAUNCH_CLIP_WINDOW:I = 0x68

.field public static final blacklist ANIM_LAUNCH_ROUND_WINDOW:I = 0x69

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

.field public static final whitelist KEY_ACTIVITY_OPTIONS_INJECTOR:Ljava/lang/String; = "miui:activity.options.injector"

.field private static final blacklist KEY_ANIMATION_CLIP_WINDOW_DURATION:Ljava/lang/String; = "android:activity.animationClipWindowDuration"

.field private static final blacklist KEY_ANIMATION_CLIP_WINDOW_FROM_CORNER_RADIUS:Ljava/lang/String; = "android:activity.animationClipWindowFromCornerRadius"

.field private static final blacklist KEY_ANIMATION_CLIP_WINDOW_FROM_RECT:Ljava/lang/String; = "android:activity.animationClipWindowFromRect"

.field private static final blacklist KEY_ANIMATION_CLIP_WINDOW_INTERPOLATOR_ID:Ljava/lang/String; = "android:activity.animationClipWindowInterpolatorId"

.field private static final blacklist KEY_ANIMATION_CLIP_WINDOW_TO_CORNER_RADIUS:Ljava/lang/String; = "android:activity.animationClipWindowToCornerRadius"

.field private static final blacklist KEY_ANIMATION_CLIP_WINDOW_TO_RECT:Ljava/lang/String; = "android:activity.animationClipWindowToRect"

.field private static final greylist-max-o KEY_ANIMATION_FINISHED_LISTENER:Ljava/lang/String; = "android:activity.animationFinishedListener"

.field private static final blacklist KEY_ANIMATION_IS_CLIP_ENTER:Ljava/lang/String; = "android:activity.isClipEnter"

.field private static final blacklist KEY_ANIMATION_IS_CLIP_WINDOW:Ljava/lang/String; = "android:activity.isClipWindow"

.field private static final blacklist KEY_ANIMATION_IS_CLIP_WITH_SCALE:Ljava/lang/String; = "android:activity.isClipWithScale"

.field private static final blacklist KEY_ANIMATION_IS_ROUND_ENTER:Ljava/lang/String; = "android:activity.isRoundEnter"

.field private static final blacklist KEY_ANIMATION_IS_ROUND_WINDOW:Ljava/lang/String; = "android:activity.isRoundWindow"

.field private static final blacklist KEY_ANIMATION_REENTER_FINISHED_LISTENER:Ljava/lang/String; = "android:activity.animationReenterFinishedListener"

.field private static final blacklist KEY_ANIMATION_REENTER_STARTED_LISTENER:Ljava/lang/String; = "android:activity.animationReenterStartedListener"

.field private static final blacklist KEY_ANIMATION_ROUND_WINDOW_DURATION:Ljava/lang/String; = "android:activity.animationRoundWindowDuration"

.field private static final blacklist KEY_ANIMATION_ROUND_WINDOW_FROM_CORNER_RADIUS:Ljava/lang/String; = "android:activity.animationRoundWindowFromCornerRadius"

.field private static final blacklist KEY_ANIMATION_ROUND_WINDOW_INTERPOLATOR_ID:Ljava/lang/String; = "android:activity.animationRoundWindowInterpolatorId"

.field private static final blacklist KEY_ANIMATION_ROUND_WINDOW_TO_CORNER_RADIUS:Ljava/lang/String; = "android:activity.animationRoundWindowToCornerRadius"

.field public static final blacklist KEY_ANIM_BACKGROUND_COLOR:Ljava/lang/String; = "android:activity.backgroundColor"

.field public static final greylist-max-o KEY_ANIM_ENTER_RES_ID:Ljava/lang/String; = "android:activity.animEnterRes"

.field public static final greylist-max-o KEY_ANIM_EXIT_RES_ID:Ljava/lang/String; = "android:activity.animExitRes"

.field public static final blacklist KEY_ANIM_FOREGROUND_COLOR:Ljava/lang/String; = "android:activity.foregroundColor"

.field public static final greylist-max-o KEY_ANIM_HEIGHT:Ljava/lang/String; = "android:activity.animHeight"

.field public static final greylist-max-o KEY_ANIM_IN_PLACE_RES_ID:Ljava/lang/String; = "android:activity.animInPlaceRes"

.field public static final blacklist KEY_ANIM_PRESSED_SCALE:Ljava/lang/String; = "android:activity.pressedScale"

.field public static final blacklist KEY_ANIM_RADIUS:Ljava/lang/String; = "android:activity.radius"

.field private static final greylist-max-o KEY_ANIM_SPECS:Ljava/lang/String; = "android:activity.animSpecs"

.field public static final greylist-max-o KEY_ANIM_START_LISTENER:Ljava/lang/String; = "android:activity.animStartListener"

.field public static final greylist-max-o KEY_ANIM_START_X:Ljava/lang/String; = "android:activity.animStartX"

.field public static final greylist-max-o KEY_ANIM_START_Y:Ljava/lang/String; = "android:activity.animStartY"

.field public static final greylist-max-o KEY_ANIM_THUMBNAIL:Ljava/lang/String; = "android:activity.animThumbnail"

.field public static final greylist-max-o KEY_ANIM_TYPE:Ljava/lang/String; = "android:activity.animType"

.field public static final greylist-max-o KEY_ANIM_WIDTH:Ljava/lang/String; = "android:activity.animWidth"

.field private static final blacklist KEY_APPLY_ACTIVITY_FLAGS_FOR_BUBBLES:Ljava/lang/String; = "android:activity.applyActivityFlagsForBubbles"

.field private static final greylist-max-o KEY_AVOID_MOVE_TO_FRONT:Ljava/lang/String; = "android.activity.avoidMoveToFront"

.field private static final blacklist KEY_CALLER_DISPLAY_ID:Ljava/lang/String; = "android.activity.callerDisplayId"

.field private static final greylist-max-o KEY_DISALLOW_ENTER_PICTURE_IN_PICTURE_WHILE_LAUNCHING:Ljava/lang/String; = "android:activity.disallowEnterPictureInPictureWhileLaunching"

.field private static final blacklist KEY_DISMISS_KEYGUARD_IF_INSECURE:Ljava/lang/String; = "android.activity.dismissKeyguardIfInsecure"

.field private static final blacklist KEY_ENTER_APPPAIR_FROM_SHORTCUT:Ljava/lang/String; = "android.activity.enterAppPairFromShortCut"

.field private static final blacklist KEY_ENTER_APP_PAIR:Ljava/lang/String; = "android.activity.enterAppPair"

.field private static final greylist-max-o KEY_EXIT_COORDINATOR_INDEX:Ljava/lang/String; = "android:activity.exitCoordinatorIndex"

.field private static final blacklist KEY_FORCE_LAUNCH_NEW_TASK:Ljava/lang/String; = "android.activity.forceLaunchNewTask"

.field private static final blacklist KEY_FREEZE_RECENT_TASKS_REORDERING:Ljava/lang/String; = "android.activity.freezeRecentTasksReordering"

.field private static final blacklist KEY_IGNORE_PENDING_INTENT_CREATOR_FOREGROUND_STATE:Ljava/lang/String; = "android.activity.ignorePendingIntentCreatorForegroundState"

.field private static final greylist-max-o KEY_INSTANT_APP_VERIFICATION_BUNDLE:Ljava/lang/String; = "android:instantapps.installerbundle"

.field private static final blacklist KEY_IS_APPPAIR_PRIMARY:Ljava/lang/String; = "android.activity.isAppPairPrimary"

.field private static final blacklist KEY_LAUNCHED_FROM_BUBBLE:Ljava/lang/String; = "android.activity.launchTypeBubble"

.field public static final blacklist KEY_LAUNCHED_FROM_ROUNDEDVIEW:Ljava/lang/String; = "android:activity.launchedFromRoundedView"

.field private static final greylist-max-o KEY_LAUNCH_ACTIVITY_TYPE:Ljava/lang/String; = "android.activity.activityType"

.field public static final greylist-max-o KEY_LAUNCH_BOUNDS:Ljava/lang/String; = "android:activity.launchBounds"

.field public static final blacklist KEY_LAUNCH_COOKIE:Ljava/lang/String; = "android.activity.launchCookie"

.field private static final greylist-max-o KEY_LAUNCH_DISPLAY_ID:Ljava/lang/String; = "android.activity.launchDisplayId"

.field private static final blacklist KEY_LAUNCH_INTO_PIP_PARAMS:Ljava/lang/String; = "android.activity.launchIntoPipParams"

.field public static final blacklist KEY_LAUNCH_ROOT_TASK_TOKEN:Ljava/lang/String; = "android.activity.launchRootTaskToken"

.field private static final blacklist KEY_LAUNCH_TASK_DISPLAY_AREA_TOKEN:Ljava/lang/String; = "android.activity.launchTaskDisplayAreaToken"

.field public static final blacklist KEY_LAUNCH_TASK_FRAGMENT_TOKEN:Ljava/lang/String; = "android.activity.launchTaskFragmentToken"

.field private static final greylist-max-o KEY_LAUNCH_TASK_ID:Ljava/lang/String; = "android.activity.launchTaskId"

.field private static final greylist-max-o KEY_LAUNCH_WINDOWING_MODE:Ljava/lang/String; = "android.activity.windowingMode"

.field public static final blacklist KEY_LEGACY_PERMISSION_PROMPT_ELIGIBLE:Ljava/lang/String; = "android:activity.legacyPermissionPromptEligible"

.field private static final greylist-max-o KEY_LOCK_TASK_MODE:Ljava/lang/String; = "android:activity.lockTaskMode"

.field private static final blacklist KEY_MIUI_CONFIG_FLAG:Ljava/lang/String; = "key_miui_config_flag"

.field private static final blacklist KEY_OVERRIDE_TASK_TRANSITION:Ljava/lang/String; = "android:activity.overrideTaskTransition"

.field public static final greylist-max-o KEY_PACKAGE_NAME:Ljava/lang/String; = "android:activity.packageName"

.field private static final blacklist KEY_PENDING_INTENT_LAUNCH_FLAGS:Ljava/lang/String; = "android.activity.pendingIntentLaunchFlags"

.field private static final greylist-max-o KEY_REMOTE_ANIMATION_ADAPTER:Ljava/lang/String; = "android:activity.remoteAnimationAdapter"

.field private static final blacklist KEY_REMOTE_TRANSITION:Ljava/lang/String; = "android:activity.remoteTransition"

.field private static final blacklist KEY_REMOVE_WITH_TASK_ORGANIZER:Ljava/lang/String; = "android.activity.removeWithTaskOrganizer"

.field private static final greylist-max-o KEY_RESULT_CODE:Ljava/lang/String; = "android:activity.resultCode"

.field private static final greylist-max-o KEY_RESULT_DATA:Ljava/lang/String; = "android:activity.resultData"

.field private static final greylist-max-o KEY_ROTATION_ANIMATION_HINT:Ljava/lang/String; = "android:activity.rotationAnimationHint"

.field private static final blacklist KEY_SOURCE_INFO:Ljava/lang/String; = "android.activity.sourceInfo"

.field private static final greylist-max-o KEY_SPECS_FUTURE:Ljava/lang/String; = "android:activity.specsFuture"

.field private static final blacklist KEY_SPLASH_SCREEN_STYLE:Ljava/lang/String; = "android.activity.splashScreenStyle"

.field public static final blacklist KEY_SPLASH_SCREEN_THEME:Ljava/lang/String; = "android.activity.splashScreenTheme"

.field private static final blacklist KEY_TASK_ALWAYS_ON_TOP:Ljava/lang/String; = "android.activity.alwaysOnTop"

.field private static final greylist-max-o KEY_TASK_OVERLAY:Ljava/lang/String; = "android.activity.taskOverlay"

.field private static final greylist-max-o KEY_TASK_OVERLAY_CAN_RESUME:Ljava/lang/String; = "android.activity.taskOverlayCanResume"

.field private static final blacklist KEY_TRANSIENT_LAUNCH:Ljava/lang/String; = "android.activity.transientLaunch"

.field private static final greylist-max-o KEY_TRANSITION_COMPLETE_LISTENER:Ljava/lang/String; = "android:activity.transitionCompleteListener"

.field private static final greylist-max-o KEY_TRANSITION_IS_RETURNING:Ljava/lang/String; = "android:activity.transitionIsReturning"

.field private static final greylist-max-o KEY_TRANSITION_SHARED_ELEMENTS:Ljava/lang/String; = "android:activity.sharedElementNames"

.field private static final greylist-max-o KEY_USAGE_TIME_REPORT:Ljava/lang/String; = "android:activity.usageTimeReport"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActivityOptions"


# instance fields
.field private blacklist mActivityOptionsInjector:Landroid/app/ActivityOptions$ActivityOptionsInjector;

.field private greylist-max-o mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

.field private greylist-max-o mAnimationFinishedListener:Landroid/os/IRemoteCallback;

.field private blacklist mAnimationReenterFinishedListener:Landroid/os/IRemoteCallback;

.field private blacklist mAnimationReenterStartedListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationType:I

.field private blacklist mAppPairPrimary:Z

.field private greylist-max-o mAppVerificationBundle:Landroid/os/Bundle;

.field private blacklist mApplyActivityFlagsForBubbles:Z

.field private greylist-max-o mAvoidMoveToFront:Z

.field private blacklist mCallerDisplayId:I

.field private blacklist mClipDuration:F

.field private blacklist mClipFromCornerRadius:F

.field private blacklist mClipFromRect:Landroid/graphics/Rect;

.field private blacklist mClipInterpolatorId:I

.field private blacklist mClipToCornerRadius:F

.field private blacklist mClipToRect:Landroid/graphics/Rect;

.field private blacklist mCustomBackgroundColor:I

.field private greylist-max-o mCustomEnterResId:I

.field private greylist-max-o mCustomExitResId:I

.field private greylist-max-o mCustomInPlaceResId:I

.field private greylist-max-o mDisallowEnterPictureInPictureWhileLaunching:Z

.field private blacklist mDismissKeyguardIfInsecure:Z

.field private blacklist mEnterAppPair:Z

.field private blacklist mEnterAppPairFromShortCut:Z

.field private greylist-max-o mExitCoordinatorIndex:I

.field private blacklist mForceLaunchNewTask:Z

.field private blacklist mForeGroundColor:I

.field private blacklist mFreezeRecentTasksReordering:Z

.field private greylist-max-o mHeight:I

.field private blacklist mIgnorePendingIntentCreatorForegroundState:Z

.field private blacklist mIsClipEnter:Z

.field private blacklist mIsClipWindow:Z

.field private blacklist mIsClipWithScale:Z

.field private blacklist mIsEligibleForLegacyPermissionPrompt:Z

.field private greylist-max-o mIsReturning:Z

.field private blacklist mIsRoundEnter:Z

.field private blacklist mIsRoundWindow:Z

.field private greylist-max-o mLaunchActivityType:I

.field private greylist-max-o mLaunchBounds:Landroid/graphics/Rect;

.field private blacklist mLaunchCookie:Landroid/os/IBinder;

.field private greylist-max-o mLaunchDisplayId:I

.field private blacklist mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

.field private blacklist mLaunchRootTask:Landroid/window/WindowContainerToken;

.field private blacklist mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

.field private blacklist mLaunchTaskFragmentToken:Landroid/os/IBinder;

.field private greylist-max-o mLaunchTaskId:I

.field private greylist-max-o mLaunchWindowingMode:I

.field private blacklist mLaunchedFromBubble:Z

.field private greylist-max-o mLockTaskMode:Z

.field private blacklist mLunchedFromRoundedView:Z

.field private blacklist mMiuiConfigFlag:I

.field private blacklist mOverrideTaskTransition:Z

.field private greylist-max-o mPackageName:Ljava/lang/String;

.field private blacklist mPendingIntentLaunchFlags:I

.field private blacklist mPressedScale:F

.field private blacklist mRadius:I

.field private greylist-max-o mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

.field private blacklist mRemoteTransition:Landroid/window/RemoteTransition;

.field private blacklist mRemoveWithTaskOrganizer:Z

.field private greylist-max-o mResultCode:I

.field private greylist-max-o mResultData:Landroid/content/Intent;

.field private greylist-max-o mRotationAnimationHint:I

.field private blacklist mRoundDuration:F

.field private blacklist mRoundFromCornerRadius:F

.field private blacklist mRoundInterpolatorId:I

.field private blacklist mRoundToCornerRadius:F

.field private greylist-max-o mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private greylist-max-o mTransitionReceiver:Landroid/os/ResultReceiver;

.field private greylist-max-o mUsageTimeReport:Landroid/app/PendingIntent;

.field private greylist-max-o mWidth:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 4

    .line 1602
    invoke-direct {p0}, Landroid/app/ComponentOptions;-><init>()V

    .line 547
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/ActivityOptions;->mPressedScale:F

    .line 548
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityOptions;->mForeGroundColor:I

    .line 562
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityOptions;->mClipFromRect:Landroid/graphics/Rect;

    .line 563
    iput-object v1, p0, Landroid/app/ActivityOptions;->mClipToRect:Landroid/graphics/Rect;

    .line 564
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ActivityOptions;->mClipFromCornerRadius:F

    .line 565
    iput v1, p0, Landroid/app/ActivityOptions;->mClipToCornerRadius:F

    .line 566
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/ActivityOptions;->mClipInterpolatorId:I

    .line 567
    iput v1, p0, Landroid/app/ActivityOptions;->mClipDuration:F

    .line 572
    iput v1, p0, Landroid/app/ActivityOptions;->mRoundFromCornerRadius:F

    .line 573
    iput v1, p0, Landroid/app/ActivityOptions;->mRoundToCornerRadius:F

    .line 574
    iput v2, p0, Landroid/app/ActivityOptions;->mRoundInterpolatorId:I

    .line 575
    iput v1, p0, Landroid/app/ActivityOptions;->mRoundDuration:F

    .line 585
    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 604
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 605
    iput v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 609
    iput v2, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 611
    iput v2, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 613
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 615
    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 625
    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 633
    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 645
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/ActivityOptions;->mMiuiConfigFlag:I

    .line 647
    new-instance v0, Landroid/app/ActivityOptions$ActivityOptionsInjector;

    invoke-direct {v0}, Landroid/app/ActivityOptions$ActivityOptionsInjector;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mActivityOptionsInjector:Landroid/app/ActivityOptions$ActivityOptionsInjector;

    .line 1603
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "opts"    # Landroid/os/Bundle;

    .line 1607
    invoke-direct {p0, p1}, Landroid/app/ComponentOptions;-><init>(Landroid/os/Bundle;)V

    .line 547
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/ActivityOptions;->mPressedScale:F

    .line 548
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/ActivityOptions;->mForeGroundColor:I

    .line 562
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/ActivityOptions;->mClipFromRect:Landroid/graphics/Rect;

    .line 563
    iput-object v2, p0, Landroid/app/ActivityOptions;->mClipToRect:Landroid/graphics/Rect;

    .line 564
    const/4 v3, 0x0

    iput v3, p0, Landroid/app/ActivityOptions;->mClipFromCornerRadius:F

    .line 565
    iput v3, p0, Landroid/app/ActivityOptions;->mClipToCornerRadius:F

    .line 566
    const/4 v4, 0x0

    iput v4, p0, Landroid/app/ActivityOptions;->mClipInterpolatorId:I

    .line 567
    iput v3, p0, Landroid/app/ActivityOptions;->mClipDuration:F

    .line 572
    iput v3, p0, Landroid/app/ActivityOptions;->mRoundFromCornerRadius:F

    .line 573
    iput v3, p0, Landroid/app/ActivityOptions;->mRoundToCornerRadius:F

    .line 574
    iput v4, p0, Landroid/app/ActivityOptions;->mRoundInterpolatorId:I

    .line 575
    iput v3, p0, Landroid/app/ActivityOptions;->mRoundDuration:F

    .line 585
    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 604
    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 605
    iput v1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 609
    iput v4, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 611
    iput v4, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 613
    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 615
    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 625
    iput v1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 633
    iput v1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 645
    const/4 v5, 0x1

    iput v5, p0, Landroid/app/ActivityOptions;->mMiuiConfigFlag:I

    .line 647
    new-instance v6, Landroid/app/ActivityOptions$ActivityOptionsInjector;

    invoke-direct {v6}, Landroid/app/ActivityOptions$ActivityOptionsInjector;-><init>()V

    iput-object v6, p0, Landroid/app/ActivityOptions;->mActivityOptionsInjector:Landroid/app/ActivityOptions$ActivityOptionsInjector;

    .line 1609
    const-string v6, "android:activity.packageName"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1611
    :try_start_45
    const-string v6, "android:activity.usageTimeReport"

    const-class v7, Landroid/app/PendingIntent;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    iput-object v6, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_51} :catch_52

    .line 1614
    goto :goto_58

    .line 1612
    :catch_52
    move-exception v6

    .line 1613
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v7, "ActivityOptions"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1615
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :goto_58
    const-string v6, "android:activity.launchBounds"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iput-object v6, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1616
    const-string v6, "android:activity.animType"

    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1617
    const-string v7, "android:activity.animThumbnail"

    const-string v8, "android:activity.animHeight"

    const-string v9, "android:activity.animWidth"

    const-string v10, "android:activity.animStartY"

    const-string v11, "android:activity.animStartX"

    const-string v12, "android:activity.animStartListener"

    sparse-switch v6, :sswitch_data_3b6

    goto/16 :goto_1fc

    .line 1670
    :sswitch_7b
    const-string v0, "android:activity.isRoundWindow"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsRoundWindow:Z

    .line 1671
    const-string v0, "android:activity.isRoundEnter"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsRoundEnter:Z

    .line 1672
    const-string v0, "android:activity.animationRoundWindowFromCornerRadius"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mRoundFromCornerRadius:F

    .line 1673
    const-string v0, "android:activity.animationRoundWindowToCornerRadius"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mRoundToCornerRadius:F

    .line 1674
    const-string v0, "android:activity.animationRoundWindowInterpolatorId"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mRoundInterpolatorId:I

    .line 1675
    const-string v0, "android:activity.animationRoundWindowDuration"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mRoundDuration:F

    .line 1676
    goto/16 :goto_1fc

    .line 1659
    :sswitch_ad
    const-string v0, "android:activity.isClipWithScale"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsClipWithScale:Z

    .line 1660
    const-string v0, "android:activity.isClipWindow"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsClipWindow:Z

    .line 1661
    const-string v0, "android:activity.isClipEnter"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsClipEnter:Z

    .line 1662
    const-string v0, "android:activity.animationClipWindowFromRect"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mClipFromRect:Landroid/graphics/Rect;

    .line 1663
    const-string v0, "android:activity.animationClipWindowToRect"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mClipToRect:Landroid/graphics/Rect;

    .line 1664
    const-string v0, "android:activity.animationClipWindowFromCornerRadius"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mClipFromCornerRadius:F

    .line 1665
    const-string v0, "android:activity.animationClipWindowToCornerRadius"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mClipToCornerRadius:F

    .line 1666
    const-string v0, "android:activity.animationClipWindowInterpolatorId"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mClipInterpolatorId:I

    .line 1667
    const-string v0, "android:activity.animationClipWindowDuration"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mClipDuration:F

    .line 1668
    goto/16 :goto_1fc

    .line 1640
    :sswitch_fb
    invoke-virtual {p1, v11, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1641
    invoke-virtual {p1, v10, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1642
    invoke-virtual {p1, v9, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1643
    invoke-virtual {p1, v8, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1644
    const-string v3, "android:activity.radius"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mRadius:I

    .line 1645
    const-string v3, "android:activity.launchedFromRoundedView"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mLunchedFromRoundedView:Z

    .line 1646
    const-string v3, "android:activity.foregroundColor"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mForeGroundColor:I

    .line 1647
    const-string v3, "android:activity.pressedScale"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mPressedScale:F

    .line 1649
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    .line 1650
    .local v0, "thumbBuffer":Landroid/hardware/HardwareBuffer;
    if-eqz v0, :cond_141

    .line 1651
    invoke-static {v0, v2}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1653
    :cond_141
    nop

    .line 1654
    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1653
    invoke-static {v2}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1655
    goto/16 :goto_1fc

    .line 1627
    .end local v0    # "thumbBuffer":Landroid/hardware/HardwareBuffer;
    :sswitch_14e
    const-string v0, "android:activity.animInPlaceRes"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 1628
    goto/16 :goto_1fc

    .line 1697
    :sswitch_158
    const-string v0, "android:activity.transitionCompleteListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1698
    const-string v0, "android:activity.transitionIsReturning"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1699
    const-string v0, "android:activity.sharedElementNames"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1700
    const-string v0, "android:activity.resultData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 1701
    const-string v0, "android:activity.resultCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 1702
    const-string v0, "android:activity.exitCoordinatorIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_1fc

    .line 1684
    :sswitch_18d
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    .line 1685
    .local v0, "buffer":Landroid/hardware/HardwareBuffer;
    if-eqz v0, :cond_19b

    .line 1686
    invoke-static {v0, v2}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1688
    :cond_19b
    invoke-virtual {p1, v11, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1689
    invoke-virtual {p1, v10, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1690
    invoke-virtual {p1, v9, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1691
    invoke-virtual {p1, v8, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1692
    nop

    .line 1693
    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1692
    invoke-static {v2}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1694
    goto :goto_1fc

    .line 1632
    .end local v0    # "buffer":Landroid/hardware/HardwareBuffer;
    :sswitch_1bf
    invoke-virtual {p1, v11, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1633
    invoke-virtual {p1, v10, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1634
    invoke-virtual {p1, v9, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1635
    invoke-virtual {p1, v8, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1636
    goto :goto_1fc

    .line 1619
    :sswitch_1d8
    const-string v0, "android:activity.animEnterRes"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 1620
    const-string v0, "android:activity.animExitRes"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 1621
    const-string v0, "android:activity.backgroundColor"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 1622
    nop

    .line 1623
    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1622
    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1624
    nop

    .line 1705
    :goto_1fc
    const-string v0, "android:activity.lockTaskMode"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 1706
    const-string v0, "android.activity.launchDisplayId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 1707
    const-string v0, "android.activity.callerDisplayId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 1708
    const-string v0, "android.activity.launchTaskDisplayAreaToken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    .line 1709
    const-string v0, "android.activity.launchRootTaskToken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 1710
    const-string v0, "android.activity.launchTaskFragmentToken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    .line 1711
    const-string v0, "android.activity.windowingMode"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 1712
    const-string v0, "android.activity.activityType"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 1713
    const-string v0, "android.activity.launchTaskId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 1714
    const-string v0, "android.activity.pendingIntentLaunchFlags"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    .line 1715
    const-string v0, "android.activity.alwaysOnTop"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    .line 1716
    const-string v0, "android.activity.taskOverlay"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 1717
    const-string v0, "android.activity.taskOverlayCanResume"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    .line 1718
    const-string v0, "android.activity.avoidMoveToFront"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    .line 1719
    const-string v0, "android.activity.freezeRecentTasksReordering"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    .line 1720
    const-string v0, "android:activity.disallowEnterPictureInPictureWhileLaunching"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    .line 1722
    const-string v0, "android:activity.applyActivityFlagsForBubbles"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    .line 1724
    const-string v0, "android:activity.animSpecs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a8

    .line 1725
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 1726
    .local v0, "specs":[Landroid/os/Parcelable;
    array-length v2, v0

    new-array v2, v2, [Landroid/view/AppTransitionAnimationSpec;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 1727
    array-length v2, v0

    sub-int/2addr v2, v5

    .local v2, "i":I
    :goto_29b
    if-ltz v2, :cond_2a8

    .line 1728
    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    aget-object v6, v0, v2

    check-cast v6, Landroid/view/AppTransitionAnimationSpec;

    aput-object v6, v3, v2

    .line 1727
    add-int/lit8 v2, v2, -0x1

    goto :goto_29b

    .line 1731
    .end local v0    # "specs":[Landroid/os/Parcelable;
    .end local v2    # "i":I
    :cond_2a8
    const-string v0, "android:activity.animationFinishedListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2bb

    .line 1732
    nop

    .line 1733
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1732
    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 1737
    :cond_2bb
    const-string/jumbo v0, "miui:activity.options.injector"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2cc

    .line 1738
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityOptions$ActivityOptionsInjector;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mActivityOptionsInjector:Landroid/app/ActivityOptions$ActivityOptionsInjector;

    .line 1740
    :cond_2cc
    const-string v0, "key_miui_config_flag"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mMiuiConfigFlag:I

    .line 1742
    const-string v0, "android.activity.sourceInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityOptions$SourceInfo;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    .line 1744
    const-string v0, "android:activity.animationReenterStartedListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f1

    .line 1745
    nop

    .line 1746
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1745
    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationReenterStartedListener:Landroid/os/IRemoteCallback;

    .line 1748
    :cond_2f1
    const-string v0, "android:activity.animationReenterFinishedListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_304

    .line 1749
    nop

    .line 1750
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1749
    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationReenterFinishedListener:Landroid/os/IRemoteCallback;

    .line 1753
    :cond_304
    const-string v0, "android:activity.rotationAnimationHint"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 1754
    const-string v0, "android:instantapps.installerbundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 1755
    const-string v0, "android:activity.specsFuture"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_326

    .line 1756
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1759
    :cond_326
    const-string v0, "android:activity.remoteAnimationAdapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1760
    const-string v0, "android.activity.launchCookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    .line 1761
    const-string v0, "android:activity.remoteTransition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/window/RemoteTransition;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1762
    const-string v0, "android:activity.overrideTaskTransition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    .line 1763
    const-string v0, "android.activity.splashScreenTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    .line 1764
    const-string v0, "android.activity.removeWithTaskOrganizer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    .line 1765
    const-string v0, "android.activity.launchTypeBubble"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    .line 1766
    const-string v0, "android.activity.transientLaunch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    .line 1769
    const-string v0, "android.activity.splashScreenStyle"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 1770
    const-string v0, "android.activity.launchIntoPipParams"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureParams;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 1771
    nop

    .line 1772
    const-string v0, "android:activity.legacyPermissionPromptEligible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 1773
    const-string v0, "android.activity.dismissKeyguardIfInsecure"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    .line 1774
    const-string v0, "android.activity.ignorePendingIntentCreatorForegroundState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIgnorePendingIntentCreatorForegroundState:Z

    .line 1778
    const-string v0, "android.activity.enterAppPair"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mEnterAppPair:Z

    .line 1779
    const-string v0, "android.activity.isAppPairPrimary"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mAppPairPrimary:Z

    .line 1780
    const-string v0, "android.activity.enterAppPairFromShortCut"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mEnterAppPairFromShortCut:Z

    .line 1784
    const-string v0, "android.activity.forceLaunchNewTask"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mForceLaunchNewTask:Z

    .line 1785
    return-void

    :sswitch_data_3b6
    .sparse-switch
        0x1 -> :sswitch_1d8
        0x2 -> :sswitch_1bf
        0x3 -> :sswitch_18d
        0x4 -> :sswitch_18d
        0x5 -> :sswitch_158
        0x8 -> :sswitch_18d
        0x9 -> :sswitch_18d
        0xa -> :sswitch_14e
        0xb -> :sswitch_1bf
        0x66 -> :sswitch_fb
        0x67 -> :sswitch_fb
        0x68 -> :sswitch_ad
        0x69 -> :sswitch_7b
    .end sparse-switch
.end method

.method public static greylist-max-o abort(Landroid/app/ActivityOptions;)V
    .registers 1
    .param p0, "options"    # Landroid/app/ActivityOptions;

    .line 1965
    if-eqz p0, :cond_5

    .line 1966
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->abort()V

    .line 1968
    :cond_5
    return-void
.end method

.method public static greylist-max-o fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .registers 2
    .param p0, "bOptions"    # Landroid/os/Bundle;

    .line 1960
    if-eqz p0, :cond_8

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private static greylist-max-o makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .registers 12
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p8, "scaleUp"    # Z

    .line 1313
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1314
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1315
    if-eqz p8, :cond_14

    const/16 v1, 0x8

    goto :goto_16

    .line 1316
    :cond_14
    const/16 v1, 0x9

    :goto_16
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1317
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1318
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1319
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1320
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1321
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1322
    iput p4, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1323
    iput p5, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1324
    invoke-direct {v0, p6, p7}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1325
    return-object v0
.end method

.method public static whitelist makeBasic()Landroid/app/ActivityOptions;
    .registers 1

    .line 1532
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1533
    .local v0, "opts":Landroid/app/ActivityOptions;
    return-object v0
.end method

.method public static whitelist makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 1180
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1181
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/16 v1, 0xb

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1182
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1183
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1184
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1185
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1186
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1187
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1188
    return-object v0
.end method

.method public static whitelist makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I

    .line 687
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist makeCustomAnimation(Landroid/content/Context;III)Landroid/app/ActivityOptions;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I

    .line 707
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static greylist makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 733
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 734
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 735
    const/4 v1, 0x1

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 736
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 737
    iput p2, v0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 738
    iput p3, v0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 739
    invoke-direct {v0, p4, p5}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 740
    return-object v0
.end method

.method public static blacklist makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "startedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p6, "finishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 769
    invoke-static/range {p0 .. p5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 771
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-direct {v0, p4, p6}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    .line 772
    return-object v0
.end method

.method public static greylist-max-o makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "animId"    # I

    .line 822
    if-eqz p1, :cond_14

    .line 826
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 827
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 828
    const/16 v1, 0xa

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 829
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 830
    return-object v0

    .line 823
    .end local v0    # "opts":Landroid/app/ActivityOptions;
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must specify a valid animation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "startedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p5, "finishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 803
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 805
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    .line 806
    return-object v0
.end method

.method public static whitelist makeLaunchIntoPip(Landroid/app/PictureInPictureParams;)Landroid/app/ActivityOptions;
    .registers 4
    .param p0, "pictureInPictureParams"    # Landroid/app/PictureInPictureParams;

    .line 1588
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1589
    .local v0, "opts":Landroid/app/ActivityOptions;
    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1, p0}, Landroid/app/PictureInPictureParams$Builder;-><init>(Landroid/app/PictureInPictureParams;)V

    .line 1590
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/PictureInPictureParams$Builder;->setIsLaunchIntoPip(Z)Landroid/app/PictureInPictureParams$Builder;

    move-result-object v1

    .line 1591
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 1592
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1593
    return-object v0
.end method

.method public static whitelist makeMiuiClipAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;FFIFZ)Landroid/app/ActivityOptions;
    .registers 9
    .param p0, "clipFromRect"    # Landroid/graphics/Rect;
    .param p1, "clipToRect"    # Landroid/graphics/Rect;
    .param p2, "clipFromCornerRadius"    # F
    .param p3, "clipToCornerRadius"    # F
    .param p4, "clipInterpolatorId"    # I
    .param p5, "clipDuration"    # F
    .param p6, "isClipWithScale"    # Z

    .line 3138
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 3139
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/16 v1, 0x68

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 3140
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mIsClipEnter:Z

    .line 3141
    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mIsClipWindow:Z

    .line 3142
    iput-boolean p6, v0, Landroid/app/ActivityOptions;->mIsClipWithScale:Z

    .line 3143
    iput-object p0, v0, Landroid/app/ActivityOptions;->mClipFromRect:Landroid/graphics/Rect;

    .line 3144
    iput-object p1, v0, Landroid/app/ActivityOptions;->mClipToRect:Landroid/graphics/Rect;

    .line 3145
    iput p2, v0, Landroid/app/ActivityOptions;->mClipFromCornerRadius:F

    .line 3146
    iput p3, v0, Landroid/app/ActivityOptions;->mClipToCornerRadius:F

    .line 3147
    iput p4, v0, Landroid/app/ActivityOptions;->mClipInterpolatorId:I

    .line 3148
    iput p5, v0, Landroid/app/ActivityOptions;->mClipDuration:F

    .line 3149
    return-object v0
.end method

.method public static whitelist makeMiuiRoundAnimation(FFIF)Landroid/app/ActivityOptions;
    .registers 7
    .param p0, "roundFromCornerRadius"    # F
    .param p1, "roundToCornerRadius"    # F
    .param p2, "roundInterpolatorId"    # I
    .param p3, "roundDuration"    # F

    .line 3214
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 3215
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mIsRoundEnter:Z

    .line 3216
    const/16 v2, 0x69

    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 3217
    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mIsRoundWindow:Z

    .line 3218
    iput p0, v0, Landroid/app/ActivityOptions;->mRoundFromCornerRadius:F

    .line 3219
    iput p1, v0, Landroid/app/ActivityOptions;->mRoundToCornerRadius:F

    .line 3220
    iput p2, v0, Landroid/app/ActivityOptions;->mRoundInterpolatorId:I

    .line 3221
    iput p3, v0, Landroid/app/ActivityOptions;->mRoundDuration:F

    .line 3222
    return-object v0
.end method

.method public static greylist makeMultiThumbFutureAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p3, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p4, "scaleUp"    # Z

    .line 1274
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1275
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1276
    if-eqz p4, :cond_10

    .line 1277
    const/16 v1, 0x8

    goto :goto_12

    .line 1278
    :cond_10
    const/16 v1, 0x9

    :goto_12
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1279
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1280
    invoke-direct {v0, p1, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1281
    return-object v0
.end method

.method public static greylist-max-o makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;
    .registers 2

    .line 1199
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1200
    .local v0, "options":Landroid/app/ActivityOptions;
    const/16 v1, 0xc

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1201
    return-object v0
.end method

.method public static greylist makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;
    .registers 3
    .param p0, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1545
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1546
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1547
    const/16 v1, 0xd

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1548
    return-object v0
.end method

.method public static blacklist makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .registers 4
    .param p0, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p1, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1559
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1560
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1561
    const/16 v1, 0xd

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1562
    iput-object p1, v0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1563
    return-object v0
.end method

.method public static blacklist makeRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .registers 2
    .param p0, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1573
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1574
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1575
    return-object v0
.end method

.method public static whitelist makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 913
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 914
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 915
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 916
    new-array v1, v1, [I

    .line 917
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 918
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 919
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 920
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 921
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 922
    return-object v0
.end method

.method public static blacklist makeScaleUpAnimationFromRoundedView(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/ActivityOptions;
    .registers 25
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumb"    # Landroid/graphics/Bitmap;
    .param p2, "startXinScreen"    # I
    .param p3, "startYinScreen"    # I
    .param p4, "radius"    # I
    .param p5, "foreGroundColor"    # I
    .param p6, "pressedScale"    # F
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "exitStartedCallback"    # Ljava/lang/Runnable;
    .param p9, "exitFinishCallback"    # Ljava/lang/Runnable;
    .param p10, "reenterStartCallback"    # Ljava/lang/Runnable;
    .param p11, "reenterFinishCallback"    # Ljava/lang/Runnable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 988
    const/16 v12, 0x66

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-static/range {v0 .. v12}, Landroid/app/ActivityOptions;->makeScaleUpDown(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist makeScaleUpDown(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/app/ActivityOptions;
    .registers 15
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumb"    # Landroid/graphics/Bitmap;
    .param p2, "startXinScreen"    # I
    .param p3, "startYinScreen"    # I
    .param p4, "radius"    # I
    .param p5, "foreGroundColor"    # I
    .param p6, "pressedScale"    # F
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "exitStartedCallback"    # Ljava/lang/Runnable;
    .param p9, "exitFinishCallback"    # Ljava/lang/Runnable;
    .param p10, "reenterStartCallback"    # Ljava/lang/Runnable;
    .param p11, "reenterFinishCallback"    # Ljava/lang/Runnable;
    .param p12, "animationType"    # I

    .line 962
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 963
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 964
    iput p12, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 965
    iput p2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 966
    iput p3, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 967
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 968
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 969
    iput p4, v0, Landroid/app/ActivityOptions;->mRadius:I

    .line 970
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mLunchedFromRoundedView:Z

    .line 971
    iput p5, v0, Landroid/app/ActivityOptions;->mForeGroundColor:I

    .line 972
    iput p6, v0, Landroid/app/ActivityOptions;->mPressedScale:F

    .line 973
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 974
    invoke-direct {v0, p7, p8}, Landroid/app/ActivityOptions;->setOnAnimationExitStartedListener(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 975
    invoke-direct {v0, p7, p9}, Landroid/app/ActivityOptions;->setOnAnimationExitFinishedListener(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 976
    invoke-direct {v0, p7, p10}, Landroid/app/ActivityOptions;->setOnAnimationReneterStartedListener(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 977
    invoke-direct {v0, p7, p11}, Landroid/app/ActivityOptions;->setOnAnimationReneterFinishedListener(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 978
    return-object v0
.end method

.method static greylist-max-o makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "exitCoordinator"    # Landroid/app/ExitTransitionCoordinator;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;
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

    .line 1495
    .local p2, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1496
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x5

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1497
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1498
    iput-object p1, v0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1499
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1500
    iput p3, v0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 1501
    iput-object p4, v0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 1502
    if-nez p0, :cond_19

    .line 1503
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_21

    .line 1505
    :cond_19
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 1506
    invoke-virtual {v1, p1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v1

    iput v1, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 1508
    :goto_21
    return-object v0
.end method

.method public static whitelist makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .line 1363
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
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

    .line 1388
    .local p1, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1389
    .local v0, "opts":Landroid/app/ActivityOptions;
    new-instance v1, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;

    invoke-direct {v1, p0}, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 1391
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1389
    invoke-static {v1, v2, v3, v0, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v1

    .line 1392
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    iget-object v2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 1393
    invoke-virtual {v2, v1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v2

    iput v2, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 1394
    return-object v0
.end method

.method static blacklist makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;
    .registers 16
    .param p0, "exitCallbacks"    # Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;
    .param p1, "callback"    # Landroid/app/SharedElementCallback;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "opts"    # Landroid/app/ActivityOptions;
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

    .line 1447
    .local p4, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1448
    const/4 v0, 0x6

    iput v0, p3, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1449
    const/4 v0, 0x0

    return-object v0

    .line 1451
    :cond_d
    const/4 v0, 0x5

    iput v0, p3, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1454
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 1456
    .local v9, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p4, :cond_4c

    .line 1457
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    array-length v2, p4

    if-ge v1, v2, :cond_4c

    .line 1458
    aget-object v2, p4, v1

    .line 1459
    .local v2, "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1460
    .local v3, "sharedElementName":Ljava/lang/String;
    if-eqz v3, :cond_44

    .line 1463
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    .line 1465
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_3c

    .line 1468
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1457
    .end local v2    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v3    # "sharedElementName":Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1466
    .restart local v2    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .restart local v3    # "sharedElementName":Ljava/lang/String;
    .restart local v4    # "view":Landroid/view/View;
    :cond_3c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Shared element must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1461
    .end local v4    # "view":Landroid/view/View;
    :cond_44
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Shared element name must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1472
    .end local v1    # "i":I
    .end local v2    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v3    # "sharedElementName":Ljava/lang/String;
    :cond_4c
    new-instance v10, Landroid/app/ExitTransitionCoordinator;

    const/4 v8, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v0

    move-object v6, v0

    move-object v7, v9

    invoke-direct/range {v1 .. v8}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 1474
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    iput-object v1, p3, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1475
    iput-object v0, p3, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1476
    const/4 v2, 0x0

    iput-boolean v2, p3, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1477
    return-object v1
.end method

.method public static whitelist makeTaskLaunchBehind()Landroid/app/ActivityOptions;
    .registers 2

    .line 1522
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1523
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x7

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1524
    return-object v0
.end method

.method private static greylist-max-o makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .registers 9
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p5, "scaleUp"    # Z

    .line 1253
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1254
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1255
    if-eqz p5, :cond_13

    const/4 v1, 0x3

    goto :goto_14

    :cond_13
    const/4 v1, 0x4

    :goto_14
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1256
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1257
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1258
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1259
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1260
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1261
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1262
    return-object v0
.end method

.method public static greylist-max-o makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .registers 17
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 1306
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

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .registers 7
    .param p0, "source"    # Landroid/view/View;
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onAnimationStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p4, "onAnimationFinishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 1333
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1334
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1335
    const/16 v1, 0x9

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1336
    iput-object p1, v0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 1337
    invoke-direct {v0, p2, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1338
    invoke-direct {v0, p2, p4}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    .line 1339
    return-object v0
.end method

.method public static whitelist makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;
    .registers 5
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    .line 1225
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .registers 11
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 1247
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist setExitTransitionTimeout(J)V
    .registers 2
    .param p0, "timeoutMillis"    # J

    .line 1488
    sput-wide p0, Landroid/app/ExitTransitionCoordinator;->sMaxWaitMillis:J

    .line 1489
    return-void
.end method

.method private blacklist setOnAnimationExitFinishedListener(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "exitFinishCallback"    # Ljava/lang/Runnable;

    .line 1017
    if-eqz p2, :cond_9

    .line 1018
    new-instance v0, Landroid/app/ActivityOptions$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$4;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 1030
    :cond_9
    return-void
.end method

.method private blacklist setOnAnimationExitStartedListener(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "exitStartedCallback"    # Ljava/lang/Runnable;

    .line 998
    if-eqz p2, :cond_9

    .line 999
    new-instance v0, Landroid/app/ActivityOptions$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$3;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1011
    :cond_9
    return-void
.end method

.method private greylist-max-o setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 864
    if-eqz p2, :cond_9

    .line 865
    new-instance v0, Landroid/app/ActivityOptions$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$2;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 878
    :cond_9
    return-void
.end method

.method private blacklist setOnAnimationReneterFinishedListener(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "reenterFinishCallback"    # Ljava/lang/Runnable;

    .line 1055
    if-eqz p2, :cond_9

    .line 1056
    new-instance v0, Landroid/app/ActivityOptions$6;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$6;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationReenterFinishedListener:Landroid/os/IRemoteCallback;

    .line 1068
    :cond_9
    return-void
.end method

.method private blacklist setOnAnimationReneterStartedListener(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "reenterStartCallback"    # Ljava/lang/Runnable;

    .line 1036
    if-eqz p2, :cond_9

    .line 1037
    new-instance v0, Landroid/app/ActivityOptions$5;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$5;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationReenterStartedListener:Landroid/os/IRemoteCallback;

    .line 1049
    :cond_9
    return-void
.end method

.method private greylist-max-o setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 835
    if-eqz p2, :cond_9

    .line 836
    new-instance v0, Landroid/app/ActivityOptions$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$1;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 848
    :cond_9
    return-void
.end method

.method public static varargs blacklist startSharedElementAnimation(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/util/Pair;
    .registers 7
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "exitCallbacks"    # Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;
    .param p2, "callback"    # Landroid/app/SharedElementCallback;
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

    .line 1412
    .local p3, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1413
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-static {p1, p2, p0, v0, p3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v1

    .line 1415
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    const/4 v2, -0x1

    iput v2, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 1416
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o stopSharedElementAnimation(Landroid/view/Window;)V
    .registers 5
    .param p0, "window"    # Landroid/view/Window;

    .line 1428
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1429
    .local v0, "decorView":Landroid/view/View;
    if-nez v0, :cond_7

    .line 1430
    return-void

    .line 1432
    :cond_7
    nop

    .line 1433
    const v1, 0x1020286

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ExitTransitionCoordinator;

    .line 1434
    .local v2, "exit":Landroid/app/ExitTransitionCoordinator;
    if-eqz v2, :cond_2a

    .line 1435
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->cancelPendingTransitions()Z

    .line 1436
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1437
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1438
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    .line 1439
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    .line 1440
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1442
    :cond_2a
    return-void
.end method


# virtual methods
.method public greylist-max-o abort()V
    .registers 3

    .line 1888
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_a

    .line 1890
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 1892
    goto :goto_a

    .line 1891
    :catch_9
    move-exception v0

    .line 1894
    :cond_a
    :goto_a
    return-void
.end method

.method public greylist-max-o canTaskOverlayResume()Z
    .registers 2

    .line 2240
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    return v0
.end method

.method public greylist-max-o disallowEnterPictureInPictureWhileLaunching()Z
    .registers 2

    .line 2293
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    return v0
.end method

.method public greylist-max-o forTargetActivity()Landroid/app/ActivityOptions;
    .registers 3

    .line 2827
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 2828
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 2829
    .local v0, "result":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 2830
    return-object v0

    .line 2833
    .end local v0    # "result":Landroid/app/ActivityOptions;
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist freezeRecentTasksReordering()Z
    .registers 2

    .line 2277
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    return v0
.end method

.method public blacklist getActivityOptionsInjector()Landroid/app/ActivityOptions$ActivityOptionsInjector;
    .registers 2

    .line 2891
    iget-object v0, p0, Landroid/app/ActivityOptions;->mActivityOptionsInjector:Landroid/app/ActivityOptions$ActivityOptionsInjector;

    return-object v0
.end method

.method public greylist-max-o getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;
    .registers 2

    .line 1931
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    return-object v0
.end method

.method public greylist-max-o getAnimationFinishedListener()Landroid/os/IRemoteCallback;
    .registers 2

    .line 1880
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public blacklist getAnimationReenterFinishedListener()Landroid/os/IRemoteCallback;
    .registers 2

    .line 1160
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationReenterFinishedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public blacklist getAnimationReenterStartedListener()Landroid/os/IRemoteCallback;
    .registers 2

    .line 1153
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationReenterStartedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public blacklist getAnimationStartedListener()Landroid/os/IRemoteCallback;
    .registers 2

    .line 1875
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public greylist-max-o getAnimationType()I
    .registers 2

    .line 1820
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    return v0
.end method

.method public blacklist getAppPairPrimary()Z
    .registers 2

    .line 3114
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mAppPairPrimary:Z

    return v0
.end method

.method public greylist-max-o getAvoidMoveToFront()Z
    .registers 2

    .line 2259
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    return v0
.end method

.method public blacklist getCallerDisplayId()I
    .registers 2

    .line 2080
    iget v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    return v0
.end method

.method public blacklist getClipDuration()F
    .registers 2

    .line 3187
    iget v0, p0, Landroid/app/ActivityOptions;->mClipDuration:F

    return v0
.end method

.method public blacklist getClipFromCornerRadius()F
    .registers 2

    .line 3169
    iget v0, p0, Landroid/app/ActivityOptions;->mClipFromCornerRadius:F

    return v0
.end method

.method public blacklist getClipFromRect()Landroid/graphics/Rect;
    .registers 2

    .line 3156
    iget-object v0, p0, Landroid/app/ActivityOptions;->mClipFromRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getClipInterpolatorId()I
    .registers 2

    .line 3180
    iget v0, p0, Landroid/app/ActivityOptions;->mClipInterpolatorId:I

    return v0
.end method

.method public blacklist getClipToCornerRadius()F
    .registers 2

    .line 3174
    iget v0, p0, Landroid/app/ActivityOptions;->mClipToCornerRadius:F

    return v0
.end method

.method public blacklist getClipToRect()Landroid/graphics/Rect;
    .registers 2

    .line 3163
    iget-object v0, p0, Landroid/app/ActivityOptions;->mClipToRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getCustomBackgroundColor()I
    .registers 2

    .line 1840
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    return v0
.end method

.method public greylist-max-o getCustomEnterResId()I
    .registers 2

    .line 1825
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    return v0
.end method

.method public greylist-max-o getCustomExitResId()I
    .registers 2

    .line 1830
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    return v0
.end method

.method public greylist-max-o getCustomInPlaceResId()I
    .registers 2

    .line 1835
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    return v0
.end method

.method public blacklist getDismissKeyguardIfInsecure()Z
    .registers 2

    .line 2405
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    return v0
.end method

.method public blacklist getEnterAppPair()Z
    .registers 2

    .line 3098
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mEnterAppPair:Z

    return v0
.end method

.method public blacklist getEnterAppPairFromShortCut()Z
    .registers 2

    .line 3129
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mEnterAppPairFromShortCut:Z

    return v0
.end method

.method public greylist-max-o getExitCoordinatorKey()I
    .registers 2

    .line 1884
    iget v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    return v0
.end method

.method public blacklist getForceLaunchNewTask()Z
    .registers 2

    .line 2910
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mForceLaunchNewTask:Z

    return v0
.end method

.method public blacklist getForeGroundColor()I
    .registers 2

    .line 1088
    iget v0, p0, Landroid/app/ActivityOptions;->mForeGroundColor:I

    return v0
.end method

.method public greylist-max-o getHeight()I
    .registers 2

    .line 1870
    iget v0, p0, Landroid/app/ActivityOptions;->mHeight:I

    return v0
.end method

.method public blacklist getIgnorePendingIntentCreatorForegroundState()Z
    .registers 2

    .line 2422
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIgnorePendingIntentCreatorForegroundState:Z

    return v0
.end method

.method public blacklist getLaunchActivityFromRoundedView()Z
    .registers 2

    .line 1081
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLunchedFromRoundedView:Z

    return v0
.end method

.method public greylist-max-o getLaunchActivityType()I
    .registers 2

    .line 2156
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    return v0
.end method

.method public whitelist getLaunchBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1815
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getLaunchCookie()Landroid/os/IBinder;
    .registers 2

    .line 2323
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getLaunchDisplayId()I
    .registers 2

    .line 2059
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    return v0
.end method

.method public blacklist getLaunchIntoPipParams()Landroid/app/PictureInPictureParams;
    .registers 2

    .line 2142
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    return-object v0
.end method

.method public blacklist getLaunchRootTask()Landroid/window/WindowContainerToken;
    .registers 2

    .line 2103
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public greylist-max-o getLaunchTaskBehind()Z
    .registers 3

    .line 1598
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

    .line 2091
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getLaunchTaskFragmentToken()Landroid/os/IBinder;
    .registers 2

    .line 2114
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getLaunchTaskId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2180
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    return v0
.end method

.method public greylist-max-o getLaunchWindowingMode()I
    .registers 2

    .line 2125
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    return v0
.end method

.method public blacklist getLaunchedFromBubble()Z
    .registers 2

    .line 2362
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    return v0
.end method

.method public whitelist getLockTaskMode()Z
    .registers 2

    .line 1977
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    return v0
.end method

.method public blacklist getMiuiConfigFlag()I
    .registers 2

    .line 2883
    iget v0, p0, Landroid/app/ActivityOptions;->mMiuiConfigFlag:I

    return v0
.end method

.method public blacklist getOverrideTaskTransition()Z
    .registers 2

    .line 2329
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    return v0
.end method

.method public greylist-max-o getPackageName()Ljava/lang/String;
    .registers 2

    .line 1805
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPendingIntentLaunchFlags()I
    .registers 3

    .line 2197
    iget v0, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    return v0
.end method

.method public blacklist getPressedScale()F
    .registers 2

    .line 1146
    iget v0, p0, Landroid/app/ActivityOptions;->mPressedScale:F

    return v0
.end method

.method public blacklist getRadius()I
    .registers 2

    .line 1074
    iget v0, p0, Landroid/app/ActivityOptions;->mRadius:I

    return v0
.end method

.method public greylist-max-o getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;
    .registers 2

    .line 1940
    iget-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    return-object v0
.end method

.method public blacklist getRemoteTransition()Landroid/window/RemoteTransition;
    .registers 2

    .line 1950
    iget-object v0, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public blacklist getRemoveWithTaskOranizer()Z
    .registers 2

    .line 2345
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    return v0
.end method

.method public greylist-max-o getResultCode()I
    .registers 2

    .line 1920
    iget v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    return v0
.end method

.method public greylist-max-o getResultData()Landroid/content/Intent;
    .registers 2

    .line 1923
    iget-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    return-object v0
.end method

.method public greylist-max-o getResultReceiver()Landroid/os/ResultReceiver;
    .registers 2

    .line 1917
    iget-object v0, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public greylist-max-o getRotationAnimationHint()I
    .registers 2

    .line 2842
    iget v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    return v0
.end method

.method public blacklist getRoundDuration()F
    .registers 2

    .line 3250
    iget v0, p0, Landroid/app/ActivityOptions;->mRoundDuration:F

    return v0
.end method

.method public blacklist getRoundFromCornerRadius()F
    .registers 2

    .line 3229
    iget v0, p0, Landroid/app/ActivityOptions;->mRoundFromCornerRadius:F

    return v0
.end method

.method public blacklist getRoundInterpolatorId()I
    .registers 2

    .line 3243
    iget v0, p0, Landroid/app/ActivityOptions;->mRoundInterpolatorId:I

    return v0
.end method

.method public blacklist getRoundToCornerRadius()F
    .registers 2

    .line 3236
    iget v0, p0, Landroid/app/ActivityOptions;->mRoundToCornerRadius:F

    return v0
.end method

.method public blacklist getScaledHeight()I
    .registers 3

    .line 1132
    iget v0, p0, Landroid/app/ActivityOptions;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/app/ActivityOptions;->mPressedScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public blacklist getScaledRadius()I
    .registers 3

    .line 1139
    iget v0, p0, Landroid/app/ActivityOptions;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Landroid/app/ActivityOptions;->mPressedScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public blacklist getScaledStartX()I
    .registers 5

    .line 1111
    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    int-to-float v0, v0

    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Landroid/app/ActivityOptions;->mPressedScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public blacklist getScaledStartY()I
    .registers 5

    .line 1118
    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    int-to-float v0, v0

    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Landroid/app/ActivityOptions;->mPressedScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public blacklist getScaledThumbnail()Landroid/hardware/HardwareBuffer;
    .registers 5

    .line 1095
    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 1096
    const/4 v0, 0x0

    return-object v0

    .line 1098
    :cond_6
    iget v1, p0, Landroid/app/ActivityOptions;->mPressedScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_22

    .line 1099
    iget v2, p0, Landroid/app/ActivityOptions;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1101
    .local v0, "scaledBitMap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    return-object v1

    .line 1103
    .end local v0    # "scaledBitMap":Landroid/graphics/Bitmap;
    :cond_22
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScaledWidth()I
    .registers 3

    .line 1125
    iget v0, p0, Landroid/app/ActivityOptions;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/app/ActivityOptions;->mPressedScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public greylist-max-o getSharedElementNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1913
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;
    .registers 2

    .line 2805
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    return-object v0
.end method

.method public greylist-max-o getSpecsFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;
    .registers 2

    .line 1935
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    return-object v0
.end method

.method public whitelist getSplashScreenStyle()I
    .registers 2

    .line 1994
    iget v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    return v0
.end method

.method public blacklist getSplashScreenThemeResName()Ljava/lang/String;
    .registers 2

    .line 1986
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getStartX()I
    .registers 2

    .line 1855
    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    return v0
.end method

.method public greylist-max-o getStartY()I
    .registers 2

    .line 1860
    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    return v0
.end method

.method public blacklist getTaskAlwaysOnTop()Z
    .registers 2

    .line 2214
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    return v0
.end method

.method public greylist-max-o getTaskOverlay()Z
    .registers 2

    .line 2233
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    return v0
.end method

.method public blacklist getThumbnail()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 1850
    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public blacklist getTransientLaunch()Z
    .registers 2

    .line 2384
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    return v0
.end method

.method public greylist-max-o getUsageTimeReport()Landroid/app/PendingIntent;
    .registers 2

    .line 1927
    iget-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public greylist-max-o getWidth()I
    .registers 2

    .line 1865
    iget v0, p0, Landroid/app/ActivityOptions;->mWidth:I

    return v0
.end method

.method public blacklist isApplyActivityFlagsForBubbles()Z
    .registers 2

    .line 2303
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    return v0
.end method

.method public blacklist isClipEnter()Z
    .registers 2

    .line 3201
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsClipEnter:Z

    return v0
.end method

.method public blacklist isClipWindow()Z
    .registers 2

    .line 3194
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsClipWindow:Z

    return v0
.end method

.method public blacklist isClipWithScale()Z
    .registers 2

    .line 3208
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsClipWithScale:Z

    return v0
.end method

.method greylist-max-o isCrossTask()Z
    .registers 2

    .line 1908
    iget v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isEligibleForLegacyPermissionPrompt()Z
    .registers 2

    .line 2018
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    return v0
.end method

.method public blacklist isLaunchIntoPip()Z
    .registers 2

    .line 2150
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_c

    .line 2151
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 2150
    :goto_d
    return v0
.end method

.method public greylist-max-o isReturning()Z
    .registers 2

    .line 1898
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    return v0
.end method

.method public blacklist isRoundEnter()Z
    .registers 2

    .line 3257
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsRoundEnter:Z

    return v0
.end method

.method public blacklist isRoundWindow()Z
    .registers 2

    .line 3264
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsRoundWindow:Z

    return v0
.end method

.method public greylist-max-o popAppVerificationBundle()Landroid/os/Bundle;
    .registers 3

    .line 2864
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2865
    .local v0, "out":Landroid/os/Bundle;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2866
    return-object v0
.end method

.method public whitelist requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .line 2797
    iput-object p1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 2798
    return-void
.end method

.method public blacklist setAppPairPrimary(Z)V
    .registers 2
    .param p1, "isAppPairPrimary"    # Z

    .line 3109
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mAppPairPrimary:Z

    .line 3110
    return-void
.end method

.method public whitelist setAppVerificationBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2920
    iput-object p1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2921
    return-object p0
.end method

.method public blacklist setApplyActivityFlagsForBubbles(Z)V
    .registers 2
    .param p1, "apply"    # Z

    .line 2298
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    .line 2299
    return-void
.end method

.method public greylist-max-o setAvoidMoveToFront()V
    .registers 2

    .line 2250
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    .line 2251
    return-void
.end method

.method public blacklist setCallerDisplayId(I)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "callerDisplayId"    # I

    .line 2085
    iput p1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 2086
    return-object p0
.end method

.method public greylist-max-o setDisallowEnterPictureInPictureWhileLaunching(Z)V
    .registers 2
    .param p1, "disallow"    # Z

    .line 2288
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    .line 2289
    return-void
.end method

.method public blacklist setDismissKeyguardIfInsecure()V
    .registers 2

    .line 2396
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    .line 2397
    return-void
.end method

.method public blacklist setEligibleForLegacyPermissionPrompt(Z)V
    .registers 2
    .param p1, "eligible"    # Z

    .line 2027
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 2028
    return-void
.end method

.method public blacklist setEnterAppPair()V
    .registers 2

    .line 3093
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mEnterAppPair:Z

    .line 3094
    return-void
.end method

.method public blacklist setEnterAppPairFromShortCut()V
    .registers 2

    .line 3124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mEnterAppPairFromShortCut:Z

    .line 3125
    return-void
.end method

.method public blacklist setForceLaunchNewTask()V
    .registers 2

    .line 2905
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mForceLaunchNewTask:Z

    .line 2906
    return-void
.end method

.method public blacklist setFreeformAnimation(Z)V
    .registers 3
    .param p1, "needAnimation"    # Z

    .line 2898
    iget-object v0, p0, Landroid/app/ActivityOptions;->mActivityOptionsInjector:Landroid/app/ActivityOptions$ActivityOptionsInjector;

    if-eqz v0, :cond_7

    .line 2899
    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions$ActivityOptionsInjector;->setFreeformAnimation(Z)V

    .line 2901
    :cond_7
    return-void
.end method

.method public blacklist setFreezeRecentTasksReordering()V
    .registers 2

    .line 2269
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    .line 2270
    return-void
.end method

.method public blacklist setIgnorePendingIntentCreatorForegroundState(Z)V
    .registers 2
    .param p1, "state"    # Z

    .line 2413
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIgnorePendingIntentCreatorForegroundState:Z

    .line 2414
    return-void
.end method

.method public blacklist setLaunchActivityType(I)V
    .registers 2
    .param p1, "activityType"    # I

    .line 2162
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 2163
    return-void
.end method

.method public whitelist setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .registers 3
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;

    .line 1799
    if-eqz p1, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1800
    return-object p0
.end method

.method public blacklist setLaunchCookie(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "launchCookie"    # Landroid/os/IBinder;

    .line 2314
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    .line 2315
    return-void
.end method

.method public whitelist setLaunchDisplayId(I)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "launchDisplayId"    # I

    .line 2074
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 2075
    return-object p0
.end method

.method public blacklist setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "windowContainerToken"    # Landroid/window/WindowContainerToken;

    .line 2108
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 2109
    return-object p0
.end method

.method public blacklist setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "windowContainerToken"    # Landroid/window/WindowContainerToken;

    .line 2097
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    .line 2098
    return-object p0
.end method

.method public blacklist setLaunchTaskFragmentToken(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "taskFragmentToken"    # Landroid/os/IBinder;

    .line 2119
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    .line 2120
    return-object p0
.end method

.method public whitelist setLaunchTaskId(I)V
    .registers 2
    .param p1, "taskId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2172
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 2173
    return-void
.end method

.method public blacklist setLaunchWindowingMode(I)V
    .registers 2
    .param p1, "windowingMode"    # I

    .line 2134
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 2135
    return-void
.end method

.method public blacklist setLaunchedFromBubble(Z)V
    .registers 2
    .param p1, "fromBubble"    # Z

    .line 2354
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    .line 2355
    return-void
.end method

.method public whitelist setLockTaskEnabled(Z)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "lockTaskMode"    # Z

    .line 2048
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 2049
    return-object p0
.end method

.method public blacklist setMiuiConfigFlag(I)V
    .registers 3
    .param p1, "miuiConfigFlag"    # I

    .line 2875
    iget v0, p0, Landroid/app/ActivityOptions;->mMiuiConfigFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/ActivityOptions;->mMiuiConfigFlag:I

    .line 2876
    return-void
.end method

.method public blacklist setPendingIntentLaunchFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 2189
    iput p1, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    .line 2190
    return-void
.end method

.method public greylist-max-o setRemoteAnimationAdapter(Landroid/view/RemoteAnimationAdapter;)V
    .registers 2
    .param p1, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1945
    iput-object p1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1946
    return-void
.end method

.method public blacklist setRemoteTransition(Landroid/window/RemoteTransition;)V
    .registers 2
    .param p1, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1955
    iput-object p1, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1956
    return-void
.end method

.method public blacklist setRemoveWithTaskOrganizer(Z)V
    .registers 2
    .param p1, "remove"    # Z

    .line 2337
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    .line 2338
    return-void
.end method

.method public greylist-max-o setRotationAnimationHint(I)V
    .registers 2
    .param p1, "hint"    # I

    .line 2854
    iput p1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 2855
    return-void
.end method

.method public blacklist setSourceInfo(IJ)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "uptimeMillis"    # J

    .line 2819
    new-instance v0, Landroid/app/ActivityOptions$SourceInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ActivityOptions$SourceInfo;-><init>(IJ)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    .line 2820
    return-void
.end method

.method public whitelist setSplashScreenStyle(I)Landroid/app/ActivityOptions;
    .registers 3
    .param p1, "style"    # I

    .line 2005
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    if-nez p1, :cond_7

    .line 2007
    :cond_5
    iput p1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 2009
    :cond_7
    return-object p0
.end method

.method public greylist setSplitScreenCreateMode(I)V
    .registers 2
    .param p1, "splitScreenCreateMode"    # I

    .line 2284
    return-void
.end method

.method public blacklist setTaskAlwaysOnTop(Z)V
    .registers 2
    .param p1, "alwaysOnTop"    # Z

    .line 2207
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    .line 2208
    return-void
.end method

.method public blacklist setTaskOverlay(ZZ)V
    .registers 3
    .param p1, "taskOverlay"    # Z
    .param p2, "canResume"    # Z

    .line 2225
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 2226
    iput-boolean p2, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    .line 2227
    return-void
.end method

.method public blacklist setTransientLaunch()Landroid/app/ActivityOptions;
    .registers 2

    .line 2374
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    .line 2375
    return-object p0
.end method

.method public whitelist toBundle()Landroid/os/Bundle;
    .registers 15

    .line 2525
    invoke-super {p0}, Landroid/app/ComponentOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 2526
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 2527
    const-string v2, "android:activity.packageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    :cond_d
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_16

    .line 2530
    const-string v2, "android:activity.launchBounds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2532
    :cond_16
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    .line 2533
    const-string v3, "android:activity.animType"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2535
    :cond_20
    iget-object v1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    if-eqz v1, :cond_29

    .line 2536
    const-string v3, "android:activity.usageTimeReport"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2538
    :cond_29
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const-string v3, "android:activity.animThumbnail"

    const-string v4, "Failed to copy thumbnail"

    const-string v5, "ActivityOptions"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "android:activity.animHeight"

    const-string v9, "android:activity.animWidth"

    const-string v10, "android:activity.animStartY"

    const-string v11, "android:activity.animStartX"

    const-string v12, "android:activity.animStartListener"

    sparse-switch v1, :sswitch_data_34a

    goto/16 :goto_1a9

    .line 2594
    :sswitch_42
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsRoundWindow:Z

    const-string v3, "android:activity.isRoundWindow"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2595
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsRoundEnter:Z

    const-string v3, "android:activity.isRoundEnter"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2596
    iget v1, p0, Landroid/app/ActivityOptions;->mRoundFromCornerRadius:F

    const-string v3, "android:activity.animationRoundWindowFromCornerRadius"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2597
    iget v1, p0, Landroid/app/ActivityOptions;->mRoundToCornerRadius:F

    const-string v3, "android:activity.animationRoundWindowToCornerRadius"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2598
    iget v1, p0, Landroid/app/ActivityOptions;->mRoundInterpolatorId:I

    const-string v3, "android:activity.animationRoundWindowInterpolatorId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2599
    iget v1, p0, Landroid/app/ActivityOptions;->mRoundDuration:F

    const-string v3, "android:activity.animationRoundWindowDuration"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2600
    goto/16 :goto_1a9

    .line 2583
    :sswitch_6e
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsClipWithScale:Z

    const-string v3, "android:activity.isClipWithScale"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2584
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsClipWindow:Z

    const-string v3, "android:activity.isClipWindow"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2585
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsClipEnter:Z

    const-string v3, "android:activity.isClipEnter"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2586
    iget-object v1, p0, Landroid/app/ActivityOptions;->mClipFromRect:Landroid/graphics/Rect;

    const-string v3, "android:activity.animationClipWindowFromRect"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2587
    iget-object v1, p0, Landroid/app/ActivityOptions;->mClipToRect:Landroid/graphics/Rect;

    const-string v3, "android:activity.animationClipWindowToRect"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2588
    iget v1, p0, Landroid/app/ActivityOptions;->mClipFromCornerRadius:F

    const-string v3, "android:activity.animationClipWindowFromCornerRadius"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2589
    iget v1, p0, Landroid/app/ActivityOptions;->mClipToCornerRadius:F

    const-string v3, "android:activity.animationClipWindowToCornerRadius"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2590
    iget v1, p0, Landroid/app/ActivityOptions;->mClipInterpolatorId:I

    const-string v3, "android:activity.animationClipWindowInterpolatorId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2591
    iget v1, p0, Landroid/app/ActivityOptions;->mClipDuration:F

    const-string v3, "android:activity.animationClipWindowDuration"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2592
    goto/16 :goto_1a9

    .line 2559
    :sswitch_af
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v11, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2560
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v10, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2561
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2562
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2563
    iget v1, p0, Landroid/app/ActivityOptions;->mRadius:I

    const-string v8, "android:activity.radius"

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2564
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLunchedFromRoundedView:Z

    const-string v8, "android:activity.launchedFromRoundedView"

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2565
    iget v1, p0, Landroid/app/ActivityOptions;->mForeGroundColor:I

    const-string v8, "android:activity.foregroundColor"

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2566
    iget v1, p0, Landroid/app/ActivityOptions;->mPressedScale:F

    const-string v8, "android:activity.pressedScale"

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2569
    iget-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_f6

    .line 2570
    sget-object v8, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2571
    .local v1, "hwThumbBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_f3

    .line 2572
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_f6

    .line 2574
    :cond_f3
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    .end local v1    # "hwThumbBitmap":Landroid/graphics/Bitmap;
    :cond_f6
    :goto_f6
    nop

    .line 2578
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_ff

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 2577
    :cond_ff
    invoke-virtual {v0, v12, v7}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2579
    goto/16 :goto_1a9

    .line 2547
    :sswitch_104
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    const-string v3, "android:activity.animInPlaceRes"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2548
    goto/16 :goto_1a9

    .line 2624
    :sswitch_10d
    iget-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_116

    .line 2625
    const-string v3, "android:activity.transitionCompleteListener"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2627
    :cond_116
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    const-string v3, "android:activity.transitionIsReturning"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2628
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    const-string v3, "android:activity.sharedElementNames"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2629
    iget-object v1, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    const-string v3, "android:activity.resultData"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2630
    iget v1, p0, Landroid/app/ActivityOptions;->mResultCode:I

    const-string v3, "android:activity.resultCode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2631
    iget v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    const-string v3, "android:activity.exitCoordinatorIndex"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1a9

    .line 2608
    :sswitch_13a
    iget-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_151

    .line 2609
    sget-object v13, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v13, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2610
    .local v1, "hwBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_14e

    .line 2611
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_151

    .line 2613
    :cond_14e
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    .end local v1    # "hwBitmap":Landroid/graphics/Bitmap;
    :cond_151
    :goto_151
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v11, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2617
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v10, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2618
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2619
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2620
    nop

    .line 2621
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_16e

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 2620
    :cond_16e
    invoke-virtual {v0, v12, v7}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2622
    goto :goto_1a9

    .line 2551
    :sswitch_172
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v11, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2552
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v10, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2553
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2554
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2555
    goto :goto_1a9

    .line 2540
    :sswitch_187
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    const-string v3, "android:activity.animEnterRes"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2541
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    const-string v3, "android:activity.animExitRes"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2542
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    const-string v3, "android:activity.backgroundColor"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2543
    nop

    .line 2544
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_1a5

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 2543
    :cond_1a5
    invoke-virtual {v0, v12, v7}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2545
    nop

    .line 2634
    :goto_1a9
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    if-eqz v1, :cond_1b2

    .line 2635
    const-string v3, "android:activity.lockTaskMode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2637
    :cond_1b2
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    if-eq v1, v2, :cond_1bb

    .line 2638
    const-string v3, "android.activity.launchDisplayId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2640
    :cond_1bb
    iget v1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    if-eq v1, v2, :cond_1c4

    .line 2641
    const-string v3, "android.activity.callerDisplayId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2643
    :cond_1c4
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_1cd

    .line 2644
    const-string v3, "android.activity.launchTaskDisplayAreaToken"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2646
    :cond_1cd
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_1d6

    .line 2647
    const-string v3, "android.activity.launchRootTaskToken"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2649
    :cond_1d6
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_1df

    .line 2650
    const-string v3, "android.activity.launchTaskFragmentToken"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2652
    :cond_1df
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    if-eqz v1, :cond_1e8

    .line 2653
    const-string v3, "android.activity.windowingMode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2655
    :cond_1e8
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    if-eqz v1, :cond_1f1

    .line 2656
    const-string v3, "android.activity.activityType"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2658
    :cond_1f1
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    if-eq v1, v2, :cond_1fa

    .line 2659
    const-string v3, "android.activity.launchTaskId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2661
    :cond_1fa
    iget v1, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    if-eqz v1, :cond_203

    .line 2662
    const-string v3, "android.activity.pendingIntentLaunchFlags"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2664
    :cond_203
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    if-eqz v1, :cond_20c

    .line 2665
    const-string v3, "android.activity.alwaysOnTop"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2667
    :cond_20c
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    if-eqz v1, :cond_215

    .line 2668
    const-string v3, "android.activity.taskOverlay"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2670
    :cond_215
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    if-eqz v1, :cond_21e

    .line 2671
    const-string v3, "android.activity.taskOverlayCanResume"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2673
    :cond_21e
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    if-eqz v1, :cond_227

    .line 2674
    const-string v3, "android.activity.avoidMoveToFront"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2676
    :cond_227
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    if-eqz v1, :cond_230

    .line 2677
    const-string v3, "android.activity.freezeRecentTasksReordering"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2679
    :cond_230
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    if-eqz v1, :cond_239

    .line 2680
    const-string v3, "android:activity.disallowEnterPictureInPictureWhileLaunching"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2683
    :cond_239
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    if-eqz v1, :cond_242

    .line 2684
    const-string v3, "android:activity.applyActivityFlagsForBubbles"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2686
    :cond_242
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    if-eqz v1, :cond_24b

    .line 2687
    const-string v3, "android:activity.animSpecs"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2689
    :cond_24b
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_258

    .line 2690
    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "android:activity.animationFinishedListener"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2693
    :cond_258
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationReenterStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_265

    .line 2694
    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "android:activity.animationReenterStartedListener"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2696
    :cond_265
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationReenterFinishedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_272

    .line 2697
    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "android:activity.animationReenterFinishedListener"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2699
    :cond_272
    iget v1, p0, Landroid/app/ActivityOptions;->mMiuiConfigFlag:I

    const-string v3, "key_miui_config_flag"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2700
    iget-object v1, p0, Landroid/app/ActivityOptions;->mActivityOptionsInjector:Landroid/app/ActivityOptions$ActivityOptionsInjector;

    const-string/jumbo v3, "miui:activity.options.injector"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2702
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v1, :cond_28e

    .line 2703
    invoke-interface {v1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "android:activity.specsFuture"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2705
    :cond_28e
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    if-eqz v1, :cond_297

    .line 2706
    const-string v3, "android.activity.sourceInfo"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2708
    :cond_297
    iget v1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    if-eq v1, v2, :cond_2a0

    .line 2709
    const-string v2, "android:activity.rotationAnimationHint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2711
    :cond_2a0
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2a9

    .line 2712
    const-string v2, "android:instantapps.installerbundle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2714
    :cond_2a9
    iget-object v1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    if-eqz v1, :cond_2b2

    .line 2715
    const-string v2, "android:activity.remoteAnimationAdapter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2717
    :cond_2b2
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v1, :cond_2bb

    .line 2718
    const-string v2, "android.activity.launchCookie"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2720
    :cond_2bb
    iget-object v1, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_2c4

    .line 2721
    const-string v2, "android:activity.remoteTransition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2723
    :cond_2c4
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    if-eqz v1, :cond_2cd

    .line 2724
    const-string v2, "android:activity.overrideTaskTransition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2726
    :cond_2cd
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    if-eqz v1, :cond_2de

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2de

    .line 2727
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    const-string v2, "android.activity.splashScreenTheme"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    :cond_2de
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    if-eqz v1, :cond_2e7

    .line 2730
    const-string v2, "android.activity.removeWithTaskOrganizer"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2732
    :cond_2e7
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    if-eqz v1, :cond_2f0

    .line 2733
    const-string v2, "android.activity.launchTypeBubble"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2735
    :cond_2f0
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    if-eqz v1, :cond_2f9

    .line 2736
    const-string v2, "android.activity.transientLaunch"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2738
    :cond_2f9
    iget v1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    if-eqz v1, :cond_302

    .line 2739
    const-string v2, "android.activity.splashScreenStyle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2741
    :cond_302
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    if-eqz v1, :cond_30b

    .line 2742
    const-string v2, "android.activity.launchIntoPipParams"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2744
    :cond_30b
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    if-eqz v1, :cond_314

    .line 2745
    const-string v2, "android:activity.legacyPermissionPromptEligible"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2748
    :cond_314
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    if-eqz v1, :cond_31d

    .line 2749
    const-string v2, "android.activity.dismissKeyguardIfInsecure"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2751
    :cond_31d
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIgnorePendingIntentCreatorForegroundState:Z

    if-eqz v1, :cond_326

    .line 2752
    const-string v2, "android.activity.ignorePendingIntentCreatorForegroundState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2756
    :cond_326
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mEnterAppPair:Z

    if-eqz v1, :cond_336

    .line 2757
    const-string v2, "android.activity.enterAppPair"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2758
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mAppPairPrimary:Z

    const-string v2, "android.activity.isAppPairPrimary"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2761
    :cond_336
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mForceLaunchNewTask:Z

    if-eqz v1, :cond_33f

    .line 2762
    const-string v2, "android.activity.forceLaunchNewTask"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2765
    :cond_33f
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mEnterAppPairFromShortCut:Z

    if-eqz v1, :cond_348

    .line 2766
    const-string v2, "android.activity.enterAppPairFromShortCut"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2769
    :cond_348
    return-object v0

    nop

    :sswitch_data_34a
    .sparse-switch
        0x1 -> :sswitch_187
        0x2 -> :sswitch_172
        0x3 -> :sswitch_13a
        0x4 -> :sswitch_13a
        0x5 -> :sswitch_10d
        0x8 -> :sswitch_13a
        0x9 -> :sswitch_13a
        0xa -> :sswitch_104
        0xb -> :sswitch_172
        0x66 -> :sswitch_af
        0x67 -> :sswitch_af
        0x68 -> :sswitch_6e
        0x69 -> :sswitch_42
    .end sparse-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2928
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

    const-string v1, ", activityOptionsInjector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions;->mActivityOptionsInjector:Landroid/app/ActivityOptions$ActivityOptionsInjector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist update(Landroid/app/ActivityOptions;)V
    .registers 4
    .param p1, "otherOptions"    # Landroid/app/ActivityOptions;

    .line 2431
    iget-object v0, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2432
    iput-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 2434
    :cond_6
    iget-object v0, p1, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 2435
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 2436
    iput-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 2437
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 2438
    iput-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 2439
    iput v1, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 2440
    iput v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 2441
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 2442
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    packed-switch v1, :pswitch_data_ce

    :pswitch_21
    goto/16 :goto_a0

    .line 2457
    :pswitch_23
    iget v0, p1, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    iput v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 2458
    goto/16 :goto_a0

    .line 2490
    :pswitch_29
    iget-object v1, p1, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 2491
    iget-object v1, p1, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 2492
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mIsReturning:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 2493
    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2494
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2495
    iget-object v0, p1, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 2496
    iget v0, p1, Landroid/app/ActivityOptions;->mResultCode:I

    iput v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 2497
    iget v0, p1, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    iput v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_a0

    .line 2476
    :pswitch_46
    iget-object v1, p1, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2477
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

    if-eqz v1, :cond_63

    .line 2483
    :try_start_5e
    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_61} :catch_62

    .line 2485
    goto :goto_63

    .line 2484
    :catch_62
    move-exception v0

    .line 2487
    :cond_63
    :goto_63
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2488
    goto :goto_a0

    .line 2460
    :pswitch_68
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 2461
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 2462
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 2463
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 2464
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_81

    .line 2466
    :try_start_7c
    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_7f} :catch_80

    .line 2468
    goto :goto_81

    .line 2467
    :catch_80
    move-exception v1

    .line 2470
    :cond_81
    :goto_81
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2471
    goto :goto_a0

    .line 2444
    :pswitch_84
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 2445
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomExitResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 2446
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 2447
    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2448
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_9b

    .line 2450
    :try_start_96
    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_99} :catch_9a

    .line 2452
    goto :goto_9b

    .line 2451
    :catch_9a
    move-exception v0

    .line 2454
    :cond_9b
    :goto_9b
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2455
    nop

    .line 2500
    :goto_a0
    iget-boolean v0, p1, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 2501
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 2502
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 2504
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationReenterStartedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationReenterStartedListener:Landroid/os/IRemoteCallback;

    .line 2505
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationReenterFinishedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationReenterFinishedListener:Landroid/os/IRemoteCallback;

    .line 2506
    iget v0, p1, Landroid/app/ActivityOptions;->mMiuiConfigFlag:I

    iput v0, p0, Landroid/app/ActivityOptions;->mMiuiConfigFlag:I

    .line 2507
    iget-object v0, p1, Landroid/app/ActivityOptions;->mActivityOptionsInjector:Landroid/app/ActivityOptions$ActivityOptionsInjector;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mActivityOptionsInjector:Landroid/app/ActivityOptions$ActivityOptionsInjector;

    .line 2509
    iget-object v0, p1, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2510
    iget-object v0, p1, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 2511
    iget-object v0, p1, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 2512
    iget-boolean v0, p1, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 2513
    return-void

    nop

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_84
        :pswitch_68
        :pswitch_46
        :pswitch_46
        :pswitch_29
        :pswitch_21
        :pswitch_21
        :pswitch_46
        :pswitch_46
        :pswitch_23
    .end packed-switch
.end method
