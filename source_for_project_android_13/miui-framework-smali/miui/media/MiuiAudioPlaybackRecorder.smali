.class public Lmiui/media/MiuiAudioPlaybackRecorder;
.super Ljava/lang/Object;
.source "MiuiAudioPlaybackRecorder.java"


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist am:Landroid/media/AudioManager;

.field private blacklist mIProjection:Landroid/media/projection/IMediaProjection;

.field private blacklist mMediaProjectionService:Landroid/media/projection/IMediaProjectionManager;

.field private blacklist mMixOwnersRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/media/AudioRecord;",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPolicyOwnersRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/media/AudioRecord;",
            "Landroid/media/audiopolicy/AudioPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProjection:Landroid/media/projection/MediaProjection;

.field private blacklist mUid:I

.field private blacklist miplayStatus:Z

.field private blacklist optCode:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "ctx"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mPolicyOwnersRecord:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mMixOwnersRecord:Ljava/util/HashMap;

    .line 43
    const-string v0, "MiuiAudioPlaybackRecorder"

    iput-object v0, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->TAG:Ljava/lang/String;

    .line 45
    const/4 v1, 0x0

    iput v1, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->optCode:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mPackageName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 51
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->am:Landroid/media/AudioManager;

    .line 53
    :try_start_2c
    iget-object v3, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 54
    .local v3, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mUid:I

    .line 55
    const-string v4, "media_projection"

    .line 56
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 55
    invoke-static {v4}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v4

    iput-object v4, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mMediaProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 57
    iget v5, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mUid:I

    iget-object v6, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v1, v1}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object v1

    iput-object v1, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mIProjection:Landroid/media/projection/IMediaProjection;

    .line 59
    new-instance v1, Landroid/media/projection/MediaProjection;

    iget-object v4, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mIProjection:Landroid/media/projection/IMediaProjection;

    invoke-direct {v1, p1, v4}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V

    iput-object v1, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mProjection:Landroid/media/projection/MediaProjection;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_55} :catch_56

    .line 62
    goto :goto_6d

    .line 60
    .end local v3    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :catch_56
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to create projection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6d
    return-void
.end method


# virtual methods
.method public whitelist createRecorder(IIIII)Landroid/media/AudioRecord;
    .registers 13
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "format"    # I
    .param p4, "appUid"    # I
    .param p5, "routeFlags"    # I

    .line 72
    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    aput p4, v5, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lmiui/media/MiuiAudioPlaybackRecorder;->createRecorder(III[II)Landroid/media/AudioRecord;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createRecorder(IIIIII)Landroid/media/AudioRecord;
    .registers 15
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "format"    # I
    .param p4, "appUid"    # I
    .param p5, "routeFlags"    # I
    .param p6, "priority"    # I

    .line 80
    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    aput p4, v5, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lmiui/media/MiuiAudioPlaybackRecorder;->createRecorder(III[III)Landroid/media/AudioRecord;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createRecorder(III[II)Landroid/media/AudioRecord;
    .registers 13
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "format"    # I
    .param p4, "appUids"    # [I
    .param p5, "routeFlags"    # I

    .line 67
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lmiui/media/MiuiAudioPlaybackRecorder;->createRecorder(III[III)Landroid/media/AudioRecord;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createRecorder(III[III)Landroid/media/AudioRecord;
    .registers 23
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "format"    # I
    .param p4, "appUids"    # [I
    .param p5, "routeFlags"    # I
    .param p6, "priority"    # I

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    iget-object v2, v0, Lmiui/media/MiuiAudioPlaybackRecorder;->mProjection:Landroid/media/projection/MediaProjection;

    const/4 v3, 0x0

    const-string v4, "MiuiAudioPlaybackRecorder"

    if-nez v2, :cond_11

    .line 89
    const-string v2, "fail to createRecorder, projection is null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-object v3

    .line 93
    :cond_11
    const/4 v2, 0x0

    .line 95
    .local v2, "record":Landroid/media/AudioRecord;
    new-instance v5, Landroid/media/AudioFormat$Builder;

    invoke-direct {v5}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 96
    move/from16 v6, p3

    invoke-virtual {v5, v6}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    .line 97
    move/from16 v7, p1

    invoke-virtual {v5, v7}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    .line 98
    move/from16 v8, p2

    invoke-virtual {v5, v8}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    .line 99
    invoke-virtual {v5}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    .line 102
    .local v5, "audioFormat":Landroid/media/AudioFormat;
    new-instance v9, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v9}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    new-instance v10, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v10}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 104
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v10

    .line 103
    invoke-virtual {v9, v10, v11}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v9

    .line 106
    .local v9, "mAudioMixingRuleBuilder":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    array-length v10, v1

    const/4 v12, 0x0

    :goto_46
    if-ge v12, v10, :cond_55

    aget v13, v1, v12

    .line 107
    .local v13, "uid":I
    const/4 v14, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    .line 106
    .end local v13    # "uid":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_46

    .line 110
    :cond_55
    invoke-virtual {v9}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v10

    .line 112
    .local v10, "mAudioMixingRule":Landroid/media/audiopolicy/AudioMixingRule;
    new-instance v12, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-direct {v12, v10}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    .line 113
    invoke-virtual {v12, v5}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v12

    .line 114
    move/from16 v13, p5

    invoke-virtual {v12, v13}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v12

    .line 115
    move/from16 v14, p6

    invoke-virtual {v12, v14}, Landroid/media/audiopolicy/AudioMix$Builder;->setPriority(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v12

    .line 116
    invoke-virtual {v12}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v12

    .line 118
    .local v12, "audioMix":Landroid/media/audiopolicy/AudioMix;
    new-instance v15, Landroid/media/audiopolicy/AudioPolicy$Builder;

    invoke-direct {v15, v3}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lmiui/media/MiuiAudioPlaybackRecorder;->mProjection:Landroid/media/projection/MediaProjection;

    .line 119
    invoke-virtual {v15, v3}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setMediaProjection(Landroid/media/projection/MediaProjection;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object v3

    .line 120
    invoke-virtual {v3, v12}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v3

    .line 122
    .local v3, "policy":Landroid/media/audiopolicy/AudioPolicy;
    iget-object v15, v0, Lmiui/media/MiuiAudioPlaybackRecorder;->am:Landroid/media/AudioManager;

    invoke-virtual {v15, v3}, Landroid/media/AudioManager;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I

    .line 124
    invoke-virtual {v3, v12}, Landroid/media/audiopolicy/AudioPolicy;->createAudioRecordSink(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioRecord;

    move-result-object v2

    .line 125
    if-nez v2, :cond_9c

    .line 126
    iget-object v11, v0, Lmiui/media/MiuiAudioPlaybackRecorder;->am:Landroid/media/AudioManager;

    invoke-virtual {v11, v3}, Landroid/media/AudioManager;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 127
    const-string v11, "createAudioRecordSink return null"

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v3

    goto :goto_d4

    .line 129
    :cond_9c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "registerAudioPolicy for record: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " policy:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 129
    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v4, v0, Lmiui/media/MiuiAudioPlaybackRecorder;->mPolicyOwnersRecord:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-object v11, v3

    .end local v3    # "policy":Landroid/media/audiopolicy/AudioPolicy;
    .local v11, "policy":Landroid/media/audiopolicy/AudioPolicy;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 133
    .local v3, "startRecorderTime":J
    const/4 v15, 0x1

    iput-boolean v15, v0, Lmiui/media/MiuiAudioPlaybackRecorder;->miplayStatus:Z

    .line 134
    invoke-static {v3, v4, v15}, Lmiui/media/MQSUtils;->onetrack(JZ)V

    .line 136
    .end local v3    # "startRecorderTime":J
    :goto_d4
    iget-object v3, v0, Lmiui/media/MiuiAudioPlaybackRecorder;->mMixOwnersRecord:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-object v2
.end method

.method public blacklist createRecorder(Landroid/media/AudioFormat;Landroid/media/audiopolicy/AudioMixingRule;I)Landroid/media/AudioRecord;
    .registers 5
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;
    .param p2, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .param p3, "routeFlags"    # I

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/media/MiuiAudioPlaybackRecorder;->createRecorder(Landroid/media/AudioFormat;Landroid/media/audiopolicy/AudioMixingRule;II)Landroid/media/AudioRecord;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createRecorder(Landroid/media/AudioFormat;Landroid/media/audiopolicy/AudioMixingRule;II)Landroid/media/AudioRecord;
    .registers 11
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;
    .param p2, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .param p3, "routeFlags"    # I
    .param p4, "priority"    # I

    .line 151
    new-instance v0, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-direct {v0, p2}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    .line 152
    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p3}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0, p4}, Landroid/media/audiopolicy/AudioMix$Builder;->setPriority(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v0

    .line 157
    .local v0, "audioMix":Landroid/media/audiopolicy/AudioMix;
    new-instance v1, Landroid/media/audiopolicy/AudioPolicy$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mProjection:Landroid/media/projection/MediaProjection;

    .line 158
    invoke-virtual {v1, v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setMediaProjection(Landroid/media/projection/MediaProjection;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v0}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v1

    .line 161
    .local v1, "policy":Landroid/media/audiopolicy/AudioPolicy;
    iget-object v2, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->am:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I

    .line 163
    invoke-virtual {v1, v0}, Landroid/media/audiopolicy/AudioPolicy;->createAudioRecordSink(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioRecord;

    move-result-object v2

    .line 164
    .local v2, "record":Landroid/media/AudioRecord;
    const-string v3, "MiuiAudioPlaybackRecorder"

    if-nez v2, :cond_41

    .line 165
    iget-object v4, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->am:Landroid/media/AudioManager;

    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 166
    const-string v4, "createAudioRecordSink return null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 168
    :cond_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerAudioPolicy for record: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " policy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v3, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mPolicyOwnersRecord:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :goto_6e
    iget-object v3, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mMixOwnersRecord:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-object v2
.end method

.method protected whitelist test-api finalize()V
    .registers 6

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "policy":Landroid/media/audiopolicy/AudioPolicy;
    iget-object v1, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mPolicyOwnersRecord:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecord;

    .line 250
    .local v2, "record":Landroid/media/AudioRecord;
    iget-object v3, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mPolicyOwnersRecord:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/media/audiopolicy/AudioPolicy;

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalize unregisterAudioPolicyAsync for record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 252
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " policy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    const-string v4, "MiuiAudioPlaybackRecorder"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v3, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->am:Landroid/media/AudioManager;

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 254
    .end local v2    # "record":Landroid/media/AudioRecord;
    goto :goto_b

    .line 255
    :cond_50
    return-void
.end method

.method public whitelist releaseRecorder(Landroid/media/AudioRecord;)Z
    .registers 6
    .param p1, "record"    # Landroid/media/AudioRecord;

    .line 176
    iget-object v0, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mPolicyOwnersRecord:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioPolicy;

    .line 177
    .local v0, "policy":Landroid/media/audiopolicy/AudioPolicy;
    iget-object v1, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mMixOwnersRecord:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseRecorder for record: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " policy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    const-string v3, "MiuiAudioPlaybackRecorder"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->am:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 183
    .local v2, "endRecorderTime":J
    iput-boolean v1, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->miplayStatus:Z

    .line 184
    invoke-static {v2, v3, v1}, Lmiui/media/MQSUtils;->onetrack(JZ)V

    .line 185
    const/4 v1, 0x1

    return v1

    .line 187
    .end local v2    # "endRecorderTime":J
    :cond_4a
    return v1
.end method

.method public blacklist updateRule(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioRecord;)V
    .registers 11
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .param p2, "record"    # Landroid/media/AudioRecord;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRule for record :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "optCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->optCode:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->optCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiuiAudioPlaybackRecorder"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v0, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-direct {v0, p1}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    iget-object v4, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mMixOwnersRecord:Ljava/util/HashMap;

    .line 229
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v0

    iget-object v4, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mMixOwnersRecord:Ljava/util/HashMap;

    .line 230
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v0

    iget-object v4, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mMixOwnersRecord:Ljava/util/HashMap;

    .line 231
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getPriority()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/media/audiopolicy/AudioMix$Builder;->setPriority(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v0

    .line 233
    .local v0, "audioMix":Landroid/media/audiopolicy/AudioMix;
    iget-object v4, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mPolicyOwnersRecord:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioPolicy;

    .line 234
    .local v4, "policy":Landroid/media/audiopolicy/AudioPolicy;
    iget-object v5, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mMixOwnersRecord:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/audiopolicy/AudioMix;

    .line 235
    .local v5, "old":Landroid/media/audiopolicy/AudioMix;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v6

    .line 236
    .local v3, "zeMixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "detachMixes for record :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->optCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v4, v3}, Landroid/media/audiopolicy/AudioPolicy;->detachMixes(Ljava/util/List;)I

    .line 239
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 240
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v4, v3}, Landroid/media/audiopolicy/AudioPolicy;->attachMixes(Ljava/util/List;)I

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attachMixes for record :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->optCode:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mMixOwnersRecord:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void
.end method

.method public whitelist updateUid([ILandroid/media/AudioRecord;)V
    .registers 13
    .param p1, "appUids"    # [I
    .param p2, "record"    # Landroid/media/AudioRecord;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUid for record :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "optCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->optCode:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->optCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiuiAudioPlaybackRecorder"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 194
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 193
    invoke-virtual {v0, v3, v4}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    .line 196
    .local v0, "mAudioMixingRuleBuilder":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    array-length v3, p1

    const/4 v5, 0x0

    :goto_45
    if-ge v5, v3, :cond_54

    aget v6, p1, v5

    .line 197
    .local v6, "uid":I
    const/4 v7, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    .line 196
    .end local v6    # "uid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 200
    :cond_54
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v3

    .line 202
    .local v3, "mAudioMixingRule":Landroid/media/audiopolicy/AudioMixingRule;
    new-instance v5, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-direct {v5, v3}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    iget-object v6, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mMixOwnersRecord:Ljava/util/HashMap;

    .line 203
    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {v6}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v5

    iget-object v6, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mMixOwnersRecord:Ljava/util/HashMap;

    .line 204
    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {v6}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v5

    iget-object v6, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mMixOwnersRecord:Ljava/util/HashMap;

    .line 205
    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {v6}, Landroid/media/audiopolicy/AudioMix;->getPriority()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/audiopolicy/AudioMix$Builder;->setPriority(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v5

    .line 206
    invoke-virtual {v5}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v5

    .line 208
    .local v5, "audioMix":Landroid/media/audiopolicy/AudioMix;
    iget-object v6, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mPolicyOwnersRecord:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/audiopolicy/AudioPolicy;

    .line 209
    .local v6, "policy":Landroid/media/audiopolicy/AudioPolicy;
    iget-object v7, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mMixOwnersRecord:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/audiopolicy/AudioMix;

    .line 210
    .local v7, "old":Landroid/media/audiopolicy/AudioMix;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v8

    .line 211
    .local v4, "zeMixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "detachMixes for record :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->optCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v8, "updateuid=on"

    invoke-static {v8}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 214
    invoke-virtual {v6, v4}, Landroid/media/audiopolicy/AudioPolicy;->detachMixes(Ljava/util/List;)I

    .line 215
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 216
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {v6, v4}, Landroid/media/audiopolicy/AudioPolicy;->attachMixes(Ljava/util/List;)I

    .line 218
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attachMixes for record :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->optCode:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v1, "updateuid=off"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lmiui/media/MiuiAudioPlaybackRecorder;->mMixOwnersRecord:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method
