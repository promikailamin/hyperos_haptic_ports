.class public Landroid/media/AudioServiceInjector;
.super Ljava/lang/Object;
.source "AudioServiceInjector.java"


# static fields
.field public static final blacklist ACTION_KEYCODE_POWER_UP:Ljava/lang/String; = "android.intent.action.KEYCODE_POWER_UP"

.field public static final blacklist ACTION_SMART_COVER:Ljava/lang/String; = "miui.intent.action.SMART_COVER"

.field public static final blacklist ACTION_VOLUME_BOOST:Ljava/lang/String; = "miui.intent.action.VOLUME_BOOST"

.field private static final blacklist ALL_RANDOM:Ljava/lang/String; = "AllFilesRandom"

.field private static final blacklist AUDIO_ACTION:Ljava/lang/String; = "miui.media.AUDIO_RECORD_STATE_CHANGED_ACTION"

.field private static final blacklist AUDIO_VISUAL_ENABLED:I = 0x1

.field public static final blacklist DEFAULT_VOL_STREAM_NO_PLAYBACK:I = 0x3

.field public static final blacklist EXTRA_BOOST_STATE:Ljava/lang/String; = "volume_boost_state"

.field private static final blacklist FOUR_TIME_ZONES:Ljava/lang/String; = "DayZones"

.field private static final blacklist IS_LITHIUM:Ljava/lang/String; = "lithium"

.field private static final blacklist IS_SCORPIO:Ljava/lang/String; = "scorpio"

.field private static final blacklist KEY_MIUI_UNMUTE_BY_SETTINGS:Ljava/lang/String; = "miui_unmute_by_settings"

.field private static final blacklist MASHUP_SOUND_PREFIX:Ljava/lang/String; = "mashup_sound"

.field private static blacklist MAX_SHOW_NOTIFICATION_TIMES:I = 0x0

.field private static final blacklist MIUI_NATURE_ANIMAL_SOUND_URI:[Ljava/lang/String;

.field private static final blacklist MIUI_NATURE_ANIMAL_SOUND_VALUE:[Ljava/lang/String;

.field private static final blacklist MIUI_NATURE_SOUND_COLUMN_MAX:I = 0x4

.field private static final blacklist MIUI_NATURE_SOUND_NUMBER:[[I

.field private static final blacklist MIUI_NATURE_SOUND_PLAY_STRATEGY:[Ljava/lang/String;

.field private static final blacklist MIUI_NATURE_SOUND_PREFIX:[Ljava/lang/String;

.field private static final blacklist MIUI_NATURE_SOUND_ROW_MAX:I = 0x3

.field private static final blacklist MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

.field private static final blacklist MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

.field private static final blacklist MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

.field private static final blacklist MUTE_TIME_INTERVAL_INDEX:I = 0x3

.field private static final blacklist NATURE_ANIMAL_SOUND_VALUE_PATTERN:Ljava/lang/String; = "([a-zA-z]+_[a-zA-z]+-?[a-zA-z]+:?)+"

.field private static blacklist NOTIFICATION_ID:I = 0x0

.field private static final blacklist ONE_TIME_ZONE:Ljava/lang/String; = "AllDay"

.field private static final blacklist RANDOM_PLAYBACK_BOUND:I = 0x1

.field private static final blacklist RANDOM_SOUND_DEFALTE_URI:Ljava/lang/String; = "file:///system/media/audio/ui/notice_audition.ogg"

.field private static final blacklist RANDOM_SOUND_NUM_INDEX:I = 0x0

.field private static blacklist RANDOM_SOUND_PREFIX:Ljava/lang/String; = null

.field private static final blacklist RECEIVER_PERMISSION_AUDIO:Ljava/lang/String; = "com.miui.permission.AUDIO_RECORD_STATE_CHANGED_ACTION"

.field private static final blacklist RECEIVER_PERMISSION_VOIP:Ljava/lang/String; = "com.miui.permission.AUDIO_VOIP_RECORD_STATE_CHANGED_ACTION"

.field private static blacklist SEQUENCE_SOUND_PREFIX:Ljava/lang/String; = null

.field private static final blacklist SEQ_SOUND_NUM_INDEX:I = 0x1

.field private static final blacklist SEQ_TIME_INTERVAL_INDEX:I = 0x2

.field private static final blacklist SOUND_SUFFIX:Ljava/lang/String; = ".ogg"

.field private static final blacklist SYSTEM_SOUND_PREFIX:Ljava/lang/String; = "file:///system/media/audio/ui/"

.field private static final blacklist TAG:Ljava/lang/String; = "AudioService"

.field private static final blacklist TIME_ZONES_RANDOM:Ljava/lang/String; = "TimeZonesRandom"

.field private static final blacklist TIME_ZONE_BOUND_CLOCK_EIGHT:I = 0x8

.field private static final blacklist TIME_ZONE_BOUND_CLOCK_FOURTEEN:I = 0xe

.field private static final blacklist TIME_ZONE_BOUND_CLOCK_NINETEEN:I = 0x13

.field private static final blacklist TIME_ZONE_BOUND_CLOCK_TWELVE:I = 0xc

.field private static final blacklist TIME_ZONE_BOUND_CLOCK_ZERO:I = 0x0

.field private static final blacklist TWO_TIME_ZONES:Ljava/lang/String; = "DayNight"

.field private static final blacklist VOIP_ACTION:Ljava/lang/String; = "miui.media.AUDIO_VOIP_RECORD_STATE_CHANGED_ACTION"

.field private static final blacklist availableDevice:I = 0x8c

.field private static final blacklist mContentResolverParameters:[Ljava/lang/String;

.field private static final blacklist mContentResolverTypes:[Ljava/lang/String;

.field private static blacklist mFirstUpdateMode:Z

.field private static blacklist mHasPlayedNormalNotification:Z

.field private static blacklist mInternationalLocation:Z

.field private static blacklist mLastIntentPowerKeyOrScreenOffTimeMs:J

.field private static blacklist mLastNotificationTimeMs:J

.field private static final blacklist mLockRandomStatusUpdate:Ljava/lang/Object;

.field private static final blacklist mMusicWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mNatureSoundString:[Ljava/lang/String;

.field private static blacklist mNotificationRandomSound:Z

.field public static blacklist mOriginalIndexWhenSetStreamVolume:I

.field private static blacklist mPowerKeyReceived:Z

.field private static blacklist mPreviousNatureSoundIndex:I

.field private static blacklist mRandomSound:[Z

.field private static blacklist mRandomSoundAtLeastOne:Z

.field private static blacklist mScreenOffReceived:Z

.field private static blacklist mSeqIndex:I

.field private static blacklist mShowNotificationTimes:I

.field private static blacklist mStartAudioVisualPending:Z

.field private static blacklist mSunriseAndSunsetUpdate:Z

.field private static blacklist mSunriseTimeHours:I

.field private static blacklist mSunriseTimeMins:I

.field private static blacklist mSunsetTimeHours:I

.field private static blacklist mSunsetTimeMins:I

.field private static blacklist mTimeAndSoundNumParameters:[I

.field private static blacklist mTimeZone:Ljava/lang/String;

.field private static blacklist mTimeZoneforUpdate:Ljava/lang/String;

.field private static blacklist mTypes:Ljava/util/HashMap;

.field private static blacklist sAppList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sSoundUrlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sVoipAppList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist startAudioVisualRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 57

    .line 64
    const-string v0, "file:///system/media/audio/ui/notification_beep_sound_"

    sput-object v0, Landroid/media/AudioServiceInjector;->RANDOM_SOUND_PREFIX:Ljava/lang/String;

    .line 66
    const-string v0, "file:///system/media/audio/ui/notification_beep_soundseq_"

    sput-object v0, Landroid/media/AudioServiceInjector;->SEQUENCE_SOUND_PREFIX:Ljava/lang/String;

    .line 75
    const-string v1, "notification_sound"

    const-string v2, "sms_received_sound"

    const-string v3, "sms_received_sound_slot_1"

    const-string v4, "sms_received_sound_slot_2"

    const-string v5, "calendar_alert"

    const-string v6, "notes_alert"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    .line 82
    const-string v0, "random_note_mode_random_sound_number"

    const-string v1, "random_note_mode_sequence_sound_number"

    const-string v2, "random_note_mode_sequence_time_interval_ms"

    const-string v3, "random_note_mode_mute_time_interval_ms"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    .line 87
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    .line 88
    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastIntentPowerKeyOrScreenOffTimeMs:J

    .line 89
    const/4 v0, 0x0

    sput v0, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 90
    sput v0, Landroid/media/AudioServiceInjector;->mShowNotificationTimes:I

    .line 91
    sput-boolean v0, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    .line 92
    const/4 v1, 0x1

    .line 1277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 92
    sput-boolean v1, Landroid/media/AudioServiceInjector;->mNotificationRandomSound:Z

    .line 94
    const/4 v3, 0x6

    new-array v4, v3, [Z

    fill-array-data v4, :array_1d4

    sput-object v4, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    .line 96
    const/4 v4, 0x4

    new-array v5, v4, [I

    fill-array-data v5, :array_1dc

    sput-object v5, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    .line 101
    new-instance v5, Landroid/media/AudioServiceInjector$1;

    invoke-direct {v5}, Landroid/media/AudioServiceInjector$1;-><init>()V

    sput-object v5, Landroid/media/AudioServiceInjector;->mTypes:Ljava/util/HashMap;

    .line 112
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Landroid/media/AudioServiceInjector;->sSoundUrlMap:Ljava/util/HashMap;

    .line 130
    const-string v5, "file:///system/media/audio/ui/WaterDrop_preview.ogg"

    const-string v6, "file:///system/media/audio/ui/BirdCicada_preview.ogg"

    const-string v7, "file:///system/media/audio/ui/StoneSkimming_preview.ogg"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    .line 136
    const-string v6, "file:///system/media/audio/ui/AfricaAnimals_preview.ogg"

    const-string v7, "file:///system/media/audio/ui/AmazonAnimals_preview.ogg"

    const-string v8, "file:///system/media/audio/ui/ArcticAnimals_preview.ogg"

    const-string v9, "file:///system/media/audio/ui/AustraliaAnimals_preview.ogg"

    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_ANIMAL_SOUND_URI:[Ljava/lang/String;

    .line 143
    const-string v6, "mashup_sound#Africa_Cheetah:Africa_Black-HeadedBulbul:Africa_MarabouStork:Africa_NorthWhiteRhinoceros:Africa_CommonOstrich"

    const-string v7, "mashup_sound#Amazon_Capybara:Amazon_BluePoisonDartFrog:Amazon_Kinkajou:Amazon_Orange-WingedAmazon:Amazon_TocoToucan"

    const-string v8, "mashup_sound#PolarRegion_WillowGrouse:PolarRegion_NorwayLemmings:PolarRegion_HarpSeal:PolarRegion_PomarineJaeger:PolarRegion_Narwhal"

    const-string v9, "mashup_sound#Australia_Platypus:Australia_White-BelliedSeaEagle:Australia_Whipbird:Australia_LaughingKookaburra:Australia_TasmanianNativeHen"

    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_ANIMAL_SOUND_VALUE:[Ljava/lang/String;

    .line 150
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sput-object v6, Landroid/media/AudioServiceInjector;->mLockRandomStatusUpdate:Ljava/lang/Object;

    .line 152
    new-array v3, v3, [Ljava/lang/String;

    aget-object v6, v5, v0

    aput-object v6, v3, v0

    aget-object v6, v5, v0

    aput-object v6, v3, v1

    const/4 v7, 0x2

    .line 1278
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 152
    aput-object v6, v3, v7

    const/4 v9, 0x3

    aput-object v6, v3, v9

    aget-object v5, v5, v7

    aput-object v5, v3, v4

    const/4 v6, 0x5

    aput-object v5, v3, v6

    sput-object v3, Landroid/media/AudioServiceInjector;->mNatureSoundString:[Ljava/lang/String;

    .line 161
    const-string v3, "file:///system/media/audio/ui/WaterDropNotification"

    const-string v5, "file:///system/media/audio/ui/BirdCicadaNotification"

    const-string v10, "file:///system/media/audio/ui/StoneSkimming"

    filled-new-array {v3, v5, v10}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PREFIX:[Ljava/lang/String;

    .line 167
    sput v0, Landroid/media/AudioServiceInjector;->mPreviousNatureSoundIndex:I

    .line 169
    const-string v3, "Day"

    const-string v5, "Midday"

    const-string v10, "Evening"

    const-string v11, "Night"

    filled-new-array {v3, v5, v10, v11}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    .line 177
    const-string v5, "AllDay"

    const-string v10, "DayNight"

    filled-new-array {v5, v10, v5}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

    .line 188
    const-string v5, "TimeZonesRandom"

    const-string v10, "AllFilesRandom"

    filled-new-array {v5, v5, v10}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PLAY_STRATEGY:[Ljava/lang/String;

    .line 194
    aget-object v5, v3, v0

    sput-object v5, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    .line 205
    new-array v5, v9, [[I

    new-array v10, v4, [I

    fill-array-data v10, :array_1e8

    aput-object v10, v5, v0

    new-array v10, v4, [I

    fill-array-data v10, :array_1f4

    aput-object v10, v5, v1

    new-array v10, v4, [I

    fill-array-data v10, :array_200

    aput-object v10, v5, v7

    sput-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_NUMBER:[[I

    .line 215
    sput-boolean v1, Landroid/media/AudioServiceInjector;->mInternationalLocation:Z

    .line 216
    sput v0, Landroid/media/AudioServiceInjector;->mSunriseTimeHours:I

    .line 217
    sput v0, Landroid/media/AudioServiceInjector;->mSunsetTimeHours:I

    .line 218
    sput v0, Landroid/media/AudioServiceInjector;->mSunriseTimeMins:I

    .line 219
    sput v0, Landroid/media/AudioServiceInjector;->mSunsetTimeMins:I

    .line 221
    sput-boolean v0, Landroid/media/AudioServiceInjector;->mRandomSoundAtLeastOne:Z

    .line 222
    sput-boolean v1, Landroid/media/AudioServiceInjector;->mSunriseAndSunsetUpdate:Z

    .line 223
    aget-object v3, v3, v0

    sput-object v3, Landroid/media/AudioServiceInjector;->mTimeZoneforUpdate:Ljava/lang/String;

    .line 224
    sput-boolean v1, Landroid/media/AudioServiceInjector;->mFirstUpdateMode:Z

    .line 226
    sput-boolean v0, Landroid/media/AudioServiceInjector;->mScreenOffReceived:Z

    .line 227
    sput-boolean v0, Landroid/media/AudioServiceInjector;->mPowerKeyReceived:Z

    .line 228
    sput-boolean v0, Landroid/media/AudioServiceInjector;->mStartAudioVisualPending:Z

    .line 1275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/AudioServiceInjector;->sAppList:Ljava/util/HashMap;

    .line 1277
    const-string v1, "com.changba"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    sget-object v0, Landroid/media/AudioServiceInjector;->sAppList:Ljava/util/HashMap;

    const-string v1, "com.tencent.karaoke"

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/AudioServiceInjector;->sVoipAppList:Ljava/util/HashMap;

    .line 1283
    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    sget-object v0, Landroid/media/AudioServiceInjector;->sVoipAppList:Ljava/util/HashMap;

    const-string v1, "com.ss.android.lark"

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    sget-object v0, Landroid/media/AudioServiceInjector;->sVoipAppList:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    sget-object v0, Landroid/media/AudioServiceInjector;->sVoipAppList:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.tencent.wework"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    sget-object v0, Landroid/media/AudioServiceInjector;->sVoipAppList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.tencent.tim"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    new-instance v0, Ljava/util/HashSet;

    const-string v8, "com.netease.cloudmusic"

    const-string v9, "com.tencent.qqmusic"

    const-string v10, "com.iloen.melon"

    const-string v11, "mp3.player.freemusic"

    const-string v12, "com.kugou.android"

    const-string v13, "cn.kuwo.player"

    const-string v14, "com.google.android.apps.youtube.music"

    const-string v15, "com.tencent.blackkey"

    const-string v16, "cmccwm.mobilemusic"

    const-string v17, "com.migu.music.mini"

    const-string v18, "com.ting.mp3.android"

    const-string v19, "com.blueocean.musicplayer"

    const-string v20, "com.tencent.ibg.joox"

    const-string v21, "com.kugou.android.ringtone"

    const-string v22, "com.shoujiduoduo.dj"

    const-string v23, "com.spotify.music"

    const-string v24, "com.shoujiduoduo.ringtone"

    const-string v25, "com.hiby.music"

    const-string v26, "com.miui.player"

    const-string v27, "com.google.android.music"

    const-string v28, "com.tencent.ibg.joox"

    const-string v29, "com.skysoft.kkbox.android"

    const-string v30, "com.sofeh.android.musicstudio3"

    const-string v31, "com.gamestar.perfectpiano"

    const-string v32, "com.opalastudios.pads"

    const-string v33, "com.magix.android.mmjam"

    const-string v34, "com.musicplayer.playermusic"

    const-string v35, "com.gaana"

    const-string v36, "com.maxmpz.audioplayer"

    const-string v37, "com.melodis.midomiMusicIdentifier.freemium"

    const-string v38, "com.mixvibes.remixlive"

    const-string v39, "com.starmakerinteractive.starmaker"

    const-string v40, "com.smule.singandroid"

    const-string v41, "com.djit.apps.stream"

    const-string v42, "tunein.service"

    const-string v43, "com.shazam.android"

    const-string v44, "com.jangomobile.android"

    const-string v45, "com.pandoralite"

    const-string v46, "com.tube.hqmusic"

    const-string v47, "com.amazon.avod.thirdpartyclient"

    const-string v48, "com.atmusic.app"

    const-string v49, "com.rubycell.pianisthd"

    const-string v50, "com.agminstruments.drumpadmachine"

    const-string v51, "com.playermusic.musicplayerapp"

    const-string v52, "com.famousbluemedia.piano"

    const-string v53, "com.apple.android.music"

    const-string v54, "mb32r.musica.gratis.music.player.free.download"

    const-string v55, "com.famousbluemedia.yokee"

    const-string v56, "com.ss.android.ugc.trill"

    filled-new-array/range {v8 .. v56}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/media/AudioServiceInjector;->mMusicWhiteList:Ljava/util/Set;

    .line 1410
    new-instance v0, Landroid/media/AudioServiceInjector$2;

    invoke-direct {v0}, Landroid/media/AudioServiceInjector$2;-><init>()V

    sput-object v0, Landroid/media/AudioServiceInjector;->startAudioVisualRunnable:Ljava/lang/Runnable;

    .line 1487
    sput v7, Landroid/media/AudioServiceInjector;->MAX_SHOW_NOTIFICATION_TIMES:I

    .line 1488
    const v0, 0x6d4156

    sput v0, Landroid/media/AudioServiceInjector;->NOTIFICATION_ID:I

    return-void

    :array_1d4
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1dc
    .array-data 4
        0xa
        0x1
        0x3e8
        0x2710
    .end array-data

    :array_1e8
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_1f4
    .array-data 4
        0x8
        0x3
        0x5
        0x2
    .end array-data

    :array_200
    .array-data 4
        0x4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist adjustDefaultStreamVolume([I)V
    .registers 3
    .param p0, "defaultStreamVolume"    # [I

    .line 389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_11

    .line 390
    if-eqz v0, :cond_e

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 391
    goto :goto_e

    .line 393
    :cond_a
    const/16 v1, 0xa

    aput v1, p0, v0

    .line 389
    :cond_e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static blacklist adjustHiFiVolume(ILandroid/content/Context;)V
    .registers 4
    .param p0, "direction"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 261
    invoke-static {p1}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v0

    .line 263
    .local v0, "currentHiFiVolume":I
    const/4 v1, -0x1

    if-ne p0, v1, :cond_d

    .line 264
    add-int/lit8 v1, v0, -0xa

    invoke-static {p1, v1}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    goto :goto_19

    .line 265
    :cond_d
    const/4 v1, 0x1

    if-ne p0, v1, :cond_19

    const/16 v1, 0x64

    if-ge v0, v1, :cond_19

    .line 266
    add-int/lit8 v1, v0, 0xa

    invoke-static {p1, v1}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    .line 268
    :cond_19
    :goto_19
    return-void
.end method

.method public static blacklist adjustMaxStreamVolume([I)V
    .registers 3
    .param p0, "maxStreamVolume"    # [I

    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_14

    .line 367
    if-eqz v0, :cond_11

    const/4 v1, 0x6

    if-eq v0, v1, :cond_11

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    .line 370
    goto :goto_11

    .line 372
    :cond_d
    const/16 v1, 0xf

    aput v1, p0, v0

    .line 366
    :cond_11
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 374
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method public static blacklist adjustMinStreamVolume([I)V
    .registers 3
    .param p0, "minStreamVolume"    # [I

    .line 377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 378
    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 379
    const/4 v1, 0x1

    aput v1, p0, v0

    .line 377
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 382
    .end local v0    # "i":I
    :cond_d
    return-void
.end method

.method public static blacklist adjustVolumeSetting()V
    .registers 12

    .line 1554
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1555
    .local v0, "ctx":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1556
    .local v1, "mContentResolver":Landroid/content/ContentResolver;
    const-string v2, "volume_use_150_level"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_57

    .line 1559
    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1563
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const-string v5, "volume_music_speaker"

    invoke-static {v1, v5, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1567
    .local v2, "volume_music_speaker":I
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v6, v6, v3

    const-string v7, "volume_music_headset"

    invoke-static {v1, v7, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 1571
    .local v6, "volume_music_headset":I
    sget-object v8, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v8, v8, v3

    const-string v9, "volume_music_usb_headset"

    invoke-static {v1, v9, v8, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 1575
    .local v8, "volume_music_usb_headset":I
    sget-object v10, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v3, v10, v3

    const-string v10, "volume_music_bt_a2dp"

    invoke-static {v1, v10, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 1580
    .local v3, "volume_music_bt_a2dp":I
    mul-int/lit8 v11, v2, 0xa

    invoke-static {v1, v5, v11, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1583
    mul-int/lit8 v5, v6, 0xa

    invoke-static {v1, v7, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1586
    mul-int/lit8 v5, v8, 0xa

    invoke-static {v1, v9, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1589
    mul-int/lit8 v5, v3, 0xa

    invoke-static {v1, v10, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1593
    .end local v2    # "volume_music_speaker":I
    .end local v3    # "volume_music_bt_a2dp":I
    .end local v6    # "volume_music_headset":I
    .end local v8    # "volume_music_usb_headset":I
    :cond_57
    return-void
.end method

.method public static blacklist broadcastHeadSetPlugInState(IILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "device"    # I
    .param p1, "state"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "deviceName"    # Ljava/lang/String;

    .line 1302
    const-string v0, "ro.vendor.audio.support.sound.id"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1303
    .local v0, "isSupportSoundId":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastActiveDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSupportSoundId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    if-eqz v0, :cond_7e

    .line 1307
    :try_start_43
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1308
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.miui.misound"

    const-string v5, "com.miui.misound.soundid.UpdateSoundIdService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1309
    const-string v3, "wiredDeviceType"

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1310
    const-string v3, "wiredDeviceName"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    const-string v3, "wiredDeviceState"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1312
    const-string v3, "wiredDeviceAddress"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1313
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_73} :catch_75

    .line 1317
    nop

    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_7e

    .line 1314
    :catch_75
    move-exception v1

    .line 1315
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1316
    const-string v3, "broadcastHeadSetPlugInState error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7e
    :goto_7e
    return-void
.end method

.method public static blacklist broadcastRecorderState(ILandroid/media/AudioRecordingConfiguration;)V
    .registers 10
    .param p0, "state"    # I
    .param p1, "audioConfig"    # Landroid/media/AudioRecordingConfiguration;

    .line 1322
    invoke-virtual {p1}, Landroid/media/AudioRecordingConfiguration;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1323
    .local v0, "curPkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSource()I

    move-result v1

    .line 1324
    .local v1, "source":I
    invoke-virtual {p1}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSessionId()I

    move-result v2

    .line 1325
    .local v2, "sessionId":I
    invoke-static {v0}, Landroid/media/AudioServiceInjector;->supportKaraokeMode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1326
    invoke-static {v0}, Landroid/media/AudioServiceInjector;->supportVoipMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x7

    if-eq v1, v3, :cond_1c

    .line 1328
    :cond_1b
    return-void

    .line 1330
    :cond_1c
    const-string v3, "AudioService"

    packed-switch p0, :pswitch_data_d6

    .line 1340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 1337
    :pswitch_38
    const/4 p0, 0x1

    .line 1338
    goto :goto_3c

    .line 1333
    :pswitch_3a
    const/4 p0, 0x3

    .line 1334
    nop

    .line 1344
    :goto_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastRecorderState : state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " source:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sessionId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " curPkgName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1348
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1349
    const-string v4, "state"

    invoke-virtual {v3, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1350
    const-string v4, "sessionId"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1351
    const-string v4, "pkg"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1352
    const-string v4, "source"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1353
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1355
    .local v4, "ident":J
    invoke-static {v0}, Landroid/media/AudioServiceInjector;->supportVoipMode(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 1356
    const-string v6, "miui.media.AUDIO_VOIP_RECORD_STATE_CHANGED_ACTION"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1358
    :try_start_9d
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    .line 1359
    invoke-virtual {v6}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.miui.permission.AUDIO_VOIP_RECORD_STATE_CHANGED_ACTION"

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_aa
    .catchall {:try_start_9d .. :try_end_aa} :catchall_ae

    .line 1361
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1362
    goto :goto_d4

    .line 1361
    :catchall_ae
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1362
    throw v6

    .line 1363
    :cond_b3
    invoke-static {v0}, Landroid/media/AudioServiceInjector;->supportKaraokeMode(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 1364
    const-string v6, "miui.media.AUDIO_RECORD_STATE_CHANGED_ACTION"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1366
    :try_start_be
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    .line 1367
    invoke-virtual {v6}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.miui.permission.AUDIO_RECORD_STATE_CHANGED_ACTION"

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_cb
    .catchall {:try_start_be .. :try_end_cb} :catchall_cf

    .line 1369
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1370
    goto :goto_d4

    .line 1369
    :catchall_cf
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1370
    throw v6

    .line 1372
    :cond_d4
    :goto_d4
    return-void

    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_38
        :pswitch_3a
        :pswitch_38
    .end packed-switch
.end method

.method public static blacklist calculateStreamMaxVolume(IILandroid/content/Context;)I
    .registers 5
    .param p0, "streamType"    # I
    .param p1, "maxIndex"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 342
    add-int/lit8 v0, p1, 0x5

    div-int/lit8 v0, v0, 0xa

    .line 343
    .local v0, "retValue":I
    invoke-static {}, Landroid/media/AudioServiceInjector;->isScorpio()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, Landroid/media/AudioServiceInjector;->isLithium()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_10
    const/4 v1, 0x3

    if-ne v1, p0, :cond_1b

    .line 344
    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 346
    add-int/lit8 v0, v0, 0xa

    .line 348
    :cond_1b
    return v0
.end method

.method public static blacklist calculateStreamVolume(IILandroid/content/Context;)I
    .registers 5
    .param p0, "streamType"    # I
    .param p1, "index"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 333
    add-int/lit8 v0, p1, 0x5

    div-int/lit8 v0, v0, 0xa

    .line 334
    .local v0, "retValue":I
    invoke-static {}, Landroid/media/AudioServiceInjector;->isScorpio()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, Landroid/media/AudioServiceInjector;->isLithium()Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_10
    const/4 v1, 0x3

    if-ne p0, v1, :cond_20

    .line 335
    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 336
    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 338
    :cond_20
    return v0
.end method

.method public static blacklist canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1674
    const/4 v0, 0x0

    if-eqz p1, :cond_12

    if-nez p0, :cond_6

    goto :goto_12

    .line 1677
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1678
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    .line 1675
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_12
    :goto_12
    return v0
.end method

.method public static blacklist checkForRingerModeChange(Landroid/content/Context;III)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldRingerMode"    # I
    .param p2, "newRingerMode"    # I
    .param p3, "direction"    # I

    .line 398
    invoke-static {p0, p2}, Lmiui/util/AudioManagerHelper;->getValidatedRingerMode(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static blacklist checkMusicStream([Ljava/lang/Object;Landroid/content/Context;II)V
    .registers 4
    .param p0, "object"    # [Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringerMode"    # I
    .param p3, "dev"    # I

    .line 445
    return-void
.end method

.method public static blacklist checkSunriseAndSunsetTimeUpdate(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 594
    sget-boolean v0, Landroid/media/AudioServiceInjector;->mRandomSoundAtLeastOne:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    sget-boolean v0, Landroid/media/AudioServiceInjector;->mInternationalLocation:Z

    if-nez v0, :cond_27

    .line 595
    invoke-static {}, Landroid/media/AudioServiceInjector;->queryCurrentTimeZone()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioServiceInjector;->mTimeZoneforUpdate:Ljava/lang/String;

    .line 596
    sget-object v2, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 597
    sget-boolean v0, Landroid/media/AudioServiceInjector;->mSunriseAndSunsetUpdate:Z

    if-ne v0, v1, :cond_27

    .line 598
    invoke-static {p0}, Landroid/media/AudioServiceInjector;->updateSunriseAndSunsetTime(Landroid/content/Context;)V

    .line 599
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/AudioServiceInjector;->mSunriseAndSunsetUpdate:Z

    goto :goto_27

    .line 602
    :cond_25
    sput-boolean v1, Landroid/media/AudioServiceInjector;->mSunriseAndSunsetUpdate:Z

    .line 605
    :cond_27
    :goto_27
    return-void
.end method

.method private static blacklist createActualUriForNatureSound(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "type"    # Ljava/lang/String;

    .line 717
    const/4 v0, 0x1

    .line 718
    .local v0, "SoundSourcesNumber":I
    const/4 v1, 0x0

    .line 719
    .local v1, "FilePath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 720
    .local v2, "index":I
    const/4 v3, 0x0

    .line 721
    .local v3, "TypeIndex":I
    const/4 v4, 0x0

    .line 722
    .local v4, "SerialsIndex":I
    sget-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 723
    .local v5, "TimeZone":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/media/AudioServiceInjector;->getIndexForType(Ljava/lang/String;)I

    move-result v3

    .line 725
    invoke-static {v3}, Landroid/media/AudioServiceInjector;->querySerialsIndex(I)I

    move-result v4

    .line 726
    sget-object v7, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PREFIX:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-static {p0}, Landroid/media/AudioServiceInjector;->querySoundSourcesNumber(Ljava/lang/String;)I

    move-result v0

    .line 728
    const/4 v7, 0x1

    if-le v0, v7, :cond_4f

    .line 730
    :cond_25
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    invoke-virtual {v8, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v2, v8, 0x1

    .line 731
    sget v8, Landroid/media/AudioServiceInjector;->mPreviousNatureSoundIndex:I

    if-eq v8, v2, :cond_25

    .line 732
    sput v2, Landroid/media/AudioServiceInjector;->mPreviousNatureSoundIndex:I

    .line 733
    sget-object v7, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PLAY_STRATEGY:[Ljava/lang/String;

    aget-object v7, v7, v4

    const-string v8, "TimeZonesRandom"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 734
    sget-object v7, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b

    .line 736
    :cond_48
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    :goto_4b
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 738
    :cond_4f
    if-ne v0, v7, :cond_5a

    .line 739
    const/4 v2, 0x1

    .line 740
    sget-object v7, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 743
    :cond_5a
    :goto_5a
    const-string v7, ".ogg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createActualUriForNatureSound: FilePath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AudioService"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-object v1
.end method

.method private static blacklist createSeqUriForNatureSound(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "type"    # Ljava/lang/String;

    .line 750
    const/4 v0, 0x0

    .line 751
    .local v0, "FilePath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 752
    .local v1, "TypeIndex":I
    const/4 v2, 0x0

    .line 753
    .local v2, "SerialsIndex":I
    const/4 v3, 0x0

    .line 754
    .local v3, "index":I
    const/4 v4, 0x0

    .line 755
    .local v4, "TimeZone":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 756
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/media/AudioServiceInjector;->getIndexForType(Ljava/lang/String;)I

    move-result v1

    .line 757
    invoke-static {v1}, Landroid/media/AudioServiceInjector;->querySerialsIndex(I)I

    move-result v2

    .line 758
    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PREFIX:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    const-string v6, "Seq"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

    aget-object v7, v6, v2

    const-string v8, "AllDay"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 761
    const/4 v3, 0x1

    .line 762
    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9b

    .line 764
    :cond_34
    aget-object v7, v6, v2

    const-string v8, "DayNight"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_63

    .line 765
    invoke-static {}, Landroid/media/AudioServiceInjector;->queryCurrentTimeZone()Ljava/lang/String;

    move-result-object v4

    .line 766
    sget-object v7, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v9, v7, v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_59

    aget-object v7, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57

    goto :goto_59

    .line 769
    :cond_57
    const/4 v3, 0x2

    goto :goto_5a

    .line 767
    :cond_59
    :goto_59
    const/4 v3, 0x1

    .line 771
    :goto_5a
    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9b

    .line 773
    :cond_63
    aget-object v7, v6, v2

    const-string v10, "DayZones"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 774
    invoke-static {}, Landroid/media/AudioServiceInjector;->queryCurrentTimeZone()Ljava/lang/String;

    move-result-object v4

    .line 775
    sget-object v7, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v9, v7, v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 776
    const/4 v3, 0x1

    goto :goto_93

    .line 777
    :cond_7d
    aget-object v8, v7, v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_87

    .line 778
    const/4 v3, 0x2

    goto :goto_93

    .line 779
    :cond_87
    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 780
    const/4 v3, 0x3

    goto :goto_93

    .line 782
    :cond_92
    const/4 v3, 0x4

    .line 784
    :goto_93
    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 787
    :cond_9b
    :goto_9b
    const-string v6, ".ogg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 789
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createActualUriForNatureSound: FilePath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AudioService"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return-object v0
.end method

.method public static blacklist customMinStreamVolume([I)V
    .registers 3
    .param p0, "minStreamVolume"    # [I

    .line 385
    const/4 v0, 0x6

    const/4 v1, 0x1

    aput v1, p0, v0

    .line 386
    return-void
.end method

.method public static blacklist getActiveStreamType(ZIIIZ)I
    .registers 11
    .param p0, "isInCommunication"    # Z
    .param p1, "platformType"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "streamOverrideDelayMs"    # I
    .param p4, "DEBUG_VOL"    # Z

    .line 1155
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/media/AudioServiceInjector;->getActiveStreamType(ZIIIZZ)I

    move-result v0

    return v0
.end method

.method public static blacklist getActiveStreamType(ZIIIZZ)I
    .registers 22
    .param p0, "isInCommunication"    # Z
    .param p1, "platformType"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "streamOverrideDelayMs"    # I
    .param p4, "DEBUG_VOL"    # Z
    .param p5, "lockVoiceAssistStream"    # Z

    .line 1050
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {}, Landroid/media/AudioServiceInjector;->getVoiceAssistNum()I

    move-result v2

    .line 1051
    .local v2, "voiceAssistStream":I
    const-string v3, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    const-string v4, "getActiveStreamType: Forcing STREAM_ASSISTANT"

    const/high16 v5, -0x80000000

    const/4 v6, 0x6

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x5

    const/4 v11, 0x3

    const-string v12, "AudioService"

    packed-switch p1, :pswitch_data_10e

    goto :goto_81

    .line 1053
    :pswitch_1a
    if-eqz p0, :cond_24

    .line 1054
    invoke-static {v8}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v3

    if-ne v3, v11, :cond_23

    .line 1057
    return v6

    .line 1060
    :cond_23
    return v8

    .line 1062
    :cond_24
    if-eqz p5, :cond_36

    .line 1063
    if-eq v2, v7, :cond_35

    invoke-static {v2, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v3

    if-nez v3, :cond_35

    .line 1064
    invoke-static {v11, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1065
    return v11

    .line 1067
    :cond_35
    return v2

    .line 1069
    :cond_36
    if-eq v2, v7, :cond_44

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v13

    if-eqz v13, :cond_44

    .line 1071
    if-eqz p4, :cond_43

    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_43
    return v2

    .line 1073
    :cond_44
    const-string v13, "getActiveStreamType: Forcing STREAM_RING stream active"

    const-string v14, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    if-ne v0, v5, :cond_68

    .line 1074
    invoke-static {v9, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 1075
    if-eqz p4, :cond_55

    .line 1076
    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_55
    return v9

    .line 1078
    :cond_56
    invoke-static {v10, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 1080
    if-eqz p4, :cond_61

    .line 1081
    invoke-static {v12, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_61
    return v10

    .line 1084
    :cond_62
    if-eqz p4, :cond_67

    .line 1085
    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_67
    return v11

    .line 1090
    :cond_68
    nop

    .line 1091
    invoke-static {v10, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v15

    if-eqz v15, :cond_75

    .line 1092
    if-eqz p4, :cond_74

    .line 1093
    invoke-static {v12, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_74
    return v10

    .line 1095
    :cond_75
    invoke-static {v9, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v14

    if-eqz v14, :cond_81

    .line 1096
    if-eqz p4, :cond_80

    .line 1097
    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_80
    return v9

    .line 1101
    :cond_81
    :goto_81
    if-eqz p0, :cond_99

    .line 1102
    invoke-static {v8}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v3

    if-ne v3, v11, :cond_91

    .line 1104
    if-eqz p4, :cond_90

    const-string v3, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_90
    return v6

    .line 1107
    :cond_91
    if-eqz p4, :cond_98

    const-string v3, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_98
    return v8

    .line 1110
    :cond_99
    if-eqz p5, :cond_ab

    .line 1111
    if-eq v2, v7, :cond_aa

    invoke-static {v2, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v3

    if-nez v3, :cond_aa

    .line 1112
    invoke-static {v11, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 1113
    return v11

    .line 1115
    :cond_aa
    return v2

    .line 1117
    :cond_ab
    invoke-static {v10, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    const-string v8, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    if-eqz v6, :cond_b9

    .line 1119
    if-eqz p4, :cond_b8

    invoke-static {v12, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_b8
    return v10

    .line 1121
    :cond_b9
    invoke-static {v9, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    const-string v13, "getActiveStreamType: Forcing STREAM_RING"

    if-eqz v6, :cond_c7

    .line 1123
    if-eqz p4, :cond_c6

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_c6
    return v9

    .line 1125
    :cond_c7
    if-eq v2, v7, :cond_d5

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    if-eqz v6, :cond_d5

    .line 1127
    if-eqz p4, :cond_d4

    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_d4
    return v2

    .line 1129
    :cond_d5
    if-ne v0, v5, :cond_f5

    .line 1130
    invoke-static {v10, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 1132
    if-eqz p4, :cond_e2

    invoke-static {v12, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_e2
    return v10

    .line 1134
    :cond_e3
    invoke-static {v9, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 1136
    if-eqz p4, :cond_ee

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_ee
    return v9

    .line 1139
    :cond_ef
    if-eqz p4, :cond_f4

    .line 1140
    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_f4
    return v11

    .line 1148
    :cond_f5
    if-eqz p4, :cond_10d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_10d
    return v0

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_1a
    .end packed-switch
.end method

.method public static blacklist getDefaultVolStreamNoPlayback(I)I
    .registers 2
    .param p0, "defaultType"    # I

    .line 1173
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1174
    return p0

    .line 1176
    :cond_7
    const/4 v0, 0x3

    return v0
.end method

.method private static blacklist getIndexForType(Ljava/lang/String;)I
    .registers 3
    .param p0, "type"    # Ljava/lang/String;

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIndexForType() type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    sget-object v0, Landroid/media/AudioServiceInjector;->mTypes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static blacklist getMashupSoundNotificationUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "actualPath"    # Ljava/lang/String;

    .line 931
    const-string v0, "mashup_sound"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 932
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    sget-object v2, Landroid/media/AudioServiceInjector;->MIUI_NATURE_ANIMAL_SOUND_URI:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    .line 933
    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 934
    sget-object v2, Landroid/media/AudioServiceInjector;->MIUI_NATURE_ANIMAL_SOUND_VALUE:[Ljava/lang/String;

    aget-object p0, v2, v1

    .line 935
    goto :goto_1e

    .line 932
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 939
    .end local v1    # "i":I
    :cond_1e
    :goto_1e
    const/4 v1, 0x0

    .line 940
    .local v1, "index":I
    const-string v2, "normal_notification"

    .line 941
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    const/4 v0, 0x1

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 942
    .local v3, "animalsTemp":Ljava/lang/String;
    const-string v4, "([a-zA-z]+_[a-zA-z]+-?[a-zA-z]+:?)+"

    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 943
    .local v4, "isMatch":Z
    if-eqz v4, :cond_74

    .line 944
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 945
    .local v5, "animals":[Ljava/lang/String;
    array-length v6, v5

    .line 946
    .local v6, "animalCount":I
    if-le v6, v0, :cond_4e

    .line 948
    :cond_41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 949
    sget v0, Landroid/media/AudioServiceInjector;->mPreviousNatureSoundIndex:I

    if-eq v0, v1, :cond_41

    .line 951
    :cond_4e
    aget-object v0, v5, v1

    .line 952
    .end local v2    # "path":Ljava/lang/String;
    .local v0, "path":Ljava/lang/String;
    sput v1, Landroid/media/AudioServiceInjector;->mPreviousNatureSoundIndex:I

    .line 953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:///system/media/audio/ui/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "_"

    const-string v8, "/"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".ogg"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 955
    .end local v0    # "path":Ljava/lang/String;
    .end local v5    # "animals":[Ljava/lang/String;
    .end local v6    # "animalCount":I
    .restart local v2    # "path":Ljava/lang/String;
    :cond_74
    return-object v2
.end method

.method public static blacklist getMiuiNatureSoundStatus(Ljava/lang/String;)Z
    .registers 6
    .param p0, "uri"    # Ljava/lang/String;

    .line 794
    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 795
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 796
    const/4 v0, 0x1

    return v0

    .line 794
    .end local v3    # "s":Ljava/lang/String;
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 799
    :cond_13
    invoke-static {p0}, Landroid/media/AudioServiceInjector;->isMiuiNatureAnimalSoundUri(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist getNotificationUri()Ljava/lang/String;
    .registers 16

    .line 866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 867
    .local v0, "time":J
    const/4 v2, 0x0

    .line 869
    .local v2, "path":Ljava/lang/String;
    sget-boolean v3, Landroid/media/AudioServiceInjector;->mNotificationRandomSound:Z

    const/4 v4, 0x2

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v3, :cond_44

    .line 870
    const/4 v3, 0x1

    .line 871
    .local v3, "isNeedMute":Z
    sget-wide v10, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    cmp-long v6, v10, v6

    if-eqz v6, :cond_39

    sub-long v6, v0, v10

    sget-object v12, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v12, v5

    int-to-long v13, v5

    cmp-long v5, v6, v13

    if-lez v5, :cond_22

    goto :goto_39

    .line 876
    :cond_22
    sub-long v5, v0, v10

    aget v4, v12, v4

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gtz v4, :cond_33

    .line 878
    sget-boolean v4, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    if-nez v4, :cond_3c

    .line 879
    sput-boolean v9, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    .line 880
    const/4 v3, 0x0

    goto :goto_3c

    .line 882
    :cond_33
    sget-boolean v4, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    if-nez v4, :cond_3c

    .line 883
    const/4 v3, 0x0

    goto :goto_3c

    .line 874
    :cond_39
    :goto_39
    const/4 v3, 0x0

    .line 875
    sput-boolean v8, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    .line 886
    :cond_3c
    :goto_3c
    if-nez v3, :cond_42

    .line 887
    const-string v2, "normal_notification"

    .line 888
    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    .line 890
    .end local v3    # "isNeedMute":Z
    :cond_42
    goto/16 :goto_ba

    .line 891
    :cond_44
    const/4 v3, 0x0

    .line 892
    .local v3, "playRandom":Z
    const/4 v10, 0x0

    .line 894
    .local v10, "playSeq":Z
    sget-wide v11, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    cmp-long v6, v11, v6

    if-eqz v6, :cond_72

    sub-long v6, v0, v11

    sget-object v13, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v13, v5

    int-to-long v14, v5

    cmp-long v5, v6, v14

    if-lez v5, :cond_58

    goto :goto_72

    .line 899
    :cond_58
    sub-long v5, v0, v11

    aget v4, v13, v4

    int-to-long v11, v4

    cmp-long v4, v5, v11

    if-gtz v4, :cond_6c

    .line 901
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    aget v5, v13, v9

    if-ge v4, v5, :cond_75

    .line 902
    add-int/2addr v4, v9

    sput v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 903
    const/4 v10, 0x1

    goto :goto_75

    .line 905
    :cond_6c
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v4, :cond_75

    .line 906
    const/4 v3, 0x1

    goto :goto_75

    .line 897
    :cond_72
    :goto_72
    const/4 v3, 0x1

    .line 898
    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 909
    :cond_75
    :goto_75
    const-string v4, ".ogg"

    if-eqz v3, :cond_9e

    .line 910
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    sget-object v6, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v6, v6, v8

    .line 911
    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v9

    .line 912
    .local v5, "index":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v7, Landroid/media/AudioServiceInjector;->RANDOM_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 915
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 917
    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    .end local v5    # "index":I
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    goto :goto_b9

    .line 918
    :cond_9e
    if-eqz v10, :cond_b9

    .line 919
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 920
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v6, Landroid/media/AudioServiceInjector;->SEQUENCE_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    sget v6, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 924
    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    goto :goto_ba

    .line 918
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_b9
    :goto_b9
    nop

    .line 927
    .end local v3    # "playRandom":Z
    .end local v10    # "playSeq":Z
    :goto_ba
    return-object v2
.end method

.method public static blacklist getNotificationUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 17
    .param p0, "type"    # Ljava/lang/String;

    .line 960
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 961
    .local v0, "time":J
    const/4 v2, 0x0

    .line 963
    .local v2, "path":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/media/AudioServiceInjector;->getIndexForType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioServiceInjector;->playRandomSound(I)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    if-nez v3, :cond_4d

    .line 964
    const/4 v3, 0x1

    .line 965
    .local v3, "isNeedMute":Z
    sget-wide v10, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    cmp-long v7, v10, v7

    if-eqz v7, :cond_42

    sub-long v7, v0, v10

    sget-object v12, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v12, v5

    int-to-long v13, v5

    cmp-long v5, v7, v13

    if-lez v5, :cond_28

    goto :goto_42

    .line 970
    :cond_28
    sub-long v5, v0, v10

    aget v4, v12, v4

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gtz v4, :cond_3c

    .line 972
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    aget v5, v12, v9

    if-ge v4, v5, :cond_45

    .line 973
    add-int/2addr v4, v9

    sput v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 974
    const/4 v3, 0x0

    goto :goto_45

    .line 976
    :cond_3c
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v4, :cond_45

    .line 977
    const/4 v3, 0x0

    goto :goto_45

    .line 968
    :cond_42
    :goto_42
    const/4 v3, 0x0

    .line 969
    sput v6, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 980
    :cond_45
    :goto_45
    if-nez v3, :cond_4b

    .line 981
    const-string v2, "normal_notification"

    .line 982
    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    .line 984
    .end local v3    # "isNeedMute":Z
    :cond_4b
    goto/16 :goto_c0

    .line 985
    :cond_4d
    const/4 v3, 0x0

    .line 986
    .local v3, "playRandom":Z
    const/4 v10, 0x0

    .line 988
    .local v10, "playSeq":Z
    sget-wide v11, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    cmp-long v7, v11, v7

    if-eqz v7, :cond_7b

    sub-long v7, v0, v11

    sget-object v13, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v13, v5

    int-to-long v14, v5

    cmp-long v5, v7, v14

    if-lez v5, :cond_61

    goto :goto_7b

    .line 993
    :cond_61
    sub-long v5, v0, v11

    aget v4, v13, v4

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gtz v4, :cond_75

    .line 995
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    aget v5, v13, v9

    if-ge v4, v5, :cond_7e

    .line 996
    add-int/2addr v4, v9

    sput v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 997
    const/4 v10, 0x1

    goto :goto_7e

    .line 999
    :cond_75
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v4, :cond_7e

    .line 1000
    const/4 v3, 0x1

    goto :goto_7e

    .line 991
    :cond_7b
    :goto_7b
    const/4 v3, 0x1

    .line 992
    sput v6, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 1003
    :cond_7e
    :goto_7e
    sget-object v4, Landroid/media/AudioServiceInjector;->sSoundUrlMap:Ljava/util/HashMap;

    sget-object v5, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/media/AudioServiceInjector;->getIndexForType(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1004
    .local v4, "actualPath":Ljava/lang/String;
    invoke-static {v4}, Landroid/media/AudioServiceInjector;->isMiuiNatureAnimalSoundUri(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 1005
    invoke-static {v4}, Landroid/media/AudioServiceInjector;->getMashupSoundNotificationUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1006
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMashupSoundNotificationUri: Path ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AudioService"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 1008
    :cond_b1
    if-eqz v3, :cond_b8

    .line 1009
    invoke-static/range {p0 .. p0}, Landroid/media/AudioServiceInjector;->createActualUriForNatureSound(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_be

    .line 1010
    :cond_b8
    if-eqz v10, :cond_be

    .line 1011
    invoke-static/range {p0 .. p0}, Landroid/media/AudioServiceInjector;->createSeqUriForNatureSound(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1014
    :cond_be
    :goto_be
    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    .line 1016
    .end local v3    # "playRandom":Z
    .end local v4    # "actualPath":Ljava/lang/String;
    .end local v10    # "playSeq":Z
    :goto_c0
    return-object v2
.end method

.method public static blacklist getRingerModeAffectedStreams(ILandroid/content/Context;)I
    .registers 9
    .param p0, "streams"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 410
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_5

    return p0

    .line 412
    :cond_5
    invoke-static {}, Landroid/media/AudioServiceInjector;->getVoiceAssistNum()I

    move-result v0

    .line 413
    .local v0, "voiceAssistStream":I
    invoke-static {p1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3f

    .line 415
    or-int/lit8 p0, p0, 0x26

    .line 419
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mute_music_at_silent"

    const/4 v5, -0x3

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 422
    .local v1, "muteMusic":I
    and-int/lit8 p0, p0, -0x9

    .line 423
    if-ne v1, v4, :cond_26

    const/16 v2, 0x8

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    or-int/2addr p0, v2

    .line 424
    if-lez v0, :cond_3f

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "mute_voiceassit_at_silent"

    invoke-static {v2, v6, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 427
    .local v2, "muteVoiceAssist":I
    shl-int v5, v4, v0

    not-int v5, v5

    and-int/2addr p0, v5

    .line 428
    if-ne v2, v4, :cond_3d

    shl-int v5, v4, v0

    goto :goto_3e

    :cond_3d
    move v5, v3

    :goto_3e
    or-int/2addr p0, v5

    .line 432
    .end local v1    # "muteMusic":I
    .end local v2    # "muteVoiceAssist":I
    :cond_3f
    invoke-static {p1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_55

    .line 433
    const/16 p0, 0x100

    .line 434
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_4e

    .line 435
    goto :goto_4f

    :cond_4e
    const/4 v3, 0x2

    :goto_4f
    or-int/2addr p0, v3

    .line 436
    if-lez v0, :cond_55

    .line 437
    shl-int v1, v4, v0

    or-int/2addr p0, v1

    .line 441
    :cond_55
    return p0
.end method

.method public static blacklist getVoiceAssistNum()I
    .registers 3

    .line 1249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 1250
    sget-object v1, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "STREAM_ASSISTANT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1251
    return v0

    .line 1249
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1254
    .end local v0    # "i":I
    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist handleAudioStatusChanged(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1244
    invoke-static {p0}, Landroid/media/AudioStatusHandler;->getInstance(Landroid/content/Context;)Landroid/media/AudioStatusHandler;

    move-result-object v0

    .line 1245
    .local v0, "statusHandler":Landroid/media/AudioStatusHandler;
    invoke-virtual {v0, p1}, Landroid/media/AudioStatusHandler;->handleAudioStatusChanged(Landroid/os/Bundle;)V

    .line 1246
    return-void
.end method

.method public static blacklist handleModeChanged(Landroid/content/Context;II)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "mode"    # I

    .line 1222
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1223
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "usage"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1224
    const-string v1, "pid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1225
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1226
    invoke-static {p0, v0}, Landroid/media/AudioServiceInjector;->handleAudioStatusChanged(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1227
    return-void
.end method

.method public static blacklist handleSetForceUse(Landroid/content/Context;IILjava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "usage"    # I
    .param p2, "config"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 1239
    invoke-static {p0}, Landroid/media/AudioStatusHandler;->getInstance(Landroid/content/Context;)Landroid/media/AudioStatusHandler;

    move-result-object v0

    .line 1240
    .local v0, "statusHandler":Landroid/media/AudioStatusHandler;
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioStatusHandler;->handleSetForceUse(IILjava/lang/String;)V

    .line 1241
    return-void
.end method

.method public static blacklist handleSpeakerChanged(IZI)V
    .registers 5
    .param p0, "pid"    # I
    .param p1, "speakeron"    # Z
    .param p2, "callingUid"    # I

    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " handleSpeakerChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    invoke-static {}, Lmiui/tipclose/TipHelperProxy;->getInstance()Lmiui/tipclose/TipHelperProxy;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p0, p2}, Lmiui/tipclose/TipHelperProxy;->showTipForPhone(ZII)V

    .line 1232
    return-void
.end method

.method public static blacklist handleSpeakerChanged(Landroid/content/Context;IZ)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "speakeron"    # Z

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "None thiing for handleSpeakerChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    return-void
.end method

.method public static blacklist handleZenModeChangedForMusic(Ljava/lang/Object;Landroid/content/Context;IIII[I)V
    .registers 9
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preZenMode"    # I
    .param p3, "zenmode"    # I
    .param p4, "maxIndexSrc"    # I
    .param p5, "maxIndexDsts"    # I
    .param p6, "streamVolumeAlias"    # [I

    .line 475
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_3c

    if-eq p3, p2, :cond_3c

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3c

    .line 479
    :cond_d
    const/4 v0, 0x1

    if-ne p3, v0, :cond_14

    .line 480
    invoke-static {p0, p1, p4, p5, p6}, Landroid/media/AudioServiceInjector;->saveAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V

    goto :goto_19

    .line 481
    :cond_14
    if-ne p2, v0, :cond_19

    .line 482
    invoke-static {p0, p1, p4, p5, p6}, Landroid/media/AudioServiceInjector;->restoreAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V

    .line 484
    :cond_19
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on change zenmode from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void

    .line 476
    :cond_3c
    :goto_3c
    return-void
.end method

.method public static blacklist handleZenModeVolumeChanged(Landroid/content/Context;III)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "streamType"    # I
    .param p2, "device"    # I
    .param p3, "index"    # I

    .line 450
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_4e

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4e

    .line 452
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4e

    .line 453
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_4e

    .line 457
    :cond_15
    const-string v0, "volume_music_before_mute"

    .line 458
    .local v0, "nameForMute":Ljava/lang/String;
    invoke-static {p2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 461
    return-void

    .line 463
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 465
    .local v2, "identity":J
    nop

    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    add-int/lit8 v5, p3, 0x5

    div-int/lit8 v5, v5, 0xa

    const/4 v6, -0x2

    .line 465
    invoke-static {v4, v0, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 470
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 471
    return-void

    .line 454
    .end local v0    # "nameForMute":Ljava/lang/String;
    .end local v1    # "suffix":Ljava/lang/String;
    .end local v2    # "identity":J
    :cond_4e
    :goto_4e
    return-void
.end method

.method public static blacklist isActiveForReal(ZI)Z
    .registers 4
    .param p0, "orgActiveForReal"    # Z
    .param p1, "maybeActiveStreamType"    # I

    .line 1160
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1161
    return p0

    .line 1164
    :cond_7
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_14

    const/4 v0, 0x5

    if-ne p1, v0, :cond_f

    goto :goto_14

    .line 1168
    :cond_f
    invoke-static {p1, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0

    .line 1166
    :cond_14
    :goto_14
    invoke-static {p1, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAppCalledInCall(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 1258
    const/4 v0, 0x0

    .line 1259
    .local v0, "isInCall":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_49

    .line 1261
    nop

    .line 1262
    const-string v1, "telecom"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 1264
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1265
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 1266
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1267
    if-eqz v0, :cond_49

    .line 1268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "called from app when in call: pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1269
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1268
    const-string v5, "AudioService"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    .end local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v2    # "ident":J
    :cond_49
    return v0
.end method

.method private static blacklist isLithium()Z
    .registers 2

    .line 235
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "lithium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isMiuiNatureAnimalSoundUri(Ljava/lang/String;)Z
    .registers 8
    .param p0, "uri"    # Ljava/lang/String;

    .line 803
    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_ANIMAL_SOUND_URI:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    const/4 v4, 0x1

    if-ge v3, v1, :cond_14

    aget-object v5, v0, v3

    .line 804
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 805
    return v4

    .line 803
    .end local v5    # "s":Ljava/lang/String;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 808
    :cond_14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "mashup_sound"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v2, v4

    :cond_23
    return v2
.end method

.method public static blacklist isOnlyAdjustVolume(I)Z
    .registers 2
    .param p0, "flags"    # I

    .line 352
    const/high16 v0, 0x100000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static blacklist isOnlyAdjustVolume(III)Z
    .registers 4
    .param p0, "flags"    # I
    .param p1, "stream"    # I
    .param p2, "mode"    # I

    .line 361
    const/high16 v0, 0x100000

    and-int/2addr v0, p0

    if-nez v0, :cond_11

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    .line 362
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 361
    :goto_12
    return v0
.end method

.method public static blacklist isPackageProtectedWhenUserBackground(ILandroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 402
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lmiui/process/ProcessManager;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static blacklist isScorpio()Z
    .registers 2

    .line 231
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "scorpio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isXOptMode()Z
    .registers 2

    .line 356
    nop

    .line 357
    const-string v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist needEnableVoiceVolumeBoost(IZIIZ)Z
    .registers 9
    .param p0, "direction"    # I
    .param p1, "isMaxVol"    # Z
    .param p2, "device"    # I
    .param p3, "streamTypeAlias"    # I
    .param p4, "boostEnabled"    # Z

    .line 1181
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_69

    if-nez p3, :cond_69

    const/4 v0, 0x1

    if-ne p2, v0, :cond_69

    .line 1184
    const-string v2, "ro.vendor.audio.voice.volume.boost"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "manual"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_69

    .line 1187
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "direction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isMaxVol:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " streamTypeAlias:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " boostEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    if-ne p0, v0, :cond_62

    if-eqz p1, :cond_62

    if-nez p4, :cond_62

    .line 1192
    return v0

    .line 1194
    :cond_62
    const/4 v2, -0x1

    if-ne p0, v2, :cond_68

    if-eqz p4, :cond_68

    .line 1196
    return v0

    .line 1198
    :cond_68
    return v1

    .line 1185
    :cond_69
    :goto_69
    return v1
.end method

.method private static blacklist onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V
    .registers 23
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "maxIndex"    # I
    .param p5, "streamVolumeAlias"    # [I
    .param p6, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "isSupportHifiVolume":Z
    :try_start_5
    invoke-static {}, Landroid/media/AudioServiceInjector;->isScorpio()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-static {}, Landroid/media/AudioServiceInjector;->isLithium()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 281
    :cond_11
    const/4 v0, 0x1

    .line 283
    :cond_12
    const/4 v3, 0x0

    .line 284
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v3, v4

    .line 285
    const/4 v4, 0x0

    .line 286
    .local v4, "method":Ljava/lang/reflect/Method;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_1b} :catch_17f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1b} :catch_174
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_1b} :catch_169
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_1b} :catch_15e

    const-string v6, "setStreamVolumeInt"

    const/16 v7, 0x17

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-lt v5, v7, :cond_45

    .line 287
    if-eqz v3, :cond_5e

    .line 288
    :try_start_29
    new-array v5, v8, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v12

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v9

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v11

    const-class v14, Ljava/lang/String;

    aput-object v14, v5, v10

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v4, v5

    goto :goto_5e

    .line 292
    :cond_45
    if-eqz v3, :cond_5e

    .line 293
    new-array v5, v10, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v12

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v9

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v11

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v4, v5

    .line 297
    :cond_5e
    :goto_5e
    if-ne v11, v2, :cond_df

    if-eqz v0, :cond_df

    .line 298
    invoke-static/range {p6 .. p6}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v5
    :try_end_66
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_29 .. :try_end_66} :catch_17f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_29 .. :try_end_66} :catch_174
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_66} :catch_169
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_66} :catch_15e

    if-eqz v5, :cond_d8

    move/from16 v5, p2

    move/from16 v6, p4

    if-lt v5, v6, :cond_dc

    .line 299
    move/from16 v14, p4

    .line 300
    .local v14, "rawStreamMaxIndex":I
    if-eqz v4, :cond_bc

    .line 301
    :try_start_72
    invoke-virtual {v4, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 302
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v15, v7, :cond_9d

    .line 303
    new-array v7, v8, [Ljava/lang/Object;

    aget v8, p5, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v11

    const-string v8, "AudioService"

    aput-object v8, v7, v10

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bc

    .line 305
    :cond_9d
    new-array v7, v10, [Ljava/lang/Object;

    aget v8, p5, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_bc
    :goto_bc
    add-int/lit8 v7, v14, 0x5

    div-int/lit8 v7, v7, 0xa

    .line 309
    .local v7, "streamMaxIndex":I
    sget v8, Landroid/media/AudioServiceInjector;->mOriginalIndexWhenSetStreamVolume:I
    :try_end_c2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_72 .. :try_end_c2} :catch_d5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_72 .. :try_end_c2} :catch_d2
    .catch Ljava/lang/IllegalAccessException; {:try_start_72 .. :try_end_c2} :catch_cf
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_72 .. :try_end_c2} :catch_cc

    sub-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0xa

    move-object/from16 v15, p6

    :try_start_c7
    invoke-static {v15, v8}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    .line 310
    .end local v7    # "streamMaxIndex":I
    .end local v14    # "rawStreamMaxIndex":I
    goto/16 :goto_189

    .line 327
    .end local v0    # "isSupportHifiVolume":Z
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_cc
    move-exception v0

    goto/16 :goto_163

    .line 325
    :catch_cf
    move-exception v0

    goto/16 :goto_16e

    .line 323
    :catch_d2
    move-exception v0

    goto/16 :goto_179

    .line 321
    :catch_d5
    move-exception v0

    goto/16 :goto_184

    .line 298
    .restart local v0    # "isSupportHifiVolume":Z
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :cond_d8
    move/from16 v5, p2

    move/from16 v6, p4

    :cond_dc
    move-object/from16 v15, p6

    goto :goto_e5

    .line 297
    :cond_df
    move/from16 v5, p2

    move/from16 v6, p4

    move-object/from16 v15, p6

    .line 311
    :goto_e5
    if-eqz v4, :cond_189

    .line 312
    invoke-virtual {v4, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 313
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v7, :cond_136

    .line 314
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Pid:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, " Uid:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 315
    .local v7, "tag":Ljava/lang/String;
    new-array v8, v8, [Ljava/lang/Object;

    aget v14, p5, v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v11

    aput-object v7, v8, v10

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    nop

    .end local v7    # "tag":Ljava/lang/String;
    goto :goto_189

    .line 317
    :cond_136
    new-array v7, v10, [Ljava/lang/Object;

    aget v8, p5, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_155
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c7 .. :try_end_155} :catch_15c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c7 .. :try_end_155} :catch_15a
    .catch Ljava/lang/IllegalAccessException; {:try_start_c7 .. :try_end_155} :catch_158
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c7 .. :try_end_155} :catch_156

    goto :goto_189

    .line 327
    .end local v0    # "isSupportHifiVolume":Z
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_156
    move-exception v0

    goto :goto_165

    .line 325
    :catch_158
    move-exception v0

    goto :goto_170

    .line 323
    :catch_15a
    move-exception v0

    goto :goto_17b

    .line 321
    :catch_15c
    move-exception v0

    goto :goto_186

    .line 327
    :catch_15e
    move-exception v0

    move/from16 v5, p2

    move/from16 v6, p4

    :goto_163
    move-object/from16 v15, p6

    .line 328
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_165
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_18a

    .line 325
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_169
    move-exception v0

    move/from16 v5, p2

    move/from16 v6, p4

    :goto_16e
    move-object/from16 v15, p6

    .line 326
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :goto_170
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_189

    .line 323
    :catch_174
    move-exception v0

    move/from16 v5, p2

    move/from16 v6, p4

    :goto_179
    move-object/from16 v15, p6

    .line 324
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_17b
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_189

    .line 321
    :catch_17f
    move-exception v0

    move/from16 v5, p2

    move/from16 v6, p4

    :goto_184
    move-object/from16 v15, p6

    .line 322
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    :goto_186
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 329
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_189
    :goto_189
    nop

    .line 330
    :goto_18a
    return-void
.end method

.method private static blacklist playRandomSound(I)Z
    .registers 3
    .param p0, "index"    # I

    .line 1025
    const/4 v0, -0x1

    if-eq p0, v0, :cond_f

    .line 1026
    sget-object v0, Landroid/media/AudioServiceInjector;->mLockRandomStatusUpdate:Ljava/lang/Object;

    monitor-enter v0

    .line 1027
    :try_start_6
    sget-object v1, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v1, v1, p0

    monitor-exit v0

    return v1

    .line 1028
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v1

    .line 1030
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist queryCurrentTimeZone()Ljava/lang/String;
    .registers 6

    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, "CurrentTimeHours":I
    const/4 v1, 0x0

    .line 643
    .local v1, "CurrentTimeMins":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 644
    .local v2, "CurrentTimeCalendar":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 645
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 646
    sget-boolean v4, Landroid/media/AudioServiceInjector;->mInternationalLocation:Z

    if-nez v4, :cond_1b

    .line 647
    invoke-static {v0, v1}, Landroid/media/AudioServiceInjector;->queryCurrentTimeZoneForDomestic(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "TimeZone":Ljava/lang/String;
    goto :goto_4d

    .line 649
    .end local v3    # "TimeZone":Ljava/lang/String;
    :cond_1b
    const/16 v4, 0x8

    if-ltz v0, :cond_27

    if-ge v0, v4, :cond_27

    .line 651
    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    .restart local v3    # "TimeZone":Ljava/lang/String;
    goto :goto_4d

    .line 652
    .end local v3    # "TimeZone":Ljava/lang/String;
    :cond_27
    const/4 v5, 0x0

    if-lt v0, v4, :cond_31

    if-ge v0, v3, :cond_31

    .line 654
    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v3, v3, v5

    .restart local v3    # "TimeZone":Ljava/lang/String;
    goto :goto_4d

    .line 655
    .end local v3    # "TimeZone":Ljava/lang/String;
    :cond_31
    const/16 v4, 0xe

    if-lt v0, v3, :cond_3d

    if-ge v0, v4, :cond_3d

    .line 657
    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .restart local v3    # "TimeZone":Ljava/lang/String;
    goto :goto_4d

    .line 658
    .end local v3    # "TimeZone":Ljava/lang/String;
    :cond_3d
    if-lt v0, v4, :cond_48

    const/16 v3, 0x13

    if-ge v0, v3, :cond_48

    .line 660
    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v3, v3, v5

    .restart local v3    # "TimeZone":Ljava/lang/String;
    goto :goto_4d

    .line 662
    .end local v3    # "TimeZone":Ljava/lang/String;
    :cond_48
    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    .line 665
    .restart local v3    # "TimeZone":Ljava/lang/String;
    :goto_4d
    return-object v3
.end method

.method private static blacklist queryCurrentTimeZoneForDomestic(II)Ljava/lang/String;
    .registers 5
    .param p0, "CurrentTimeHours"    # I
    .param p1, "CurrentTimeMins"    # I

    .line 615
    if-ltz p0, :cond_12

    sget v0, Landroid/media/AudioServiceInjector;->mSunriseTimeHours:I

    if-lt p0, v0, :cond_c

    if-ne p0, v0, :cond_12

    sget v0, Landroid/media/AudioServiceInjector;->mSunriseTimeMins:I

    if-ge p1, v0, :cond_12

    .line 619
    :cond_c
    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .local v0, "TimeZone":Ljava/lang/String;
    goto :goto_48

    .line 620
    .end local v0    # "TimeZone":Ljava/lang/String;
    :cond_12
    sget v0, Landroid/media/AudioServiceInjector;->mSunriseTimeHours:I

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-gt p0, v0, :cond_1f

    if-ne p0, v0, :cond_26

    sget v0, Landroid/media/AudioServiceInjector;->mSunriseTimeMins:I

    if-lt p1, v0, :cond_26

    :cond_1f
    if-ge p0, v2, :cond_26

    .line 624
    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v0, v0, v1

    .restart local v0    # "TimeZone":Ljava/lang/String;
    goto :goto_48

    .line 625
    .end local v0    # "TimeZone":Ljava/lang/String;
    :cond_26
    const/16 v0, 0xe

    if-lt p0, v2, :cond_32

    if-ge p0, v0, :cond_32

    .line 627
    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .restart local v0    # "TimeZone":Ljava/lang/String;
    goto :goto_48

    .line 628
    .end local v0    # "TimeZone":Ljava/lang/String;
    :cond_32
    if-lt p0, v0, :cond_43

    sget v0, Landroid/media/AudioServiceInjector;->mSunsetTimeHours:I

    if-lt p0, v0, :cond_3e

    if-ne p0, v0, :cond_43

    sget v0, Landroid/media/AudioServiceInjector;->mSunsetTimeMins:I

    if-ge p1, v0, :cond_43

    .line 632
    :cond_3e
    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v0, v0, v1

    .restart local v0    # "TimeZone":Ljava/lang/String;
    goto :goto_48

    .line 634
    .end local v0    # "TimeZone":Ljava/lang/String;
    :cond_43
    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 636
    .restart local v0    # "TimeZone":Ljava/lang/String;
    :goto_48
    return-object v0
.end method

.method private static blacklist querySerialsIndex(I)I
    .registers 6
    .param p0, "typeIndex"    # I

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "SerialsIndex":I
    sget-object v1, Landroid/media/AudioServiceInjector;->mLockRandomStatusUpdate:Ljava/lang/Object;

    monitor-enter v1

    .line 671
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_5
    :try_start_5
    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1b

    .line 672
    aget-object v3, v3, v2

    sget-object v4, Landroid/media/AudioServiceInjector;->mNatureSoundString:[Ljava/lang/String;

    aget-object v4, v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 673
    move v0, v2

    .line 674
    goto :goto_1b

    .line 671
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 677
    .end local v2    # "index":I
    :cond_1b
    :goto_1b
    monitor-exit v1

    .line 678
    return v0

    .line 677
    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method private static blacklist querySoundSourcesNumber(Ljava/lang/String;)I
    .registers 10
    .param p0, "type"    # Ljava/lang/String;

    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, "RowIndex":I
    const/4 v1, 0x0

    .line 684
    .local v1, "ColumnIndex":I
    const/4 v2, 0x0

    .line 685
    .local v2, "TypeIndex":I
    const/4 v3, 0x0

    .line 686
    .local v3, "result":I
    const/4 v4, 0x1

    .line 687
    .local v4, "NumberDefault":I
    invoke-static {p0}, Landroid/media/AudioServiceInjector;->getIndexForType(Ljava/lang/String;)I

    move-result v2

    .line 688
    sget-object v5, Landroid/media/AudioServiceInjector;->mLockRandomStatusUpdate:Ljava/lang/Object;

    monitor-enter v5

    .line 689
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_d
    :try_start_d
    sget-object v7, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_23

    .line 690
    aget-object v7, v7, v6

    sget-object v8, Landroid/media/AudioServiceInjector;->mNatureSoundString:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 691
    move v0, v6

    .line 692
    goto :goto_23

    .line 689
    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 695
    .end local v6    # "index":I
    :cond_23
    :goto_23
    monitor-exit v5
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_9a

    .line 696
    invoke-static {}, Landroid/media/AudioServiceInjector;->queryCurrentTimeZone()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    .line 697
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_2b
    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_3f

    .line 698
    aget-object v6, v6, v5

    sget-object v7, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 699
    move v1, v5

    .line 700
    goto :goto_3f

    .line 697
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 703
    .end local v5    # "index":I
    :cond_3f
    :goto_3f
    const/4 v5, 0x3

    if-ge v0, v5, :cond_60

    const/4 v5, 0x4

    if-ge v1, v5, :cond_60

    .line 704
    sget-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PLAY_STRATEGY:[Ljava/lang/String;

    aget-object v5, v5, v0

    const-string v6, "TimeZonesRandom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 705
    sget-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_NUMBER:[[I

    aget-object v5, v5, v0

    aget v3, v5, v1

    goto :goto_61

    .line 707
    :cond_58
    sget-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_NUMBER:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x0

    aget v3, v5, v6

    goto :goto_61

    .line 710
    :cond_60
    move v3, v4

    .line 711
    :goto_61
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "querySoundSourcesNumber:result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RowIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ColumnIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTimeZone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return v3

    .line 695
    :catchall_9a
    move-exception v6

    :try_start_9b
    monitor-exit v5
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v6
.end method

.method private static blacklist restoreAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V
    .registers 15
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxIndexSrc"    # I
    .param p3, "maxIndexDst"    # I
    .param p4, "streamVolumeAlias"    # [I

    .line 525
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 526
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 527
    .local v1, "remainingDevices":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-eqz v1, :cond_5b

    .line 528
    const-string v3, "volume_music"

    .line 529
    .local v3, "name":Ljava/lang/String;
    const-string v4, "volume_music_before_mute"

    .line 531
    .local v4, "nameForMute":Ljava/lang/String;
    const/4 v5, 0x1

    shl-int/2addr v5, v2

    .line 532
    .local v5, "device":I
    and-int v6, v5, v1

    if-nez v6, :cond_13

    .line 533
    goto :goto_58

    .line 535
    :cond_13
    not-int v6, v5

    and-int/2addr v1, v6

    .line 538
    invoke-static {v5}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v6

    .line 539
    .local v6, "suffix":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4b

    .line 540
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 541
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 544
    :cond_4b
    const/16 v7, 0xa

    const/4 v8, -0x2

    invoke-static {v0, v4, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 546
    .local v7, "volume":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_58

    .line 548
    invoke-static {v0, v3, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 527
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameForMute":Ljava/lang/String;
    .end local v5    # "device":I
    .end local v6    # "suffix":Ljava/lang/String;
    .end local v7    # "volume":I
    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 557
    .end local v2    # "i":I
    :cond_5b
    invoke-static {p0}, Landroid/media/AudioServiceInjector;->updateMusicStreamVolume(Ljava/lang/Object;)V

    .line 558
    return-void
.end method

.method private static blacklist saveAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V
    .registers 21
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxIndexSrc"    # I
    .param p3, "maxIndexDst"    # I
    .param p4, "streamVolumeAlias"    # [I

    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 490
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 491
    .local v1, "remainingDevices":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-eqz v1, :cond_69

    .line 492
    const-string v3, "volume_music"

    .line 493
    .local v3, "name":Ljava/lang/String;
    const-string v4, "volume_music_before_mute"

    .line 494
    .local v4, "nameForMute":Ljava/lang/String;
    const/4 v5, 0x1

    shl-int/2addr v5, v2

    .line 495
    .local v5, "device":I
    and-int v6, v5, v1

    if-nez v6, :cond_13

    .line 496
    goto :goto_66

    .line 498
    :cond_13
    not-int v6, v5

    and-int/2addr v1, v6

    .line 501
    invoke-static {v5}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v13

    .line 502
    .local v13, "suffix":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4b

    .line 503
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 507
    :cond_4b
    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-static {v0, v3, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    .line 510
    .local v12, "volume":I
    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object/from16 v6, p0

    move v9, v5

    move/from16 v10, p3

    move-object/from16 v11, p4

    move v15, v12

    .end local v12    # "volume":I
    .local v15, "volume":I
    move-object/from16 v12, p1

    invoke-static/range {v6 .. v12}, Landroid/media/AudioServiceInjector;->onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V

    .line 513
    if-eq v15, v14, :cond_66

    .line 514
    const/4 v6, -0x2

    invoke-static {v0, v4, v15, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 491
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameForMute":Ljava/lang/String;
    .end local v5    # "device":I
    .end local v13    # "suffix":Ljava/lang/String;
    .end local v15    # "volume":I
    :cond_66
    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 521
    .end local v2    # "i":I
    :cond_69
    return-void
.end method

.method public static blacklist sendVolumeBoostBroadcast(ZLandroid/content/Context;)V
    .registers 6
    .param p0, "boostEnabled"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .line 1211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1213
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "miui.intent.action.VOLUME_BOOST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1214
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "volume_boost_state"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1215
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 1217
    .end local v2    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1218
    nop

    .line 1219
    return-void

    .line 1217
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1218
    throw v2
.end method

.method public static blacklist setDefaultTimeZoneStatus(Z)V
    .registers 3
    .param p0, "status"    # Z

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultTimeZoneStatus: mInternationalLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    sput-boolean p0, Landroid/media/AudioServiceInjector;->mInternationalLocation:Z

    .line 583
    return-void
.end method

.method public static blacklist setStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V
    .registers 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "maxIndex"    # I
    .param p5, "streamVolumeAlias"    # [I
    .param p6, "context"    # Landroid/content/Context;

    .line 272
    aget v0, p5, p1

    invoke-static {p6, v0, p3, p2}, Landroid/media/AudioServiceInjector;->handleZenModeVolumeChanged(Landroid/content/Context;III)V

    .line 273
    invoke-static/range {p0 .. p6}, Landroid/media/AudioServiceInjector;->onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V

    .line 274
    return-void
.end method

.method public static blacklist setSunriseAndSunsetTime(IIII)V
    .registers 4
    .param p0, "SunriseHours"    # I
    .param p1, "SunriseMins"    # I
    .param p2, "SunsetHours"    # I
    .param p3, "SunsetMins"    # I

    .line 587
    sput p0, Landroid/media/AudioServiceInjector;->mSunriseTimeHours:I

    .line 588
    sput p2, Landroid/media/AudioServiceInjector;->mSunsetTimeHours:I

    .line 589
    sput p1, Landroid/media/AudioServiceInjector;->mSunriseTimeMins:I

    .line 590
    sput p3, Landroid/media/AudioServiceInjector;->mSunsetTimeMins:I

    .line 591
    return-void
.end method

.method public static blacklist setVolumeBoost(ZLandroid/content/Context;)Z
    .registers 6
    .param p0, "boostEnabled"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .line 1202
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1203
    .local v0, "am":Landroid/media/AudioManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voice_volume_boost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_18

    const-string v2, "false"

    goto :goto_1a

    :cond_18
    const-string v2, "true"

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1204
    .local v1, "params":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1206
    xor-int/lit8 v2, p0, 0x1

    invoke-static {v2, p1}, Landroid/media/AudioServiceInjector;->sendVolumeBoostBroadcast(ZLandroid/content/Context;)V

    .line 1207
    xor-int/lit8 v2, p0, 0x1

    return v2
.end method

.method public static blacklist shouldAdjustHiFiVolume(IIIILandroid/content/Context;)Z
    .registers 11
    .param p0, "streamType"    # I
    .param p1, "direction"    # I
    .param p2, "streamIndex"    # I
    .param p3, "maxIndex"    # I
    .param p4, "context"    # Landroid/content/Context;

    .line 246
    invoke-static {}, Landroid/media/AudioServiceInjector;->isScorpio()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-static {}, Landroid/media/AudioServiceInjector;->isLithium()Z

    move-result v0

    if-nez v0, :cond_e

    .line 247
    return v1

    .line 249
    :cond_e
    const/4 v0, 0x3

    if-ne p0, v0, :cond_33

    invoke-static {p4}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_33

    .line 253
    :cond_18
    invoke-static {p4}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v0

    .line 254
    .local v0, "currentHiFiVolume":I
    move v2, p3

    .line 255
    .local v2, "maxStreamIndex":I
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne p1, v3, :cond_25

    if-lez v0, :cond_25

    move v3, v4

    goto :goto_26

    :cond_25
    move v3, v1

    .line 256
    .local v3, "adjustDownHiFiVolume":Z
    :goto_26
    if-ne p1, v4, :cond_2c

    if-ne p2, v2, :cond_2c

    move v5, v4

    goto :goto_2d

    :cond_2c
    move v5, v1

    .line 257
    .local v5, "adjustUpHiFiVolume":Z
    :goto_2d
    if-nez v3, :cond_31

    if-eqz v5, :cond_32

    :cond_31
    move v1, v4

    :cond_32
    return v1

    .line 250
    .end local v0    # "currentHiFiVolume":I
    .end local v2    # "maxStreamIndex":I
    .end local v3    # "adjustDownHiFiVolume":Z
    .end local v5    # "adjustUpHiFiVolume":Z
    :cond_33
    :goto_33
    return v1
.end method

.method public static blacklist shouldRun(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "mContext"    # Landroid/content/Context;

    .line 1375
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1376
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 1377
    .local v1, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1378
    .local v3, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 1379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "importance is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "AudioService"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x190

    if-ne v2, v5, :cond_55

    goto :goto_56

    :cond_55
    move v4, v7

    :goto_56
    return v4

    .line 1382
    .end local v3    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_57
    goto :goto_10

    .line 1383
    :cond_58
    return v4
.end method

.method public static blacklist showNotification(IILandroid/content/Context;)V
    .registers 19
    .param p0, "uid"    # I
    .param p1, "event"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 1491
    move-object/from16 v6, p2

    sget v0, Landroid/media/AudioServiceInjector;->mShowNotificationTimes:I

    sget v1, Landroid/media/AudioServiceInjector;->MAX_SHOW_NOTIFICATION_TIMES:I

    if-ge v0, v1, :cond_13b

    const/4 v7, 0x2

    move/from16 v8, p1

    if-ne v8, v7, :cond_13b

    .line 1493
    const-string v0, "ro.vendor.audio.sfx.audiovisual"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1a

    move/from16 v10, p0

    goto/16 :goto_13d

    .line 1496
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1497
    .local v9, "pm":Landroid/content/pm/PackageManager;
    move/from16 v10, p0

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    .line 1498
    .local v11, "pkg":Ljava/lang/String;
    sget-object v0, Landroid/media/AudioServiceInjector;->mMusicWhiteList:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1499
    return-void

    .line 1501
    :cond_2d
    const-string v0, "notification"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/NotificationManager;

    .line 1502
    .local v12, "mNm":Landroid/app/NotificationManager;
    invoke-virtual {v12}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_3c
    if-ge v3, v2, :cond_4c

    aget-object v4, v0, v3

    .line 1503
    .local v4, "notify":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    sget v13, Landroid/media/AudioServiceInjector;->NOTIFICATION_ID:I

    if-ne v5, v13, :cond_49

    .line 1504
    return-void

    .line 1502
    .end local v4    # "notify":Landroid/service/notification/StatusBarNotification;
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 1507
    :cond_4c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "MiAudioVisualNotificationTimes"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/media/AudioServiceInjector;->mShowNotificationTimes:I

    .line 1510
    sget v3, Landroid/media/AudioServiceInjector;->MAX_SHOW_NOTIFICATION_TIMES:I

    const-string v4, "AudioService"

    const/4 v13, 0x1

    if-ge v0, v3, :cond_114

    .line 1511
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Landroid/media/AudioServiceInjector;->mShowNotificationTimes:I

    add-int/2addr v1, v13

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show MiAudioVisual Notification for pkg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v14, v0

    .line 1522
    .local v14, "it":Landroid/content/Intent;
    const-string v0, "com.miui.misound"

    const-string v1, "com.miui.misound.HeadsetSettingsActivity"

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1523
    const/4 v1, 0x0

    const/high16 v3, 0x4000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p2

    move-object v2, v14

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1527
    .local v0, "pit":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    const-string v3, "MISOUND_NOTIFICATION_ID"

    const-string v4, "MISOUND_NOTIFICATION_NAME"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1529
    .local v1, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v12, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1531
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x110f028d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1532
    .local v2, "title":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110f028c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1533
    .local v4, "summary":Ljava/lang/String;
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, v6, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x1108010a

    .line 1534
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v7, 0x0

    .line 1535
    invoke-virtual {v3, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const v7, 0x106001c

    .line 1536
    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1539
    const-string v7, "sys"

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1540
    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1541
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1542
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1543
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1544
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1545
    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1547
    .local v3, "builder":Landroid/app/Notification$Builder;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1548
    .local v5, "iconExtra":Landroid/os/Bundle;
    const-string v7, "miui.targetPkg"

    const-string v8, "com.android.settings"

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1549
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 1550
    const/4 v7, 0x0

    sget v8, Landroid/media/AudioServiceInjector;->NOTIFICATION_ID:I

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    sget-object v15, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v12, v7, v8, v13, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1551
    return-void

    .line 1514
    .end local v0    # "pit":Landroid/app/PendingIntent;
    .end local v1    # "channel":Landroid/app/NotificationChannel;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "builder":Landroid/app/Notification$Builder;
    .end local v4    # "summary":Ljava/lang/String;
    .end local v5    # "iconExtra":Landroid/os/Bundle;
    .end local v14    # "it":Landroid/content/Intent;
    :cond_114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiAudioVisual notification"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v13, [Ljava/lang/Object;

    sget v3, Landroid/media/AudioServiceInjector;->mShowNotificationTimes:I

    .line 1515
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "already show %d times"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1514
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    return-void

    .line 1491
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "mNm":Landroid/app/NotificationManager;
    :cond_13b
    move/from16 v10, p0

    .line 1494
    :goto_13d
    return-void
.end method

.method public static blacklist startAudioVisualIfsatisfiedWith(Ljava/lang/String;Ljava/util/List;Landroid/os/Handler;)V
    .registers 13
    .param p0, "action"    # Ljava/lang/String;
    .param p2, "mH"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1432
    .local p1, "currentPlayback":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter startAudioVisual with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const-string v0, "ro.vendor.audio.sfx.audiovisual"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1434
    const-string v0, "startAudioVisual exit, device not support"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    return-void

    .line 1437
    :cond_27
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1438
    .local v0, "mContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "audio_visual_screen_lock_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3d

    .line 1440
    return-void

    .line 1443
    :cond_3d
    const-string v3, "keyguard"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 1444
    .local v3, "mKeyguardManager":Landroid/app/KeyguardManager;
    sget-boolean v5, Landroid/media/AudioServiceInjector;->mStartAudioVisualPending:Z

    if-nez v5, :cond_55

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1445
    const-string v2, "startAudioVisual exit with keyguardLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    return-void

    .line 1448
    :cond_55
    sput-boolean v4, Landroid/media/AudioServiceInjector;->mStartAudioVisualPending:Z

    .line 1451
    const-string v5, "android.intent.action.KEYCODE_POWER_UP"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 1452
    sput-boolean v4, Landroid/media/AudioServiceInjector;->mPowerKeyReceived:Z

    .line 1453
    sget-object v4, Landroid/media/AudioServiceInjector;->startAudioVisualRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 1454
    invoke-virtual {p2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1455
    sput-boolean v2, Landroid/media/AudioServiceInjector;->mPowerKeyReceived:Z

    .line 1456
    return-void

    .line 1458
    :cond_6f
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 1459
    sput-boolean v4, Landroid/media/AudioServiceInjector;->mScreenOffReceived:Z

    .line 1466
    :cond_79
    sget-boolean v4, Landroid/media/AudioServiceInjector;->mScreenOffReceived:Z

    if-eqz v4, :cond_ea

    sget-boolean v4, Landroid/media/AudioServiceInjector;->mPowerKeyReceived:Z

    if-eqz v4, :cond_ea

    .line 1467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Landroid/media/AudioServiceInjector;->mLastIntentPowerKeyOrScreenOffTimeMs:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x5dc

    cmp-long v4, v4, v6

    if-gez v4, :cond_ea

    .line 1468
    const-string v4, "enter start AudioVisual"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1470
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioPlaybackConfiguration;

    .line 1471
    .local v6, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    .line 1472
    .local v7, "pkg":Ljava/lang/String;
    sget-object v8, Landroid/media/AudioServiceInjector;->mMusicWhiteList:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e3

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v8

    if-eqz v8, :cond_e3

    .line 1473
    const-string v8, "com.xiaomi.miaudiovisual"

    invoke-static {v8, v0}, Landroid/media/AudioServiceInjector;->shouldRun(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_e3

    .line 1474
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playback packagename is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    sget-object v1, Landroid/media/AudioServiceInjector;->startAudioVisualRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1f4

    invoke-virtual {p2, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1476
    goto :goto_e4

    .line 1478
    .end local v6    # "apc":Landroid/media/AudioPlaybackConfiguration;
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_e3
    goto :goto_9b

    .line 1479
    :cond_e4
    :goto_e4
    sput-boolean v2, Landroid/media/AudioServiceInjector;->mPowerKeyReceived:Z

    .line 1480
    sput-boolean v2, Landroid/media/AudioServiceInjector;->mScreenOffReceived:Z

    .line 1481
    sput-boolean v2, Landroid/media/AudioServiceInjector;->mStartAudioVisualPending:Z

    .line 1484
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_ea
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/media/AudioServiceInjector;->mLastIntentPowerKeyOrScreenOffTimeMs:J

    .line 1485
    return-void
.end method

.method public static blacklist supportKaraokeMode(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 1291
    sget-object v0, Landroid/media/AudioServiceInjector;->sAppList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist supportVoipMode(Ljava/lang/String;)Z
    .registers 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 1295
    const-string v0, "get_audiocloud_voip_app_name_list"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1296
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 1297
    return v2

    .line 1298
    :cond_e
    sget-object v1, Landroid/media/AudioServiceInjector;->sVoipAppList:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    return v2
.end method

.method public static blacklist tryBlockMusicUnmute(Landroid/content/Context;IZZ)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "streamType"    # I
    .param p2, "newMuteState"    # Z
    .param p3, "oldMuteState"    # Z

    .line 1597
    const-string v0, "AudioService"

    const-string v1, "[tryBlockMusicUnmute]Enter....."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mute_music_at_silent"

    const/4 v3, 0x0

    const/4 v4, -0x3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1601
    .local v1, "muteMusic":I
    if-nez v1, :cond_16

    .line 1603
    return v3

    .line 1607
    :cond_16
    const/4 v2, 0x3

    if-ne p1, v2, :cond_7a

    if-eq p2, p3, :cond_7a

    if-nez p2, :cond_7a

    .line 1612
    :try_start_1d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "miui_unmute_by_settings"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2c

    move v2, v4

    goto :goto_2d

    :cond_2c
    move v2, v3

    .line 1615
    .local v2, "unMuteBySettings":Z
    :goto_2d
    if-eqz v2, :cond_35

    .line 1616
    const-string v4, "[tryBlockMusicUnmute]DON\'T block due to unmute by settings."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    return v3

    .line 1621
    :cond_35
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1622
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.notification.MiuiMusicMuteActivity"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1623
    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1625
    invoke-static {p0, v5}, Landroid/media/AudioServiceInjector;->canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 1626
    const-string v4, "[tryBlockMusicUnmute]DON\'T block due to none action exist."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    return v3

    .line 1631
    :cond_52
    const-string v6, "notification"

    .line 1632
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 1633
    .local v6, "mNm":Landroid/app/NotificationManager;
    if-eqz v6, :cond_6c

    .line 1634
    invoke-virtual {v6}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6c

    .line 1635
    const-string v7, "[tryBlockMusicUnmute]Haha..... will try block the unmute action."

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1637
    return v4

    .line 1639
    :cond_6c
    const-string v4, "[tryBlockMusicUnmute]DON\'T block since not under ZEN_MODE_MIUI_SILENT."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_71} :catch_73

    .line 1645
    nop

    .end local v2    # "unMuteBySettings":Z
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "mNm":Landroid/app/NotificationManager;
    goto :goto_7a

    .line 1641
    :catch_73
    move-exception v2

    .line 1643
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "[tryBlockMusicUnmute]DON\'T block since exception occurs."

    invoke-static {v0, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1644
    return v3

    .line 1647
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7a
    :goto_7a
    return v3
.end method

.method public static blacklist tryBlockMusicUnmuteDone(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1651
    const-string v0, "AudioService"

    if-nez p0, :cond_5

    .line 1652
    return-void

    .line 1656
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "miui_unmute_by_settings"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    move v3, v2

    :cond_14
    move v1, v3

    .line 1659
    .local v1, "unMuteBySettings":Z
    if-eqz v1, :cond_2d

    .line 1660
    new-instance v2, Landroid/content/Intent;

    const-string v3, "miui.intent.action.MUSIC_UNMUTE_BY_USER_DONE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1661
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1662
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1663
    const-string v3, "[tryBlockMusicUnmuteDone]DONE....."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    nop

    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_32

    .line 1665
    :cond_2d
    const-string v2, "[tryBlockMusicUnmuteDone]RETURN....."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_33

    .line 1670
    .end local v1    # "unMuteBySettings":Z
    :goto_32
    goto :goto_39

    .line 1667
    :catch_33
    move-exception v1

    .line 1669
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "[tryBlockMusicUnmuteDone]exception occurs."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1671
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_39
    return-void
.end method

.method private static blacklist updateMusicStreamVolume(Ljava/lang/Object;)V
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;

    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 564
    const-string v1, "reloadMusicVolume"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 565
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_2e

    .line 566
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 567
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1a} :catch_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1a} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1a} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1a} :catch_1b

    goto :goto_2e

    .line 575
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_1b
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2f

    .line 573
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_20
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2e

    .line 571
    :catch_25
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2e

    .line 569
    :catch_2a
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 577
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_2e
    :goto_2e
    nop

    .line 578
    :goto_2f
    return-void
.end method

.method public static blacklist updateNotificationMode(Landroid/content/Context;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .line 816
    const/4 v0, 0x1

    .line 817
    .local v0, "randomSound":Z
    const/4 v1, 0x0

    .line 818
    .local v1, "uri":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 819
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/media/AudioServiceInjector;->mLockRandomStatusUpdate:Ljava/lang/Object;

    monitor-enter v3

    .line 820
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_a
    :try_start_a
    sget-object v5, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v4, v6, :cond_46

    .line 821
    aget-object v5, v5, v4

    .line 822
    .local v5, "type":Ljava/lang/String;
    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 823
    sget-object v6, Landroid/media/AudioServiceInjector;->sSoundUrlMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    invoke-static {v1}, Landroid/media/AudioServiceInjector;->getMiuiNatureSoundStatus(Ljava/lang/String;)Z

    move-result v6

    move v0, v6

    .line 825
    sget-object v6, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v9, v6, v4

    if-eq v0, v9, :cond_39

    .line 826
    aput-boolean v0, v6, v4

    .line 827
    sput v7, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 828
    if-ne v0, v8, :cond_39

    sget-boolean v6, Landroid/media/AudioServiceInjector;->mInternationalLocation:Z

    if-nez v6, :cond_39

    sget-boolean v6, Landroid/media/AudioServiceInjector;->mFirstUpdateMode:Z

    if-nez v6, :cond_39

    .line 830
    invoke-static {p0}, Landroid/media/AudioServiceInjector;->updateSunriseAndSunsetTime(Landroid/content/Context;)V

    .line 832
    :cond_39
    sget-object v6, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v6, v6, v4

    if-ne v6, v8, :cond_43

    .line 833
    sget-object v6, Landroid/media/AudioServiceInjector;->mNatureSoundString:[Ljava/lang/String;

    aput-object v1, v6, v4

    .line 820
    .end local v5    # "type":Ljava/lang/String;
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 836
    .end local v4    # "index":I
    :cond_46
    sput-boolean v7, Landroid/media/AudioServiceInjector;->mRandomSoundAtLeastOne:Z

    .line 837
    const/4 v4, 0x0

    .restart local v4    # "index":I
    :goto_49
    sget-object v5, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    array-length v6, v5

    if-ge v4, v6, :cond_58

    .line 838
    aget-boolean v5, v5, v4

    if-ne v5, v8, :cond_55

    .line 839
    sput-boolean v8, Landroid/media/AudioServiceInjector;->mRandomSoundAtLeastOne:Z

    .line 840
    goto :goto_58

    .line 837
    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 843
    .end local v4    # "index":I
    :cond_58
    :goto_58
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNotificationMode: mRandomSoundAtLeastOne="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Landroid/media/AudioServiceInjector;->mRandomSoundAtLeastOne:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    monitor-exit v3
    :try_end_73
    .catchall {:try_start_a .. :try_end_73} :catchall_d9

    .line 845
    sget-boolean v3, Landroid/media/AudioServiceInjector;->mFirstUpdateMode:Z

    if-ne v3, v8, :cond_79

    .line 846
    sput-boolean v7, Landroid/media/AudioServiceInjector;->mFirstUpdateMode:Z

    .line 849
    :cond_79
    const/4 v3, -0x1

    .line 850
    .local v3, "parameter":I
    const/4 v4, 0x0

    .restart local v4    # "index":I
    :goto_7b
    :try_start_7b
    sget-object v5, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_98

    .line 851
    aget-object v5, v5, v4

    .line 852
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 851
    invoke-static {v2, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    move v3, v5

    .line 853
    if-eqz v3, :cond_95

    sget-object v5, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v6, v5, v4

    if-eq v3, v6, :cond_95

    .line 854
    aput v3, v5, v4
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_95} :catch_99

    .line 850
    :cond_95
    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    .line 859
    .end local v3    # "parameter":I
    .end local v4    # "index":I
    :cond_98
    goto :goto_b2

    .line 857
    :catch_99
    move-exception v3

    .line 858
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot get random notification settings provider value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_b2
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNotificationMode():\n mRandomSound[]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n mTimeAndSoundNumParameters[]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    return-void

    .line 844
    :catchall_d9
    move-exception v4

    :try_start_da
    monitor-exit v3
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    throw v4
.end method

.method public static blacklist updateRestriction(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 406
    return-void
.end method

.method public static blacklist updateSunriseAndSunsetTime(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 608
    const-string v0, "AudioService"

    const-string v1, "updateSunriseAndSunsetTime sendBroadcast!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.media.update.sunrise.sunset.time"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 611
    return-void
.end method

.method private static blacklist wasStreamActiveRecently(II)Z
    .registers 3
    .param p0, "stream"    # I
    .param p1, "delay_ms"    # I

    .line 1041
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1042
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 1041
    :goto_10
    return v0
.end method
