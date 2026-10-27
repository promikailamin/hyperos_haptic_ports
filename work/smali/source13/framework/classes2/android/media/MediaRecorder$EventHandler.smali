.class Landroid/media/MediaRecorder$EventHandler;
.super Landroid/os/Handler;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final greylist-max-o MEDIA_RECORDER_AUDIO_ROUTING_CHANGED:I = 0x2710

.field private static final greylist-max-o MEDIA_RECORDER_EVENT_ERROR:I = 0x1

.field private static final greylist-max-o MEDIA_RECORDER_EVENT_INFO:I = 0x2

.field private static final greylist-max-o MEDIA_RECORDER_EVENT_LIST_END:I = 0x63

.field private static final greylist-max-o MEDIA_RECORDER_EVENT_LIST_START:I = 0x1

.field private static final blacklist MEDIA_RECORDER_OZOAUDIO_AUDIOLEVELS_EVENT:I = 0x7f100005

.field private static final blacklist MEDIA_RECORDER_OZOAUDIO_MICBLOCKING_EVENT:I = 0x7f100006

.field private static final blacklist MEDIA_RECORDER_OZOAUDIO_SSLOC_EVENT:I = 0x7f100002

.field private static final blacklist MEDIA_RECORDER_OZOAUDIO_SSLOC_SECTORS1_EVENT:I = 0x7f100003

.field private static final blacklist MEDIA_RECORDER_OZOAUDIO_SSLOC_SECTORS2_EVENT:I = 0x7f100004

.field private static final blacklist MEDIA_RECORDER_OZOAUDIO_WNR_EVENT:I = 0x7f100001

.field private static final greylist-max-o MEDIA_RECORDER_TRACK_EVENT_ERROR:I = 0x64

.field private static final greylist-max-o MEDIA_RECORDER_TRACK_EVENT_INFO:I = 0x65

.field private static final greylist-max-o MEDIA_RECORDER_TRACK_EVENT_LIST_END:I = 0x3e8

.field private static final greylist-max-o MEDIA_RECORDER_TRACK_EVENT_LIST_START:I = 0x64


# instance fields
.field private greylist-max-o mMediaRecorder:Landroid/media/MediaRecorder;

.field final synthetic blacklist this$0:Landroid/media/MediaRecorder;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V
    .registers 4
    .param p2, "mr"    # Landroid/media/MediaRecorder;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1728
    iput-object p1, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    .line 1729
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1730
    iput-object p2, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1731
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 1761
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmNativeContext(Landroid/media/MediaRecorder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 1762
    const-string v0, "MediaRecorder"

    const-string v1, "mediarecorder went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    return-void

    .line 1765
    :cond_14
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_156

    .line 1843
    const-string v0, "MediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    return-void

    .line 1837
    :sswitch_34
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnEventListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 1838
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnEventListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnEventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaRecorder$OnEventListener;->onMicBlockingEvent(Landroid/media/MediaRecorder;II)V

    .line 1839
    :cond_4b
    return-void

    .line 1832
    :sswitch_4c
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnEventListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 1833
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnEventListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnEventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaRecorder$OnEventListener;->onAudioLevelsEvent(Landroid/media/MediaRecorder;II)V

    .line 1834
    :cond_63
    return-void

    .line 1822
    :sswitch_64
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnEventListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 1823
    iget v0, p1, Landroid/os/Message;->arg1:I

    and-int/lit16 v0, v0, 0x1ff

    .line 1824
    .local v0, "width":I
    iget v1, p1, Landroid/os/Message;->arg1:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0x1ff

    .line 1825
    .local v1, "height":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1827
    .local v2, "id":I
    iget-object v3, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v3}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnEventListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnEventListener;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/media/MediaRecorder$OnEventListener;->onSourceSectorWidthEvent(Landroid/media/MediaRecorder;III)V

    .line 1829
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "id":I
    :cond_83
    return-void

    .line 1812
    :sswitch_84
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnEventListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_a7

    .line 1813
    iget v0, p1, Landroid/os/Message;->arg1:I

    and-int/lit16 v0, v0, 0x1ff

    add-int/lit16 v0, v0, -0xb4

    .line 1814
    .local v0, "azimuth":I
    iget v1, p1, Landroid/os/Message;->arg1:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0x1ff

    add-int/lit8 v1, v1, -0x5a

    .line 1815
    .local v1, "elevation":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1817
    .restart local v2    # "id":I
    iget-object v3, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v3}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnEventListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnEventListener;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/media/MediaRecorder$OnEventListener;->onSourceSectorAzimuthEvent(Landroid/media/MediaRecorder;III)V

    .line 1819
    .end local v0    # "azimuth":I
    .end local v1    # "elevation":I
    .end local v2    # "id":I
    :cond_a7
    return-void

    .line 1800
    :sswitch_a8
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnEventListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_d5

    .line 1801
    iget v0, p1, Landroid/os/Message;->arg1:I

    shr-int/lit8 v0, v0, 0xf

    and-int/lit16 v0, v0, 0x1ff

    add-int/lit16 v0, v0, -0xb4

    .line 1802
    .restart local v0    # "azimuth":I
    iget v1, p1, Landroid/os/Message;->arg1:I

    shr-int/lit8 v1, v1, 0x7

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v7, v1, -0x5a

    .line 1803
    .local v7, "elevation":I
    iget v1, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v8, v1, 0x7f

    .line 1804
    .local v8, "strength":I
    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 1806
    .local v9, "id":I
    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v1}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnEventListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnEventListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    move v3, v0

    move v4, v7

    move v5, v8

    move v6, v9

    invoke-interface/range {v1 .. v6}, Landroid/media/MediaRecorder$OnEventListener;->onSourceLocalizationEvent(Landroid/media/MediaRecorder;IIII)V

    .line 1809
    .end local v0    # "azimuth":I
    .end local v7    # "elevation":I
    .end local v8    # "strength":I
    .end local v9    # "id":I
    :cond_d5
    return-void

    .line 1792
    :sswitch_d6
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnEventListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_f8

    .line 1793
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1794
    .local v0, "windLevel":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_ea

    goto :goto_eb

    :cond_ea
    const/4 v1, 0x0

    .line 1795
    .local v1, "status":Z
    :goto_eb
    iget-object v2, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v2}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnEventListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnEventListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3, v4, v1, v0}, Landroid/media/MediaRecorder$OnEventListener;->onWindEvent(Landroid/media/MediaRecorder;IZI)V

    .line 1797
    .end local v0    # "windLevel":I
    .end local v1    # "status":Z
    :cond_f8
    return-void

    .line 1781
    :sswitch_f9
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 1782
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmRoutingChangeListeners(Landroid/media/MediaRecorder;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 1784
    :try_start_103
    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v1}, Landroid/media/MediaRecorder;->-$$Nest$fgetmRoutingChangeListeners(Landroid/media/MediaRecorder;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_111
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_121

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 1785
    .local v2, "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    invoke-virtual {v2}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    .line 1786
    .end local v2    # "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    goto :goto_111

    .line 1787
    :cond_121
    monitor-exit v0

    .line 1788
    return-void

    .line 1787
    :catchall_123
    move-exception v1

    monitor-exit v0
    :try_end_125
    .catchall {:try_start_103 .. :try_end_125} :catchall_123

    throw v1

    .line 1775
    :sswitch_126
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnInfoListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_13d

    .line 1776
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnInfoListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    .line 1778
    :cond_13d
    return-void

    .line 1768
    :sswitch_13e
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnErrorListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_155

    .line 1769
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnErrorListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaRecorder$OnErrorListener;->onError(Landroid/media/MediaRecorder;II)V

    .line 1771
    :cond_155
    return-void

    :sswitch_data_156
    .sparse-switch
        0x1 -> :sswitch_13e
        0x2 -> :sswitch_126
        0x64 -> :sswitch_13e
        0x65 -> :sswitch_126
        0x2710 -> :sswitch_f9
        0x7f100001 -> :sswitch_d6
        0x7f100002 -> :sswitch_a8
        0x7f100003 -> :sswitch_84
        0x7f100004 -> :sswitch_64
        0x7f100005 -> :sswitch_4c
        0x7f100006 -> :sswitch_34
    .end sparse-switch
.end method
