.class public Landroid/media/MediaPlayer;
.super Landroid/media/PlayerBase;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Listener;
.implements Landroid/media/VolumeAutomation;
.implements Landroid/media/AudioRouting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$OnSubtitleDataListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$EventHandler;,
        Landroid/media/MediaPlayer$TimeProvider;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnRtpRxNoticeListener;,
        Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;,
        Landroid/media/MediaPlayer$OnDrmConfigHelper;,
        Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;,
        Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;,
        Landroid/media/MediaPlayer$TrackInfo;,
        Landroid/media/MediaPlayer$DrmInfo;,
        Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;,
        Landroid/media/MediaPlayer$OnDrmInfoListener;,
        Landroid/media/MediaPlayer$OnDrmPreparedListener;,
        Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;,
        Landroid/media/MediaPlayer$ProvisioningServerErrorException;,
        Landroid/media/MediaPlayer$NoDrmSchemeException;,
        Landroid/media/MediaPlayer$ProvisioningThread;,
        Landroid/media/MediaPlayer$MetricsConstants;,
        Landroid/media/MediaPlayer$PrepareDrmStatusCode;,
        Landroid/media/MediaPlayer$SeekMode;,
        Landroid/media/MediaPlayer$PlaybackRateAudioMode;
    }
.end annotation


# static fields
.field public static final greylist-max-o APPLY_METADATA_FILTER:Z = true

.field public static final greylist BYPASS_METADATA_FILTER:Z = false

.field private static final greylist-max-o IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final greylist-max-o INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final greylist-max-o INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final greylist-max-o INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final greylist-max-o INVOKE_ID_GET_SELECTED_TRACK:I = 0x7

.field private static final greylist-max-o INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final greylist-max-o INVOKE_ID_SELECT_TRACK:I = 0x4

.field private static final blacklist INVOKE_ID_SET_PLAYER_IID:I = 0x8

.field private static final greylist-max-o INVOKE_ID_SET_VIDEO_SCALE_MODE:I = 0x6

.field private static final greylist-max-o KEY_PARAMETER_AUDIO_ATTRIBUTES:I = 0x578

.field private static final greylist-max-o MEDIA_AUDIO_ROUTING_CHANGED:I = 0x2710

.field private static final greylist-max-o MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final greylist-max-o MEDIA_DRM_INFO:I = 0xd2

.field private static final greylist-max-o MEDIA_ERROR:I = 0x64

.field public static final whitelist MEDIA_ERROR_IO:I = -0x3ec

.field public static final whitelist MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final whitelist MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final whitelist MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final greylist-max-o MEDIA_ERROR_SYSTEM:I = -0x80000000

.field public static final whitelist MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final whitelist MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final whitelist MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field private static final greylist-max-o MEDIA_INFO:I = 0xc8

.field public static final whitelist MEDIA_INFO_AUDIO_NOT_PLAYING:I = 0x324

.field public static final whitelist MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final whitelist MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final whitelist MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final greylist-max-r MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final whitelist MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final greylist-max-o MEDIA_INFO_NETWORK_BANDWIDTH:I = 0x2bf

.field public static final whitelist MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final whitelist MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final whitelist MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final greylist-max-r MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final whitelist MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final whitelist MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final whitelist MEDIA_INFO_VIDEO_NOT_PLAYING:I = 0x325

.field public static final whitelist MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final whitelist MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final greylist-max-o MEDIA_META_DATA:I = 0xca

.field public static final greylist-max-o MEDIA_MIMETYPE_TEXT_CEA_608:Ljava/lang/String; = "text/cea-608"

.field public static final greylist-max-o MEDIA_MIMETYPE_TEXT_CEA_708:Ljava/lang/String; = "text/cea-708"

.field public static final whitelist MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final greylist-max-o MEDIA_MIMETYPE_TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field private static final greylist-max-o MEDIA_NOP:I = 0x0

.field private static final greylist-max-o MEDIA_NOTIFY_TIME:I = 0x62

.field private static final greylist-max-o MEDIA_PAUSED:I = 0x7

.field private static final greylist-max-o MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final greylist-max-o MEDIA_PREPARED:I = 0x1

.field private static final blacklist MEDIA_RTP_RX_NOTICE:I = 0x12c

.field private static final greylist-max-o MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final greylist-max-o MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final greylist-max-o MEDIA_SKIPPED:I = 0x9

.field private static final greylist-max-o MEDIA_STARTED:I = 0x6

.field private static final greylist-max-o MEDIA_STOPPED:I = 0x8

.field private static final greylist-max-o MEDIA_SUBTITLE_DATA:I = 0xc9

.field private static final greylist-max-o MEDIA_TIMED_TEXT:I = 0x63

.field private static final greylist-max-o MEDIA_TIME_DISCONTINUITY:I = 0xd3

.field public static final greylist METADATA_ALL:Z = false

.field public static final greylist-max-o METADATA_UPDATE_ONLY:Z = true

.field public static final greylist-max-o PLAYBACK_RATE_AUDIO_MODE_DEFAULT:I = 0x0

.field public static final greylist-max-o PLAYBACK_RATE_AUDIO_MODE_RESAMPLE:I = 0x2

.field public static final greylist-max-o PLAYBACK_RATE_AUDIO_MODE_STRETCH:I = 0x1

.field public static final whitelist PREPARE_DRM_STATUS_PREPARATION_ERROR:I = 0x3

.field public static final whitelist PREPARE_DRM_STATUS_PROVISIONING_NETWORK_ERROR:I = 0x1

.field public static final whitelist PREPARE_DRM_STATUS_PROVISIONING_SERVER_ERROR:I = 0x2

.field public static final whitelist PREPARE_DRM_STATUS_SUCCESS:I = 0x0

.field public static final whitelist SEEK_CLOSEST:I = 0x3

.field public static final whitelist SEEK_CLOSEST_SYNC:I = 0x2

.field public static final whitelist SEEK_NEXT_SYNC:I = 0x1

.field public static final whitelist SEEK_PREVIOUS_SYNC:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaPlayer"

.field public static final whitelist VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final whitelist VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private greylist-max-o mActiveDrmScheme:Z

.field private greylist-max-o mDrmConfigAllowed:Z

.field private greylist-max-o mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

.field private greylist-max-o mDrmInfoResolved:Z

.field private final greylist-max-o mDrmLock:Ljava/lang/Object;

.field private greylist-max-o mDrmObj:Landroid/media/MediaDrm;

.field private greylist-max-o mDrmProvisioningInProgress:Z

.field private greylist-max-o mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

.field private greylist-max-o mDrmSessionId:[B

.field private greylist-max-o mDrmUUID:Ljava/util/UUID;

.field private blacklist mEnableSelfRoutingMonitor:Z

.field private greylist mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private greylist-max-o mExtSubtitleDataHandler:Landroid/os/Handler;

.field private greylist-max-o mExtSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private greylist-max-o mInbandTrackIndices:Ljava/util/BitSet;

.field private greylist-max-o mIndexTrackPairs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/media/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIntSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private greylist-max-o mListenerContext:I

.field private greylist-max-o mNativeContext:J

.field private greylist-max-o mNativeSurfaceTexture:J

.field private greylist-max-o mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final greylist-max-o mOnCompletionInternalListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private greylist mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private greylist-max-o mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

.field private greylist-max-o mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

.field private greylist-max-o mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

.field private greylist mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private greylist mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private greylist-max-o mOnMediaTimeDiscontinuityHandler:Landroid/os/Handler;

.field private greylist-max-o mOnMediaTimeDiscontinuityListener:Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

.field private greylist mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private blacklist mOnRtpRxNoticeExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mOnRtpRxNoticeListener:Landroid/media/MediaPlayer$OnRtpRxNoticeListener;

.field private greylist mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private greylist-max-o mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

.field private greylist mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private greylist-max-o mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private greylist-max-o mOpenSubtitleSources:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private greylist-max-o mPrepareDrmInProgress:Z

.field private greylist-max-o mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mScreenOnWhilePlaying:Z

.field private greylist-max-o mSelectedSubtitleTrackIndex:I

.field private greylist-max-o mStayAwake:Z

.field private greylist-max-o mStreamType:I

.field private greylist-max-o mSubtitleController:Landroid/media/SubtitleController;

.field private greylist-max-o mSubtitleDataListenerDisabled:Z

.field private greylist-max-o mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private greylist-max-o mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

.field private final blacklist mTimeProviderLock:Ljava/lang/Object;

.field private greylist-max-o mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDrmInfo(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DrmInfo;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDrmLock(Landroid/media/MediaPlayer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDrmObj(Landroid/media/MediaPlayer;)Landroid/media/MediaDrm;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtSubtitleDataHandler(Landroid/media/MediaPlayer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtSubtitleDataListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndexTrackPairs(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntSubtitleDataListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mIntSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeContext(Landroid/media/MediaPlayer;)J
    .registers 3

    iget-wide v0, p0, Landroid/media/MediaPlayer;->mNativeContext:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnBufferingUpdateListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnCompletionInternalListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnCompletionInternalListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnCompletionListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDrmInfoHandlerDelegate(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDrmPreparedHandlerDelegate(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnErrorListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnInfoListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnMediaTimeDiscontinuityHandler(Landroid/media/MediaPlayer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnMediaTimeDiscontinuityListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityListener:Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnPreparedListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnRtpRxNoticeExecutor(Landroid/media/MediaPlayer;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnRtpRxNoticeExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnRtpRxNoticeListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnRtpRxNoticeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnRtpRxNoticeListener:Landroid/media/MediaPlayer$OnRtpRxNoticeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnSeekCompleteListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnTimedMetaDataAvailableListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnTimedTextListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnVideoSizeChangedListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpenSubtitleSources(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtitleController(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtitleDataListenerDisabled(Landroid/media/MediaPlayer;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/MediaPlayer;->mSubtitleDataListenerDisabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeProviderLock(Landroid/media/MediaPlayer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDrmProvisioningInProgress(Landroid/media/MediaPlayer;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrepareDrmInProgress(Landroid/media/MediaPlayer;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubtitleController(Landroid/media/MediaPlayer;Landroid/media/SubtitleController;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbroadcastRoutingChange(Landroid/media/MediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer;->broadcastRoutingChange()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanDrmObj(Landroid/media/MediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresumePrepareDrm(Landroid/media/MediaPlayer;Ljava/util/UUID;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->resumePrepareDrm(Ljava/util/UUID;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mscanInternalSubtitleTracks(Landroid/media/MediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartImpl(Landroid/media/MediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer;->startImpl()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstayAwake(Landroid/media/MediaPlayer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtryToDisableNativeRoutingCallback(Landroid/media/MediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer;->tryToDisableNativeRoutingCallback()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 623
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 624
    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    .line 625
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 667
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;-><init>(Landroid/content/Context;I)V

    .line 668
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 683
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;-><init>(Landroid/content/Context;I)V

    .line 684
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 6

    .line 687
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 642
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 646
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    .line 1507
    iput-object v0, p0, Landroid/media/MediaPlayer;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 1663
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 2737
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    .line 2738
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    .line 2873
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2876
    new-instance v1, Landroid/media/MediaPlayer$3;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$3;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mIntSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 3506
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    .line 3964
    new-instance v1, Landroid/media/MediaPlayer$7;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$7;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnCompletionInternalListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 691
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 692
    new-instance v0, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_68

    .line 693
    :cond_58
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 694
    new-instance v0, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_68

    .line 696
    :cond_66
    iput-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    .line 699
    :goto_68
    new-instance v0, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v0, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 700
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    .line 703
    if-nez p1, :cond_7d

    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    goto :goto_81

    .line 704
    :cond_7d
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 706
    :goto_81
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8d

    .line 707
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 713
    :cond_8d
    invoke-virtual {v0}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v0

    .line 714
    :try_start_91
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v2

    .line 715
    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->resolvePlaybackSessionId(Landroid/content/Context;I)I

    move-result p1

    .line 714
    invoke-direct {p0, v1, v2, p1}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;Landroid/os/Parcel;I)V
    :try_end_a1
    .catchall {:try_start_91 .. :try_end_a1} :catchall_ae

    .line 716
    if-eqz v0, :cond_a6

    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 717
    :cond_a6
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->baseRegisterPlayer(I)V

    .line 718
    return-void

    .line 713
    :catchall_ae
    move-exception p1

    if-eqz v0, :cond_b9

    :try_start_b1
    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b5

    goto :goto_b9

    :catchall_b5
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b9
    :goto_b9
    throw p1
.end method

.method private greylist-max-o HandleProvisioninig(Ljava/util/UUID;)I
    .registers 6

    .line 5733
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    const/4 v1, 0x3

    const-string v2, "MediaPlayer"

    if-eqz v0, :cond_d

    .line 5734
    const-string p1, "HandleProvisioninig: Unexpected mDrmProvisioningInProgress"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5735
    return v1

    .line 5738
    :cond_d
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 5739
    if-nez v0, :cond_1b

    .line 5740
    const-string p1, "HandleProvisioninig: getProvisionRequest returned null."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5741
    return v1

    .line 5744
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleProvisioninig provReq  data: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5745
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " url: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5746
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5744
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5749
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    .line 5751
    new-instance v1, Landroid/media/MediaPlayer$ProvisioningThread;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroid/media/MediaPlayer$ProvisioningThread;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer-IA;)V

    invoke-virtual {v1, v0, p1, p0}, Landroid/media/MediaPlayer$ProvisioningThread;->initialize(Landroid/media/MediaDrm$ProvisionRequest;Ljava/util/UUID;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$ProvisioningThread;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    .line 5752
    iget-object p1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {p1}, Landroid/media/MediaPlayer$ProvisioningThread;->start()V

    .line 5757
    iget-object p1, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    if-eqz p1, :cond_61

    .line 5758
    const/4 p1, 0x0

    goto :goto_75

    .line 5762
    :cond_61
    :try_start_61
    iget-object p1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {p1}, Landroid/media/MediaPlayer$ProvisioningThread;->join()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_66} :catch_67

    .line 5765
    goto :goto_6d

    .line 5763
    :catch_67
    move-exception p1

    .line 5764
    const-string v0, "HandleProvisioninig: Thread.join Exception"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5766
    :goto_6d
    iget-object p1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {p1}, Landroid/media/MediaPlayer$ProvisioningThread;->status()I

    move-result p1

    .line 5768
    iput-object v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    .line 5771
    :goto_75
    return p1
.end method

.method private native greylist-max-o _getAudioStreamType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native greylist-max-o _notifyAt(J)V
.end method

.method private native greylist-max-o _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _prepare(Landroid/os/Parcel;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _prepareAsync(Landroid/os/Parcel;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native greylist-max-o _prepareDrm([B[B)V
.end method

.method private native greylist-max-o _release()V
.end method

.method private native greylist-max-o _releaseDrm()V
.end method

.method private native greylist-max-o _reset()V
.end method

.method private final native greylist-max-o _seekTo(JI)V
.end method

.method private native greylist-max-o _setAudioStreamType(I)V
.end method

.method private native greylist-max-o _setAuxEffectSendLevel(F)V
.end method

.method private native greylist-max-o _setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native greylist-max-o _setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native greylist-max-o _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native greylist-max-o _setVolume(FF)V
.end method

.method private native greylist-max-o _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native greylist-max-o _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private greylist-max-o attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .registers 8

    .line 1150
    const-string v0, "fuse.sys.transcode_player_optimize"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1152
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1153
    const-string v3, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1154
    if-eqz v0, :cond_1b

    .line 1155
    :try_start_14
    const-string v0, "*/*"

    invoke-virtual {p1, p2, v0, v2}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    goto :goto_21

    .line 1156
    :cond_1b
    const-string v0, "r"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_21
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_21} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_21} :catch_38
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_38

    :goto_21
    nop

    .line 1157
    :try_start_22
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2c

    .line 1158
    nop

    .line 1159
    if-eqz p1, :cond_2b

    :try_start_28
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_2b} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_2b} :catch_38
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_38

    .line 1158
    :cond_2b
    return v4

    .line 1154
    :catchall_2c
    move-exception p2

    if-eqz p1, :cond_37

    :try_start_2f
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception p1

    :try_start_34
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    throw p2
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_34 .. :try_end_38} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_38} :catch_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_38

    .line 1159
    :catch_38
    move-exception p1

    .line 1160
    const-string p2, "MediaPlayer"

    const-string v0, "Error setting data source via ContentResolver"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    return v1
.end method

.method private static greylist-max-o availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .registers 2

    .line 2816
    const-string v0, "application/x-subrip"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 2817
    const/4 p0, 0x1

    return p0

    .line 2819
    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist broadcastRoutingChange()V
    .registers 4

    .line 1597
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 1598
    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1599
    :try_start_6
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->baseUpdateDeviceIds(Ljava/util/List;)V

    .line 1601
    iget-object v1, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 1602
    invoke-virtual {v2}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    .line 1603
    goto :goto_17

    .line 1604
    :cond_27
    monitor-exit v0

    .line 1605
    return-void

    .line 1604
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private greylist-max-o cleanDrmObj()V
    .registers 4

    .line 5829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanDrmObj: mDrmObj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDrmSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    .line 5830
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5829
    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5832
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 5833
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    invoke-virtual {v0, v2}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 5834
    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    .line 5836
    :cond_38
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    if-eqz v0, :cond_43

    .line 5837
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    .line 5838
    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    .line 5840
    :cond_43
    return-void
.end method

.method public static whitelist create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .registers 4

    .line 999
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .registers 14

    .line 1016
    const-string v1, "create failed:"

    const-string v2, "MediaPlayer"

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 1017
    if-nez p1, :cond_10

    return-object v3

    .line 1019
    :cond_10
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4, p0, p3}, Landroid/media/MediaPlayer;-><init>(Landroid/content/Context;I)V

    .line 1021
    if-eqz p2, :cond_18

    goto :goto_21

    .line 1022
    :cond_18
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 1023
    :goto_21
    invoke-virtual {v4, p2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 1024
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1025
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1026
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_39} :catch_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_39} :catch_40
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_39} :catch_3a

    .line 1027
    return-object v4

    .line 1034
    :catch_3a
    move-exception v0

    move-object p0, v0

    .line 1035
    invoke-static {v2, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    .line 1031
    :catch_40
    move-exception v0

    move-object p0, v0

    .line 1032
    invoke-static {v2, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    .line 1028
    :catch_46
    move-exception v0

    move-object p0, v0

    .line 1029
    invoke-static {v2, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1037
    :goto_4b
    nop

    .line 1038
    :goto_4c
    return-object v3
.end method

.method public static whitelist create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .registers 3

    .line 916
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .registers 5

    .line 937
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .registers 8

    .line 955
    const-string v0, "create failed:"

    const-string v1, "MediaPlayer"

    :try_start_4
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2, p0, p4}, Landroid/media/MediaPlayer;-><init>(Landroid/content/Context;I)V

    .line 956
    if-eqz p3, :cond_c

    goto :goto_15

    .line 957
    :cond_c
    new-instance p3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p3

    .line 958
    :goto_15
    invoke-virtual {v2, p3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 959
    invoke-virtual {v2, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 960
    if-eqz p2, :cond_20

    .line 961
    invoke-virtual {v2, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 963
    :cond_20
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_23} :catch_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_23} :catch_29
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_23} :catch_24

    .line 964
    return-object v2

    .line 971
    :catch_24
    move-exception p0

    .line 972
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 968
    :catch_29
    move-exception p0

    .line 969
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    .line 965
    :catch_2e
    move-exception p0

    .line 966
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 974
    :goto_32
    nop

    .line 976
    :goto_33
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist createPlayerIIdParcel()Landroid/os/Parcel;
    .registers 3

    .line 721
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v0

    .line 722
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    iget v1, p0, Landroid/media/MediaPlayer;->mPlayerIId:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    return-object v0
.end method

.method private greylist-max-o getAudioStreamType()I
    .registers 3

    .line 1428
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_c

    .line 1429
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_getAudioStreamType()I

    move-result v0

    iput v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 1431
    :cond_c
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    return v0
.end method

.method private static final greylist-max-o getByteArrayFromUUID(Ljava/util/UUID;)[B
    .registers 10

    .line 5843
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 5844
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 5846
    const/16 p0, 0x10

    new-array p0, p0, [B

    .line 5847
    const/4 v4, 0x0

    :goto_d
    const/16 v5, 0x8

    if-ge v4, v5, :cond_25

    .line 5848
    rsub-int/lit8 v6, v4, 0x7

    mul-int/2addr v6, v5

    ushr-long v7, v0, v6

    long-to-int v5, v7

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    .line 5849
    add-int/lit8 v5, v4, 0x8

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, p0, v5

    .line 5847
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 5852
    :cond_25
    return-object p0
.end method

.method private greylist-max-o getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2771
    :try_start_8
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2772
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2773
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2774
    sget-object v2, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaPlayer$TrackInfo;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 2775
    nop

    .line 2777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    return-object v2

    .line 2777
    :catchall_24
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2779
    throw v2
.end method

.method private blacklist getRoutedDevicesInternal()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1548
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_getRoutedDeviceIds()[I

    move-result-object v1

    .line 1549
    if-eqz v1, :cond_23

    array-length v2, v1

    if-nez v2, :cond_f

    goto :goto_23

    .line 1553
    :cond_f
    const/4 v2, 0x0

    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_22

    .line 1554
    aget v3, v1, v2

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v3

    .line 1556
    if-eqz v3, :cond_1f

    .line 1557
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1553
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1560
    :cond_22
    return-object v0

    .line 1550
    :cond_23
    :goto_23
    return-object v0
.end method

.method private greylist-max-o isVideoScalingModeSupported(I)Z
    .registers 4

    .line 5861
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method private native greylist-max-o nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native greylist-max-o native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method private final native greylist-max-o native_enableDeviceCallback(Z)V
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private native greylist-max-o native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private native blacklist native_getRoutedDeviceIds()[I
.end method

.method private native greylist-max-o native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private final native greylist-max-o native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method public static native greylist-max-o native_pullBatteryData(Landroid/os/Parcel;)I
.end method

.method private native blacklist native_setAudioSessionId(I)V
.end method

.method private final native greylist-max-o native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native greylist-max-o native_setOutputDevice(I)Z
.end method

.method private final native greylist-max-o native_setRetransmitEndpoint(Ljava/lang/String;I)I
.end method

.method private native blacklist native_setup(Ljava/lang/Object;Landroid/os/Parcel;I)V
.end method

.method private greylist-max-o populateInbandTracks()V
    .registers 7

    .line 3013
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    .line 3014
    iget-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    .line 3015
    const/4 v2, 0x0

    :goto_8
    :try_start_8
    array-length v3, v0

    if-ge v2, v3, :cond_6d

    .line 3016
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3017
    goto :goto_6a

    .line 3019
    :cond_14
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 3022
    aget-object v3, v0, v2

    if-nez v3, :cond_35

    .line 3023
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected NULL track at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    :cond_35
    aget-object v3, v0, v2

    if-eqz v3, :cond_5c

    aget-object v3, v0, v2

    .line 3027
    invoke-virtual {v3}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5c

    .line 3028
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    aget-object v4, v0, v2

    .line 3029
    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 3028
    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v3

    .line 3030
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3031
    goto :goto_6a

    .line 3032
    :cond_5c
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3015
    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3035
    :cond_6d
    monitor-exit v1

    .line 3036
    return-void

    .line 3035
    :catchall_6f
    move-exception v0

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_8 .. :try_end_71} :catchall_6f

    throw v0
.end method

.method private static greylist-max-o postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8

    .line 3850
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaPlayer;

    .line 3851
    if-nez p0, :cond_b

    .line 3852
    return-void

    .line 3855
    :cond_b
    sparse-switch p1, :sswitch_data_76

    goto :goto_65

    .line 3874
    :sswitch_f
    const-string v0, "MediaPlayer"

    const-string v1, "postEventFromNative MEDIA_DRM_INFO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3875
    instance-of v0, p4, Landroid/os/Parcel;

    if-eqz v0, :cond_2d

    .line 3876
    move-object v0, p4

    check-cast v0, Landroid/os/Parcel;

    .line 3877
    new-instance v1, Landroid/media/MediaPlayer$DrmInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/media/MediaPlayer$DrmInfo;-><init>(Landroid/os/Parcel;Landroid/media/MediaPlayer-IA;)V

    .line 3878
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3879
    :try_start_26
    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    .line 3880
    monitor-exit v0

    .line 3881
    goto :goto_65

    .line 3880
    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_2a

    throw p0

    .line 3882
    :cond_2d
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_DRM_INFO msg.obj of unexpected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3884
    goto :goto_65

    .line 3857
    :sswitch_46
    const/4 v0, 0x2

    if-ne p2, v0, :cond_65

    .line 3858
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/media/MediaPlayer$6;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$6;-><init>(Landroid/media/MediaPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3864
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3865
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_65

    .line 3891
    :sswitch_5a
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3892
    const/4 v1, 0x1

    :try_start_5e
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmInfoResolved:Z

    .line 3893
    monitor-exit v0

    goto :goto_65

    :catchall_62
    move-exception p0

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_62

    throw p0

    .line 3898
    :cond_65
    :goto_65
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v0, :cond_74

    .line 3899
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3900
    iget-object p0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3902
    :cond_74
    return-void

    nop

    :sswitch_data_76
    .sparse-switch
        0x1 -> :sswitch_5a
        0xc8 -> :sswitch_46
        0xd2 -> :sswitch_f
    .end sparse-switch
.end method

.method private greylist-max-o prepareDrm_createDrmStep(Ljava/util/UUID;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 5577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareDrm_createDrmStep: UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5580
    :try_start_18
    new-instance v0, Landroid/media/MediaDrm;

    invoke-direct {v0, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    .line 5581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareDrm_createDrmStep: Created mDrmObj="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_37} :catch_39

    .line 5585
    nop

    .line 5586
    return-void

    .line 5582
    :catch_39
    move-exception p1

    .line 5583
    const-string v0, "prepareDrm_createDrmStep: MediaDrm failed"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5584
    throw p1
.end method

.method private greylist-max-o prepareDrm_openSessionStep(Ljava/util/UUID;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/ResourceBusyException;
        }
    .end annotation

    .line 5590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareDrm_openSessionStep: uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5596
    :try_start_18
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    .line 5597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareDrm_openSessionStep: mDrmSessionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    .line 5598
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5597
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5602
    invoke-static {p1}, Landroid/media/MediaPlayer;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object p1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->_prepareDrm([B[B)V

    .line 5603
    const-string p1, "prepareDrm_openSessionStep: _prepareDrm/Crypto succeeded"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4a} :catch_4c

    .line 5608
    nop

    .line 5610
    return-void

    .line 5605
    :catch_4c
    move-exception p1

    .line 5606
    const-string v0, "prepareDrm_openSessionStep: open/crypto failed"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5607
    throw p1
.end method

.method private greylist-max-o resetDrmState()V
    .registers 7

    .line 5798
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5799
    :try_start_3
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetDrmState:  mDrmInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDrmProvisioningThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPrepareDrmInProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mActiveDrmScheme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5805
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmInfoResolved:Z

    .line 5806
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    .line 5808
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_64

    if-eqz v3, :cond_5b

    .line 5811
    :try_start_4b
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v3}, Landroid/media/MediaPlayer$ProvisioningThread;->join()V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_50} :catch_51
    .catchall {:try_start_4b .. :try_end_50} :catchall_64

    .line 5815
    goto :goto_59

    .line 5813
    :catch_51
    move-exception v3

    .line 5814
    :try_start_52
    const-string v4, "MediaPlayer"

    const-string v5, "resetDrmState: ProvThread.join Exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5816
    :goto_59
    iput-object v2, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    .line 5819
    :cond_5b
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    .line 5820
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    .line 5822
    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    .line 5823
    monitor-exit v0

    .line 5824
    return-void

    .line 5823
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_52 .. :try_end_66} :catchall_64

    throw v1
.end method

.method private greylist-max-o resumePrepareDrm(Ljava/util/UUID;)Z
    .registers 4

    .line 5776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumePrepareDrm: uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5779
    nop

    .line 5782
    :try_start_19
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->prepareDrm_openSessionStep(Ljava/util/UUID;)V

    .line 5784
    iput-object p1, p0, Landroid/media/MediaPlayer;->mDrmUUID:Ljava/util/UUID;

    .line 5785
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_21} :catch_23

    .line 5787
    nop

    .line 5791
    goto :goto_2a

    .line 5788
    :catch_23
    move-exception p1

    .line 5789
    const-string v0, "HandleProvisioninig: Thread run _prepareDrm resume failed"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 5793
    :goto_2a
    return p1
.end method

.method private greylist-max-o scanInternalSubtitleTracks()V
    .registers 2

    .line 3003
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    .line 3005
    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    .line 3007
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_f

    .line 3008
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    .line 3010
    :cond_f
    return-void
.end method

.method private greylist-max-o selectOrDeselectInbandTrack(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3408
    :try_start_8
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3409
    if-eqz p2, :cond_11

    const/4 p2, 0x4

    goto :goto_12

    :cond_11
    const/4 p2, 0x5

    :goto_12
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3410
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3411
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 3413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3415
    nop

    .line 3416
    return-void

    .line 3413
    :catchall_23
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3415
    throw p1
.end method

.method private greylist-max-o selectOrDeselectTrack(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3356
    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    .line 3358
    nop

    .line 3360
    :try_start_4
    iget-object v0, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_c} :catch_7c

    .line 3364
    nop

    .line 3366
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack;

    .line 3367
    if-nez v0, :cond_1f

    .line 3369
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V

    .line 3370
    return-void

    .line 3373
    :cond_1f
    iget-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez p1, :cond_24

    .line 3374
    return-void

    .line 3377
    :cond_24
    if-nez p2, :cond_3d

    .line 3379
    iget-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {p1}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object p1

    if-ne p1, v0, :cond_35

    .line 3380
    iget-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    goto :goto_3c

    .line 3382
    :cond_35
    const-string p1, "MediaPlayer"

    const-string p2, "trying to deselect track that was not selected"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    :goto_3c
    return-void

    .line 3388
    :cond_3d
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_76

    .line 3389
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result p1

    .line 3390
    iget-object p2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter p2

    .line 3391
    if-ltz p1, :cond_71

    :try_start_4d
    iget-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_71

    .line 3392
    iget-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 3393
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_71

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_71

    .line 3395
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V

    .line 3398
    :cond_71
    monitor-exit p2

    goto :goto_76

    :catchall_73
    move-exception p1

    monitor-exit p2
    :try_end_75
    .catchall {:try_start_4d .. :try_end_75} :catchall_73

    throw p1

    .line 3400
    :cond_76
    :goto_76
    iget-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {p1, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 3401
    return-void

    .line 3361
    :catch_7c
    move-exception p1

    .line 3363
    return-void
.end method

.method private greylist-max-r setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1201
    nop

    .line 1202
    nop

    .line 1204
    if-eqz p2, :cond_39

    .line 1205
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1206
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1208
    nop

    .line 1209
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_1a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1210
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v2

    .line 1211
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1212
    add-int/lit8 v2, v2, 0x1

    .line 1213
    goto :goto_1a

    .line 1204
    :cond_39
    const/4 v0, 0x0

    move-object v1, v0

    .line 1215
    :cond_3b
    invoke-direct {p0, p1, v0, v1, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    .line 1216
    return-void
.end method

.method private greylist-max-r setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1222
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1223
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1224
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1225
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    .line 1226
    :cond_15
    if-eqz v1, :cond_20

    .line 1228
    nop

    .line 1229
    invoke-static {p1, p4}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;Ljava/util/List;)Landroid/os/IBinder;

    move-result-object p4

    .line 1228
    invoke-direct {p0, p4, p1, p2, p3}, Landroid/media/MediaPlayer;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1233
    return-void

    .line 1236
    :cond_20
    :goto_20
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1237
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1238
    :try_start_2a
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_35

    .line 1239
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 1240
    return-void

    .line 1237
    :catchall_35
    move-exception p2

    :try_start_36
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3e
    throw p2
.end method

.method private greylist-max-o setOnMediaTimeDiscontinuityListenerInt(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/os/Handler;)V
    .registers 3

    .line 4243
    monitor-enter p0

    .line 4244
    :try_start_1
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityListener:Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

    .line 4245
    iput-object p2, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityHandler:Landroid/os/Handler;

    .line 4246
    monitor-exit p0

    .line 4247
    return-void

    .line 4246
    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw p1
.end method

.method private greylist-max-o setOnSubtitleDataListenerInt(Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V
    .registers 3

    .line 4161
    monitor-enter p0

    .line 4162
    :try_start_1
    iput-object p1, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 4163
    iput-object p2, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataHandler:Landroid/os/Handler;

    .line 4164
    monitor-exit p0

    .line 4165
    return-void

    .line 4164
    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw p1
.end method

.method private native greylist setParameter(ILandroid/os/Parcel;)Z
.end method

.method private declared-synchronized greylist-max-o setSubtitleAnchor()V
    .registers 5

    monitor-enter p0

    .line 2840
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v0, :cond_3f

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 2841
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer$TimeProvider;

    .line 2842
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SetSubtitleAnchorThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2843
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 2844
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2845
    new-instance v3, Landroid/media/MediaPlayer$2;

    invoke-direct {v3, p0, v0, v1}, Landroid/media/MediaPlayer$2;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$TimeProvider;Landroid/os/HandlerThread;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_41

    .line 2865
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_30
    .catchall {:try_start_2c .. :try_end_2f} :catchall_41

    .line 2869
    goto :goto_3f

    .line 2866
    :catch_30
    move-exception v0

    .line 2867
    :try_start_31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2868
    const-string v0, "MediaPlayer"

    const-string v1, "failed to join SetSubtitleAnchorThread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_41

    .line 2871
    :cond_3f
    :goto_3f
    monitor-exit p0

    return-void

    .line 2839
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method private greylist-max-o startImpl()V
    .registers 2

    .line 1418
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->baseStart([I)V

    .line 1419
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1420
    invoke-direct {p0}, Landroid/media/MediaPlayer;->tryToEnableNativeRoutingCallback()V

    .line 1421
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    .line 1422
    return-void
.end method

.method private greylist-max-o stayAwake(Z)V
    .registers 3

    .line 1774
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_23

    .line 1775
    if-eqz p1, :cond_14

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1776
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_23

    .line 1777
    :cond_14
    if-nez p1, :cond_23

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1778
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1781
    :cond_23
    :goto_23
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    .line 1782
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1783
    return-void
.end method

.method private blacklist testDisableNativeRoutingCallbacksLocked()V
    .registers 2

    .line 1648
    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEnableSelfRoutingMonitor:Z

    if-nez v0, :cond_12

    .line 1650
    const/4 v0, 0x0

    :try_start_d
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->native_enableDeviceCallback(Z)V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_10} :catch_11

    .line 1654
    goto :goto_12

    .line 1651
    :catch_11
    move-exception v0

    .line 1656
    :cond_12
    :goto_12
    return-void
.end method

.method private blacklist testEnableNativeRoutingCallbacksLocked()Z
    .registers 4

    .line 1613
    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEnableSelfRoutingMonitor:Z

    if-nez v0, :cond_20

    .line 1615
    const/4 v0, 0x1

    :try_start_d
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->native_enableDeviceCallback(Z)V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_10} :catch_11

    .line 1616
    return v0

    .line 1617
    :catch_11
    move-exception v0

    .line 1618
    const/4 v1, 0x3

    const-string v2, "MediaPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1619
    const-string v1, "testEnableNativeRoutingCallbacks failed"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1623
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist tryToDisableNativeRoutingCallback()V
    .registers 3

    .line 1635
    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1636
    :try_start_3
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mEnableSelfRoutingMonitor:Z

    if-eqz v1, :cond_d

    .line 1637
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mEnableSelfRoutingMonitor:Z

    .line 1638
    invoke-direct {p0}, Landroid/media/MediaPlayer;->testDisableNativeRoutingCallbacksLocked()V

    .line 1640
    :cond_d
    monitor-exit v0

    .line 1641
    return-void

    .line 1640
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private blacklist tryToEnableNativeRoutingCallback()V
    .registers 3

    .line 1627
    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1628
    :try_start_3
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mEnableSelfRoutingMonitor:Z

    if-nez v1, :cond_d

    .line 1629
    invoke-direct {p0}, Landroid/media/MediaPlayer;->testEnableNativeRoutingCallbacksLocked()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mEnableSelfRoutingMonitor:Z

    .line 1631
    :cond_d
    monitor-exit v0

    .line 1632
    return-void

    .line 1631
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private greylist-max-o updateSurfaceScreenOn()V
    .registers 3

    .line 1786
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_14

    .line 1787
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1789
    :cond_14
    return-void
.end method


# virtual methods
.method public whitelist addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 6

    .line 1681
    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1682
    if-eqz p1, :cond_22

    :try_start_5
    iget-object v1, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1683
    invoke-direct {p0}, Landroid/media/MediaPlayer;->testEnableNativeRoutingCallbacksLocked()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mEnableSelfRoutingMonitor:Z

    .line 1684
    iget-object v1, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 1686
    if-eqz p2, :cond_1a

    goto :goto_1c

    :cond_1a
    iget-object p2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    :goto_1c
    invoke-direct {v2, p0, p1, p2}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 1684
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    :cond_22
    monitor-exit v0

    .line 1689
    return-void

    .line 1688
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public greylist addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2936
    nop

    .line 2937
    nop

    .line 2939
    if-eqz p1, :cond_11

    .line 2942
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v0

    .line 2943
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2944
    monitor-exit v0

    goto :goto_18

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1

    .line 2946
    :cond_11
    const-string v0, "MediaPlayer"

    const-string v1, "addSubtitleSource called with null InputStream"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    :goto_18
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    .line 2952
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SubtitleReadThread"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2954
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2955
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2956
    new-instance v2, Landroid/media/MediaPlayer$4;

    invoke-direct {v2, p0, p1, p2, v0}, Landroid/media/MediaPlayer$4;-><init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3000
    return-void
.end method

.method public whitelist addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3084
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3085
    if-eqz v0, :cond_5f

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5f

    .line 3090
    :cond_f
    nop

    .line 3092
    const/4 v0, 0x0

    :try_start_11
    const-string v1, "fuse.sys.transcode_player_optimize"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3094
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 3095
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3096
    const-string v3, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3097
    if-eqz v1, :cond_31

    const-string v1, "*/*"

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    move-object v0, p1

    goto :goto_38

    .line 3098
    :cond_31
    const-string v1, "r"

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_37
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_37} :catch_58
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_37} :catch_54
    .catchall {:try_start_11 .. :try_end_37} :catchall_4d

    move-object v0, p1

    .line 3099
    :goto_38
    if-nez v0, :cond_40

    .line 3107
    if-eqz v0, :cond_3f

    .line 3108
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 3100
    :cond_3f
    return-void

    .line 3102
    :cond_40
    :try_start_40
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_47} :catch_58
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_47} :catch_54
    .catchall {:try_start_40 .. :try_end_47} :catchall_4d

    .line 3107
    if-eqz v0, :cond_4c

    .line 3108
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 3103
    :cond_4c
    return-void

    .line 3107
    :catchall_4d
    move-exception p1

    if-eqz v0, :cond_53

    .line 3108
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 3110
    :cond_53
    throw p1

    .line 3105
    :catch_54
    move-exception p1

    .line 3107
    if-eqz v0, :cond_5e

    .line 3108
    goto :goto_5b

    .line 3104
    :catch_58
    move-exception p1

    .line 3107
    if-eqz v0, :cond_5e

    .line 3108
    :goto_5b
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 3111
    :cond_5e
    return-void

    .line 3086
    :cond_5f
    :goto_5f
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 3087
    return-void
.end method

.method public whitelist addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3155
    move-object/from16 v0, p6

    invoke-static {v0}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 3161
    :try_start_8
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v2
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_c} :catch_79

    .line 3165
    nop

    .line 3167
    new-instance v3, Landroid/media/MediaFormat;

    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    .line 3168
    const-string v4, "mime"

    invoke-virtual {v3, v4, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3169
    const-string v0, "is-timed-text"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3172
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v0, :cond_24

    .line 3173
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    .line 3176
    :cond_24
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, v3}, Landroid/media/SubtitleController;->hasRendererFor(Landroid/media/MediaFormat;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 3178
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3179
    iget-object v4, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v5, Landroid/media/SRTRenderer;

    iget-object v6, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v5, v0, v6}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v4, v5}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 3181
    :cond_3c
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, v3}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v7

    .line 3182
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v3

    .line 3183
    :try_start_45
    iget-object v0, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3184
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_76

    .line 3186
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    .line 3188
    nop

    .line 3189
    nop

    .line 3190
    new-instance v8, Landroid/os/HandlerThread;

    const-string v0, "TimedTextReadThread"

    const/16 v3, 0x9

    invoke-direct {v8, v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 3193
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 3194
    new-instance v9, Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3195
    new-instance v0, Landroid/media/MediaPlayer$5;

    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v8}, Landroid/media/MediaPlayer$5;-><init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3244
    return-void

    .line 3184
    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit v3
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0

    .line 3162
    :catch_79
    move-exception v0

    .line 3163
    const-string v1, "MediaPlayer"

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3164
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3156
    :cond_89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal mimeType for timed text source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3132
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    .line 3133
    return-void
.end method

.method public whitelist addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3056
    invoke-static {p2}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3061
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3062
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3063
    :try_start_10
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1b

    .line 3064
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 3065
    return-void

    .line 3062
    :catchall_1b
    move-exception p2

    :try_start_1c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_24
    throw p2

    .line 3057
    :cond_25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal mimeType for timed text source: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3058
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public native whitelist attachAuxEffect(I)V
.end method

.method public whitelist clearOnMediaTimeDiscontinuityListener()V
    .registers 2

    .line 4238
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/media/MediaPlayer;->setOnMediaTimeDiscontinuityListenerInt(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/os/Handler;)V

    .line 4239
    return-void
.end method

.method public whitelist clearOnSubtitleDataListener()V
    .registers 2

    .line 4156
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/media/MediaPlayer;->setOnSubtitleDataListenerInt(Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V

    .line 4157
    return-void
.end method

.method public whitelist createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;
    .registers 3

    .line 1495
    new-instance v0, Landroid/media/VolumeShaper;

    invoke-direct {v0, p1, p0}, Landroid/media/VolumeShaper;-><init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V

    return-object v0
.end method

.method public whitelist deselectTrack(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3350
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 3351
    return-void
.end method

.method public greylist-max-o easyPlaybackParams(FI)Landroid/media/PlaybackParams;
    .registers 5

    .line 1905
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 1906
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 1907
    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch p2, :pswitch_data_4a

    .line 1919
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Audio playback mode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1920
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1916
    :pswitch_2c
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 1917
    goto :goto_49

    .line 1912
    :pswitch_34
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object p1

    .line 1913
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    .line 1914
    goto :goto_49

    .line 1909
    :pswitch_41
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 1910
    nop

    .line 1922
    :goto_49
    return-object v0

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_41
        :pswitch_34
        :pswitch_2c
    .end packed-switch
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 3476
    invoke-direct {p0}, Landroid/media/MediaPlayer;->tryToDisableNativeRoutingCallback()V

    .line 3477
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseRelease()V

    .line 3478
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    .line 3479
    return-void
.end method

.method public native whitelist getAudioSessionId()I
.end method

.method public native whitelist getCurrentPosition()I
.end method

.method public whitelist getDrmInfo()Landroid/media/MediaPlayer$DrmInfo;
    .registers 4

    .line 4918
    nop

    .line 4922
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4923
    :try_start_4
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmInfoResolved:Z

    if-nez v1, :cond_1c

    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    if-eqz v1, :cond_d

    goto :goto_1c

    .line 4925
    :cond_d
    const-string v1, "MediaPlayer"

    const-string v2, "The Player has not been prepared yet"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4926
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The Player has not been prepared yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4929
    :cond_1c
    :goto_1c
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    if-eqz v1, :cond_27

    .line 4930
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    invoke-static {v1}, Landroid/media/MediaPlayer$DrmInfo;->-$$Nest$mmakeCopy(Landroid/media/MediaPlayer$DrmInfo;)Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v1

    goto :goto_28

    .line 4929
    :cond_27
    const/4 v1, 0x0

    .line 4932
    :goto_28
    monitor-exit v0

    .line 4934
    return-object v1

    .line 4932
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public whitelist getDrmPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    .line 5343
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrmPropertyString: propertyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5346
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5348
    :try_start_1b
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    if-nez v1, :cond_33

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmConfigAllowed:Z

    if-eqz v1, :cond_24

    goto :goto_33

    .line 5349
    :cond_24
    const-string p1, "MediaPlayer"

    const-string v1, "getDrmPropertyString NoDrmSchemeException"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5350
    new-instance p1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string v1, "getDrmPropertyString: Has to prepareDrm() first."

    invoke-direct {p1, v1}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_67

    .line 5354
    :cond_33
    :goto_33
    :try_start_33
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v1, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_39} :catch_5e
    .catchall {:try_start_33 .. :try_end_39} :catchall_67

    .line 5358
    nop

    .line 5359
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_67

    .line 5361
    const-string v0, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmPropertyString: propertyName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " --> value: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5363
    return-object v1

    .line 5355
    :catch_5e
    move-exception p1

    .line 5356
    :try_start_5f
    const-string v1, "MediaPlayer"

    const-string v2, "getDrmPropertyString Exception"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5357
    throw p1

    .line 5359
    :catchall_67
    move-exception p1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_67

    throw p1
.end method

.method public native whitelist getDuration()I
.end method

.method public whitelist getKeyRequest([B[BLjava/lang/String;ILjava/util/Map;)Landroid/media/MediaDrm$KeyRequest;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    .line 5200
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyRequest:  keySetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5201
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5202
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mimeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " keyType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " optionalParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5200
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5207
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5208
    :try_start_4b
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_b0

    if-eqz v0, :cond_a1

    .line 5214
    const/4 v0, 0x3

    if-eq p4, v0, :cond_5b

    .line 5215
    :try_start_52
    iget-object p1, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    move-object v3, p1

    goto :goto_5c

    .line 5233
    :catch_56
    move-exception v0

    move-object p1, v0

    goto :goto_8a

    .line 5229
    :catch_59
    move-exception v0

    goto :goto_92

    .line 5216
    :cond_5b
    move-object v3, p1

    .line 5219
    :goto_5c
    if-eqz p5, :cond_65

    .line 5220
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v7, p1

    goto :goto_67

    .line 5221
    :cond_65
    const/4 p1, 0x0

    move-object v7, p1

    .line 5223
    :goto_67
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1

    .line 5225
    const-string p2, "MediaPlayer"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getKeyRequest:   --> request: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Landroid/media/NotProvisionedException; {:try_start_52 .. :try_end_88} :catch_59
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_88} :catch_56
    .catchall {:try_start_52 .. :try_end_88} :catchall_b0

    .line 5227
    :try_start_88
    monitor-exit v1

    return-object p1

    .line 5234
    :goto_8a
    const-string p2, "MediaPlayer"

    const-string p3, "getKeyRequest Exception"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5235
    throw p1

    .line 5230
    :goto_92
    const-string p1, "MediaPlayer"

    const-string p2, "getKeyRequest NotProvisionedException: Unexpected. Shouldn\'t have reached here."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5232
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "getKeyRequest: Unexpected provisioning error."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5209
    :cond_a1
    const-string p1, "MediaPlayer"

    const-string p2, "getKeyRequest NoDrmSchemeException"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5210
    new-instance p1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string p2, "getKeyRequest: Has to set a DRM scheme first."

    invoke-direct {p1, p2}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5238
    :catchall_b0
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_88 .. :try_end_b3} :catchall_b0

    throw p1
.end method

.method public greylist getMediaTimeProvider()Landroid/media/MediaTimeProvider;
    .registers 3

    .line 3511
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3512
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-nez v1, :cond_e

    .line 3513
    new-instance v1, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 3515
    :cond_e
    iget-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    monitor-exit v0

    return-object v1

    .line 3516
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public greylist getMetadata(ZZ)Landroid/media/Metadata;
    .registers 5

    .line 2151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2152
    new-instance v1, Landroid/media/Metadata;

    invoke-direct {v1}, Landroid/media/Metadata;-><init>()V

    .line 2154
    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_14

    .line 2155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2156
    return-object p2

    .line 2161
    :cond_14
    invoke-virtual {v1, v0}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 2162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2163
    return-object p2

    .line 2165
    :cond_1e
    return-object v1
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    .line 1824
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1825
    return-object v0
.end method

.method public native whitelist getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public whitelist getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .registers 2

    .line 1538
    monitor-enter p0

    .line 1539
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaPlayer;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    .line 1540
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .registers 3

    .line 1573
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v0

    .line 1574
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1575
    const/4 v0, 0x0

    return-object v0

    .line 1577
    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceInfo;

    return-object v0
.end method

.method public whitelist getRoutedDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1590
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSelectedTrack(I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3264
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3b

    .line 3267
    :cond_b
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v0

    .line 3268
    if-eqz v0, :cond_3b

    .line 3269
    iget-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v2

    .line 3270
    move v3, v1

    :goto_17
    :try_start_17
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 3271
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 3272
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v4, v0, :cond_33

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v4

    if-ne v4, p1, :cond_33

    .line 3273
    monitor-exit v2

    return v3

    .line 3270
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 3276
    :cond_36
    monitor-exit v2

    goto :goto_3b

    :catchall_38
    move-exception p1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_17 .. :try_end_3a} :catchall_38

    throw p1

    .line 3280
    :cond_3b
    :goto_3b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3283
    :try_start_43
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3284
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3285
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3286
    invoke-virtual {p0, v0, v2}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 3287
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3288
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v3
    :try_end_59
    .catchall {:try_start_43 .. :try_end_59} :catchall_90

    .line 3289
    nop

    :goto_5a
    :try_start_5a
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_83

    .line 3290
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 3291
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_80

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_80

    .line 3292
    monitor-exit v3
    :try_end_79
    .catchall {:try_start_5a .. :try_end_79} :catchall_8d

    .line 3298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3299
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3292
    return v1

    .line 3289
    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 3295
    :cond_83
    :try_start_83
    monitor-exit v3
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_8d

    .line 3296
    nop

    .line 3298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3299
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3296
    const/4 p1, -0x1

    return p1

    .line 3295
    :catchall_8d
    move-exception p1

    :try_start_8e
    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw p1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    .line 3298
    :catchall_90
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3299
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3300
    throw p1
.end method

.method public native whitelist getSyncParams()Landroid/media/SyncParams;
.end method

.method public whitelist getTimestamp()Landroid/media/MediaTimestamp;
    .registers 7

    .line 2108
    :try_start_0
    new-instance v0, Landroid/media/MediaTimestamp;

    .line 2109
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 2110
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 2111
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v5

    goto :goto_1e

    :cond_1d
    const/4 v5, 0x0

    :goto_1e
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaTimestamp;-><init>(JJF)V
    :try_end_21
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_21} :catch_22

    .line 2108
    return-object v0

    .line 2112
    :catch_22
    move-exception v0

    .line 2113
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2749
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    .line 2751
    iget-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    .line 2752
    :try_start_7
    iget-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v3, v2, [Landroid/media/MediaPlayer$TrackInfo;

    .line 2753
    const/4 v4, 0x0

    :goto_10
    if-ge v4, v2, :cond_41

    .line 2754
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 2755
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_2b

    .line 2757
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v0, v5

    aput-object v5, v3, v4

    goto :goto_3e

    .line 2759
    :cond_2b
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/media/SubtitleTrack;

    .line 2760
    new-instance v6, Landroid/media/MediaPlayer$TrackInfo;

    invoke-virtual {v5}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v7

    invoke-virtual {v5}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/media/MediaPlayer$TrackInfo;-><init>(ILandroid/media/MediaFormat;)V

    aput-object v6, v3, v4

    .line 2753
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 2763
    :cond_41
    monitor-exit v1

    return-object v3

    .line 2764
    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public native whitelist getVideoHeight()I
.end method

.method public native whitelist getVideoWidth()I
.end method

.method public greylist invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .registers 5

    .line 779
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result p1

    .line 780
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 781
    if-nez p1, :cond_b

    .line 784
    return-void

    .line 782
    :cond_b
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failure code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public native whitelist isLooping()Z
.end method

.method public native whitelist isPlaying()Z
.end method

.method public greylist newRequest()Landroid/os/Parcel;
    .registers 3

    .line 758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 759
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 760
    return-object v0
.end method

.method public greylist-max-o notifyAt(J)V
    .registers 3

    .line 2332
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_notifyAt(J)V

    .line 2333
    return-void
.end method

.method public greylist-max-o onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V
    .registers 8

    .line 2895
    iget v0, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_f

    .line 2897
    :try_start_5
    iget v0, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_a} :catch_b

    .line 2899
    goto :goto_c

    .line 2898
    :catch_b
    move-exception v0

    .line 2900
    :goto_c
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2902
    :cond_f
    monitor-enter p0

    .line 2903
    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mSubtitleDataListenerDisabled:Z

    .line 2904
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_58

    .line 2905
    if-nez p1, :cond_17

    .line 2906
    return-void

    .line 2909
    :cond_17
    iget-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v2

    .line 2910
    :try_start_1a
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2911
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_3f

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v5, p1, :cond_3f

    .line 2913
    iget-object p1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2914
    goto :goto_40

    .line 2916
    :cond_3f
    goto :goto_20

    .line 2917
    :cond_40
    :goto_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_1a .. :try_end_41} :catchall_55

    .line 2919
    iget p1, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    if-ltz p1, :cond_54

    .line 2921
    :try_start_45
    iget p1, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_45 .. :try_end_4a} :catch_4b

    .line 2923
    goto :goto_4c

    .line 2922
    :catch_4b
    move-exception p1

    .line 2924
    :goto_4c
    monitor-enter p0

    .line 2925
    :try_start_4d
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mSubtitleDataListenerDisabled:Z

    .line 2926
    monitor-exit p0

    goto :goto_54

    :catchall_51
    move-exception p1

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_51

    throw p1

    .line 2929
    :cond_54
    :goto_54
    return-void

    .line 2917
    :catchall_55
    move-exception p1

    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p1

    .line 2904
    :catchall_58
    move-exception p1

    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p1
.end method

.method public whitelist pause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1458
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1459
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    .line 1460
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->basePause()V

    .line 1461
    return-void
.end method

.method greylist-max-o playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .registers 3

    .line 1484
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result p1

    return p1
.end method

.method greylist-max-o playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .registers 2

    .line 1489
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o playerPause()V
    .registers 1

    .line 1472
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 1473
    return-void
.end method

.method greylist-max-o playerSetAuxEffectSendLevel(ZF)I
    .registers 3

    .line 2508
    if-eqz p1, :cond_3

    const/4 p2, 0x0

    :cond_3
    invoke-direct {p0, p2}, Landroid/media/MediaPlayer;->_setAuxEffectSendLevel(F)V

    .line 2509
    const/4 p1, 0x0

    return p1
.end method

.method greylist-max-o playerSetVolume(ZFF)V
    .registers 5

    .line 2425
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    move p2, v0

    :cond_4
    if-eqz p1, :cond_7

    move p3, v0

    :cond_7
    invoke-direct {p0, p2, p3}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    .line 2426
    return-void
.end method

.method greylist-max-o playerStart()V
    .registers 1

    .line 1467
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    .line 1468
    return-void
.end method

.method greylist-max-o playerStop()V
    .registers 1

    .line 1477
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 1478
    return-void
.end method

.method public whitelist prepare()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1337
    invoke-direct {p0}, Landroid/media/MediaPlayer;->createPlayerIIdParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 1339
    :try_start_4
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_prepare(Landroid/os/Parcel;)I

    move-result v1

    .line 1340
    if-eqz v1, :cond_24

    .line 1341
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare(): could not set piid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaPlayer;->mPlayerIId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_36

    .line 1344
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1345
    nop

    .line 1346
    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    .line 1349
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1350
    const/4 v0, 0x1

    :try_start_2f
    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mDrmInfoResolved:Z

    .line 1351
    monitor-exit v1

    .line 1353
    return-void

    .line 1351
    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_33

    throw v0

    .line 1344
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1345
    throw v1
.end method

.method public whitelist prepareAsync()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1369
    invoke-direct {p0}, Landroid/media/MediaPlayer;->createPlayerIIdParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 1371
    :try_start_4
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_prepareAsync(Landroid/os/Parcel;)I

    move-result v1

    .line 1372
    if-eqz v1, :cond_24

    .line 1373
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareAsync(): could not set piid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaPlayer;->mPlayerIId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_29

    .line 1376
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1377
    nop

    .line 1378
    return-void

    .line 1376
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1377
    throw v1
.end method

.method public whitelist prepareDrm(Ljava/util/UUID;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;,
            Landroid/media/ResourceBusyException;,
            Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;,
            Landroid/media/MediaPlayer$ProvisioningServerErrorException;
        }
    .end annotation

    .line 4978
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareDrm: uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOnDrmConfigHelper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4980
    nop

    .line 4982
    nop

    .line 4984
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4987
    :try_start_29
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    if-eqz v1, :cond_129

    .line 4994
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    if-nez v1, :cond_109

    .line 5001
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    if-nez v1, :cond_fa

    .line 5008
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-nez v1, :cond_eb

    .line 5015
    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    .line 5017
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    .line 5019
    iget-object v2, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_138

    .line 5023
    const/4 v3, 0x0

    :try_start_42
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->prepareDrm_createDrmStep(Ljava/util/UUID;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_e0
    .catchall {:try_start_42 .. :try_end_45} :catchall_138

    .line 5028
    nop

    .line 5030
    :try_start_46
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmConfigAllowed:Z

    .line 5031
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_138

    .line 5035
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    if-eqz v0, :cond_52

    .line 5036
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    invoke-interface {v0, p0}, Landroid/media/MediaPlayer$OnDrmConfigHelper;->onDrmConfig(Landroid/media/MediaPlayer;)V

    .line 5039
    :cond_52
    iget-object v4, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5040
    :try_start_55
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mDrmConfigAllowed:Z
    :try_end_57
    .catchall {:try_start_55 .. :try_end_57} :catchall_dd

    .line 5041
    nop

    .line 5044
    :try_start_58
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->prepareDrm_openSessionStep(Ljava/util/UUID;)V

    .line 5046
    iput-object p1, p0, Landroid/media/MediaPlayer;->mDrmUUID:Ljava/util/UUID;

    .line 5047
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_5f
    .catch Ljava/lang/IllegalStateException; {:try_start_58 .. :try_end_5f} :catch_bf
    .catch Landroid/media/NotProvisionedException; {:try_start_58 .. :try_end_5f} :catch_74
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5f} :catch_6a
    .catchall {:try_start_58 .. :try_end_5f} :catchall_67

    .line 5049
    nop

    .line 5095
    :try_start_60
    iget-boolean p1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-nez p1, :cond_66

    .line 5096
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_dd

    .line 5098
    :cond_66
    goto :goto_b6

    .line 5095
    :catchall_67
    move-exception p1

    move v1, v3

    goto :goto_d1

    .line 5090
    :catch_6a
    move-exception p1

    .line 5091
    :try_start_6b
    const-string v0, "MediaPlayer"

    const-string v2, "prepareDrm Exception"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_67

    .line 5092
    nop

    .line 5093
    :try_start_73
    throw p1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_d0

    .line 5056
    :catch_74
    move-exception v0

    .line 5057
    :try_start_75
    const-string v0, "MediaPlayer"

    const-string v5, "prepareDrm: NotProvisionedException"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5060
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->HandleProvisioninig(Ljava/util/UUID;)I

    move-result p1
    :try_end_80
    .catchall {:try_start_75 .. :try_end_80} :catchall_67

    .line 5064
    if-eqz p1, :cond_ae

    .line 5065
    nop

    .line 5068
    packed-switch p1, :pswitch_data_13c

    .line 5083
    :try_start_86
    const-string p1, "prepareDrm: Post-provisioning preparation failed."

    goto :goto_a3

    .line 5076
    :pswitch_89
    const-string p1, "prepareDrm: Provisioning was required but the request was denied by the server."

    .line 5078
    const-string v0, "MediaPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5079
    new-instance v0, Landroid/media/MediaPlayer$ProvisioningServerErrorException;

    invoke-direct {v0, p1}, Landroid/media/MediaPlayer$ProvisioningServerErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5070
    :pswitch_96
    const-string p1, "prepareDrm: Provisioning was required but failed due to a network error."

    .line 5072
    const-string v0, "MediaPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5073
    new-instance v0, Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;

    invoke-direct {v0, p1}, Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5084
    :goto_a3
    const-string v0, "MediaPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5085
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ae
    .catchall {:try_start_86 .. :try_end_ae} :catchall_d0

    .line 5095
    :cond_ae
    :try_start_ae
    iget-boolean p1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-nez p1, :cond_b4

    .line 5096
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    .line 5098
    :cond_b4
    nop

    .line 5102
    move v1, v3

    :goto_b6
    monitor-exit v4
    :try_end_b7
    .catchall {:try_start_ae .. :try_end_b7} :catchall_dd

    .line 5106
    if-eqz v1, :cond_be

    .line 5107
    if-eqz v2, :cond_be

    .line 5108
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->notifyClient(I)V

    .line 5111
    :cond_be
    return-void

    .line 5050
    :catch_bf
    move-exception p1

    .line 5053
    :try_start_c0
    const-string p1, "MediaPlayer"

    const-string v0, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm()."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_c0 .. :try_end_c7} :catchall_67

    .line 5054
    nop

    .line 5055
    :try_start_c8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_d0
    .catchall {:try_start_c8 .. :try_end_d0} :catchall_d0

    .line 5095
    :catchall_d0
    move-exception p1

    :goto_d1
    :try_start_d1
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-nez v0, :cond_d7

    .line 5096
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    .line 5098
    :cond_d7
    if-eqz v1, :cond_dc

    .line 5099
    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    .line 5101
    :cond_dc
    throw p1

    .line 5102
    :catchall_dd
    move-exception p1

    monitor-exit v4
    :try_end_df
    .catchall {:try_start_d1 .. :try_end_df} :catchall_dd

    throw p1

    .line 5024
    :catch_e0
    move-exception p1

    .line 5025
    :try_start_e1
    const-string v1, "MediaPlayer"

    const-string v2, "prepareDrm(): Exception "

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5026
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    .line 5027
    throw p1

    .line 5010
    :cond_eb
    const-string p1, "MediaPlayer"

    const-string v1, "prepareDrm(): Unexpectd: Provisioning is already in progress."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5011
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "prepareDrm(): Unexpectd: Provisioning is already in progress."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5004
    :cond_fa
    const-string p1, "MediaPlayer"

    const-string v1, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5005
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4995
    :cond_109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareDrm(): Wrong usage: There is already an active DRM scheme with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmUUID:Ljava/util/UUID;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4997
    const-string v1, "MediaPlayer"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4998
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4990
    :cond_129
    const-string p1, "MediaPlayer"

    const-string v1, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5031
    :catchall_138
    move-exception p1

    monitor-exit v0
    :try_end_13a
    .catchall {:try_start_e1 .. :try_end_13a} :catchall_138

    throw p1

    nop

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_96
        :pswitch_89
    .end packed-switch
.end method

.method public whitelist provideKeyResponse([B[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 5264
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provideKeyResponse: keySetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5265
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5264
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5267
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5269
    :try_start_2d
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_a1

    if-eqz v1, :cond_92

    .line 5275
    if-nez p1, :cond_3a

    .line 5276
    :try_start_33
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    goto :goto_3b

    .line 5293
    :catch_36
    move-exception p1

    goto :goto_7b

    .line 5288
    :catch_38
    move-exception p1

    goto :goto_83

    .line 5277
    :cond_3a
    move-object v1, p1

    .line 5279
    :goto_3b
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v2, v1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v1

    .line 5281
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "provideKeyResponse: keySetId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " response: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5282
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " --> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5283
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5281
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Landroid/media/NotProvisionedException; {:try_start_33 .. :try_end_79} :catch_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_79} :catch_36
    .catchall {:try_start_33 .. :try_end_79} :catchall_a1

    .line 5286
    :try_start_79
    monitor-exit v0

    return-object v1

    .line 5294
    :goto_7b
    const-string p2, "MediaPlayer"

    const-string v1, "provideKeyResponse Exception"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5295
    throw p1

    .line 5289
    :goto_83
    const-string p1, "MediaPlayer"

    const-string p2, "provideKeyResponse NotProvisionedException: Unexpected. Shouldn\'t have reached here."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5291
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "provideKeyResponse: Unexpected provisioning error."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5270
    :cond_92
    const-string p1, "MediaPlayer"

    const-string p2, "getKeyRequest NoDrmSchemeException"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5271
    new-instance p1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string p2, "getKeyRequest: Has to set a DRM scheme first."

    invoke-direct {p1, p2}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5297
    :catchall_a1
    move-exception p1

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_79 .. :try_end_a3} :catchall_a1

    throw p1
.end method

.method public whitelist release()V
    .registers 5

    .line 2242
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseRelease()V

    .line 2243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 2244
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 2245
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2246
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 2247
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2248
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 2249
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2250
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 2251
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 2252
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 2253
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnRtpRxNoticeListener:Landroid/media/MediaPlayer$OnRtpRxNoticeListener;

    .line 2254
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnRtpRxNoticeExecutor:Ljava/util/concurrent/Executor;

    .line 2255
    iget-object v2, p0, Landroid/media/MediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2256
    :try_start_22
    iget-object v3, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-eqz v3, :cond_2d

    .line 2257
    iget-object v3, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v3}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    .line 2258
    iput-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 2260
    :cond_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_4a

    .line 2261
    monitor-enter p0

    .line 2262
    :try_start_2f
    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mSubtitleDataListenerDisabled:Z

    .line 2263
    iput-object v1, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 2264
    iput-object v1, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataHandler:Landroid/os/Handler;

    .line 2265
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityListener:Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

    .line 2266
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityHandler:Landroid/os/Handler;

    .line 2267
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_47

    .line 2270
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    .line 2271
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    .line 2272
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    .line 2273
    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDrmState()V

    .line 2275
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    .line 2276
    return-void

    .line 2267
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0

    .line 2260
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public whitelist releaseDrm()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    .line 5128
    const-string v0, "MediaPlayer"

    const-string v1, "releaseDrm:"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5130
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5131
    :try_start_a
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_41

    if-eqz v1, :cond_32

    .line 5141
    :try_start_e
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_releaseDrm()V

    .line 5144
    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    .line 5146
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_22
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_18
    .catchall {:try_start_e .. :try_end_17} :catchall_41

    .line 5152
    goto :goto_20

    .line 5150
    :catch_18
    move-exception v1

    .line 5151
    :try_start_19
    const-string v2, "MediaPlayer"

    const-string v3, "releaseDrm: Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5153
    :goto_20
    monitor-exit v0

    .line 5154
    return-void

    .line 5147
    :catch_22
    move-exception v1

    .line 5148
    const-string v2, "MediaPlayer"

    const-string v3, "releaseDrm: Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5149
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "releaseDrm: The player is not in a valid state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5132
    :cond_32
    const-string v1, "MediaPlayer"

    const-string v2, "releaseDrm(): No active DRM scheme to release."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5133
    new-instance v1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string v2, "releaseDrm: No active DRM scheme to release."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5153
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_19 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .registers 4

    .line 1699
    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1700
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1701
    iget-object v1, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    :cond_10
    invoke-direct {p0}, Landroid/media/MediaPlayer;->testDisableNativeRoutingCallbacksLocked()V

    .line 1704
    monitor-exit v0

    .line 1705
    return-void

    .line 1704
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public whitelist reset()V
    .registers 4

    .line 2286
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2287
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v0

    .line 2288
    :try_start_6
    iget-object v1, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_65

    .line 2290
    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_65

    .line 2292
    goto :goto_1d

    .line 2291
    :catch_1c
    move-exception v2

    .line 2293
    :goto_1d
    goto :goto_c

    .line 2294
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 2295
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_65

    .line 2296
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_2d

    .line 2297
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->reset()V

    .line 2299
    :cond_2d
    iget-object v1, p0, Landroid/media/MediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2300
    :try_start_30
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    const/4 v2, 0x0

    if-eqz v0, :cond_3c

    .line 2301
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v0}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    .line 2302
    iput-object v2, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 2304
    :cond_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_62

    .line 2306
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 2307
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    .line 2309
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v0, :cond_4d

    .line 2310
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2313
    :cond_4d
    iget-object v0, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v0

    .line 2314
    :try_start_50
    iget-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 2315
    iget-object v1, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 2316
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_5f

    .line 2318
    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDrmState()V

    .line 2319
    return-void

    .line 2316
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1

    .line 2304
    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v0

    .line 2295
    :catchall_65
    move-exception v1

    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v1
.end method

.method public whitelist restoreKeys([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    .line 5310
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreKeys: keySetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5312
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5314
    :try_start_1f
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_45

    if-eqz v1, :cond_36

    .line 5320
    :try_start_23
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaDrm;->restoreKeys([B[B)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_2d
    .catchall {:try_start_23 .. :try_end_2a} :catchall_45

    .line 5324
    nop

    .line 5326
    :try_start_2b
    monitor-exit v0

    .line 5327
    return-void

    .line 5321
    :catch_2d
    move-exception p1

    .line 5322
    const-string v1, "MediaPlayer"

    const-string v2, "restoreKeys Exception"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5323
    throw p1

    .line 5315
    :cond_36
    const-string p1, "MediaPlayer"

    const-string v1, "restoreKeys NoDrmSchemeException"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5316
    new-instance p1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string v1, "restoreKeys: Has to set a DRM scheme first."

    invoke-direct {p1, v1}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5326
    :catchall_45
    move-exception p1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_2b .. :try_end_47} :catchall_45

    throw p1
.end method

.method public whitelist seekTo(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2082
    int-to-long v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/media/MediaPlayer;->seekTo(JI)V

    .line 2083
    return-void
.end method

.method public whitelist seekTo(JI)V
    .registers 9

    .line 2058
    if-ltz p3, :cond_5f

    const/4 v0, 0x3

    if-gt p3, v0, :cond_5f

    .line 2063
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    const-string v3, "seekTo offset "

    const-string v4, "MediaPlayer"

    if-lez v2, :cond_33

    .line 2064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is too large, cap to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    move-wide p1, v0

    goto :goto_5b

    .line 2066
    :cond_33
    const-wide/32 v0, -0x80000000

    cmp-long v2, p1, v0

    if-gez v2, :cond_5b

    .line 2067
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is too small, cap to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/high16 p2, -0x80000000

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    move-wide p1, v0

    .line 2070
    :cond_5b
    :goto_5b
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer;->_seekTo(JI)V

    .line 2071
    return-void

    .line 2059
    :cond_5f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Illegal seek mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2060
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist selectTrack(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3332
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 3333
    return-void
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2377
    if-eqz p1, :cond_16

    .line 2381
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 2382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2383
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2384
    const/16 p1, 0x578

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    .line 2385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2386
    return-void

    .line 2379
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set AudioAttributes to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setAudioSessionId(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2459
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->native_setAudioSessionId(I)V

    .line 2460
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->baseUpdateSessionId(I)V

    .line 2461
    return-void
.end method

.method public whitelist setAudioStreamType(I)V
    .registers 4

    .line 2348
    const-string v0, "MediaPlayer"

    const-string v1, "setAudioStreamType()"

    invoke-static {p1, v0, v1}, Landroid/media/MediaPlayer;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 2349
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2350
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 2349
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 2351
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setAudioStreamType(I)V

    .line 2352
    iput p1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 2353
    return-void
.end method

.method public whitelist setAuxEffectSendLevel(F)V
    .registers 2

    .line 2503
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->baseSetAuxEffectSendLevel(F)I

    .line 2504
    return-void
.end method

.method public whitelist setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1050
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    .line 1051
    return-void
.end method

.method public whitelist setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    .line 1147
    return-void
.end method

.method public whitelist setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1082
    if-eqz p1, :cond_86

    .line 1086
    if-eqz p2, :cond_7e

    .line 1090
    if-eqz p4, :cond_19

    .line 1091
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 1092
    if-eqz v0, :cond_19

    instance-of v0, v0, Ljava/net/CookieManager;

    if-eqz v0, :cond_11

    goto :goto_19

    .line 1093
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The cookie handler has to be of CookieManager type when cookies are provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1100
    :cond_19
    :goto_19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1101
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1102
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1103
    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1104
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1105
    return-void

    .line 1106
    :cond_39
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1107
    const-string v1, "settings"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1110
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    .line 1111
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v2

    .line 1112
    invoke-static {p1, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 1113
    invoke-direct {p0, v0, v2}, Landroid/media/MediaPlayer;->attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 1114
    return-void

    .line 1115
    :cond_60
    invoke-direct {p0, v0, p1}, Landroid/media/MediaPlayer;->attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 1116
    return-void

    .line 1118
    :cond_67
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 1120
    goto :goto_7d

    .line 1122
    :cond_6f
    invoke-direct {p0, v0, p2}, Landroid/media/MediaPlayer;->attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_76

    .line 1123
    return-void

    .line 1125
    :cond_76
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 1128
    :goto_7d
    return-void

    .line 1087
    :cond_7e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "uri param can not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1083
    :cond_86
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context param can not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1258
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    .line 1263
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_25

    .line 1265
    :cond_15
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1267
    :goto_25
    return-void
.end method

.method public whitelist setDataSource(Landroid/media/MediaDataSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1321
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setDataSource(Landroid/media/MediaDataSource;)V

    .line 1322
    return-void
.end method

.method public whitelist setDataSource(Ljava/io/FileDescriptor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1281
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1282
    return-void
.end method

.method public whitelist setDataSource(Ljava/io/FileDescriptor;JJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1298
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_28

    .line 1299
    if-nez v1, :cond_a

    .line 1300
    :try_start_6
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_14

    .line 1302
    :cond_a
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_1a

    .line 1304
    :goto_14
    if-eqz v1, :cond_19

    :try_start_16
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_28

    .line 1306
    :cond_19
    goto :goto_31

    .line 1298
    :catchall_1a
    move-exception v0

    move-object p1, v0

    if-eqz v1, :cond_27

    :try_start_1e
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception v0

    move-object p2, v0

    :try_start_24
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    throw p1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_28

    .line 1304
    :catch_28
    move-exception v0

    move-object p1, v0

    .line 1305
    const-string p2, "MediaPlayer"

    const-string p3, "Ignoring IO error while setting data source"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1307
    :goto_31
    return-void
.end method

.method public whitelist setDataSource(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 1181
    return-void
.end method

.method public greylist setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 1195
    return-void
.end method

.method public whitelist setDisplay(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 801
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 803
    if-eqz p1, :cond_9

    .line 804
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_a

    .line 806
    :cond_9
    const/4 p1, 0x0

    .line 808
    :goto_a
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 809
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 810
    return-void
.end method

.method public whitelist setDrmPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    .line 5381
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDrmPropertyString: propertyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5383
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5385
    :try_start_25
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    if-nez v1, :cond_3d

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmConfigAllowed:Z

    if-eqz v1, :cond_2e

    goto :goto_3d

    .line 5386
    :cond_2e
    const-string p1, "MediaPlayer"

    const-string p2, "setDrmPropertyString NoDrmSchemeException"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5387
    new-instance p1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string p2, "setDrmPropertyString: Has to prepareDrm() first."

    invoke-direct {p1, p2}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_4e

    .line 5391
    :cond_3d
    :goto_3d
    :try_start_3d
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_45
    .catchall {:try_start_3d .. :try_end_42} :catchall_4e

    .line 5395
    nop

    .line 5396
    :try_start_43
    monitor-exit v0

    .line 5397
    return-void

    .line 5392
    :catch_45
    move-exception p1

    .line 5393
    const-string p2, "MediaPlayer"

    const-string v1, "setDrmPropertyString Exception"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5394
    throw p1

    .line 5396
    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public native whitelist setLooping(Z)V
.end method

.method public greylist-max-o setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 2193
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v0

    .line 2199
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 2201
    invoke-virtual {v0}, Landroid/os/Parcel;->dataCapacity()I

    move-result v2

    if-ge v2, v1, :cond_21

    .line 2202
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 2205
    :cond_21
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2206
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2207
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2208
    goto :goto_2c

    .line 2209
    :cond_40
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2210
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 2211
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2212
    goto :goto_4b

    .line 2213
    :cond_5f
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result p1

    return p1
.end method

.method public native whitelist setNextMediaPlayer(Landroid/media/MediaPlayer;)V
.end method

.method public whitelist setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .registers 2

    .line 4001
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 4002
    return-void
.end method

.method public whitelist setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2

    .line 3954
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 3955
    return-void
.end method

.method public whitelist setOnDrmConfigHelper(Landroid/media/MediaPlayer$OnDrmConfigHelper;)V
    .registers 3

    .line 4701
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4702
    :try_start_3
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    .line 4703
    monitor-exit v0

    .line 4704
    return-void

    .line 4703
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public whitelist setOnDrmInfoListener(Landroid/media/MediaPlayer$OnDrmInfoListener;)V
    .registers 3

    .line 4732
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setOnDrmInfoListener(Landroid/media/MediaPlayer$OnDrmInfoListener;Landroid/os/Handler;)V

    .line 4733
    return-void
.end method

.method public whitelist setOnDrmInfoListener(Landroid/media/MediaPlayer$OnDrmInfoListener;Landroid/os/Handler;)V
    .registers 5

    .line 4743
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4744
    if-eqz p1, :cond_d

    .line 4745
    :try_start_5
    new-instance v1, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    invoke-direct {v1, p0, p0, p1, p2}, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnDrmInfoListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    goto :goto_10

    .line 4747
    :cond_d
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    .line 4749
    :goto_10
    monitor-exit v0

    .line 4750
    return-void

    .line 4749
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public whitelist setOnDrmPreparedListener(Landroid/media/MediaPlayer$OnDrmPreparedListener;)V
    .registers 3

    .line 4815
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setOnDrmPreparedListener(Landroid/media/MediaPlayer$OnDrmPreparedListener;Landroid/os/Handler;)V

    .line 4816
    return-void
.end method

.method public whitelist setOnDrmPreparedListener(Landroid/media/MediaPlayer$OnDrmPreparedListener;Landroid/os/Handler;)V
    .registers 5

    .line 4826
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4827
    if-eqz p1, :cond_d

    .line 4828
    :try_start_5
    new-instance v1, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    invoke-direct {v1, p0, p0, p1, p2}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnDrmPreparedListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    goto :goto_10

    .line 4831
    :cond_d
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    .line 4833
    :goto_10
    monitor-exit v0

    .line 4834
    return-void

    .line 4833
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public whitelist setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2

    .line 4515
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 4516
    return-void
.end method

.method public whitelist setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .registers 2

    .line 4662
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 4663
    return-void
.end method

.method public whitelist setOnMediaTimeDiscontinuityListener(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;)V
    .registers 3

    .line 4226
    if-eqz p1, :cond_7

    .line 4229
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->setOnMediaTimeDiscontinuityListenerInt(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/os/Handler;)V

    .line 4230
    return-void

    .line 4227
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal null listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setOnMediaTimeDiscontinuityListener(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/os/Handler;)V
    .registers 3

    .line 4208
    if-eqz p1, :cond_10

    .line 4211
    if-eqz p2, :cond_8

    .line 4214
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->setOnMediaTimeDiscontinuityListenerInt(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/os/Handler;)V

    .line 4215
    return-void

    .line 4212
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null handler"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4209
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null listener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2

    .line 3926
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 3927
    return-void
.end method

.method public whitelist setOnRtpRxNoticeListener(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer$OnRtpRxNoticeListener;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4407
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4408
    nop

    .line 4409
    const-string v0, "android.permission.BIND_IMS_SERVICE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 4408
    :goto_f
    const-string v0, "android.permission.BIND_IMS_SERVICE permission not granted."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4411
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer$OnRtpRxNoticeListener;

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnRtpRxNoticeListener:Landroid/media/MediaPlayer$OnRtpRxNoticeListener;

    .line 4412
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnRtpRxNoticeExecutor:Ljava/util/concurrent/Executor;

    .line 4413
    return-void
.end method

.method public whitelist setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .registers 2

    .line 4028
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 4029
    return-void
.end method

.method public whitelist setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V
    .registers 3

    .line 4144
    if-eqz p1, :cond_7

    .line 4147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->setOnSubtitleDataListenerInt(Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V

    .line 4148
    return-void

    .line 4145
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal null listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V
    .registers 3

    .line 4123
    if-eqz p1, :cond_10

    .line 4126
    if-eqz p2, :cond_8

    .line 4129
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->setOnSubtitleDataListenerInt(Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V

    .line 4130
    return-void

    .line 4127
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null handler"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4124
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null listener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setOnTimedMetaDataAvailableListener(Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;)V
    .registers 2

    .line 4432
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    .line 4433
    return-void
.end method

.method public whitelist setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .registers 2

    .line 4090
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 4091
    return-void
.end method

.method public whitelist setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .registers 2

    .line 4061
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 4062
    return-void
.end method

.method public native whitelist setPlaybackParams(Landroid/media/PlaybackParams;)V
.end method

.method public whitelist setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .registers 4

    .line 1519
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1520
    return v0

    .line 1522
    :cond_a
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 1523
    :cond_10
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->native_setOutputDevice(I)Z

    move-result v0

    .line 1524
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 1525
    monitor-enter p0

    .line 1526
    :try_start_18
    iput-object p1, p0, Landroid/media/MediaPlayer;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 1527
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1c

    throw p1

    .line 1529
    :cond_1f
    :goto_1f
    return v0
.end method

.method public greylist setRetransmitEndpoint(Ljava/net/InetSocketAddress;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3458
    nop

    .line 3459
    nop

    .line 3461
    if-eqz p1, :cond_11

    .line 3462
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 3463
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    goto :goto_13

    .line 3461
    :cond_11
    const/4 v0, 0x0

    const/4 p1, 0x0

    .line 3466
    :goto_13
    invoke-direct {p0, v0, p1}, Landroid/media/MediaPlayer;->native_setRetransmitEndpoint(Ljava/lang/String;I)I

    move-result p1

    .line 3467
    if-nez p1, :cond_1a

    .line 3470
    return-void

    .line 3468
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal re-transmit endpoint; native ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setScreenOnWhilePlaying(Z)V
    .registers 4

    .line 1764
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_16

    .line 1765
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_11

    .line 1766
    const-string v0, "MediaPlayer"

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_11
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1769
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1771
    :cond_16
    return-void
.end method

.method public greylist setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V
    .registers 3

    .line 2830
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    .line 2831
    iget-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {p1, p2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    .line 2832
    return-void
.end method

.method public whitelist setSurface(Landroid/view/Surface;)V
    .registers 4

    .line 833
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 834
    const-string v0, "MediaPlayer"

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 837
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 838
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 839
    return-void
.end method

.method public native whitelist setSyncParams(Landroid/media/SyncParams;)V
.end method

.method public whitelist setVideoScalingMode(I)V
    .registers 5

    .line 882
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isVideoScalingModeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 889
    :try_start_e
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 890
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_25

    .line 894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 896
    nop

    .line 897
    return-void

    .line 894
    :catchall_25
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 896
    throw p1

    .line 883
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scaling mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not supported"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 884
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setVolume(F)V
    .registers 2

    .line 2435
    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2436
    return-void
.end method

.method public whitelist setVolume(FF)V
    .registers 3

    .line 2420
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->baseSetVolume(FF)V

    .line 2421
    return-void
.end method

.method public whitelist setWakeMode(Landroid/content/Context;I)V
    .registers 6

    .line 1729
    nop

    .line 1732
    const-string v0, "audio.offload.ignore_setawake"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    .line 1733
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IGNORING setWakeMode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaPlayer"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    return-void

    .line 1737
    :cond_24
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3c

    .line 1738
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1739
    nop

    .line 1740
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_38

    .line 1738
    :cond_37
    move v2, v1

    .line 1742
    :goto_38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_3d

    .line 1737
    :cond_3c
    move v2, v1

    .line 1745
    :goto_3d
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 1746
    const/high16 v0, 0x20000000

    or-int/2addr p2, v0

    const-class v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1747
    iget-object p1, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1748
    if-eqz v2, :cond_60

    .line 1749
    iget-object p1, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1751
    :cond_60
    return-void
.end method

.method public whitelist start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1393
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getStartDelayMs()I

    move-result v0

    .line 1394
    if-nez v0, :cond_a

    .line 1395
    invoke-direct {p0}, Landroid/media/MediaPlayer;->startImpl()V

    goto :goto_12

    .line 1397
    :cond_a
    new-instance v1, Landroid/media/MediaPlayer$1;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaPlayer$1;-><init>(Landroid/media/MediaPlayer;I)V

    .line 1413
    invoke-virtual {v1}, Landroid/media/MediaPlayer$1;->start()V

    .line 1415
    :goto_12
    return-void
.end method

.method public whitelist stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1443
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1444
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    .line 1445
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseStop()V

    .line 1446
    invoke-direct {p0}, Landroid/media/MediaPlayer;->tryToDisableNativeRoutingCallback()V

    .line 1447
    return-void
.end method
