.class public Landroid/app/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$ProgressStyle;,
        Landroid/app/Notification$MetricStyle;,
        Landroid/app/Notification$Builder;,
        Landroid/app/Notification$Action;,
        Landroid/app/Notification$BubbleMetadata;,
        Landroid/app/Notification$MessagingStyle;,
        Landroid/app/Notification$WearableExtender;,
        Landroid/app/Notification$CallStyle;,
        Landroid/app/Notification$BigTextStyle;,
        Landroid/app/Notification$TvExtender;,
        Landroid/app/Notification$Style;,
        Landroid/app/Notification$MediaStyle;,
        Landroid/app/Notification$DecoratedMediaCustomViewStyle;,
        Landroid/app/Notification$StandardTemplateParams;,
        Landroid/app/Notification$TemplateBindResult;,
        Landroid/app/Notification$BigPictureStyle;,
        Landroid/app/Notification$InboxStyle;,
        Landroid/app/Notification$DecoratedCustomViewStyle;,
        Landroid/app/Notification$Colors;,
        Landroid/app/Notification$BuilderRemoteViews;,
        Landroid/app/Notification$CarExtender;,
        Landroid/app/Notification$Extender;,
        Landroid/app/Notification$Metric;,
        Landroid/app/Notification$GroupAlertBehavior;,
        Landroid/app/Notification$NotificationVisibilityOverride;,
        Landroid/app/Notification$Visibility;,
        Landroid/app/Notification$Priority;,
        Landroid/app/Notification$NotificationFlags;,
        Landroid/app/Notification$ServiceNotificationPolicy;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

.field public static final whitelist BADGE_ICON_LARGE:I = 0x2

.field public static final whitelist BADGE_ICON_NONE:I = 0x0

.field public static final whitelist BADGE_ICON_SMALL:I = 0x1

.field public static final whitelist CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final whitelist CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final whitelist CATEGORY_CAR_EMERGENCY:Ljava/lang/String; = "car_emergency"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_CAR_INFORMATION:Ljava/lang/String; = "car_information"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_CAR_WARNING:Ljava/lang/String; = "car_warning"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final whitelist CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final whitelist CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final whitelist CATEGORY_LOCATION_SHARING:Ljava/lang/String; = "location_sharing"

.field public static final whitelist CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final whitelist CATEGORY_MISSED_CALL:Ljava/lang/String; = "missed_call"

.field public static final whitelist CATEGORY_NAVIGATION:Ljava/lang/String; = "navigation"

.field public static final whitelist CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final whitelist CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final whitelist CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final whitelist CATEGORY_REMINDER:Ljava/lang/String; = "reminder"

.field public static final whitelist CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final whitelist CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final whitelist CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final whitelist CATEGORY_STOPWATCH:Ljava/lang/String; = "stopwatch"

.field public static final whitelist CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final whitelist CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final whitelist CATEGORY_VOICEMAIL:Ljava/lang/String; = "voicemail"

.field public static final whitelist CATEGORY_WORKOUT:Ljava/lang/String; = "workout"

.field public static final whitelist COLOR_DEFAULT:I = 0x0

.field public static final greylist-max-o COLOR_INVALID:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_ALL:I = -0x1

.field public static final whitelist DEFAULT_LIGHTS:I = 0x4

.field public static final whitelist DEFAULT_SOUND:I = 0x1

.field public static final whitelist DEFAULT_VIBRATE:I = 0x2

.field public static final whitelist EXTRA_ALLOW_DURING_SETUP:Ljava/lang/String; = "android.allowDuringSetup"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ANSWER_COLOR:Ljava/lang/String; = "android.answerColor"

.field public static final whitelist EXTRA_ANSWER_INTENT:Ljava/lang/String; = "android.answerIntent"

.field public static final blacklist EXTRA_APP_SUMMARIZATION:Ljava/lang/String; = "android.app.extra.app_summarization"

.field public static final whitelist EXTRA_AUDIO_CONTENTS_URI:Ljava/lang/String; = "android.audioContents"

.field public static final whitelist EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final whitelist EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final greylist-max-o EXTRA_BUILDER_APPLICATION_INFO:Ljava/lang/String; = "android.appInfo"

.field public static final whitelist EXTRA_CALL_IS_VIDEO:Ljava/lang/String; = "android.callIsVideo"

.field public static final whitelist EXTRA_CALL_PERSON:Ljava/lang/String; = "android.callPerson"

.field public static final whitelist EXTRA_CALL_TYPE:Ljava/lang/String; = "android.callType"

.field public static final whitelist EXTRA_CHANNEL_GROUP_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_GROUP_ID"

.field public static final whitelist EXTRA_CHANNEL_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_ID"

.field public static final whitelist EXTRA_CHRONOMETER_COUNT_DOWN:Ljava/lang/String; = "android.chronometerCountDown"

.field public static final whitelist EXTRA_COLORIZED:Ljava/lang/String; = "android.colorized"

.field public static final whitelist EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final greylist-max-o EXTRA_CONTAINS_CUSTOM_VIEW:Ljava/lang/String; = "android.contains.customView"

.field public static final blacklist EXTRA_CONTAINS_SUMMARIZATION:Ljava/lang/String; = "android.app.extra.contains_summarization"

.field public static final blacklist EXTRA_CONVERSATION_ICON:Ljava/lang/String; = "android.conversationIcon"

.field public static final whitelist EXTRA_CONVERSATION_TITLE:Ljava/lang/String; = "android.conversationTitle"

.field public static final blacklist EXTRA_CONVERSATION_UNREAD_MESSAGE_COUNT:Ljava/lang/String; = "android.conversationUnreadMessageCount"

.field public static final whitelist EXTRA_DECLINE_COLOR:Ljava/lang/String; = "android.declineColor"

.field public static final whitelist EXTRA_DECLINE_INTENT:Ljava/lang/String; = "android.declineIntent"

.field public static final greylist-max-o EXTRA_FOREGROUND_APPS:Ljava/lang/String; = "android.foregroundApps"

.field public static final whitelist EXTRA_HANG_UP_INTENT:Ljava/lang/String; = "android.hangUpIntent"

.field public static final greylist-max-o EXTRA_HIDE_SMART_REPLIES:Ljava/lang/String; = "android.hideSmartReplies"

.field public static final whitelist EXTRA_HIDE_STATUS_BAR_NOTIFICATION:Ljava/lang/String; = "android.hideStatusBarNotification"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_HISTORIC_MESSAGES:Ljava/lang/String; = "android.messages.historic"

.field public static final whitelist EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final whitelist EXTRA_IS_GROUP_CONVERSATION:Ljava/lang/String; = "android.isGroupConversation"

.field public static final whitelist EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final blacklist EXTRA_MEDIA_REMOTE_DEVICE:Ljava/lang/String; = "android.mediaRemoteDevice"

.field public static final blacklist EXTRA_MEDIA_REMOTE_ICON:Ljava/lang/String; = "android.mediaRemoteIcon"

.field public static final blacklist EXTRA_MEDIA_REMOTE_INTENT:Ljava/lang/String; = "android.mediaRemoteIntent"

.field public static final whitelist EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final whitelist EXTRA_MESSAGES:Ljava/lang/String; = "android.messages"

.field public static final whitelist EXTRA_MESSAGING_PERSON:Ljava/lang/String; = "android.messagingUser"

.field static final blacklist EXTRA_METRICS:Ljava/lang/String; = "android.metrics"

.field public static final whitelist EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_ID"

.field public static final whitelist EXTRA_NOTIFICATION_TAG:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_TAG"

.field public static final whitelist EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final whitelist EXTRA_PEOPLE_LIST:Ljava/lang/String; = "android.people.list"

.field public static final whitelist EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final whitelist EXTRA_PICTURE_CONTENT_DESCRIPTION:Ljava/lang/String; = "android.pictureContentDescription"

.field public static final whitelist EXTRA_PICTURE_ICON:Ljava/lang/String; = "android.pictureIcon"

.field public static final whitelist EXTRA_PREFER_SMALL_ICON:Ljava/lang/String; = "android.app.preferSmallIcon"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final blacklist EXTRA_PROGRESS_END_ICON:Ljava/lang/String; = "android.progressEndIcon"

.field public static final whitelist EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final whitelist EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final blacklist EXTRA_PROGRESS_POINTS:Ljava/lang/String; = "android.progressPoints"

.field public static final blacklist EXTRA_PROGRESS_SEGMENTS:Ljava/lang/String; = "android.progressSegments"

.field public static final blacklist EXTRA_PROGRESS_START_ICON:Ljava/lang/String; = "android.progressStartIcon"

.field public static final blacklist EXTRA_PROGRESS_TRACKER_ICON:Ljava/lang/String; = "android.progressTrackerIcon"

.field public static final greylist-max-o EXTRA_REDUCED_IMAGES:Ljava/lang/String; = "android.reduced.images"

.field public static final whitelist EXTRA_REMOTE_INPUT_DRAFT:Ljava/lang/String; = "android.remoteInputDraft"

.field public static final whitelist EXTRA_REMOTE_INPUT_HISTORY:Ljava/lang/String; = "android.remoteInputHistory"

.field public static final blacklist EXTRA_REMOTE_INPUT_HISTORY_ITEMS:Ljava/lang/String; = "android.remoteInputHistoryItems"

.field public static final whitelist EXTRA_REQUEST_PROMOTED_ONGOING:Ljava/lang/String; = "android.requestPromotedOngoing"

.field public static final whitelist EXTRA_SELF_DISPLAY_NAME:Ljava/lang/String; = "android.selfDisplayName"

.field public static final blacklist EXTRA_SHORT_CRITICAL_TEXT:Ljava/lang/String; = "android.shortCriticalText"

.field public static final whitelist EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED:Ljava/lang/String; = "android.showBigPictureWhenCollapsed"

.field public static final whitelist EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final greylist-max-o EXTRA_SHOW_REMOTE_INPUT_SPINNER:Ljava/lang/String; = "android.remoteInputSpinner"

.field public static final whitelist EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final whitelist EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_STYLED_BY_PROGRESS:Ljava/lang/String; = "android.styledByProgress"

.field public static final whitelist EXTRA_SUBSTITUTE_APP_NAME:Ljava/lang/String; = "android.substName"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final blacklist EXTRA_SUMMARIZED_CONTENT:Ljava/lang/String; = "android.summarization"

.field public static final whitelist EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final whitelist EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final whitelist EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final whitelist EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final whitelist EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final whitelist EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final whitelist EXTRA_VERIFICATION_ICON:Ljava/lang/String; = "android.verificationIcon"

.field public static final whitelist EXTRA_VERIFICATION_TEXT:Ljava/lang/String; = "android.verificationText"

.field public static final whitelist FLAG_AUTOGROUP_SUMMARY:I = 0x400
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_AUTO_CANCEL:I = 0x10

.field public static final whitelist FLAG_BUBBLE:I = 0x1000

.field public static final greylist-max-o FLAG_CAN_COLORIZE:I = 0x800

.field public static final whitelist FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final blacklist FLAG_FSI_REQUESTED_BUT_DENIED:I = 0x4000

.field public static final whitelist FLAG_GROUP_SUMMARY:I = 0x200

.field public static final whitelist FLAG_HIGH_PRIORITY:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_INSISTENT:I = 0x4

.field public static final blacklist FLAG_LIFETIME_EXTENDED_BY_DIRECT_REPLY:I = 0x10000

.field public static final whitelist FLAG_LOCAL_ONLY:I = 0x100

.field public static final whitelist FLAG_NO_CLEAR:I = 0x20

.field public static final blacklist FLAG_NO_DISMISS:I = 0x2000

.field public static final whitelist FLAG_ONGOING_EVENT:I = 0x2

.field public static final whitelist FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final whitelist FLAG_PROMOTED_ONGOING:I = 0x40000

.field public static final whitelist FLAG_SHOW_LIGHTS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FLAG_SILENT:I = 0x20000

.field public static final blacklist FLAG_USER_INITIATED_JOB:I = 0x8000

.field public static final whitelist FOREGROUND_SERVICE_DEFAULT:I = 0x0

.field public static final whitelist FOREGROUND_SERVICE_DEFERRED:I = 0x2

.field public static final whitelist FOREGROUND_SERVICE_IMMEDIATE:I = 0x1

.field public static final whitelist GROUP_ALERT_ALL:I = 0x0

.field public static final whitelist GROUP_ALERT_CHILDREN:I = 0x2

.field public static final whitelist GROUP_ALERT_SUMMARY:I = 0x1

.field public static final blacklist GROUP_KEY_SILENT:Ljava/lang/String; = "silent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INTENT_CATEGORY_NOTIFICATION_PREFERENCES:Ljava/lang/String; = "android.intent.category.NOTIFICATION_PREFERENCES"

.field public static final blacklist MAX_ACTION_BUTTONS:I = 0x3

.field private static final greylist-max-o MAX_CHARSEQUENCE_LENGTH:I = 0x400

.field private static final blacklist MAX_LARGE_ICON_ASPECT_RATIO:F = 1.7777778f

.field private static final greylist-max-o MAX_REPLY_HISTORY:I = 0x5

.field private static final blacklist PLATFORM_STYLE_CLASSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist PRIORITY_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_HIGH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_LOW:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_MAX:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_MIN:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist PROGRESS_STATE_COMPLETE:I = 0x2

.field public static final blacklist PROGRESS_STATE_NONE:I = 0x0

.field public static final blacklist PROGRESS_STATE_ONGOING:I = 0x1

.field private static final greylist-max-o STANDARD_LAYOUTS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STREAM_DEFAULT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Notification"

.field public static final whitelist VISIBILITY_PRIVATE:I = 0x0

.field public static final whitelist VISIBILITY_PUBLIC:I = 0x1

.field public static final whitelist VISIBILITY_SECRET:I = -0x1

.field static final blacklist WEARABLE_EXTENDER_BACKGROUND_BLOCKED:J = 0x10204890L

.field public static blacklist processAllowlistToken:Landroid/os/IBinder;

.field public static blacklist sElapsedRealtimeClock:Ljava/util/function/LongSupplier;

.field public static blacklist sSystemClock:Ljava/time/InstantSource;


# instance fields
.field public whitelist actions:[Landroid/app/Notification$Action;

.field public greylist allPendingIntents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist audioAttributes:Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist audioStreamType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist bigContentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist category:Ljava/lang/String;

.field public whitelist color:I

.field public whitelist contentIntent:Landroid/app/PendingIntent;

.field public whitelist contentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public greylist-max-o creationTime:J

.field public whitelist defaults:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist deleteIntent:Landroid/app/PendingIntent;

.field public whitelist extras:Landroid/os/Bundle;

.field public whitelist flags:I

.field public whitelist fullScreenIntent:Landroid/app/PendingIntent;

.field public whitelist headsUpContentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist iconLevel:I

.field public whitelist largeIcon:Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist ledARGB:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist ledOffMS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist ledOnMS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mAllowSystemGeneratedContextualActions:Z

.field private blacklist mAllowlistToken:Landroid/os/IBinder;

.field private greylist-max-o mBadgeIcon:I

.field private blacklist mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

.field private greylist mChannelId:Ljava/lang/String;

.field private blacklist mFgsDeferBehavior:I

.field private greylist-max-o mGroupAlertBehavior:I

.field private greylist mGroupKey:Ljava/lang/String;

.field private greylist mLargeIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mLocusId:Landroid/content/LocusId;

.field private greylist-max-o mSettingsText:Ljava/lang/CharSequence;

.field private greylist-max-o mShortcutId:Ljava/lang/String;

.field private greylist mSmallIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mSortKey:Ljava/lang/String;

.field private greylist-max-o mTimeout:J

.field private greylist-max-o mUsesStandardHeader:Z

.field public whitelist number:I

.field public whitelist priority:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist publicVersion:Landroid/app/Notification;

.field public whitelist sound:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist tickerText:Ljava/lang/CharSequence;

.field public whitelist tickerView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist vibrate:[J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist visibility:I

.field public whitelist when:J


# direct methods
.method public static synthetic blacklist $r8$lambda$grOIii7GIBug1pdiNAZcQ579QgE(Landroid/app/Notification;Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Notification;->lambda$writeToParcel$3(Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupKey(Landroid/app/Notification;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShortcutId(Landroid/app/Notification;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSmallIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsesStandardHeader(Landroid/app/Notification;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/Notification;->mUsesStandardHeader:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowSystemGeneratedContextualActions(Landroid/app/Notification;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBadgeIcon(Landroid/app/Notification;I)V
    .registers 2

    iput p1, p0, Landroid/app/Notification;->mBadgeIcon:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBubbleMetadata(Landroid/app/Notification;Landroid/app/Notification$BubbleMetadata;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChannelId(Landroid/app/Notification;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFgsDeferBehavior(Landroid/app/Notification;I)V
    .registers 2

    iput p1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGroupAlertBehavior(Landroid/app/Notification;I)V
    .registers 2

    iput p1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGroupKey(Landroid/app/Notification;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLocusId(Landroid/app/Notification;Landroid/content/LocusId;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSettingsText(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShortcutId(Landroid/app/Notification;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmallIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSortKey(Landroid/app/Notification;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeout(Landroid/app/Notification;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/Notification;->mTimeout:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUsesStandardHeader(Landroid/app/Notification;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/Notification;->mUsesStandardHeader:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smareIconsMaybeDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/app/Notification;->areIconsMaybeDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/Notification;->buildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/app/Notification;->getParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetToday()Ljava/time/LocalDate;
    .registers 1

    invoke-static {}, Landroid/app/Notification;->getToday()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisPlatformStyle(Landroid/app/Notification$Style;)Z
    .registers 1

    invoke-static {p0}, Landroid/app/Notification;->isPlatformStyle(Landroid/app/Notification$Style;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisStandardLayout(I)Z
    .registers 1

    invoke-static {p0}, Landroid/app/Notification;->isStandardLayout(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnormalizeBigText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 1

    invoke-static {p0}, Landroid/app/Notification;->normalizeBigText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smstripNonStyleSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 1

    invoke-static {p0}, Landroid/app/Notification;->stripNonStyleSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smstripNonStyleSpans(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 2

    invoke-static {p0, p1}, Landroid/app/Notification;->stripNonStyleSpans(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smstripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 1

    invoke-static {p0}, Landroid/app/Notification;->stripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvisitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 487
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    .line 489
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 490
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 491
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 492
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 493
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 494
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 496
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 497
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 498
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 499
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 548
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 549
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 550
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 799
    const-class v1, Landroid/app/Notification$BigTextStyle;

    const-class v2, Landroid/app/Notification$BigPictureStyle;

    const-class v3, Landroid/app/Notification$InboxStyle;

    const-class v4, Landroid/app/Notification$MediaStyle;

    const-class v5, Landroid/app/Notification$DecoratedCustomViewStyle;

    const-class v6, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    const-class v7, Landroid/app/Notification$MessagingStyle;

    const-class v8, Landroid/app/Notification$CallStyle;

    invoke-static/range {v1 .. v8}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/app/Notification;->PLATFORM_STYLE_CLASSES:Ljava/util/Set;

    .line 1844
    invoke-static {}, Ljava/time/InstantSource;->system()Ljava/time/InstantSource;

    move-result-object v0

    sput-object v0, Landroid/app/Notification;->sSystemClock:Ljava/time/InstantSource;

    .line 1854
    new-instance v0, Landroid/app/Notification$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/Notification$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/app/Notification;->sElapsedRealtimeClock:Ljava/util/function/LongSupplier;

    .line 3877
    new-instance v0, Landroid/app/Notification$1;

    invoke-direct {v0}, Landroid/app/Notification$1;-><init>()V

    sput-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 2834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 542
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 558
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 976
    iput v0, p0, Landroid/app/Notification;->color:I

    .line 1229
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1919
    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 1937
    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 1942
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2835
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/Notification;->when:J

    .line 2836
    iget-wide v2, p0, Landroid/app/Notification;->when:J

    iput-wide v2, p0, Landroid/app/Notification;->creationTime:J

    .line 2837
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.showWhen"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2839
    iput v0, p0, Landroid/app/Notification;->priority:I

    .line 2840
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/CharSequence;J)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 542
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 558
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 976
    iput v0, p0, Landroid/app/Notification;->color:I

    .line 1229
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1919
    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 1937
    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 1942
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2878
    iput p1, p0, Landroid/app/Notification;->icon:I

    .line 2879
    iput-object p2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2880
    iput-wide p3, p0, Landroid/app/Notification;->when:J

    .line 2881
    iput-wide p3, p0, Landroid/app/Notification;->creationTime:J

    .line 2882
    iget-object p1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p2, "android.showWhen"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2883
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .registers 13

    .line 2848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 542
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 558
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 976
    iput v0, p0, Landroid/app/Notification;->color:I

    .line 1229
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1919
    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 1937
    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 1942
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2849
    iput-wide p4, p0, Landroid/app/Notification;->creationTime:J

    .line 2850
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.showWhen"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2852
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2853
    invoke-virtual {v1, p4, p5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p4

    .line 2854
    invoke-virtual {p4, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 2855
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 2856
    invoke-virtual {p2, p6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 2857
    invoke-virtual {p2, p7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 2858
    const/high16 p3, 0x2000000

    invoke-static {p1, v0, p8, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 2860
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    .line 2861
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 2889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 542
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 558
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 976
    iput v0, p0, Landroid/app/Notification;->color:I

    .line 1229
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1919
    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 1937
    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 1942
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2892
    invoke-direct {p0, p1}, Landroid/app/Notification;->readFromParcelImpl(Landroid/os/Parcel;)V

    .line 2894
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 2895
    return-void
.end method

.method public static greylist-max-o addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V
    .registers 2

    .line 4118
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V

    .line 4119
    return-void
.end method

.method public static greylist-max-o addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V
    .registers 3

    .line 4125
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.appInfo"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4126
    return-void
.end method

.method public static greylist-max-o areActionsVisiblyDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z
    .registers 10

    .line 3895
    iget-object p0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 3896
    iget-object p1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 3897
    const/4 v0, 0x1

    if-nez p0, :cond_9

    if-nez p1, :cond_d

    :cond_9
    if-eqz p0, :cond_e

    if-nez p1, :cond_e

    .line 3898
    :cond_d
    return v0

    .line 3900
    :cond_e
    const/4 v1, 0x0

    if-eqz p0, :cond_71

    if-eqz p1, :cond_71

    .line 3901
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_18

    .line 3902
    return v0

    .line 3904
    :cond_18
    move v2, v1

    :goto_19
    array-length v3, p0

    if-ge v2, v3, :cond_71

    .line 3905
    aget-object v3, p0, v2

    iget-object v3, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v2

    iget-object v4, v4, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 3906
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3905
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 3907
    return v0

    .line 3909
    :cond_33
    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v3

    .line 3910
    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v4

    .line 3911
    if-nez v3, :cond_43

    .line 3912
    new-array v3, v1, [Landroid/app/RemoteInput;

    .line 3914
    :cond_43
    if-nez v4, :cond_47

    .line 3915
    new-array v4, v1, [Landroid/app/RemoteInput;

    .line 3917
    :cond_47
    array-length v5, v3

    array-length v6, v4

    if-eq v5, v6, :cond_4c

    .line 3918
    return v0

    .line 3920
    :cond_4c
    move v5, v1

    :goto_4d
    array-length v6, v3

    if-ge v5, v6, :cond_6e

    .line 3921
    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v4, v5

    .line 3922
    invoke-virtual {v7}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3921
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6b

    .line 3923
    return v0

    .line 3920
    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 3904
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 3928
    :cond_71
    return v1
.end method

.method public static blacklist areIconsDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z
    .registers 4

    .line 3935
    invoke-virtual {p0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->areIconsMaybeDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3936
    invoke-virtual {p0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/app/Notification;->areIconsMaybeDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    .line 3935
    :goto_20
    return p0
.end method

.method private static blacklist areIconsMaybeDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .registers 6

    .line 3944
    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    .line 3945
    return v0

    .line 3947
    :cond_4
    const/4 v1, 0x1

    if-eqz p0, :cond_55

    if-nez p1, :cond_a

    goto :goto_55

    .line 3950
    :cond_a
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3951
    return v0

    .line 3953
    :cond_11
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    .line 3954
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    if-eq v2, v3, :cond_1c

    .line 3955
    return v1

    .line 3957
    :cond_1c
    if-eq v2, v1, :cond_23

    const/4 v3, 0x5

    if-ne v2, v3, :cond_22

    goto :goto_23

    .line 3965
    :cond_22
    return v1

    .line 3958
    :cond_23
    :goto_23
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 3959
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3960
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_53

    .line 3961
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_53

    .line 3962
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-ne v2, v3, :cond_53

    .line 3963
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result p1

    if-eq p0, p1, :cond_54

    :cond_53
    move v0, v1

    .line 3960
    :cond_54
    return v0

    .line 3948
    :cond_55
    :goto_55
    return v1
.end method

.method public static greylist-max-o areRemoteViewsChanged(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z
    .registers 5

    .line 3985
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->usesStandardHeader()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->usesStandardHeader()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 3986
    return v1

    .line 3989
    :cond_18
    invoke-static {p0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v2}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3990
    return v1

    .line 3992
    :cond_2b
    invoke-static {p0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v2}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3993
    return v1

    .line 3995
    :cond_3e
    invoke-static {p0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {p0, p1}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result p0

    if-eqz p0, :cond_51

    .line 3996
    return v1

    .line 3999
    :cond_51
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist-max-o areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .registers 6

    .line 4003
    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 4004
    return v0

    .line 4006
    :cond_6
    const/4 v1, 0x1

    if-nez p0, :cond_b

    if-nez p1, :cond_f

    :cond_b
    if-eqz p0, :cond_10

    if-nez p1, :cond_10

    .line 4007
    :cond_f
    return v1

    .line 4010
    :cond_10
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 4011
    return v1

    .line 4014
    :cond_27
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    .line 4015
    return v1

    .line 4018
    :cond_3e
    return v0
.end method

.method public static greylist-max-o areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z
    .registers 4

    .line 3972
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 3973
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p0

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1

    .line 3975
    :cond_10
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    if-nez v0, :cond_17

    .line 3976
    return v1

    .line 3978
    :cond_17
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z

    move-result p0

    return p0
.end method

.method private static blacklist buildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .registers 8

    .line 8552
    nop

    .line 8553
    const v0, 0x1020439

    if-eqz p2, :cond_4d

    .line 8556
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 8557
    iget-boolean v1, p3, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    .line 8558
    const p0, 0x1020445

    invoke-virtual {p1, p0}, Landroid/widget/RemoteViews;->removeFromParent(I)V

    .line 8562
    invoke-static {p1, p3, v2}, Landroid/app/Notification$Builder;->-$$Nest$smsetHeaderlessVerticalMargins(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    .line 8563
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result p0

    if-eqz p0, :cond_3f

    iget-boolean p0, p3, Landroid/app/Notification$StandardTemplateParams;->mNeedsExtraTextMargin:Z

    if-eqz p0, :cond_3f

    .line 8565
    iget-object p0, p4, Landroid/app/Notification$TemplateBindResult;->mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    invoke-virtual {p0, p1, v0}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;I)V

    goto :goto_3f

    .line 8569
    :cond_28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 8570
    iget-object p3, p4, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    .line 8571
    const p4, 0x10502c2

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 8572
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p4, p0

    .line 8570
    invoke-virtual {p3, p1, v0, p4}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;IF)V

    .line 8574
    :cond_3f
    :goto_3f
    const p0, 0x102000d

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->removeAllViewsExceptId(II)V

    .line 8575
    const/4 p0, 0x0

    invoke-virtual {p1, v0, p2, p0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;I)V

    .line 8576
    invoke-virtual {p1, v2}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 8577
    goto :goto_4e

    .line 8553
    :cond_4d
    const/4 p0, -0x1

    .line 8579
    :goto_4e
    const p2, 0x1020435

    invoke-virtual {p1, v0, p2, p0}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 8582
    return-void
.end method

.method public static blacklist defaultsToString(I)Ljava/lang/String;
    .registers 4

    .line 4368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4369
    and-int/lit8 v1, p0, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    .line 4370
    const-string p0, "ALL"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4371
    const/4 p0, 0x0

    .line 4373
    :cond_10
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1b

    .line 4374
    const-string v1, "SOUND"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4375
    and-int/lit8 p0, p0, -0x2

    .line 4377
    :cond_1b
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_26

    .line 4378
    const-string v1, "VIBRATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4379
    and-int/lit8 p0, p0, -0x3

    .line 4381
    :cond_26
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_31

    .line 4382
    const-string v1, "LIGHTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4383
    and-int/lit8 p0, p0, -0x5

    .line 4386
    :cond_31
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 4387
    const-string p0, "0"

    return-object p0

    .line 4390
    :cond_3a
    if-eqz p0, :cond_4d

    .line 4391
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "UNKNOWN(0x%08x)"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4394
    :cond_4d
    const-string/jumbo p0, "|"

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o fixDuplicateExtra(Landroid/os/Parcelable;Ljava/lang/String;)V
    .registers 5

    .line 4042
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v1, Landroid/os/Parcelable;

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 4043
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4045
    :cond_11
    return-void
.end method

.method private greylist-max-o fixDuplicateExtras()V
    .registers 3

    .line 4032
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 4033
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.largeIcon"

    invoke-direct {p0, v0, v1}, Landroid/app/Notification;->fixDuplicateExtra(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 4035
    :cond_b
    return-void
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .registers 3

    .line 4270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4271
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    .line 4272
    const-string v1, "SHOW_LIGHTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4273
    and-int/lit8 p0, p0, -0x2

    .line 4275
    :cond_10
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1b

    .line 4276
    const-string v1, "ONGOING_EVENT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4277
    and-int/lit8 p0, p0, -0x3

    .line 4279
    :cond_1b
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_26

    .line 4280
    const-string v1, "INSISTENT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4281
    and-int/lit8 p0, p0, -0x5

    .line 4283
    :cond_26
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_31

    .line 4284
    const-string v1, "ONLY_ALERT_ONCE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4285
    and-int/lit8 p0, p0, -0x9

    .line 4287
    :cond_31
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_3c

    .line 4288
    const-string v1, "AUTO_CANCEL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4289
    and-int/lit8 p0, p0, -0x11

    .line 4291
    :cond_3c
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_47

    .line 4292
    const-string v1, "NO_CLEAR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4293
    and-int/lit8 p0, p0, -0x21

    .line 4295
    :cond_47
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_52

    .line 4296
    const-string v1, "FOREGROUND_SERVICE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4297
    and-int/lit8 p0, p0, -0x41

    .line 4299
    :cond_52
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_5d

    .line 4300
    const-string v1, "HIGH_PRIORITY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4301
    and-int/lit16 p0, p0, -0x81

    .line 4303
    :cond_5d
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_68

    .line 4304
    const-string v1, "LOCAL_ONLY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4305
    and-int/lit16 p0, p0, -0x101

    .line 4307
    :cond_68
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_73

    .line 4308
    const-string v1, "GROUP_SUMMARY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4309
    and-int/lit16 p0, p0, -0x201

    .line 4311
    :cond_73
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_7e

    .line 4312
    const-string v1, "AUTOGROUP_SUMMARY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4313
    and-int/lit16 p0, p0, -0x401

    .line 4315
    :cond_7e
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_89

    .line 4316
    const-string v1, "CAN_COLORIZE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4317
    and-int/lit16 p0, p0, -0x801

    .line 4319
    :cond_89
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_94

    .line 4320
    const-string v1, "BUBBLE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4321
    and-int/lit16 p0, p0, -0x1001

    .line 4323
    :cond_94
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_9f

    .line 4324
    const-string v1, "NO_DISMISS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4325
    and-int/lit16 p0, p0, -0x2001

    .line 4327
    :cond_9f
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_aa

    .line 4328
    const-string v1, "FSI_REQUESTED_BUT_DENIED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4329
    and-int/lit16 p0, p0, -0x4001

    .line 4331
    :cond_aa
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_b9

    .line 4332
    const-string v1, "USER_INITIATED_JOB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4333
    const v1, -0x8001

    and-int/2addr p0, v1

    .line 4335
    :cond_b9
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->lifetimeExtensionRefactor()Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 4336
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_cd

    .line 4337
    const-string v1, "LIFETIME_EXTENDED_BY_DIRECT_REPLY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4338
    const v1, -0x10001

    and-int/2addr p0, v1

    .line 4341
    :cond_cd
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->apiRichOngoing()Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 4342
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_e1

    .line 4343
    const-string v1, "PROMOTED_ONGOING"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4344
    const v1, -0x40001

    and-int/2addr p0, v1

    .line 4348
    :cond_e1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationSilentFlag()Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 4349
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f5

    .line 4350
    const-string v1, "SILENT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4351
    const v1, -0x20001

    and-int/2addr p0, v1

    .line 4355
    :cond_f5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 4356
    const-string p0, "0"

    return-object p0

    .line 4359
    :cond_fe
    if-eqz p0, :cond_111

    .line 4360
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "UNKNOWN(0x%08x)"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4363
    :cond_111
    const-string/jumbo p0, "|"

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .registers 6

    .line 3463
    nop

    .line 3464
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.appInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 3465
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v3, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    goto :goto_18

    .line 3464
    :cond_17
    move-object v0, v2

    .line 3469
    :goto_18
    if-nez v0, :cond_21

    .line 3470
    if-nez p1, :cond_1d

    .line 3471
    return-object v2

    .line 3473
    :cond_1d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3475
    :cond_21
    return-object v0
.end method

.method private static blacklist getDefaultProfileBadgeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 3365
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    .line 3366
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 3365
    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getElapsedRealtimeClock()Ljava/util/function/LongSupplier;
    .registers 1

    .line 3145
    sget-object v0, Landroid/app/Notification;->sElapsedRealtimeClock:Ljava/util/function/LongSupplier;

    if-eqz v0, :cond_7

    .line 3146
    sget-object v0, Landroid/app/Notification;->sElapsedRealtimeClock:Ljava/util/function/LongSupplier;

    goto :goto_c

    .line 3147
    :cond_7
    new-instance v0, Landroid/app/Notification$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/app/Notification$$ExternalSyntheticLambda3;-><init>()V

    .line 3145
    :goto_c
    return-object v0
.end method

.method public static greylist getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    .line 8530
    sget-object v0, Landroid/app/Notification;->PLATFORM_STYLE_CLASSES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 8531
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 8532
    return-object v1

    .line 8534
    :cond_1d
    goto :goto_6

    .line 8536
    :cond_1e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->apiRichOngoing()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 8537
    const-class v0, Landroid/app/Notification$ProgressStyle;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 8538
    const-class p0, Landroid/app/Notification$ProgressStyle;

    return-object p0

    .line 8541
    :cond_33
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->apiMetricStyle()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 8542
    const-class v0, Landroid/app/Notification$MetricStyle;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_48

    .line 8543
    const-class p0, Landroid/app/Notification$MetricStyle;

    return-object p0

    .line 8546
    :cond_48
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 16306
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    .line 16307
    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 16308
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    if-nez v0, :cond_1a

    goto :goto_30

    .line 16311
    :cond_1a
    array-length v2, v0

    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/Parcelable;

    .line 16312
    nop

    :goto_22
    array-length v2, v0

    if-ge v1, v2, :cond_2c

    .line 16313
    aget-object v2, v0, v1

    aput-object v2, p2, v1

    .line 16312
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 16315
    :cond_2c
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 16316
    return-object p2

    .line 16309
    :cond_30
    :goto_30
    return-object v0
.end method

.method public static blacklist getProfileBadge(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 5

    .line 3330
    invoke-static {p0}, Landroid/app/Notification;->getProfileBadgeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3331
    if-nez v0, :cond_8

    .line 3332
    const/4 p0, 0x0

    return-object p0

    .line 3334
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 3335
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3336
    const v1, 0x105028a

    goto :goto_19

    .line 3337
    :cond_16
    const v1, 0x10502b6

    .line 3334
    :goto_19
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 3338
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3339
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3340
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3341
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3342
    return-object v1
.end method

.method private static blacklist getProfileBadgeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 3346
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_8

    .line 3349
    const/4 p0, 0x0

    return-object p0

    .line 3353
    :cond_8
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3354
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    .line 3355
    invoke-static {p0}, Landroid/app/Notification;->getUpdatableProfileBadgeId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Landroid/app/Notification$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    .line 3354
    const-string p0, "SOLID_COLORED"

    const-string v3, "NOTIFICATION"

    invoke-virtual {v0, v1, p0, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getSystemClock()Ljava/time/InstantSource;
    .registers 1

    .line 3140
    sget-object v0, Landroid/app/Notification;->sSystemClock:Ljava/time/InstantSource;

    if-eqz v0, :cond_7

    sget-object v0, Landroid/app/Notification;->sSystemClock:Ljava/time/InstantSource;

    goto :goto_b

    :cond_7
    invoke-static {}, Ljava/time/InstantSource;->system()Ljava/time/InstantSource;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method private static blacklist getToday()Ljava/time/LocalDate;
    .registers 2

    .line 3151
    invoke-static {}, Landroid/app/Notification;->getSystemClock()Ljava/time/InstantSource;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/InstantSource;->instant()Ljava/time/Instant;

    move-result-object v0

    .line 3152
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 3153
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    .line 3151
    return-object v0
.end method

.method private static blacklist getUpdatableProfileBadgeId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 3360
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 3361
    const-string p0, "WORK_PROFILE_ICON"

    goto :goto_13

    :cond_11
    const-string p0, "UNDEFINED"

    .line 3360
    :goto_13
    return-object p0
.end method

.method private greylist-max-o hasLargeIcon()Z
    .registers 2

    .line 8446
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private blacklist isColorizedRequested()Z
    .registers 3

    .line 8367
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist isOngoingCallStyle()Z
    .registers 4

    .line 3452
    const-class v0, Landroid/app/Notification$CallStyle;

    invoke-virtual {p0, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 3453
    return v1

    .line 3455
    :cond_a
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.callType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3456
    const/4 v2, 0x2

    if-ne v0, v2, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method private static blacklist isPlatformStyle(Landroid/app/Notification$Style;)Z
    .registers 5

    .line 811
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 812
    return v0

    .line 815
    :cond_4
    sget-object v1, Landroid/app/Notification;->PLATFORM_STYLE_CLASSES:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 816
    return v2

    .line 819
    :cond_12
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->apiRichOngoing()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Landroid/app/Notification$ProgressStyle;

    if-ne v1, v3, :cond_21

    .line 820
    return v2

    .line 823
    :cond_21
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->apiMetricStyle()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v1, Landroid/app/Notification$MetricStyle;

    if-ne p0, v1, :cond_30

    .line 824
    return v2

    .line 827
    :cond_30
    return v0
.end method

.method private static blacklist isStandardLayout(I)Z
    .registers 3

    .line 831
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 832
    packed-switch p0, :pswitch_data_34

    .line 854
    :pswitch_a
    const/4 v1, 0x0

    goto :goto_1c

    .line 849
    :pswitch_c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->apiRichOngoing()Z

    move-result v1

    goto :goto_1c

    .line 853
    :pswitch_11
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->apiMetricStyle()Z

    move-result v1

    goto :goto_1c

    .line 851
    :pswitch_16
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->apiMetricStyle()Z

    move-result v1

    goto :goto_1c

    .line 847
    :pswitch_1b
    nop

    .line 832
    :goto_1c
    return v1

    .line 857
    :cond_1d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->apiRichOngoing()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 858
    const v0, 0x10900ef

    if-ne p0, v0, :cond_29

    .line 859
    return v1

    .line 862
    :cond_29
    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_34
    .packed-switch 0x10900bc
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_16
        :pswitch_a
        :pswitch_a
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_11
        :pswitch_c
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method static synthetic blacklist lambda$getElapsedRealtimeClock$1()J
    .registers 2

    .line 3147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$getProfileBadgeDrawable$2(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 3356
    invoke-static {p0}, Landroid/app/Notification;->getDefaultProfileBadgeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$static$0()J
    .registers 2

    .line 1854
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic blacklist lambda$writeToParcel$3(Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V
    .registers 5

    .line 3657
    if-ne p1, p3, :cond_18

    .line 3658
    monitor-enter p0

    .line 3659
    :try_start_3
    iget-object p1, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-nez p1, :cond_e

    .line 3660
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 3662
    :cond_e
    iget-object p1, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3663
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1

    .line 3665
    :cond_18
    :goto_18
    return-void
.end method

.method private static blacklist normalizeBigText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 1

    .line 3600
    if-nez p0, :cond_3

    .line 3601
    return-object p0

    .line 3604
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/NotificationBigTextNormalizer;->normalizeBigText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o priorityToString(I)Ljava/lang/String;
    .registers 3

    .line 4250
    packed-switch p0, :pswitch_data_30

    .line 4262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4260
    :pswitch_21
    const-string p0, "MAX"

    return-object p0

    .line 4258
    :pswitch_24
    const-string p0, "HIGH"

    return-object p0

    .line 4256
    :pswitch_27
    const-string p0, "DEFAULT"

    return-object p0

    .line 4254
    :pswitch_2a
    const-string p0, "LOW"

    return-object p0

    .line 4252
    :pswitch_2d
    const-string p0, "MIN"

    return-object p0

    :pswitch_data_30
    .packed-switch -0x2
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method private greylist-max-o readFromParcelImpl(Landroid/os/Parcel;)V
    .registers 4

    .line 2899
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2901
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    .line 2902
    iget-object v0, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    if-nez v0, :cond_11

    .line 2903
    sget-object v0, Landroid/app/Notification;->processAllowlistToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    .line 2907
    :cond_11
    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->hasClassCookie(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2908
    const-class v0, Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->setClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2911
    :cond_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->when:J

    .line 2912
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->creationTime:J

    .line 2913
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4d

    .line 2914
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 2915
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4d

    .line 2916
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->icon:I

    .line 2919
    :cond_4d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 2920
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_63

    .line 2921
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2923
    :cond_63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_73

    .line 2924
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 2926
    :cond_73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_83

    .line 2927
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2929
    :cond_83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_93

    .line 2930
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 2932
    :cond_93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a3

    .line 2933
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2935
    :cond_a3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b3

    .line 2936
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 2938
    :cond_b3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 2939
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 2940
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_cf

    .line 2941
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2944
    :cond_cf
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    .line 2945
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e5

    .line 2946
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2948
    :cond_e5
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->vibrate:[J

    .line 2949
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->ledARGB:I

    .line 2950
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->ledOnMS:I

    .line 2951
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->ledOffMS:I

    .line 2952
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->iconLevel:I

    .line 2954
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_113

    .line 2955
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 2958
    :cond_113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->priority:I

    .line 2960
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 2962
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    .line 2964
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    .line 2966
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2967
    invoke-direct {p0}, Landroid/app/Notification;->fixDuplicateExtras()V

    .line 2969
    sget-object v0, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/Notification$Action;

    iput-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 2971
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_153

    .line 2972
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2975
    :cond_153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_163

    .line 2976
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2979
    :cond_163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->visibility:I

    .line 2981
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_179

    .line 2982
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    iput-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 2985
    :cond_179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->color:I

    .line 2987
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18b

    .line 2988
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    .line 2990
    :cond_18b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->mTimeout:J

    .line 2992
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19d

    .line 2993
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    .line 2996
    :cond_19d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ad

    .line 2997
    sget-object v0, Landroid/content/LocusId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/LocusId;

    iput-object v0, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    .line 3000
    :cond_1ad
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 3002
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c3

    .line 3003
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    .line 3006
    :cond_1c3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 3007
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d9

    .line 3008
    sget-object v0, Landroid/app/Notification$BubbleMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$BubbleMetadata;

    iput-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 3011
    :cond_1d9
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 3013
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    .line 3014
    return-void
.end method

.method private greylist-max-o reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V
    .registers 5

    .line 8232
    if-eqz p1, :cond_23

    .line 8233
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 8234
    if-eqz p3, :cond_c

    .line 8235
    const v0, 0x10502c9

    goto :goto_f

    .line 8236
    :cond_c
    const v0, 0x10502c8

    .line 8234
    :goto_f
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 8237
    if-eqz p3, :cond_19

    .line 8238
    const p3, 0x10502c7

    goto :goto_1c

    .line 8239
    :cond_19
    const p3, 0x10502c6

    .line 8237
    :goto_1c
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 8240
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->reduceImageSizes(II)V

    .line 8242
    :cond_23
    return-void
.end method

.method private static greylist-max-o removeTextSizeSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 13

    .line 3608
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_67

    .line 3609
    check-cast p0, Landroid/text/Spanned;

    .line 3610
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 3611
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-interface {p0}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3612
    array-length v3, v0

    :goto_1b
    if-ge v2, v3, :cond_66

    aget-object v4, v0, v2

    .line 3613
    nop

    .line 3614
    instance-of v5, v4, Landroid/text/style/CharacterStyle;

    if-eqz v5, :cond_2c

    .line 3615
    move-object v5, v4

    check-cast v5, Landroid/text/style/CharacterStyle;

    invoke-virtual {v5}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v5

    goto :goto_2d

    .line 3614
    :cond_2c
    move-object v5, v4

    .line 3617
    :goto_2d
    instance-of v6, v5, Landroid/text/style/TextAppearanceSpan;

    if-eqz v6, :cond_4a

    .line 3618
    check-cast v5, Landroid/text/style/TextAppearanceSpan;

    .line 3619
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    .line 3620
    invoke-virtual {v5}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v7

    .line 3621
    invoke-virtual {v5}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v8

    .line 3623
    invoke-virtual {v5}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 3624
    invoke-virtual {v5}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    const/4 v9, -0x1

    invoke-direct/range {v6 .. v11}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 3625
    goto :goto_54

    :cond_4a
    instance-of v6, v5, Landroid/text/style/RelativeSizeSpan;

    if-nez v6, :cond_63

    instance-of v5, v5, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v5, :cond_53

    .line 3627
    goto :goto_63

    .line 3629
    :cond_53
    move-object v6, v4

    .line 3631
    :goto_54
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 3632
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 3631
    invoke-virtual {v1, v6, v5, v7, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3612
    :cond_63
    :goto_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3634
    :cond_66
    return-object v1

    .line 3636
    :cond_67
    return-object p0
.end method

.method public static greylist-max-o safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    .line 3537
    if-nez p0, :cond_3

    return-object p0

    .line 3538
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_10

    .line 3539
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 3541
    :cond_10
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_40

    .line 3542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instance is a custom Parcelable and not allowed in Notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3547
    :cond_40
    invoke-static {p0}, Landroid/app/Notification;->removeTextSizeSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist safeCharSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 1

    .line 3527
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 3528
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/Notification;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist safeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 3515
    if-nez p0, :cond_3

    return-object p0

    .line 3516
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_10

    .line 3517
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3519
    :cond_10
    return-object p0
.end method

.method private static blacklist stripNonStyleSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 3562
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/app/Notification;->stripNonStyleSpans(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist stripNonStyleSpans(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 14

    .line 3568
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 3570
    :cond_4
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_5b

    .line 3571
    check-cast p0, Landroid/text/Spanned;

    .line 3572
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 3573
    new-instance v1, Landroid/text/SpannableString;

    invoke-interface {p0}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3574
    array-length v3, v0

    :goto_1f
    if-ge v2, v3, :cond_5a

    aget-object v4, v0, v2

    .line 3576
    instance-of v5, v4, Landroid/text/style/StyleSpan;

    if-nez v5, :cond_47

    if-eqz p1, :cond_2d

    instance-of v5, v4, Landroid/text/style/StrikethroughSpan;

    if-nez v5, :cond_47

    :cond_2d
    instance-of v5, v4, Landroid/text/style/UnderlineSpan;

    if-eqz v5, :cond_32

    goto :goto_47

    .line 3580
    :cond_32
    instance-of v5, v4, Landroid/text/style/TextAppearanceSpan;

    if-eqz v5, :cond_57

    .line 3581
    move-object v5, v4

    check-cast v5, Landroid/text/style/TextAppearanceSpan;

    .line 3582
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    .line 3584
    invoke-virtual {v5}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    invoke-direct/range {v6 .. v11}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    goto :goto_48

    .line 3579
    :cond_47
    :goto_47
    move-object v6, v4

    .line 3591
    :goto_48
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 3592
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 3591
    invoke-virtual {v1, v6, v5, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3574
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 3594
    :cond_5a
    return-object v1

    .line 3596
    :cond_5b
    return-object p0
.end method

.method private static blacklist stripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 1

    .line 3551
    if-nez p0, :cond_3

    .line 3552
    return-object p0

    .line 3555
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o visibilityToString(I)Ljava/lang/String;
    .registers 3

    .line 4234
    packed-switch p0, :pswitch_data_2a

    .line 4242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4238
    :pswitch_21
    const-string p0, "PUBLIC"

    return-object p0

    .line 4236
    :pswitch_24
    const-string p0, "PRIVATE"

    return-object p0

    .line 4240
    :pswitch_27
    const-string p0, "SECRET"

    return-object p0

    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method private static blacklist visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/drawable/Icon;",
            ")V"
        }
    .end annotation

    .line 3157
    if-nez p1, :cond_3

    return-void

    .line 3158
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    .line 3159
    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    const/4 v1, 0x6

    if-ne v0, v1, :cond_14

    .line 3160
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3162
    :cond_14
    return-void
.end method

.method private greylist-max-o writeToParcelImpl(Landroid/os/Parcel;I)V
    .registers 8

    .line 3699
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3702
    const-class v1, Landroid/app/Notification;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->getClassCookie(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 3703
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3705
    iget-wide v1, p0, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3706
    iget-wide v1, p0, Landroid/app/Notification;->creationTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3707
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_2b

    iget v1, p0, Landroid/app/Notification;->icon:I

    if-eqz v1, :cond_2b

    .line 3709
    const-string v1, ""

    iget v2, p0, Landroid/app/Notification;->icon:I

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 3711
    :cond_2b
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    .line 3712
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3713
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3c

    .line 3715
    :cond_39
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3717
    :goto_3c
    iget v1, p0, Landroid/app/Notification;->number:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3718
    iget-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_4e

    .line 3719
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3720
    iget-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_51

    .line 3722
    :cond_4e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3724
    :goto_51
    iget-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_5e

    .line 3725
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3726
    iget-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_61

    .line 3728
    :cond_5e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3730
    :goto_61
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6e

    .line 3731
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3732
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v1, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_71

    .line 3734
    :cond_6e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3736
    :goto_71
    iget-object v1, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_7e

    .line 3737
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3738
    iget-object v1, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_81

    .line 3740
    :cond_7e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3742
    :goto_81
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_8e

    .line 3743
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3744
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_91

    .line 3746
    :cond_8e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3748
    :goto_91
    iget-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_a1

    iget-object v1, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_a1

    .line 3750
    iget-object v1, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 3752
    :cond_a1
    iget-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_ae

    .line 3753
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3754
    iget-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b1

    .line 3756
    :cond_ae
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3759
    :goto_b1
    iget v1, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3760
    iget v1, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3762
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v1, :cond_c8

    .line 3763
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3764
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v1, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_cb

    .line 3766
    :cond_c8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3768
    :goto_cb
    iget v1, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3770
    iget-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v1, :cond_dd

    .line 3771
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3772
    iget-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e0

    .line 3774
    :cond_dd
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3777
    :goto_e0
    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 3778
    iget v1, p0, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3779
    iget v1, p0, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3780
    iget v1, p0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3781
    iget v1, p0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3783
    iget-object v1, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_106

    .line 3784
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3785
    iget-object v1, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_109

    .line 3787
    :cond_106
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3790
    :goto_109
    iget v1, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3792
    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 3794
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 3796
    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 3798
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3800
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3802
    iget-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_134

    .line 3803
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3804
    iget-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_137

    .line 3806
    :cond_134
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3809
    :goto_137
    iget-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_144

    .line 3810
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3811
    iget-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_147

    .line 3813
    :cond_144
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3816
    :goto_147
    iget v1, p0, Landroid/app/Notification;->visibility:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3818
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_159

    .line 3819
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3820
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v1, p1, v2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_15c

    .line 3822
    :cond_159
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3825
    :goto_15c
    iget v1, p0, Landroid/app/Notification;->color:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3827
    iget-object v1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    if-eqz v1, :cond_16e

    .line 3828
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3829
    iget-object v1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_171

    .line 3831
    :cond_16e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3833
    :goto_171
    iget-wide v3, p0, Landroid/app/Notification;->mTimeout:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 3835
    iget-object v1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    if-eqz v1, :cond_183

    .line 3836
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3837
    iget-object v1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_186

    .line 3839
    :cond_183
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3842
    :goto_186
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    if-eqz v1, :cond_193

    .line 3843
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3844
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v1, p1, v2}, Landroid/content/LocusId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_196

    .line 3846
    :cond_193
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3849
    :goto_196
    iget v1, p0, Landroid/app/Notification;->mBadgeIcon:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3851
    iget-object v1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1a8

    .line 3852
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3853
    iget-object v1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    invoke-static {v1, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1ab

    .line 3855
    :cond_1a8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3858
    :goto_1ab
    iget p2, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3860
    iget-object p2, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    if-eqz p2, :cond_1bd

    .line 3861
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3862
    iget-object p2, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    invoke-virtual {p2, p1, v2}, Landroid/app/Notification$BubbleMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c0

    .line 3864
    :cond_1bd
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3867
    :goto_1c0
    iget-boolean p2, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3869
    iget p2, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3872
    return-void
.end method


# virtual methods
.method public whitelist clone()Landroid/app/Notification;
    .registers 3

    .line 3018
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 3019
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 3020
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o cloneInto(Landroid/app/Notification;Z)V
    .registers 7

    .line 3029
    iget-object v0, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    iput-object v0, p1, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    .line 3030
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    iput-wide v0, p1, Landroid/app/Notification;->when:J

    .line 3031
    iget-wide v0, p0, Landroid/app/Notification;->creationTime:J

    iput-wide v0, p1, Landroid/app/Notification;->creationTime:J

    .line 3032
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p1, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 3033
    iget v0, p0, Landroid/app/Notification;->number:I

    iput v0, p1, Landroid/app/Notification;->number:I

    .line 3036
    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3037
    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 3038
    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 3040
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2c

    .line 3041
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3043
    :cond_2c
    if-eqz p2, :cond_3a

    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3a

    .line 3044
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 3046
    :cond_3a
    if-eqz p2, :cond_48

    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_48

    .line 3047
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3049
    :cond_48
    if-eqz p2, :cond_52

    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_52

    .line 3050
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p1, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 3052
    :cond_52
    iget v0, p0, Landroid/app/Notification;->iconLevel:I

    iput v0, p1, Landroid/app/Notification;->iconLevel:I

    .line 3053
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3054
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    iput v0, p1, Landroid/app/Notification;->audioStreamType:I

    .line 3055
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_6f

    .line 3056
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    iget-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, v1}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 3059
    :cond_6f
    iget-object v0, p0, Landroid/app/Notification;->vibrate:[J

    .line 3060
    const/4 v1, 0x0

    if-eqz v0, :cond_7c

    .line 3061
    array-length v2, v0

    .line 3062
    new-array v3, v2, [J

    iput-object v3, p1, Landroid/app/Notification;->vibrate:[J

    .line 3063
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3066
    :cond_7c
    iget v0, p0, Landroid/app/Notification;->ledARGB:I

    iput v0, p1, Landroid/app/Notification;->ledARGB:I

    .line 3067
    iget v0, p0, Landroid/app/Notification;->ledOnMS:I

    iput v0, p1, Landroid/app/Notification;->ledOnMS:I

    .line 3068
    iget v0, p0, Landroid/app/Notification;->ledOffMS:I

    iput v0, p1, Landroid/app/Notification;->ledOffMS:I

    .line 3069
    iget v0, p0, Landroid/app/Notification;->defaults:I

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 3071
    iget v0, p0, Landroid/app/Notification;->flags:I

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 3073
    iget v0, p0, Landroid/app/Notification;->priority:I

    iput v0, p1, Landroid/app/Notification;->priority:I

    .line 3075
    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 3077
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    iput-object v0, p1, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    .line 3079
    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    iput-object v0, p1, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    .line 3081
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_cf

    .line 3083
    :try_start_a4
    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3085
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I
    :try_end_b2
    .catch Landroid/os/BadParcelableException; {:try_start_a4 .. :try_end_b2} :catch_b3

    .line 3089
    goto :goto_cf

    .line 3086
    :catch_b3
    move-exception v0

    .line 3087
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not unparcel extras from notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Notification"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3088
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3092
    :cond_cf
    :goto_cf
    iget-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 3093
    new-instance v0, Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p1, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 3096
    :cond_e0
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_106

    .line 3097
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v0, v0

    new-array v0, v0, [Landroid/app/Notification$Action;

    iput-object v0, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 3098
    nop

    :goto_ec
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v0, v0

    if-ge v1, v0, :cond_106

    .line 3099
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v0, v0, v1

    if-eqz v0, :cond_103

    .line 3100
    iget-object v0, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object v2, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3098
    :cond_103
    add-int/lit8 v1, v1, 0x1

    goto :goto_ec

    .line 3105
    :cond_106
    if-eqz p2, :cond_114

    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_114

    .line 3106
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3109
    :cond_114
    if-eqz p2, :cond_122

    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_122

    .line 3110
    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3113
    :cond_122
    iget v0, p0, Landroid/app/Notification;->visibility:I

    iput v0, p1, Landroid/app/Notification;->visibility:I

    .line 3115
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_138

    .line 3116
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 3117
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v1, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v0, v1, p2}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 3120
    :cond_138
    iget v0, p0, Landroid/app/Notification;->color:I

    iput v0, p1, Landroid/app/Notification;->color:I

    .line 3122
    iget-object v0, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    iput-object v0, p1, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    .line 3123
    iget-wide v0, p0, Landroid/app/Notification;->mTimeout:J

    iput-wide v0, p1, Landroid/app/Notification;->mTimeout:J

    .line 3124
    iget-object v0, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    iput-object v0, p1, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    .line 3125
    iget-object v0, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    iput-object v0, p1, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    .line 3126
    iget v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    iput v0, p1, Landroid/app/Notification;->mBadgeIcon:I

    .line 3127
    iget-object v0, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    .line 3128
    iget v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    iput v0, p1, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 3129
    iget v0, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    iput v0, p1, Landroid/app/Notification;->mFgsDeferBehavior:I

    .line 3130
    iget-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    iput-object v0, p1, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 3131
    iget-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    iput-boolean v0, p1, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 3133
    if-nez p2, :cond_169

    .line 3134
    invoke-virtual {p1}, Landroid/app/Notification;->lightenPayload()V

    .line 3136
    :cond_169
    return-void
.end method

.method public blacklist containsCustomViews()Z
    .registers 2

    .line 3373
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x1

    :goto_26
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 3640
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 4132
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 4133
    const-wide v0, 0x10900000001L

    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4134
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    const-wide v2, 0x10800000002L

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4135
    const-wide v2, 0x10500000003L

    iget v0, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4136
    const-wide v2, 0x10500000004L

    iget v0, p0, Landroid/app/Notification;->color:I

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4137
    const-wide v2, 0x10900000005L

    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4138
    const-wide v2, 0x10900000006L

    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4139
    const-wide v2, 0x10900000007L

    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4140
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_61

    .line 4141
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v0, v0

    const-wide v2, 0x10500000008L

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4143
    :cond_61
    iget v0, p0, Landroid/app/Notification;->visibility:I

    const/4 v2, -0x1

    if-lt v0, v2, :cond_74

    iget v0, p0, Landroid/app/Notification;->visibility:I

    if-gt v0, v1, :cond_74

    .line 4144
    const-wide v0, 0x10e00000009L

    iget v2, p0, Landroid/app/Notification;->visibility:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4146
    :cond_74
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_82

    .line 4147
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    const-wide v1, 0x10b0000000aL

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/Notification;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4149
    :cond_82
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4150
    return-void
.end method

.method public whitelist findRemoteInputActionPair(Z)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair<",
            "Landroid/app/RemoteInput;",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 4645
    invoke-virtual {p0}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4646
    return-object v1

    .line 4648
    :cond_8
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-nez v0, :cond_d

    .line 4649
    return-object v1

    .line 4651
    :cond_d
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_3f

    aget-object v5, v0, v4

    .line 4652
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-nez v6, :cond_1d

    .line 4653
    goto :goto_3c

    .line 4655
    :cond_1d
    nop

    .line 4656
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    array-length v7, v6

    move-object v9, v1

    move v8, v3

    :goto_25
    if-ge v8, v7, :cond_35

    aget-object v10, v6, v8

    .line 4657
    invoke-virtual {v10}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v11

    if-nez v11, :cond_31

    if-nez p1, :cond_32

    .line 4658
    :cond_31
    move-object v9, v10

    .line 4656
    :cond_32
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 4661
    :cond_35
    if-eqz v9, :cond_3c

    .line 4662
    invoke-static {v9, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 4651
    :cond_3c
    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 4665
    :cond_3f
    return-object v1
.end method

.method public blacklist fixSilentGroup()V
    .registers 3

    .line 4688
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationSilentFlag()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4689
    const-string/jumbo v0, "silent"

    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4690
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    .line 4691
    iget v0, p0, Landroid/app/Notification;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 4694
    :cond_1b
    return-void
.end method

.method public whitelist getAllowSystemGeneratedContextualActions()Z
    .registers 2

    .line 4566
    iget-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    return v0
.end method

.method public blacklist getAllowlistToken()Landroid/os/IBinder;
    .registers 2

    .line 4111
    iget-object v0, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getBadgeIconType()I
    .registers 2

    .line 4496
    iget v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    return v0
.end method

.method public whitelist getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;
    .registers 2

    .line 4550
    iget-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-object v0
.end method

.method public greylist getChannel()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4459
    iget-object v0, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getChannelId()Ljava/lang/String;
    .registers 2

    .line 4466
    iget-object v0, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContextualActions()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 4673
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_25

    .line 4674
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4675
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_24

    aget-object v4, v1, v3

    .line 4676
    invoke-virtual {v4}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 4677
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4675
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 4680
    :cond_24
    return-object v0

    .line 4673
    :cond_25
    :goto_25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGroup()Ljava/lang/String;
    .registers 2

    .line 1200
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGroupAlertBehavior()I
    .registers 2

    .line 4532
    iget v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    return v0
.end method

.method public whitelist getLargeIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 4596
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getLocusId()Landroid/content/LocusId;
    .registers 2

    .line 4517
    iget-object v0, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method public greylist-max-o getNotificationStyle()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    .line 8333
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8335
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 8336
    invoke-static {v0}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 8338
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProgressState()I
    .registers 6

    .line 4442
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4443
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.progressMax"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 4444
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.progressIndeterminate"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 4445
    if-nez v1, :cond_1f

    if-eqz v3, :cond_1e

    goto :goto_1f

    .line 4452
    :cond_1e
    return v2

    .line 4446
    :cond_1f
    :goto_1f
    if-ne v0, v1, :cond_25

    if-nez v3, :cond_25

    .line 4447
    const/4 v0, 0x2

    return v0

    .line 4449
    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getSettingsText()Ljava/lang/CharSequence;
    .registers 2

    .line 4524
    iget-object v0, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getShortCriticalText()Ljava/lang/String;
    .registers 3

    .line 4405
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.shortCriticalText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getShortcutId()Ljava/lang/String;
    .registers 2

    .line 4506
    iget-object v0, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSmallIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 4578
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getSortKey()Ljava/lang/String;
    .registers 2

    .line 1218
    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSummarizedContent()Ljava/lang/CharSequence;
    .registers 3

    .line 8466
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.app.extra.app_summarization"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public greylist getTimeout()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4472
    iget-wide v0, p0, Landroid/app/Notification;->mTimeout:J

    return-wide v0
.end method

.method public whitelist getTimeoutAfter()J
    .registers 3

    .line 4480
    iget-wide v0, p0, Landroid/app/Notification;->mTimeout:J

    return-wide v0
.end method

.method public blacklist getWhen()J
    .registers 5

    .line 8477
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 8478
    iget-wide v0, p0, Landroid/app/Notification;->creationTime:J

    return-wide v0

    .line 8480
    :cond_b
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    return-wide v0
.end method

.method public blacklist hasAppProvidedWhen()Z
    .registers 5

    .line 4603
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    iget-wide v0, p0, Landroid/app/Notification;->when:J

    iget-wide v2, p0, Landroid/app/Notification;->creationTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public greylist-max-o hasColorizedPermission()Z
    .registers 2

    .line 8377
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o hasCompletedProgress()Z
    .registers 5

    .line 4421
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4422
    const-string v3, "android.progressMax"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_2f

    .line 4426
    :cond_16
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 4427
    return v2

    .line 4429
    :cond_1f
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2e

    const/4 v2, 0x1

    :cond_2e
    return v2

    .line 4423
    :cond_2f
    :goto_2f
    return v2
.end method

.method public whitelist hasImage()Z
    .registers 5

    .line 8503
    const-class v0, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {p0, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4f

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_4f

    .line 8504
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v2, Landroid/os/Bundle;

    .line 8505
    const-string v3, "android.messages"

    invoke-static {v0, v3, v2}, Landroid/app/Notification;->getParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    .line 8506
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 8507
    nop

    .line 8508
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    .line 8507
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    .line 8509
    invoke-virtual {v2}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 8510
    invoke-virtual {v2}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 8511
    invoke-virtual {v2}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 8512
    return v1

    .line 8514
    :cond_4d
    goto :goto_28

    .line 8516
    :cond_4e
    goto :goto_61

    :cond_4f
    invoke-direct {p0}, Landroid/app/Notification;->hasLargeIcon()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 8517
    return v1

    .line 8518
    :cond_56
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.backgroundImageUri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 8519
    return v1

    .line 8521
    :cond_61
    :goto_61
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasPromotableCharacteristics()Z
    .registers 4

    .line 3429
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->uiRichOngoing()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    .line 3430
    invoke-virtual {p0}, Landroid/app/Notification;->isRequestPromotedOngoing()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3431
    invoke-virtual {p0}, Landroid/app/Notification;->isOngoingEvent()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3432
    invoke-virtual {p0}, Landroid/app/Notification;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3433
    invoke-virtual {p0}, Landroid/app/Notification;->hasPromotableStyle()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3434
    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-nez v0, :cond_33

    .line 3435
    invoke-virtual {p0}, Landroid/app/Notification;->containsCustomViews()Z

    move-result v0

    if-nez v0, :cond_33

    .line 3436
    invoke-direct {p0}, Landroid/app/Notification;->isColorizedRequested()Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_34

    :cond_33
    move v1, v2

    .line 3430
    :goto_34
    return v1

    .line 3439
    :cond_35
    invoke-virtual {p0}, Landroid/app/Notification;->isOngoingEvent()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual {p0}, Landroid/app/Notification;->containsCustomViews()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual {p0}, Landroid/app/Notification;->hasTitle()Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_64

    .line 3443
    :cond_4e
    invoke-direct {p0}, Landroid/app/Notification;->isOngoingCallStyle()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3444
    return v1

    .line 3446
    :cond_55
    invoke-direct {p0}, Landroid/app/Notification;->isColorizedRequested()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Landroid/app/Notification;->hasPromotableStyle()Z

    move-result v0

    if-eqz v0, :cond_62

    goto :goto_63

    :cond_62
    move v1, v2

    :goto_63
    return v1

    .line 3440
    :cond_64
    :goto_64
    return v2
.end method

.method public blacklist hasPromotableStyle()Z
    .registers 3

    .line 3411
    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v0

    .line 3413
    if-eqz v0, :cond_29

    const-class v1, Landroid/app/Notification$BigTextStyle;

    .line 3414
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-class v1, Landroid/app/Notification$CallStyle;

    .line 3415
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-class v1, Landroid/app/Notification$MetricStyle;

    .line 3416
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-class v1, Landroid/app/Notification$ProgressStyle;

    .line 3417
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    .line 3413
    :goto_2a
    return v0
.end method

.method public whitelist hasSummarizedContent()Z
    .registers 3

    .line 8457
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.app.extra.contains_summarization"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist hasTitle()Z
    .registers 6

    .line 3386
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3387
    return v1

    .line 3390
    :cond_6
    const-class v0, Landroid/app/Notification$CallStyle;

    invoke-virtual {p0, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    .line 3391
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.callPerson"

    const-class v4, Landroid/app/Person;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    .line 3392
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    move v1, v2

    :cond_28
    return v1

    .line 3395
    :cond_29
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 3396
    return v2

    .line 3399
    :cond_38
    const-class v0, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {p0, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 3400
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title.big"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    .line 3402
    :cond_4e
    return v1
.end method

.method public blacklist isBubbleNotification()Z
    .registers 2

    .line 8442
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isColorized()Z
    .registers 2

    .line 8358
    invoke-direct {p0}, Landroid/app/Notification;->isColorizedRequested()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 8359
    invoke-virtual {p0}, Landroid/app/Notification;->hasColorizedPermission()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 8358
    :goto_1b
    return v0
.end method

.method public blacklist isCustomNotification()Ljava/lang/Boolean;
    .registers 2

    .line 8428
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_12

    .line 8431
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 8433
    :cond_12
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isFgsOrUij()Z
    .registers 2

    .line 8267
    invoke-virtual {p0}, Landroid/app/Notification;->isForegroundService()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/app/Notification;->isUserInitiatedJob()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist isForegroundDisplayForceDeferred()Z
    .registers 3

    .line 8325
    const/4 v0, 0x2

    iget v1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o isForegroundService()Z
    .registers 2

    .line 8249
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist isGroupChild()Z
    .registers 2

    .line 4619
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist isGroupSummary()Z
    .registers 2

    .line 4611
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist-max-o isMediaNotification()Z
    .registers 7

    .line 8410
    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v0

    .line 8411
    const-class v1, Landroid/app/Notification$MediaStyle;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_19

    const-class v1, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    .line 8412
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    move v0, v2

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v3

    .line 8414
    :goto_1a
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.mediaSession"

    const-class v5, Landroid/media/session/MediaSession$Token;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_28

    move v1, v3

    goto :goto_29

    :cond_28
    move v1, v2

    .line 8417
    :goto_29
    if-eqz v0, :cond_2e

    if-eqz v1, :cond_2e

    move v2, v3

    :cond_2e
    return v2
.end method

.method public blacklist isOngoingEvent()Z
    .registers 2

    .line 4412
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isPromotedOngoing()Z
    .registers 3

    .line 8390
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->uiRichOngoing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/app/Notification;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist isRequestPromotedOngoing()Z
    .registers 4

    .line 8401
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.requestPromotedOngoing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist isSilent()Z
    .registers 5

    .line 4701
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationSilentFlag()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 4702
    iget v0, p0, Landroid/app/Notification;->flags:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    return v1

    .line 4704
    :cond_12
    const-string/jumbo v0, "silent"

    invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1
.end method

.method public blacklist isStyle(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;)Z"
        }
    .end annotation

    .line 8346
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8347
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist isUserInitiatedJob()Z
    .registers 3

    .line 8258
    iget v0, p0, Landroid/app/Notification;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final greylist-max-o lightenPayload()V
    .registers 7

    .line 3484
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 3485
    iput-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3486
    iput-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3487
    iput-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3488
    iput-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 3489
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_57

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 3490
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3491
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 3492
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3493
    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v1, :cond_57

    .line 3494
    aget-object v3, v0, v2

    .line 3495
    const-string v4, "android.tv.EXTENSIONS"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 3496
    goto :goto_54

    .line 3498
    :cond_37
    iget-object v4, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 3499
    if-eqz v4, :cond_54

    instance-of v5, v4, Landroid/os/Parcelable;

    if-nez v5, :cond_4f

    instance-of v5, v4, [Landroid/os/Parcelable;

    if-nez v5, :cond_4f

    instance-of v5, v4, Landroid/util/SparseArray;

    if-nez v5, :cond_4f

    instance-of v4, v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_54

    .line 3504
    :cond_4f
    iget-object v4, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3493
    :cond_54
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 3508
    :cond_57
    return-void
.end method

.method public blacklist loadHeaderAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 3291
    const-string v0, "android.substName"

    const-string v1, "Notification#loadHeaderAppName"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3294
    nop

    .line 3296
    :try_start_8
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 3297
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 3299
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_54

    .line 3319
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3299
    return-object p1

    .line 3296
    :cond_25
    move-object v0, v2

    .line 3303
    :cond_26
    if-nez p1, :cond_2d

    .line 3304
    nop

    .line 3319
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3304
    return-object v2

    .line 3306
    :cond_2d
    :try_start_2d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 3307
    invoke-direct {p0, p1}, Landroid/app/Notification;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3308
    if-eqz v1, :cond_41

    .line 3309
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 3310
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3314
    :cond_41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_54

    if-eqz p1, :cond_4c

    .line 3315
    nop

    .line 3319
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3315
    return-object v2

    .line 3317
    :cond_4c
    :try_start_4c
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_54

    .line 3319
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3317
    return-object p1

    .line 3319
    :catchall_54
    move-exception p1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3320
    throw p1
.end method

.method public blacklist overrideAllowlistToken(Landroid/os/IBinder;)V
    .registers 3

    .line 4103
    iput-object p1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    .line 4104
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_b

    .line 4105
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->overrideAllowlistToken(Landroid/os/IBinder;)V

    .line 4107
    :cond_b
    return-void
.end method

.method greylist-max-o reduceImageSizes(Landroid/content/Context;)V
    .registers 7

    .line 8196
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.reduced.images"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8197
    return-void

    .line 8199
    :cond_b
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    .line 8201
    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    const/4 v3, 0x1

    if-eqz v2, :cond_3c

    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 8203
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    if-eq v2, v3, :cond_25

    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 8204
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3c

    .line 8205
    :cond_25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 8206
    nop

    .line 8207
    if-eqz v0, :cond_30

    const v4, 0x1050304

    goto :goto_33

    .line 8208
    :cond_30
    const v4, 0x1050303

    .line 8206
    :goto_33
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 8209
    iget-object v4, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, v2, v2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 8212
    :cond_3c
    iget-object v2, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_44

    iget-object v2, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6a

    .line 8213
    :cond_44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 8214
    if-eqz v0, :cond_4e

    .line 8215
    const v4, 0x1050301

    goto :goto_51

    .line 8216
    :cond_4e
    const v4, 0x1050300

    .line 8214
    :goto_51
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 8217
    iget-object v4, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_5e

    .line 8218
    iget-object v4, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, v2, v2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 8220
    :cond_5e
    iget-object v4, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6a

    .line 8221
    iget-object v4, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v4, v2, v2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 8224
    :cond_6a
    iget-object v2, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2, p1, v0}, Landroid/app/Notification;->reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V

    .line 8225
    iget-object v2, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2, p1, v0}, Landroid/app/Notification;->reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V

    .line 8226
    iget-object v2, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2, p1, v0}, Landroid/app/Notification;->reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V

    .line 8227
    iget-object p1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8228
    return-void
.end method

.method public blacklist setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)V
    .registers 2

    .line 4558
    iput-object p1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 4559
    return-void
.end method

.method public blacklist setGroupAlertBehavior(I)V
    .registers 2

    .line 4541
    iput p1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 4542
    return-void
.end method

.method public greylist setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4069
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_17

    .line 4070
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "Notification"

    const-string/jumbo v2, "setLatestEventInfo() is deprecated and you should feel deprecated."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4074
    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_29

    .line 4075
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showWhen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4079
    :cond_29
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 4082
    if-eqz p2, :cond_33

    .line 4083
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 4085
    :cond_33
    if-eqz p3, :cond_38

    .line 4086
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 4088
    :cond_38
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 4090
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 4091
    return-void
.end method

.method public greylist setSmallIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2

    .line 4587
    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 4588
    return-void
.end method

.method public blacklist setTimeoutAfter(J)V
    .registers 3

    .line 4487
    iput-wide p1, p0, Landroid/app/Notification;->mTimeout:J

    .line 4488
    return-void
.end method

.method public blacklist shouldShowForegroundImmediately()Z
    .registers 5

    .line 8298
    iget v0, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 8299
    return v1

    .line 8303
    :cond_6
    iget v0, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_d

    .line 8304
    return v3

    .line 8309
    :cond_d
    invoke-virtual {p0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 8310
    const-string v2, "call"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 8311
    const-string/jumbo v2, "navigation"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v0, v0

    if-lez v0, :cond_32

    goto :goto_33

    .line 8317
    :cond_32
    return v3

    .line 8313
    :cond_33
    :goto_33
    return v1
.end method

.method public greylist-max-o showsChronometer()Z
    .registers 3

    .line 8496
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showChronometer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o showsTime()Z
    .registers 3

    .line 8488
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showWhen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o suppressAlertingDueToGrouping()Z
    .registers 4

    .line 4626
    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 4627
    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    .line 4628
    return v1

    .line 4629
    :cond_f
    invoke-virtual {p0}, Landroid/app/Notification;->isGroupChild()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4630
    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    if-ne v0, v1, :cond_1c

    .line 4631
    return v1

    .line 4633
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 4154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4155
    const-string v1, "Notification(channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4156
    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4157
    const-string v1, " shortcut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4158
    invoke-virtual {p0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4159
    const-string v1, " contentView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4160
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v2, "null"

    if-eqz v1, :cond_45

    .line 4161
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4162
    const-string v1, "/0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4163
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 4165
    :cond_45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4167
    :goto_48
    const-string v1, " vibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4168
    iget v1, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x2

    const-string v3, "default"

    if-eqz v1, :cond_59

    .line 4169
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    .line 4170
    :cond_59
    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    if-eqz v1, :cond_89

    .line 4171
    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 4172
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4173
    const/4 v4, 0x0

    :goto_68
    if-ge v4, v1, :cond_79

    .line 4174
    iget-object v5, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v5, v5, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4175
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4173
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 4177
    :cond_79
    const/4 v4, -0x1

    if-eq v1, v4, :cond_83

    .line 4178
    iget-object v4, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v4, v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4180
    :cond_83
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4181
    goto :goto_8c

    .line 4182
    :cond_89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4184
    :goto_8c
    const-string v1, " sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4185
    iget v1, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9b

    .line 4186
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ac

    .line 4187
    :cond_9b
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v1, :cond_a9

    .line 4188
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ac

    .line 4190
    :cond_a9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4192
    :goto_ac
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_b5

    .line 4193
    const-string v1, " tick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4195
    :cond_b5
    const-string v1, " defaults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4196
    iget v1, p0, Landroid/app/Notification;->defaults:I

    invoke-static {v1}, Landroid/app/Notification;->defaultsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4197
    const-string v1, " flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4198
    iget v1, p0, Landroid/app/Notification;->flags:I

    invoke-static {v1}, Landroid/app/Notification;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4199
    iget v1, p0, Landroid/app/Notification;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " color=0x%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4200
    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz v1, :cond_f2

    .line 4201
    const-string v1, " category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4202
    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4204
    :cond_f2
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v1, :cond_100

    .line 4205
    const-string v1, " groupKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4206
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4208
    :cond_100
    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    if-eqz v1, :cond_10e

    .line 4209
    const-string v1, " sortKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4210
    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4212
    :cond_10e
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_11d

    .line 4213
    const-string v1, " actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4214
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4216
    :cond_11d
    const-string v1, " vis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4217
    iget v1, p0, Landroid/app/Notification;->visibility:I

    invoke-static {v1}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4218
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_13d

    .line 4219
    const-string v1, " publicVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4220
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4222
    :cond_13d
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    if-eqz v1, :cond_14b

    .line 4223
    const-string v1, " locusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4224
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4226
    :cond_14b
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o visitUris(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 3174
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_9

    .line 3175
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->visitUris(Ljava/util/function/Consumer;)V

    .line 3178
    :cond_9
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3180
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 3181
    :cond_17
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 3182
    :cond_20
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 3183
    :cond_29
    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 3185
    :cond_32
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3186
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3188
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 3189
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v2, v0

    move v3, v1

    :goto_45
    if-ge v3, v2, :cond_4f

    aget-object v4, v0, v3

    .line 3190
    invoke-static {v4, p1}, Landroid/app/Notification$Action;->-$$Nest$mvisitUris(Landroid/app/Notification$Action;Ljava/util/function/Consumer;)V

    .line 3189
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 3194
    :cond_4f
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1b8

    .line 3195
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.largeIcon.big"

    const-class v3, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3196
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.pictureIcon"

    const-class v3, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3202
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.audioContents"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3203
    instance-of v2, v0, Landroid/net/Uri;

    if-eqz v2, :cond_83

    .line 3204
    check-cast v0, Landroid/net/Uri;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_90

    .line 3205
    :cond_83
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_90

    .line 3206
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3209
    :cond_90
    :goto_90
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.backgroundImageUri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 3210
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3213
    :cond_a7
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.people.list"

    const-class v3, Landroid/app/Person;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3214
    if-eqz v0, :cond_cd

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_cd

    .line 3215
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_bd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Person;

    .line 3216
    invoke-virtual {v2, p1}, Landroid/app/Person;->visitUris(Ljava/util/function/Consumer;)V

    .line 3217
    goto :goto_bd

    .line 3220
    :cond_cd
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.remoteInputHistoryItems"

    const-class v3, Landroid/app/RemoteInputHistoryItem;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/RemoteInputHistoryItem;

    .line 3223
    if-eqz v0, :cond_f1

    .line 3224
    nop

    :goto_dc
    array-length v2, v0

    if-ge v1, v2, :cond_f1

    .line 3225
    aget-object v2, v0, v1

    .line 3226
    invoke-virtual {v2}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_ee

    .line 3227
    invoke-virtual {v2}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3224
    :cond_ee
    add-int/lit8 v1, v1, 0x1

    goto :goto_dc

    .line 3234
    :cond_f1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.messagingUser"

    const-class v2, Landroid/app/Person;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    .line 3235
    if-eqz v0, :cond_102

    .line 3236
    invoke-virtual {v0, p1}, Landroid/app/Person;->visitUris(Ljava/util/function/Consumer;)V

    .line 3239
    :cond_102
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v1, Landroid/os/Bundle;

    .line 3240
    const-string v2, "android.messages"

    invoke-static {v0, v2, v1}, Landroid/app/Notification;->getParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    .line 3241
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12d

    .line 3242
    nop

    .line 3243
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    .line 3242
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 3244
    invoke-virtual {v1, p1}, Landroid/app/Notification$MessagingStyle$Message;->visitUris(Ljava/util/function/Consumer;)V

    .line 3245
    goto :goto_11d

    .line 3248
    :cond_12d
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v1, Landroid/os/Bundle;

    .line 3249
    const-string v2, "android.messages.historic"

    invoke-static {v0, v2, v1}, Landroid/app/Notification;->getParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 3250
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_156

    .line 3251
    nop

    .line 3252
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    .line 3251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_146
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_156

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 3253
    invoke-virtual {v1, p1}, Landroid/app/Notification$MessagingStyle$Message;->visitUris(Ljava/util/function/Consumer;)V

    .line 3254
    goto :goto_146

    .line 3257
    :cond_156
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.conversationIcon"

    const-class v2, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3260
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.callPerson"

    const-class v2, Landroid/app/Person;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    .line 3261
    if-eqz v0, :cond_176

    .line 3262
    invoke-virtual {v0, p1}, Landroid/app/Person;->visitUris(Ljava/util/function/Consumer;)V

    .line 3264
    :cond_176
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.verificationIcon"

    const-class v2, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3267
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->apiRichOngoing()Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 3268
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progressTrackerIcon"

    const-class v2, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3270
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progressStartIcon"

    const-class v2, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3272
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progressEndIcon"

    const-class v2, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3277
    :cond_1b8
    iget-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    if-eqz v0, :cond_1c5

    .line 3278
    iget-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 3281
    :cond_1c5
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1db

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 3282
    new-instance v0, Landroid/app/Notification$WearableExtender;

    invoke-direct {v0, p0}, Landroid/app/Notification$WearableExtender;-><init>(Landroid/app/Notification;)V

    .line 3283
    invoke-static {v0, p1}, Landroid/app/Notification$WearableExtender;->-$$Nest$mvisitUris(Landroid/app/Notification$WearableExtender;Ljava/util/function/Consumer;)V

    .line 3285
    :cond_1db
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 3654
    nop

    .line 3655
    iget-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-nez v0, :cond_e

    .line 3656
    new-instance v0, Landroid/app/Notification$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/app/Notification$$ExternalSyntheticLambda1;-><init>(Landroid/app/Notification;Landroid/os/Parcel;)V

    .line 3666
    invoke-static {v0}, Landroid/app/PendingIntent;->addOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    goto :goto_f

    .line 3655
    :cond_e
    const/4 v0, 0x0

    .line 3669
    :goto_f
    nop

    .line 3670
    :try_start_10
    const-class v1, Landroid/app/Notification;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->hasClassCookie(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 3674
    const-class v1, Landroid/app/Notification;

    iget-object v2, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->setClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_49

    .line 3675
    const/4 v1, 0x1

    goto :goto_22

    .line 3670
    :cond_21
    const/4 v1, 0x0

    .line 3680
    :goto_22
    :try_start_22
    invoke-direct {p0, p1, p2}, Landroid/app/Notification;->writeToParcelImpl(Landroid/os/Parcel;I)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_3e

    .line 3682
    if-eqz v1, :cond_2e

    .line 3683
    :try_start_27
    const-class p2, Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->removeClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3687
    :cond_2e
    monitor-enter p0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_49

    .line 3689
    :try_start_2f
    iget-object p2, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 3690
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3b

    .line 3692
    if-eqz v0, :cond_3a

    .line 3693
    invoke-static {v0}, Landroid/app/PendingIntent;->removeOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    .line 3696
    :cond_3a
    return-void

    .line 3690
    :catchall_3b
    move-exception p1

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw p1

    .line 3682
    :catchall_3e
    move-exception p2

    if-eqz v1, :cond_48

    .line 3683
    const-class v1, Landroid/app/Notification;

    iget-object v2, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->removeClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3685
    :cond_48
    throw p2
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_49

    .line 3692
    :catchall_49
    move-exception p1

    if-eqz v0, :cond_4f

    .line 3693
    invoke-static {v0}, Landroid/app/PendingIntent;->removeOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    .line 3695
    :cond_4f
    throw p1
.end method
