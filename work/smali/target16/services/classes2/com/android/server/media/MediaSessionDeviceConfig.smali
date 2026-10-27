.class public abstract Lcom/android/server/media/MediaSessionDeviceConfig;
.super Ljava/lang/Object;
.source "MediaSessionDeviceConfig.java"


# static fields
.field public static volatile sMediaButtonReceiverFgsAllowlistDurationMs:J = 0x2710L

.field public static volatile sMediaSessionCallbackFgsAllowlistDurationMs:J = 0x2710L

.field public static volatile sMediaSessionCallbackFgsWhileInUseTempAllowDurationMs:J = 0x2710L

.field public static volatile sMediaSessionTempUserEngagedDurationMs:J = 0x927c0L


# direct methods
.method public static synthetic $r8$lambda$MNJwt-oLqFqNCBNiXIWjsovBf6M(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .registers 6

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_60

    goto :goto_3b

    :sswitch_c
    const-string/jumbo v0, "media_session_calback_fgs_allowlist_duration_ms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_3b

    :cond_16
    const/4 v1, 0x3

    goto :goto_3b

    :sswitch_18
    const-string/jumbo v0, "media_session_callback_fgs_while_in_use_temp_allow_duration_ms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_3b

    :cond_22
    const/4 v1, 0x2

    goto :goto_3b

    :sswitch_24
    const-string/jumbo v0, "media_session_temp_user_engaged_duration_ms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_3b

    :cond_2e
    const/4 v1, 0x1

    goto :goto_3b

    :sswitch_30
    const-string/jumbo v0, "media_button_receiver_fgs_allowlist_duration_ms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    const-wide/16 v2, 0x2710

    packed-switch v1, :pswitch_data_72

    return-void

    .line 81
    :pswitch_41
    invoke-virtual {p0, p1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionCallbackFgsAllowlistDurationMs:J

    return-void

    .line 85
    :pswitch_48
    invoke-virtual {p0, p1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionCallbackFgsWhileInUseTempAllowDurationMs:J

    return-void

    :pswitch_4f
    const-wide/32 v0, 0x927c0

    .line 89
    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionTempUserEngagedDurationMs:J

    return-void

    .line 77
    :pswitch_59
    invoke-virtual {p0, p1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaButtonReceiverFgsAllowlistDurationMs:J

    return-void

    :sswitch_data_60
    .sparse-switch
        -0x75c89a12 -> :sswitch_30
        -0x6dd6a958 -> :sswitch_24
        -0x3f30504f -> :sswitch_18
        0x6b7d1e9e -> :sswitch_c
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_59
        :pswitch_4f
        :pswitch_48
        :pswitch_41
    .end packed-switch
.end method

.method public static synthetic $r8$lambda$k_hFW2LrttADCrEeih-AxETDeEg(Landroid/provider/DeviceConfig$Properties;)V
    .registers 1

    .line 98
    invoke-static {p0}, Lcom/android/server/media/MediaSessionDeviceConfig;->refresh(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 139
    const-string v0, "Media session config:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  %s: [cur: %s, def: %s]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    sget-wide v0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaButtonReceiverFgsAllowlistDurationMs:J

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x2710

    .line 144
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "media_button_receiver_fgs_allowlist_duration_ms"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 141
    invoke-static {p1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    sget-wide v2, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionCallbackFgsAllowlistDurationMs:J

    .line 147
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 148
    const-string/jumbo v2, "media_session_calback_fgs_allowlist_duration_ms"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 145
    invoke-static {p1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    sget-wide v2, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionCallbackFgsWhileInUseTempAllowDurationMs:J

    .line 151
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 152
    const-string/jumbo v2, "media_session_callback_fgs_while_in_use_temp_allow_duration_ms"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 149
    invoke-static {p1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    sget-wide v0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionTempUserEngagedDurationMs:J

    .line 155
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0x927c0

    .line 156
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "media_session_temp_user_engaged_duration_ms"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 153
    invoke-static {p1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static getMediaButtonReceiverFgsAllowlistDurationMs()J
    .registers 2

    .line 108
    sget-wide v0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaButtonReceiverFgsAllowlistDurationMs:J

    return-wide v0
.end method

.method public static getMediaSessionCallbackFgsAllowlistDurationMs()J
    .registers 2

    .line 117
    sget-wide v0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionCallbackFgsAllowlistDurationMs:J

    return-wide v0
.end method

.method public static getMediaSessionCallbackFgsWhileInUseTempAllowDurationMs()J
    .registers 2

    .line 126
    sget-wide v0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionCallbackFgsWhileInUseTempAllowDurationMs:J

    return-wide v0
.end method

.method public static getMediaSessionTempUserEngagedDurationMs()J
    .registers 2

    .line 135
    sget-wide v0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionTempUserEngagedDurationMs:J

    return-wide v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 3

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v0, Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda0;-><init>()V

    .line 97
    const-string/jumbo v1, "media"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const/4 p0, 0x0

    .line 99
    new-array p0, p0, [Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/media/MediaSessionDeviceConfig;->refresh(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static refresh(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 73
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 74
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda1;-><init>(Landroid/provider/DeviceConfig$Properties;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
