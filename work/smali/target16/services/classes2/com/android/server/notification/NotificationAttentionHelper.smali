.class public final Lcom/android/server/notification/NotificationAttentionHelper;
.super Ljava/lang/Object;
.source "NotificationAttentionHelper.java"


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_INTERRUPTIVENESS:Z

.field static final NOTIFICATION_AVALANCHE_TRIGGER_EXTRAS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field static final NOTIFICATION_AVALANCHE_TRIGGER_INTENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAttentionLight:Lcom/android/server/lights/LogicalLight;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mCallNotificationToken:Landroid/os/Binder;

.field public mCallState:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentWorkProfileId:I

.field public mDisableNotificationEffects:Z

.field public final mEnableNotificationAccessibilityEvents:Z

.field public final mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

.field public mHasLight:Z

.field public final mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

.field public final mInCallNotificationUri:Landroid/net/Uri;

.field public final mInCallNotificationVolume:F

.field public mInCallStateOffHook:Z

.field public final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIsAutomotive:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLights:Ljava/util/ArrayList;

.field public final mLock:Ljava/lang/Object;

.field public final mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

.field public mNotificationCooldownApplyToAll:Z

.field public mNotificationCooldownEnabled:Z

.field public mNotificationCooldownForWorkEnabled:Z

.field public mNotificationCooldownVibrateUnlocked:Z

.field public mNotificationEffectsEnabledForAutomotive:Z

.field public mNotificationLight:Lcom/android/server/lights/LogicalLight;

.field public mNotificationPulseEnabled:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mScreenOn:Z

.field public final mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

.field public mSoundNotificationKey:Ljava/lang/String;

.field public final mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

.field public mSystemReady:Z

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mUm:Landroid/os/UserManager;

.field public final mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field public final mUseAttentionLight:Z

.field public mUserPresent:Z

.field public mVibrateNotificationKey:Ljava/lang/String;

.field public mVibrationStatsWriter:Lcom/android/internal/util/VibrationStatsWriter;

.field public mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

.field public final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public static synthetic $r8$lambda$5Nu20XY6rJFYF_iVI639OcBJ3oY(Lcom/android/server/notification/NotificationAttentionHelper;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationAttentionHelper;->lambda$playVibration$2(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Cy9buvrT-4h45p_F-2dQOykc8I(Lcom/android/server/notification/NotificationAttentionHelper;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->lambda$createPolitenessStrategy$0(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/media/AudioManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/os/Binder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallState(Lcom/android/server/notification/NotificationAttentionHelper;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentWorkProfileId(Lcom/android/server/notification/NotificationAttentionHelper;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInCallNotificationAudioAttributes(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/media/AudioAttributes;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInCallNotificationUri(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/net/Uri;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInCallNotificationVolume(Lcom/android/server/notification/NotificationAttentionHelper;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationVolume:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/notification/NotificationAttentionHelper;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationCooldownApplyToAll(Lcom/android/server/notification/NotificationAttentionHelper;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownApplyToAll:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationLight(Lcom/android/server/notification/NotificationAttentionHelper;)Lcom/android/server/lights/LogicalLight;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationPulseEnabled(Lcom/android/server/notification/NotificationAttentionHelper;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStrategy(Lcom/android/server/notification/NotificationAttentionHelper;)Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCallNotificationToken(Lcom/android/server/notification/NotificationAttentionHelper;Landroid/os/Binder;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCallState(Lcom/android/server/notification/NotificationAttentionHelper;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInCallStateOffHook(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNotificationCooldownApplyToAll(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownApplyToAll:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNotificationCooldownEnabled(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNotificationCooldownForWorkEnabled(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownForWorkEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNotificationPulseEnabled(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOn(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUserPresent(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUserPresent:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mloadUserSettings(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->loadUserSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcallStateToString(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->callStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 100
    const-string v0, "NotifAttentionHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    .line 101
    const-string v0, "debug.notification.interruptiveness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG_INTERRUPTIVENESS:Z

    .line 112
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const-string v2, "android.intent.action.USER_SWITCHED"

    const-string v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-static {v0, v1, v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_INTENTS:Ljava/util/Set;

    .line 120
    new-instance v1, Landroid/util/Pair;

    .line 121
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v4, "state"

    invoke-direct {v1, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    const-string v5, "android.intent.extra.QUIET_MODE"

    .line 122
    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    invoke-static {v0, v1, v3, v4}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_EXTRAS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/lights/LightsManager;Landroid/view/accessibility/AccessibilityManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Lcom/android/server/notification/NotificationUsageStats;Lcom/android/server/notification/NotificationManagerPrivate;Lcom/android/server/notification/ZenModeHelper;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;Lcom/android/internal/util/VibrationStatsWriter;)V
    .registers 15

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    const/4 v1, 0x1

    .line 192
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    .line 194
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUserPresent:Z

    const/4 v2, 0x0

    .line 200
    iput-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    const/16 v2, -0x2710

    .line 209
    iput v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    .line 1696
    new-instance v2, Lcom/android/server/notification/NotificationAttentionHelper$3;

    invoke-direct {v2, p0}, Lcom/android/server/notification/NotificationAttentionHelper$3;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    iput-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 217
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 218
    iput-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    .line 219
    iput-object p5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 220
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 221
    iput-object p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 222
    iput-object p6, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUm:Landroid/os/UserManager;

    .line 223
    iput-object p8, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

    .line 224
    iput-object p7, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 225
    iput-object p9, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 226
    iput-object p10, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 228
    new-instance p2, Lcom/android/server/notification/VibratorHelper;

    invoke-direct {p2, p1}, Lcom/android/server/notification/VibratorHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 229
    iput-object p11, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrationStatsWriter:Lcom/android/internal/util/VibrationStatsWriter;

    const/4 p2, 0x4

    .line 231
    invoke-virtual {p3, p2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    const/4 p4, 0x5

    .line 232
    invoke-virtual {p3, p4}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x11102b0

    .line 235
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUseAttentionLight:Z

    const p4, 0x11101e2

    .line 237
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mHasLight:Z

    const p4, 0x111019c

    .line 239
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mEnableNotificationAccessibilityEvents:Z

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p4, "device_provisioned"

    invoke-static {p1, p4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_80

    .line 248
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    .line 251
    :cond_80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "file://"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p4, 0x10402b1

    .line 252
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationUri:Landroid/net/Uri;

    .line 253
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 254
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 p2, 0x2

    .line 255
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    const p1, 0x1050101

    .line 257
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationVolume:F

    .line 260
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->createPolitenessStrategy()Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    .line 265
    new-instance p1, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    .line 266
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->loadUserSettings()V

    return-void
.end method

.method public static callStateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1092
    :cond_1a
    const-string p0, "CALL_STATE_OFFHOOK"

    return-object p0

    .line 1091
    :cond_1d
    const-string p0, "CALL_STATE_RINGING"

    return-object p0

    .line 1090
    :cond_20
    const-string p0, "CALL_STATE_IDLE"

    return-object p0
.end method


# virtual methods
.method public buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)I
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 431
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    iget-boolean v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationEffectsEnabledForAutomotive:Z

    if-nez v3, :cond_10

    return v4

    .line 439
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 441
    sget-boolean v3, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    const-string v6, "NotifAttentionHelper"

    if-eqz v3, :cond_2e

    .line 442
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buzzBeepBlinkLocked "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_2e
    iget-boolean v7, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    const/4 v8, 0x3

    const/4 v11, 0x1

    if-eqz v7, :cond_3e

    .line 448
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v7

    if-le v7, v8, :cond_3c

    :goto_3a
    move v7, v11

    goto :goto_45

    :cond_3c
    move v7, v4

    goto :goto_45

    .line 449
    :cond_3e
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v7

    if-lt v7, v8, :cond_3c

    goto :goto_3a

    :goto_45
    if-eqz v5, :cond_51

    .line 451
    iget-object v9, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_51

    move v9, v11

    goto :goto_52

    :cond_51
    move v9, v4

    :goto_52
    if-eqz v5, :cond_5e

    .line 452
    iget-object v10, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5e

    move v10, v11

    goto :goto_5f

    :cond_5e
    move v10, v4

    .line 459
    :goto_5f
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v12

    if-eqz v12, :cond_6f

    .line 460
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v12

    and-int/lit8 v12, v12, 0x20

    if-eqz v12, :cond_6f

    move v12, v11

    goto :goto_70

    :cond_6f
    move v12, v4

    .line 461
    :goto_70
    iget-boolean v13, v1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-nez v13, :cond_87

    .line 462
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v13

    if-le v13, v11, :cond_87

    if-nez v12, :cond_87

    .line 464
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    move-result v12

    if-eqz v12, :cond_87

    .line 465
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V

    move v12, v11

    goto :goto_88

    :cond_87
    move v12, v4

    :goto_88
    if-eqz v7, :cond_17e

    .line 469
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    move-result v14

    if-eqz v14, :cond_17e

    .line 470
    iget-boolean v14, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    if-eqz v14, :cond_17e

    iget-object v14, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v14, :cond_17e

    .line 471
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v14

    if-eqz v14, :cond_a8

    .line 472
    sget-object v15, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v15, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a8

    move v15, v11

    goto :goto_a9

    :cond_a8
    move v15, v4

    .line 473
    :goto_a9
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getVibration()Landroid/os/VibrationEffect;

    move-result-object v16

    if-nez v16, :cond_df

    if-eqz v15, :cond_df

    .line 475
    iget-object v4, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 477
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    if-ne v4, v11, :cond_df

    iget-object v4, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 480
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v17

    const/16 v18, 0x4

    invoke-static/range {v17 .. v17}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v13

    .line 479
    invoke-virtual {v4, v13}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_dc

    .line 481
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_d5

    move v4, v11

    goto :goto_d6

    :cond_d5
    const/4 v4, 0x0

    .line 482
    :goto_d6
    iget-object v13, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {v13, v4}, Lcom/android/server/notification/VibratorHelper;->createFallbackVibration(Z)Landroid/os/VibrationEffect;

    move-result-object v16

    :cond_dc
    :goto_dc
    move-object/from16 v4, v16

    goto :goto_e2

    :cond_df
    const/16 v18, 0x4

    goto :goto_dc

    :goto_e2
    if-eqz v4, :cond_e6

    move v13, v11

    goto :goto_e7

    :cond_e6
    const/4 v13, 0x0

    :goto_e7
    if-eqz v13, :cond_f3

    .line 486
    iget-boolean v11, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownVibrateUnlocked:Z

    if-eqz v11, :cond_f3

    iget-boolean v11, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mUserPresent:Z

    if-eqz v11, :cond_f3

    const/4 v11, 0x1

    goto :goto_f4

    :cond_f3
    const/4 v11, 0x0

    :goto_f4
    if-nez v15, :cond_fb

    if-eqz v13, :cond_f9

    goto :goto_fb

    :cond_f9
    const/4 v8, 0x0

    goto :goto_fc

    :cond_fb
    :goto_fb
    const/4 v8, 0x1

    .line 489
    :goto_fc
    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/notification/NotificationAttentionHelper;->shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;Z)I

    move-result v8

    if-nez v8, :cond_16e

    if-nez v12, :cond_107

    .line 492
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V

    :cond_107
    if-eqz v3, :cond_10e

    .line 495
    const-string v3, "Interrupting!"

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_10e
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-eqz v15, :cond_12e

    if-nez v11, :cond_12e

    if-eqz v3, :cond_11a

    const/4 v12, 0x1

    goto :goto_12f

    .line 502
    :cond_11a
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v12

    if-eqz v12, :cond_125

    .line 503
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->playInCallNotification()V

    const/4 v12, 0x1

    goto :goto_129

    .line 506
    :cond_125
    invoke-virtual {v0, v1, v14}, Lcom/android/server/notification/NotificationAttentionHelper;->playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z

    move-result v12

    :goto_129
    if-eqz v12, :cond_12f

    .line 509
    iput-object v5, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    goto :goto_12f

    :cond_12e
    const/4 v12, 0x0

    .line 514
    :cond_12f
    :goto_12f
    iget-object v14, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 515
    invoke-virtual {v14}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v14

    if-nez v14, :cond_139

    const/4 v14, 0x1

    goto :goto_13a

    :cond_139
    const/4 v14, 0x0

    .line 517
    :goto_13a
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v19

    if-nez v19, :cond_158

    if-eqz v13, :cond_158

    if-nez v14, :cond_158

    if-eqz v3, :cond_148

    const/4 v3, 0x1

    goto :goto_159

    :cond_148
    if-eqz v15, :cond_14e

    if-nez v11, :cond_14e

    const/4 v3, 0x1

    goto :goto_14f

    :cond_14e
    const/4 v3, 0x0

    .line 521
    :goto_14f
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/server/notification/NotificationAttentionHelper;->playVibration(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)Z

    move-result v3

    if-eqz v3, :cond_159

    .line 523
    iput-object v5, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    goto :goto_159

    :cond_158
    const/4 v3, 0x0

    .line 530
    :cond_159
    :goto_159
    iget-object v4, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v11, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 532
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move/from16 v19, v3

    const/4 v3, 0x3

    .line 530
    invoke-virtual {v4, v11, v3, v14}, Landroid/view/accessibility/AccessibilityManager;->startFlashNotificationEvent(Landroid/content/Context;ILjava/lang/String;)Z

    move/from16 v3, v19

    goto :goto_183

    .line 534
    :cond_16e
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_17b

    const/4 v3, 0x0

    :goto_177
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto :goto_183

    :cond_17b
    const/4 v3, 0x0

    const/4 v12, 0x0

    goto :goto_183

    :cond_17e
    const/16 v18, 0x4

    const/4 v3, 0x0

    const/4 v8, 0x0

    goto :goto_177

    :goto_183
    if-eqz v9, :cond_18a

    if-nez v15, :cond_18a

    .line 543
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearSoundLocked()V

    :cond_18a
    if-eqz v10, :cond_191

    if-nez v13, :cond_191

    .line 546
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearVibrateLocked()V

    .line 551
    :cond_191
    iget-object v4, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 552
    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/notification/NotificationAttentionHelper;->canShowLightsLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;Z)Z

    move-result v2

    if-eqz v2, :cond_1b3

    .line 553
    iget-object v2, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 555
    iget-boolean v2, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mUseAttentionLight:Z

    if-eqz v2, :cond_1b0

    iget-object v2, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    if-eqz v2, :cond_1b0

    .line 556
    invoke-virtual {v2}, Lcom/android/server/lights/LogicalLight;->pulse()V

    :cond_1b0
    move v10, v8

    const/4 v8, 0x1

    goto :goto_1ba

    :cond_1b3
    if-eqz v4, :cond_1b8

    .line 560
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    :cond_1b8
    move v10, v8

    const/4 v8, 0x0

    :goto_1ba
    if-nez v3, :cond_1c0

    if-nez v12, :cond_1c0

    if-eqz v8, :cond_24a

    .line 564
    :cond_1c0
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v2

    const-string v4, "INTERRUPTIVENESS: "

    if-eqz v2, :cond_1fa

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_1fa

    .line 565
    sget-boolean v2, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v2, :cond_24a

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not interruptive: summary"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24a

    .line 569
    :cond_1fa
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v2

    if-eqz v2, :cond_220

    .line 570
    sget-boolean v2, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v2, :cond_24a

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not interruptive: bubble"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 571
    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24a

    :cond_220
    const/4 v2, 0x1

    .line 575
    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 576
    sget-boolean v2, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v2, :cond_243

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is interruptive: alerted"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 577
    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_243
    if-nez v3, :cond_247

    if-eqz v12, :cond_24a

    .line 581
    :cond_247
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->resetRankingTime()V

    :cond_24a
    :goto_24a
    const/4 v2, 0x2

    if-eqz v12, :cond_24f

    move v4, v2

    goto :goto_250

    :cond_24f
    const/4 v4, 0x0

    :goto_250
    or-int/2addr v4, v3

    if-eqz v8, :cond_256

    move/from16 v13, v18

    goto :goto_257

    :cond_256
    const/4 v13, 0x0

    :goto_257
    or-int/2addr v4, v13

    .line 587
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getPoliteBit(Lcom/android/server/notification/NotificationRecord;)I

    move-result v6

    or-int/2addr v4, v6

    or-int/2addr v4, v10

    if-lez v4, :cond_280

    .line 589
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v6

    const/16 v7, 0xc7

    .line 590
    invoke-virtual {v6, v7}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v6

    const/4 v11, 0x1

    .line 591
    invoke-virtual {v6, v11}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 592
    invoke-virtual {v6, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 589
    invoke-static {v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 594
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result v9

    move v6, v3

    move v7, v12

    .line 593
    invoke-static/range {v5 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;IIIII)V

    goto :goto_283

    :cond_280
    move v6, v3

    move v7, v12

    const/4 v11, 0x1

    :goto_283
    if-nez v6, :cond_287

    if-eqz v7, :cond_290

    .line 600
    :cond_287
    iget-object v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v1, v8, v9}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;J)V

    :cond_290
    if-nez v6, :cond_294

    if-eqz v7, :cond_29b

    .line 604
    :cond_294
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    if-eq v0, v2, :cond_29b

    goto :goto_29c

    :cond_29b
    const/4 v11, 0x0

    .line 603
    :goto_29c
    invoke-virtual {v1, v11}, Lcom/android/server/notification/NotificationRecord;->setAudiblyAlerted(Z)V

    return v4
.end method

.method public canShowLightsLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;Z)Z
    .registers 6

    .line 993
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 997
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mHasLight:Z

    if-nez v0, :cond_b

    return v1

    .line 1001
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    if-nez v0, :cond_10

    return v1

    .line 1005
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v0

    if-nez v0, :cond_17

    return v1

    :cond_17
    if-nez p3, :cond_1a

    return v1

    .line 1013
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result p3

    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_23

    return v1

    .line 1017
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p3

    .line 1018
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v0, :cond_32

    iget p3, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_32

    return v1

    .line 1022
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result p3

    if-eqz p3, :cond_47

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result p3

    if-eqz p3, :cond_47

    return v1

    .line 1026
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result p3

    if-eqz p3, :cond_4e

    return v1

    .line 1030
    :cond_4e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    move-result p0

    if-nez p0, :cond_55

    return v1

    :cond_55
    const/4 p0, 0x1

    return p0
.end method

.method public clearAttentionEffects()V
    .registers 1

    .line 957
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearSoundLocked()V

    .line 958
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearVibrateLocked()V

    .line 959
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearLightsLocked()V

    return-void
.end method

.method public clearEffectsLocked(Ljava/lang/String;)V
    .registers 3

    .line 944
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 945
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearSoundLocked()V

    .line 947
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 948
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearVibrateLocked()V

    .line 950
    :cond_16
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 952
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    :cond_21
    return-void
.end method

.method public final clearLightsLocked()V
    .registers 2

    .line 939
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 940
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    return-void
.end method

.method public clearSoundLocked()V
    .registers 6

    const/4 v0, 0x0

    .line 913
    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    .line 914
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 916
    :try_start_7
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 918
    invoke-interface {p0}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_15
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception p0

    goto :goto_35

    :catch_15
    move-exception p0

    goto :goto_1b

    .line 923
    :cond_17
    :goto_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 921
    :goto_1b
    :try_start_1b
    const-string v2, "NotifAttentionHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed clearSoundLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_13

    .line 923
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 924
    throw p0
.end method

.method public clearVibrateLocked()V
    .registers 3

    const/4 v0, 0x0

    .line 928
    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 929
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 931
    :try_start_7
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/VibratorHelper;->cancelVibration()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 933
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 934
    throw p0
.end method

.method public final createPolitenessStrategy()Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
    .registers 12

    .line 271
    new-instance v0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyPerApp;

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v7, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_COOLDOWN_T1:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 272
    invoke-interface {v1, v7}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v8, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_COOLDOWN_T2:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 273
    invoke-interface {v2, v8}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v9, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_VOLUME1:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 274
    invoke-interface {v3, v9}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v10, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_VOLUME2:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 275
    invoke-interface {v4, v10}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v6, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_COOLDOWN_COUNTER_RESET:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 276
    invoke-interface {v5, v6}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v5

    new-instance v6, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyPerApp;-><init>(IIIIILcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;)V

    .line 289
    new-instance v1, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 290
    invoke-interface {v2, v7}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 291
    invoke-interface {v3, v8}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 292
    invoke-interface {v4, v9}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 293
    invoke-interface {v5, v10}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v5

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v6, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_AVALANCHE_TIMEOUT:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 294
    invoke-interface {p0, v6}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result p0

    iget-object v7, v0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mExemptionProvider:Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;

    move-object v6, v0

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;-><init>(IIIIILcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;)V

    return-object v0
.end method

.method public final disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;I)Ljava/lang/String;
    .registers 5

    .line 1038
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    if-eqz v0, :cond_7

    .line 1039
    const-string p0, "booleanState"

    return-object p0

    :cond_7
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_e

    .line 1043
    const-string p0, "listenerHints"

    return-object p0

    :cond_e
    if-eqz p1, :cond_39

    .line 1045
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    if-eqz v0, :cond_39

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x6

    if-eqz v0, :cond_28

    .line 1047
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-eq v0, v1, :cond_28

    .line 1049
    const-string p0, "listenerNoti"

    return-object p0

    :cond_28
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_39

    .line 1053
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p2

    if-ne p2, v1, :cond_39

    .line 1055
    const-string p0, "listenerCall"

    return-object p0

    .line 1059
    :cond_39
    iget p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    if-eqz p2, :cond_48

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    if-nez p0, :cond_48

    .line 1060
    const-string p0, "callState"

    return-object p0

    :cond_48
    const/4 p0, 0x0

    return-object p0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 5

    .line 1169
    const-string p3, "\n  Notification attention state:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1171
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSoundNotificationKey="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1173
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mVibrateNotificationKey="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1175
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mDisableNotificationEffects="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1177
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mCallState="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->callStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1179
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSystemReady="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1181
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mNotificationPulseEnabled="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1183
    iget-object p3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_d4

    .line 1185
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1186
    const-string p2, "  Lights List:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_b0
    if-ge p2, p3, :cond_cf

    add-int/lit8 v0, p3, -0x1

    if-ne p2, v0, :cond_bc

    .line 1189
    const-string v0, "  > "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_c1

    .line 1191
    :cond_bc
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1193
    :goto_c1
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_b0

    .line 1195
    :cond_cf
    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d4
    return-void
.end method

.method public final getManagedProfileId(I)I
    .registers 4

    .line 1116
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    .line 1117
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1118
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1119
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq v1, p1, :cond_a

    .line 1120
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0

    :cond_2f
    const/16 p0, -0x2710

    return p0
.end method

.method public final getPoliteBit(Lcom/android/server/notification/NotificationRecord;)I
    .registers 2

    .line 612
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_f

    const/4 p1, 0x2

    if-eq p0, p1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/16 p0, 0x10

    return p0

    :cond_f
    const/16 p0, 0x8

    return p0
.end method

.method public final getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I
    .registers 3

    .line 623
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 626
    :cond_8
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result p0

    return p0
.end method

.method public getPolitenessStrategy()Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
    .registers 1

    .line 319
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    return-object p0
.end method

.method public final getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F
    .registers 3

    .line 797
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 801
    :cond_9
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F

    move-result p0

    return p0
.end method

.method public final getVibrationIntensity(Lcom/android/server/notification/NotificationRecord;)F
    .registers 3

    .line 805
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 809
    :cond_9
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->-$$Nest$mgetVibrationIntensity(Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;Lcom/android/server/notification/NotificationRecord;)F

    move-result p0

    return p0
.end method

.method public getVibratorHelper()Lcom/android/server/notification/VibratorHelper;
    .registers 1

    .line 1861
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    return-object p0
.end method

.method public isCurrentlyInsistent()Z
    .registers 3

    .line 636
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/server/notification/NotificationManagerPrivate;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 638
    invoke-interface {v0, v1}, Lcom/android/server/notification/NotificationManagerPrivate;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 637
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method public final isInCall()Z
    .registers 3

    .line 1077
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 1080
    :cond_6
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    return v1
.end method

.method public isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4

    .line 630
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 631
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 632
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isCurrentlyInsistent()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    if-eqz p1, :cond_19

    .line 723
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_19

    .line 724
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public final isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z
    .registers 5

    .line 1100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1102
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_23

    .line 1104
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1106
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p1

    if-eq p1, p0, :cond_21

    invoke-static {p2}, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->-$$Nest$fgetisCurrentProfile(Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0

    :catchall_23
    move-exception p0

    .line 1104
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1105
    throw p0
.end method

.method public final isNotificationForWorkProfile(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 1111
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    if-ne p1, p0, :cond_12

    const/16 p1, -0x2710

    if-eq p0, p1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4

    .line 778
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 783
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForWorkProfile(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownForWorkEnabled:Z

    if-nez v0, :cond_11

    return v1

    .line 789
    :cond_11
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownApplyToAll:Z

    if-nez p0, :cond_1c

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result p0

    if-nez p0, :cond_1c

    return v1

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$createPolitenessStrategy$0(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    .line 278
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 279
    const-string v1, "alarm"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_35

    const-string v1, "car_emergency"

    .line 280
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "car_warning"

    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_35

    .line 284
    :cond_20
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 286
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 284
    const-string v0, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_33

    return v2

    :cond_33
    const/4 p0, 0x0

    return p0

    :cond_35
    :goto_35
    return v2
.end method

.method public final synthetic lambda$playVibration$2(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .registers 7

    .line 831
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 833
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 831
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    .line 834
    sget-boolean v1, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    const-string v2, "NotifAttentionHelper"

    if-eqz v1, :cond_37

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delaying vibration for notification "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 835
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    int-to-long v0, v0

    .line 839
    :try_start_38
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3b} :catch_3b

    .line 843
    :catch_3b
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/notification/NotificationManagerPrivate;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 844
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    .line 845
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/notification/NotificationAttentionHelper;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V

    goto :goto_92

    .line 847
    :cond_58
    sget-boolean p0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz p0, :cond_92

    .line 848
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No vibration for notification "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": a new notification is vibrating, or effects were cleared while waiting"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 848
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 854
    :cond_7a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No vibration for canceled notification "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 854
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    :goto_92
    return-void
.end method

.method public final loadUserSettings()V
    .registers 7

    .line 380
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_light_pulse"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 382
    :goto_15
    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 383
    :try_start_18
    iget-boolean v5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    if-eq v5, v0, :cond_25

    .line 384
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    .line 385
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    goto :goto_25

    :catchall_22
    move-exception p0

    goto/16 :goto_93

    .line 387
    :cond_25
    :goto_25
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_22

    .line 391
    :try_start_26
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationAttentionHelper;->getManagedProfileId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    .line 393
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 394
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "notification_cooldown_enabled"

    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_41

    move v0, v1

    goto :goto_42

    :cond_41
    move v0, v2

    :goto_42
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownEnabled:Z

    .line 397
    iget v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    const/16 v4, -0x2710

    if-eq v0, v4, :cond_61

    .line 398
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 399
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "notification_cooldown_enabled"

    iget v5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    .line 398
    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_5d

    move v0, v1

    goto :goto_5e

    :cond_5d
    move v0, v2

    :goto_5e
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownForWorkEnabled:Z

    goto :goto_63

    .line 404
    :cond_61
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownForWorkEnabled:Z

    .line 406
    :goto_63
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 407
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "notification_cooldown_all"

    .line 406
    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_73

    move v2, v1

    :cond_73
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownApplyToAll:Z

    .line 410
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setApplyCooldownPerPackage(Z)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_7a} :catch_7b

    return-void

    :catch_7b
    move-exception p0

    .line 419
    const-string v0, "NotifAttentionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read Settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 387
    :goto_93
    :try_start_93
    monitor-exit v4
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_22

    throw p0
.end method

.method public onSystemReady()V
    .registers 4

    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    .line 325
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.type.automotive"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    .line 326
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationEffectsEnabledForAutomotive:Z

    .line 329
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 330
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 332
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->registerBroadcastListeners()V

    return-void
.end method

.method public onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3

    .line 1162
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1163
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    :cond_b
    return-void
.end method

.method public playInCallNotification()V
    .registers 5

    .line 883
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 884
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    const/4 v1, 0x1

    .line 886
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    .line 885
    const-string v3, "in_call_notification_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_24

    .line 887
    new-instance v0, Lcom/android/server/notification/NotificationAttentionHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationAttentionHelper$2;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    .line 908
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_24
    return-void
.end method

.method public final playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z
    .registers 15

    .line 735
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->shouldNotificationSoundPlay(Landroid/media/AudioAttributes;)Z

    move-result v0

    const/4 v1, 0x0

    .line 745
    const-string v2, "NotifAttentionHelper"

    if-nez v0, :cond_2d

    .line 746
    sget-boolean p0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz p0, :cond_2c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not playing sound "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " due to focus/volume"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return v1

    .line 750
    :cond_2d
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_3a

    move v7, v3

    goto :goto_3b

    :cond_3a
    move v7, v1

    .line 751
    :goto_3b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 753
    :try_start_3f
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v4

    if-eqz v4, :cond_8a

    .line 755
    sget-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz v0, :cond_72

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playing sound "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with attributes "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :catchall_6c
    move-exception v0

    move-object p0, v0

    goto :goto_a4

    :catch_6f
    move-exception v0

    move-object p0, v0

    goto :goto_8e

    .line 759
    :cond_72
    :goto_72
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 760
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F

    move-result v9

    move-object v5, p2

    .line 759
    invoke-interface/range {v4 .. v9}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;F)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_86} :catch_6f
    .catchall {:try_start_3f .. :try_end_86} :catchall_6c

    .line 766
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_8a
    :goto_8a
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a3

    .line 764
    :goto_8e
    :try_start_8e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed playSound: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_8e .. :try_end_a2} :catchall_6c

    goto :goto_8a

    :goto_a3
    return v1

    .line 766
    :goto_a4
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 767
    throw p0
.end method

.method public final playVibration(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)Z
    .registers 8

    .line 816
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 820
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    if-eqz v2, :cond_1d

    .line 821
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v2, 0x0

    .line 822
    iput-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 823
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/VibratorHelper;->cancelVibration()V

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_48

    .line 825
    :cond_1d
    :goto_1d
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getVibrationIntensity(Lcom/android/server/notification/NotificationRecord;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 826
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_2f

    .line 827
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {v3, p2, v2}, Lcom/android/server/notification/VibratorHelper;->scale(Landroid/os/VibrationEffect;F)Landroid/os/VibrationEffect;

    move-result-object p2

    :cond_2f
    if-eqz p3, :cond_3f

    .line 829
    new-instance p3, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    invoke-direct {p3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 857
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    goto :goto_43

    :cond_3f
    const/4 p3, 0x0

    .line 859
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationAttentionHelper;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_1b

    .line 863
    :goto_43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :goto_48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 864
    throw p0
.end method

.method public final registerBroadcastListeners()V
    .registers 10

    .line 336
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 337
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/android/server/notification/NotificationAttentionHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationAttentionHelper$1;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 347
    :cond_16
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 348
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_INTENTS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 358
    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_49

    .line 361
    :cond_59
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 363
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->-$$Nest$sfgetNOTIFICATION_LIGHT_PULSE_URI()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 367
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->-$$Nest$sfgetNOTIFICATION_COOLDOWN_ENABLED_URI()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 370
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->-$$Nest$sfgetNOTIFICATION_COOLDOWN_ALL_URI()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 373
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->-$$Nest$sfgetNOTIFICATION_COOLDOWN_VIBRATE_UNLOCKED_URI()Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6

    .line 1127
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mEnableNotificationAccessibilityEvents:Z

    if-nez v0, :cond_d

    goto :goto_67

    .line 1131
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1132
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    .line 1134
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 1135
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1136
    const-class v1, Landroid/app/Notification;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1137
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v1

    const/16 v3, -0x3e8

    if-ne v1, v3, :cond_35

    .line 1139
    iget v1, v0, Landroid/app/Notification;->visibility:I

    .line 1140
    :cond_35
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    if-ltz p1, :cond_50

    .line 1141
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x1

    if-eq v1, p1, :cond_50

    .line 1145
    iget-object p1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    goto :goto_53

    .line 1147
    :cond_50
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 1149
    :goto_53
    iget-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 1151
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    :cond_62
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_67
    :goto_67
    return-void
.end method

.method public setAccessibilityManager(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2

    .line 1856
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public setAudioManager(Landroid/media/AudioManager;)V
    .registers 2

    .line 1889
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public setInCallStateOffHook(Z)V
    .registers 2

    .line 1894
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    return-void
.end method

.method public setIsAutomotive(Z)V
    .registers 2

    .line 1836
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    return-void
.end method

.method public setKeyguardManager(Landroid/app/KeyguardManager;)V
    .registers 2

    .line 1851
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method public setLights(Lcom/android/server/lights/LogicalLight;)V
    .registers 2

    .line 1883
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    .line 1884
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    return-void
.end method

.method public setNotificationEffectsEnabledForAutomotive(Z)V
    .registers 2

    .line 1841
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationEffectsEnabledForAutomotive:Z

    return-void
.end method

.method public setScreenOn(Z)V
    .registers 3

    .line 1871
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1872
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    .line 1873
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setSystemReady(Z)V
    .registers 2

    .line 1846
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    return-void
.end method

.method public setUserPresent(Z)V
    .registers 2

    .line 1878
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUserPresent:Z

    return-void
.end method

.method public setVibratorHelper(Lcom/android/server/notification/VibratorHelper;)V
    .registers 2

    .line 1866
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    return-void
.end method

.method public shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;Z)I
    .registers 5

    if-nez p3, :cond_5

    const/16 p0, 0x20

    return p0

    .line 648
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p3

    .line 649
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v0, :cond_16

    iget v0, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_16

    const/16 p0, 0x40

    return p0

    .line 654
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->shouldPostSilently()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 p0, 0x80

    return p0

    .line 659
    :cond_1f
    invoke-static {p2}, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->-$$Nest$fgetlistenerHints(Lcom/android/server/notification/NotificationAttentionHelper$Signals;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationAttentionHelper;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2f

    .line 661
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    const/16 p0, 0x100

    return p0

    .line 666
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result p2

    if-eqz p2, :cond_38

    const/16 p0, 0x200

    return p0

    .line 671
    :cond_38
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 672
    invoke-virtual {p3}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result p2

    if-eqz p2, :cond_4b

    const/16 p0, 0x400

    return p0

    .line 679
    :cond_4b
    invoke-virtual {p3}, Landroid/app/Notification;->isSilent()Z

    move-result p2

    if-eqz p2, :cond_54

    const/16 p0, 0x800

    return p0

    .line 685
    :cond_54
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 686
    iget-object p3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p3, p2}, Lcom/android/server/notification/NotificationUsageStats;->isAlertRateLimited(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_81

    .line 687
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Muting recently noisy "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotifAttentionHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x1000

    return p0

    .line 692
    :cond_81
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isCurrentlyInsistent()Z

    move-result p2

    if-eqz p2, :cond_90

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p2

    if-nez p2, :cond_90

    const/16 p0, 0x2000

    return p0

    .line 697
    :cond_90
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_a9

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isFlagBubbleRemoved()Z

    move-result p2

    if-nez p2, :cond_a7

    .line 698
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result p2

    if-eqz p2, :cond_a9

    :cond_a7
    const/4 p2, 0x1

    goto :goto_aa

    :cond_a9
    move p2, p3

    .line 699
    :goto_aa
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v0, :cond_d1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v0

    if-nez v0, :cond_d1

    if-eqz p2, :cond_d1

    .line 700
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p2

    if-eqz p2, :cond_d1

    .line 701
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result p2

    if-eqz p2, :cond_d1

    const/16 p0, 0x4000

    return p0

    .line 706
    :cond_d1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p2

    if-eqz p2, :cond_ed

    .line 708
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p2

    if-nez p2, :cond_e2

    .line 709
    iget-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->onNotificationPosted(Lcom/android/server/notification/NotificationRecord;)V

    .line 713
    :cond_e2
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_ed

    const p0, 0x8000

    return p0

    :cond_ed
    return p3
.end method

.method public updateDisableNotificationEffectsLocked(I)V
    .registers 3

    const/high16 v0, 0x40000

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 1067
    :goto_8
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    if-eqz p1, :cond_f

    .line 1072
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearAttentionEffects()V

    :cond_f
    return-void
.end method

.method public updateLightsLocked()V
    .registers 5

    .line 963
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    if-nez v0, :cond_5

    goto :goto_65

    :cond_5
    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x1

    if-nez v0, :cond_43

    .line 969
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    .line 970
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 971
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

    invoke-interface {v1, v0}, Lcom/android/server/notification/NotificationManagerPrivate;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    if-nez v1, :cond_41

    .line 973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LED Notification does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotifAttentionHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_41
    move-object v0, v1

    goto :goto_6

    :cond_43
    if-eqz v0, :cond_66

    .line 979
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v2

    if-nez v2, :cond_66

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    if-eqz v2, :cond_50

    goto :goto_66

    .line 982
    :cond_50
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 983
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    if-eqz v2, :cond_65

    .line 985
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    iget v2, v0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    iget v3, v0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v0, v0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    :cond_65
    :goto_65
    return-void

    .line 980
    :cond_66
    :goto_66
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {p0}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    return-void
.end method

.method public final vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    .registers 6

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2f

    const-string p3, "(Delayed)"

    goto :goto_31

    :cond_2f
    const-string p3, ""

    :goto_31
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 873
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/notification/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V

    return-void
.end method
