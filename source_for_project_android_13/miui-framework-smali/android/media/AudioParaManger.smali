.class public Landroid/media/AudioParaManger;
.super Ljava/lang/Object;
.source "AudioParaManger.java"


# static fields
.field public static final blacklist AUDIOROOM_PARAMETER_FOCUS_REGION:Ljava/lang/String; = "focus_region"

.field public static final blacklist AUDIOROOM_PARAMETER_SENSOR_ANGLE_RANGE:Ljava/lang/String; = "sensor_angle_range"

.field public static final blacklist AUDIOROOM_PARAMETER_VIEW_REGION:Ljava/lang/String; = "view_region"

.field public static final blacklist AZI_DEFALUT:D = 0.0

.field private static final blacklist AudioZoomVendor:Ljava/lang/String; = "ro.vendor.audio.zoom.type"

.field public static final blacklist ELE_DEFALUT:D = 0.0

.field private static final blacklist FORTE:I = 0x1

.field public static final blacklist GAIN_DEFALUT:D = 0.0

.field private static final blacklist GAIN_FOR_SELFIE:D = 5.0

.field private static final blacklist GAIN_MAX:D = 5.0

.field private static final blacklist GAIN_MIN:D = 2.0

.field public static final blacklist HIGHT_DEFALUT:D = 100.0

.field private static final blacklist MAX_VISUAL:I = 0x6

.field private static final blacklist NOKIA:I = 0x2

.field static final blacklist OZO_DEVICE_UUID:[Ljava/lang/String;

.field static final blacklist OZO_INPUTMIC_CHANNELS:I = 0x3

.field public static final blacklist REC_DEFAULT:I = 0x1

.field public static final blacklist SENCE_DEFAULT:I = 0x1

.field public static final blacklist SHOT_DEFAULT:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AudioParaManger"

.field public static final blacklist WIDTH_DEFALUT:D = 100.0


# instance fields
.field blacklist MaxVisual:I

.field blacklist fRecType:I

.field blacklist fSence:I

.field blacklist fShot:I

.field blacklist fWnd_ns:I

.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private blacklist mMQSUtils:Landroid/media/MQSUtils;

.field blacklist mMediaRecorder:Landroid/media/MediaRecorder;

.field blacklist mVendor:I

.field blacklist nAudioFocusType:I

.field blacklist nFocusAzimuth:D

.field blacklist nFocusElevation:D

.field blacklist nFocusGain:D

.field blacklist nFocusSectorHeight:D

.field blacklist nFocusSectorWidth:D

.field blacklist nWndNoise:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 33
    const-string v0, "3D7BEEFA-93C7-420E-BD34-A5C4B3C0F830"

    const-string v1, "3D7BEEFA-93C7-420E-BD34-A5C4B3C0F831"

    const-string v2, "3D7BEEFA-93C7-420E-BD34-A5C4B3C0F832"

    const-string v3, "3D7BEEFA-93C7-420E-BD34-A5C4B3C0F833"

    const-string v4, "3D7BEEFA-93C7-420E-BD34-A5C4B3C0F834"

    const-string v5, "3D7BEEFA-93C7-420E-BD34-A5C4B3C0F835"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioParaManger;->OZO_DEVICE_UUID:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/MediaRecorder;Landroid/content/Context;)V
    .registers 6
    .param p1, "mRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "mContext"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioParaManger;->nWndNoise:Z

    .line 65
    iput v0, p0, Landroid/media/AudioParaManger;->nAudioFocusType:I

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/AudioParaManger;->nFocusGain:D

    .line 67
    iput-wide v1, p0, Landroid/media/AudioParaManger;->nFocusAzimuth:D

    .line 68
    iput-wide v1, p0, Landroid/media/AudioParaManger;->nFocusElevation:D

    .line 69
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    iput-wide v1, p0, Landroid/media/AudioParaManger;->nFocusSectorWidth:D

    .line 70
    iput-wide v1, p0, Landroid/media/AudioParaManger;->nFocusSectorHeight:D

    .line 73
    iput v0, p0, Landroid/media/AudioParaManger;->fWnd_ns:I

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioParaManger;->fRecType:I

    .line 75
    iput v1, p0, Landroid/media/AudioParaManger;->fShot:I

    .line 76
    iput v1, p0, Landroid/media/AudioParaManger;->fSence:I

    .line 78
    const/16 v1, 0xa

    iput v1, p0, Landroid/media/AudioParaManger;->MaxVisual:I

    .line 85
    iput-object p1, p0, Landroid/media/AudioParaManger;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 86
    const-string v1, "ro.vendor.audio.zoom.type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioParaManger;->mVendor:I

    .line 87
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/AudioParaManger;->mAudioManager:Landroid/media/AudioManager;

    .line 88
    new-instance v0, Landroid/media/MQSUtils;

    invoke-direct {v0, p2}, Landroid/media/MQSUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/AudioParaManger;->mMQSUtils:Landroid/media/MQSUtils;

    .line 89
    return-void
.end method

.method private blacklist checkParamters()Z
    .registers 11

    .line 150
    iget v0, p0, Landroid/media/AudioParaManger;->nAudioFocusType:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Landroid/media/AudioParaManger;->isCropIn(III)Z

    move-result v0

    if-nez v0, :cond_b

    .line 151
    return v1

    .line 152
    :cond_b
    iget-wide v4, p0, Landroid/media/AudioParaManger;->nFocusGain:D

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioParaManger;->isCropIn(DDD)Z

    move-result v0

    if-nez v0, :cond_19

    .line 153
    return v1

    .line 154
    :cond_19
    iget-wide v4, p0, Landroid/media/AudioParaManger;->nFocusAzimuth:D

    const-wide v6, -0x3f99800000000000L    # -180.0

    const-wide v8, 0x4066800000000000L    # 180.0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioParaManger;->isCropIn(DDD)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 155
    return v1

    .line 156
    :cond_2d
    iget-wide v4, p0, Landroid/media/AudioParaManger;->nFocusElevation:D

    const-wide v6, -0x3fa9800000000000L    # -90.0

    const-wide v8, 0x4056800000000000L    # 90.0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioParaManger;->isCropIn(DDD)Z

    move-result v0

    if-nez v0, :cond_41

    .line 157
    return v1

    .line 158
    :cond_41
    iget-wide v4, p0, Landroid/media/AudioParaManger;->nFocusSectorWidth:D

    const-wide/16 v6, 0x0

    const-wide v8, 0x4076800000000000L    # 360.0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioParaManger;->isCropIn(DDD)Z

    move-result v0

    if-nez v0, :cond_52

    .line 159
    return v1

    .line 160
    :cond_52
    iget-wide v4, p0, Landroid/media/AudioParaManger;->nFocusSectorHeight:D

    const-wide/16 v6, 0x0

    const-wide v8, 0x4066800000000000L    # 180.0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioParaManger;->isCropIn(DDD)Z

    move-result v0

    if-nez v0, :cond_63

    .line 161
    return v1

    .line 162
    :cond_63
    iget v0, p0, Landroid/media/AudioParaManger;->fRecType:I

    invoke-direct {p0, v0, v1, v2}, Landroid/media/AudioParaManger;->isCropIn(III)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 163
    return v1

    .line 164
    :cond_6c
    iget v0, p0, Landroid/media/AudioParaManger;->fShot:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/media/AudioParaManger;->isCropIn(III)Z

    move-result v0

    if-nez v0, :cond_76

    .line 165
    return v1

    .line 166
    :cond_76
    iget v0, p0, Landroid/media/AudioParaManger;->fSence:I

    const/4 v3, 0x4

    invoke-direct {p0, v0, v2, v3}, Landroid/media/AudioParaManger;->isCropIn(III)Z

    move-result v0

    if-nez v0, :cond_80

    .line 167
    return v1

    .line 168
    :cond_80
    iget v0, p0, Landroid/media/AudioParaManger;->fWnd_ns:I

    invoke-direct {p0, v0, v1, v2}, Landroid/media/AudioParaManger;->isCropIn(III)Z

    move-result v0

    if-nez v0, :cond_89

    .line 169
    return v1

    .line 171
    :cond_89
    const-string v0, "AudioParaManger"

    const-string v1, "checkParamters return true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v2
.end method

.method private blacklist getGain(D)D
    .registers 10
    .param p1, "level"    # D

    .line 140
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_2d

    iget v2, p0, Landroid/media/AudioParaManger;->MaxVisual:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_c

    goto :goto_2d

    .line 143
    :cond_c
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    iget v4, p0, Landroid/media/AudioParaManger;->MaxVisual:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    add-double/2addr v2, v0

    .line 144
    .local v2, "gain":D
    cmpg-double v4, v2, v0

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    if-gez v4, :cond_25

    goto :goto_2c

    :cond_25
    cmpl-double v0, v2, v5

    if-lez v0, :cond_2b

    move-wide v0, v5

    goto :goto_2c

    :cond_2b
    move-wide v0, v2

    .line 145
    .end local v2    # "gain":D
    .local v0, "gain":D
    :goto_2c
    return-wide v0

    .line 141
    .end local v0    # "gain":D
    :cond_2d
    :goto_2d
    return-wide v0
.end method

.method private blacklist isAudioZoomSupport()Z
    .registers 6

    .line 101
    const-string v0, "ro.vendor.audio.zoom.type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioParaManger;->mVendor:I

    .line 102
    const-string v2, "AudioParaManger"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_18

    const/4 v4, 0x2

    if-ne v0, v4, :cond_12

    goto :goto_18

    .line 106
    :cond_12
    const-string v0, "isAudioZoomSupport is false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v1

    .line 103
    :cond_18
    :goto_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAudioZoomSupport is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioParaManger;->mVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v3
.end method

.method private blacklist isCropIn(DDD)Z
    .registers 8
    .param p1, "num"    # D
    .param p3, "min"    # D
    .param p5, "max"    # D

    .line 176
    cmpl-double v0, p1, p3

    if-ltz v0, :cond_a

    cmpg-double v0, p1, p5

    if-gtz v0, :cond_a

    .line 177
    const/4 v0, 0x1

    return v0

    .line 179
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isCropIn(III)Z
    .registers 5
    .param p1, "num"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 183
    if-lt p1, p2, :cond_6

    if-gt p1, p3, :cond_6

    .line 184
    const/4 v0, 0x1

    return v0

    .line 186
    :cond_6
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist init(IIIDDDDDZ)Z
    .registers 31
    .param p1, "recType"    # I
    .param p2, "shot"    # I
    .param p3, "sence"    # I
    .param p4, "level"    # D
    .param p6, "azi"    # D
    .param p8, "ele"    # D
    .param p10, "width"    # D
    .param p12, "height"    # D
    .param p14, "wnd_ns"    # Z

    .line 113
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move/from16 v14, p14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init:  recType/@"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " shot/@"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " sence/@"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " wnd_ns/@"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "AudioParaManger"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init:  level/@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " azi/@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ele/@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " width/@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " height/@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioParaManger;->isAudioZoomSupport()Z

    move-result v0

    if-nez v0, :cond_90

    .line 117
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_90
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/media/AudioParaManger;->nWndNoise:Z

    .line 122
    iput v1, v0, Landroid/media/AudioParaManger;->nAudioFocusType:I

    .line 123
    invoke-direct {v0, v4, v5}, Landroid/media/AudioParaManger;->getGain(D)D

    move-result-wide v14

    iput-wide v14, v0, Landroid/media/AudioParaManger;->nFocusGain:D

    .line 124
    iput-wide v6, v0, Landroid/media/AudioParaManger;->nFocusAzimuth:D

    .line 125
    iput-wide v8, v0, Landroid/media/AudioParaManger;->nFocusElevation:D

    .line 126
    iput-wide v10, v0, Landroid/media/AudioParaManger;->nFocusSectorWidth:D

    .line 127
    iput-wide v12, v0, Landroid/media/AudioParaManger;->nFocusSectorHeight:D

    .line 130
    iput v1, v0, Landroid/media/AudioParaManger;->fRecType:I

    .line 131
    iput v2, v0, Landroid/media/AudioParaManger;->fShot:I

    .line 132
    move/from16 v3, p3

    iput v3, v0, Landroid/media/AudioParaManger;->fSence:I

    .line 133
    move/from16 v14, p14

    iput v14, v0, Landroid/media/AudioParaManger;->fWnd_ns:I

    .line 135
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioParaManger;->checkParamters()Z

    move-result v15

    return v15
.end method

.method public blacklist prepare()V
    .registers 13

    .line 191
    const-string v0, "AudioParaManger"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :try_start_7
    iget v1, p0, Landroid/media/AudioParaManger;->mVendor:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_52

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetAudioCustomScene=audioZoom@shot@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioParaManger;->fShot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/scene@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioParaManger;->fSence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/recType@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioParaManger;->fRecType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/wnd_ns@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioParaManger;->fWnd_ns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "parameter":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/AudioParaManger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .end local v1    # "parameter":Ljava/lang/String;
    goto/16 :goto_12c

    .line 197
    :cond_52
    const/4 v3, 0x2

    if-ne v1, v3, :cond_12c

    iget v1, p0, Landroid/media/AudioParaManger;->nAudioFocusType:I

    if-ne v1, v2, :cond_5d

    iget-boolean v1, p0, Landroid/media/AudioParaManger;->nWndNoise:Z

    if-eqz v1, :cond_12c

    .line 198
    :cond_5d
    const/4 v1, 0x0

    .line 199
    .local v1, "uuid_index":I
    iget v4, p0, Landroid/media/AudioParaManger;->fShot:I

    if-ne v4, v2, :cond_6e

    .line 200
    iget v5, p0, Landroid/media/AudioParaManger;->fSence:I

    if-ne v5, v2, :cond_68

    .line 201
    const/4 v1, 0x1

    goto :goto_79

    .line 202
    :cond_68
    if-ne v5, v3, :cond_6c

    .line 203
    const/4 v1, 0x0

    goto :goto_79

    .line 205
    :cond_6c
    const/4 v1, 0x2

    goto :goto_79

    .line 207
    :cond_6e
    iget v5, p0, Landroid/media/AudioParaManger;->fSence:I

    if-ne v5, v2, :cond_74

    .line 208
    const/4 v1, 0x5

    goto :goto_79

    .line 209
    :cond_74
    if-ne v5, v3, :cond_78

    .line 210
    const/4 v1, 0x4

    goto :goto_79

    .line 212
    :cond_78
    const/4 v1, 0x3

    .line 214
    :goto_79
    if-nez v4, :cond_7f

    .line 215
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    iput-wide v4, p0, Landroid/media/AudioParaManger;->nFocusGain:D

    .line 216
    :cond_7f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uuid_index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uuid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/media/AudioParaManger;->OZO_DEVICE_UUID:[Ljava/lang/String;

    aget-object v6, v5, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v4, p0, Landroid/media/AudioParaManger;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v6, "setOzoAudioParameters"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    new-array v8, v3, [Ljava/lang/Object;

    aget-object v5, v5, v1

    aput-object v5, v8, v9

    .line 218
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v2

    .line 217
    invoke-static {v4, v6, v7, v8}, Landroid/media/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v4, p0, Landroid/media/AudioParaManger;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v6, "setInitialFocusParameters"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v10, p0, Landroid/media/AudioParaManger;->nFocusGain:D

    .line 220
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v5, v9

    iget-wide v10, p0, Landroid/media/AudioParaManger;->nFocusAzimuth:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v5, v2

    iget-wide v10, p0, Landroid/media/AudioParaManger;->nFocusElevation:D

    .line 221
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v5, v3

    .line 219
    invoke-static {v4, v6, v7, v5}, Landroid/media/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v4, p0, Landroid/media/AudioParaManger;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v5, "setInitialFocusSectorParameters"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v7, p0, Landroid/media/AudioParaManger;->nFocusSectorWidth:D

    .line 223
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v3, v9

    iget-wide v7, p0, Landroid/media/AudioParaManger;->nFocusSectorHeight:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v3, v2

    .line 222
    invoke-static {v4, v5, v6, v3}, Landroid/media/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v3, p0, Landroid/media/AudioParaManger;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v4, "setInitialWindNoise"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v9

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v6, p0, Landroid/media/AudioParaManger;->nWndNoise:Z

    .line 225
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v9

    .line 224
    invoke-static {v3, v4, v5, v2}, Landroid/media/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12b} :catch_12e

    goto :goto_12d

    .line 197
    .end local v1    # "uuid_index":I
    :cond_12c
    :goto_12c
    nop

    .line 229
    :goto_12d
    goto :goto_145

    .line 227
    :catch_12e
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_145
    return-void
.end method

.method public blacklist setAudioFocusAzimuth(D)V
    .registers 12
    .param p1, "azimuth"    # D

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioFocusAzimuth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioParaManger"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget v0, p0, Landroid/media/AudioParaManger;->mVendor:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_54

    iget v0, p0, Landroid/media/AudioParaManger;->nAudioFocusType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_54

    .line 296
    iput-wide p1, p0, Landroid/media/AudioParaManger;->nFocusAzimuth:D

    .line 298
    :try_start_24
    iget-object v0, p0, Landroid/media/AudioParaManger;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v3, "setAudioFocusAzimuth"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v7, p0, Landroid/media/AudioParaManger;->nFocusAzimuth:D

    .line 299
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v6

    .line 298
    invoke-static {v0, v3, v4, v2}, Landroid/media/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3c} :catch_3d

    .line 302
    goto :goto_54

    .line 300
    :catch_3d
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioFocusAzimuth error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_54
    :goto_54
    return-void
.end method

.method public blacklist setAudioFocusElevation(D)V
    .registers 12
    .param p1, "elevation"    # D

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioFocusElevation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioParaManger"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget v0, p0, Landroid/media/AudioParaManger;->mVendor:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_54

    iget v0, p0, Landroid/media/AudioParaManger;->nAudioFocusType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_54

    .line 310
    iput-wide p1, p0, Landroid/media/AudioParaManger;->nFocusElevation:D

    .line 312
    :try_start_24
    iget-object v0, p0, Landroid/media/AudioParaManger;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v3, "setAudioFocusElevation"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v7, p0, Landroid/media/AudioParaManger;->nFocusElevation:D

    .line 313
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v6

    .line 312
    invoke-static {v0, v3, v4, v2}, Landroid/media/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3c} :catch_3d

    .line 316
    goto :goto_54

    .line 314
    :catch_3d
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioFocusElevation error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_54
    :goto_54
    return-void
.end method

.method public blacklist setAudioFocusHeight(D)V
    .registers 12
    .param p1, "hight"    # D

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioFocusHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioParaManger"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget v0, p0, Landroid/media/AudioParaManger;->mVendor:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_54

    iget v0, p0, Landroid/media/AudioParaManger;->nAudioFocusType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_54

    .line 338
    iput-wide p1, p0, Landroid/media/AudioParaManger;->nFocusSectorHeight:D

    .line 340
    :try_start_24
    iget-object v0, p0, Landroid/media/AudioParaManger;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v3, "setAudioFocusHeight"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v7, p0, Landroid/media/AudioParaManger;->nFocusSectorHeight:D

    .line 341
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v6

    .line 340
    invoke-static {v0, v3, v4, v2}, Landroid/media/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3c} :catch_3d

    .line 344
    goto :goto_54

    .line 342
    :catch_3d
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioFocusHeight error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_54
    :goto_54
    return-void
.end method

.method public blacklist setAudioFocusWidth(D)V
    .registers 12
    .param p1, "width"    # D

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioFocusWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioParaManger"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget v0, p0, Landroid/media/AudioParaManger;->mVendor:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_54

    iget v0, p0, Landroid/media/AudioParaManger;->nAudioFocusType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_54

    .line 324
    iput-wide p1, p0, Landroid/media/AudioParaManger;->nFocusSectorWidth:D

    .line 326
    :try_start_24
    iget-object v0, p0, Landroid/media/AudioParaManger;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v3, "setAudioFocusWidth"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v7, p0, Landroid/media/AudioParaManger;->nFocusSectorWidth:D

    .line 327
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v6

    .line 326
    invoke-static {v0, v3, v4, v2}, Landroid/media/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3c} :catch_3d

    .line 330
    goto :goto_54

    .line 328
    :catch_3d
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioFocusWidth error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_54
    :goto_54
    return-void
.end method

.method public blacklist setAudioWindNoise(Z)V
    .registers 7
    .param p1, "wnd_ns"    # Z

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioWindNoise: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioParaManger"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget v0, p0, Landroid/media/AudioParaManger;->mVendor:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_51

    .line 352
    iput-boolean p1, p0, Landroid/media/AudioParaManger;->nWndNoise:Z

    .line 354
    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    .line 355
    :try_start_22
    iget-object v2, p0, Landroid/media/AudioParaManger;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v3, "enableAudioWindNoiseReduction"

    new-array v4, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0}, Landroid/media/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 357
    :cond_2e
    iget-object v2, p0, Landroid/media/AudioParaManger;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v3, "disableAudioWindNoiseReduction"

    new-array v4, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0}, Landroid/media/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_39} :catch_3a

    .line 361
    :goto_39
    goto :goto_51

    .line 359
    :catch_3a
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioWindNoise error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_51
    :goto_51
    return-void
.end method

.method public blacklist setAudioZoomLevel(D)V
    .registers 12
    .param p1, "level"    # D

    .line 252
    iget v0, p0, Landroid/media/AudioParaManger;->mVendor:I

    const-string v1, "AudioParaManger"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_56

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioZoomLevel: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v0, Landroid/icu/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "df":Landroid/icu/text/DecimalFormat;
    new-instance v1, Landroid/icu/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 256
    .local v1, "dfs":Landroid/icu/text/DecimalFormatSymbols;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 257
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AURISYS_SET_PARAM,DSP,RECORD,FV_SPH,KEY_VALUE,audioZoom,ZoomLv@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/=SET"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "parameter":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/AudioParaManger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .end local v0    # "df":Landroid/icu/text/DecimalFormat;
    .end local v1    # "dfs":Landroid/icu/text/DecimalFormatSymbols;
    .end local v2    # "parameter":Ljava/lang/String;
    goto :goto_b4

    .line 261
    :cond_56
    const/4 v3, 0x2

    if-ne v0, v3, :cond_b4

    iget v0, p0, Landroid/media/AudioParaManger;->nAudioFocusType:I

    if-eq v0, v2, :cond_b4

    .line 262
    invoke-direct {p0, p1, p2}, Landroid/media/AudioParaManger;->getGain(D)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/media/AudioParaManger;->nFocusGain:D

    .line 263
    iget v0, p0, Landroid/media/AudioParaManger;->fShot:I

    if-nez v0, :cond_6b

    .line 264
    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    iput-wide v3, p0, Landroid/media/AudioParaManger;->nFocusGain:D

    .line 265
    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioFocusGain: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/media/AudioParaManger;->nFocusGain:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :try_start_83
    iget-object v0, p0, Landroid/media/AudioParaManger;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v3, "setAudioFocusGain"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v7, p0, Landroid/media/AudioParaManger;->nFocusGain:D

    .line 268
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v6

    .line 267
    invoke-static {v0, v3, v4, v2}, Landroid/media/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_9b} :catch_9c

    .line 271
    goto :goto_b5

    .line 269
    :catch_9c
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioZoomLevel error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b4
    :goto_b4
    nop

    .line 273
    :goto_b5
    return-void
.end method

.method public blacklist setFocusRegion(IIII)I
    .registers 9
    .param p1, "left_up_x"    # I
    .param p2, "left_up_y"    # I
    .param p3, "right_bottom_x"    # I
    .param p4, "right_bottom_y"    # I

    .line 366
    iget v0, p0, Landroid/media/AudioParaManger;->mVendor:I

    const-string v1, "AudioParaManger"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_51

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focus_region="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "parameter":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/AudioParaManger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFocusRegion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v1, 0x0

    return v1

    .line 373
    .end local v0    # "parameter":Ljava/lang/String;
    :cond_51
    const-string v0, "setFocusRegion: unsupported usage"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist setMaxSupportLevel(I)V
    .registers 4
    .param p1, "mLevel"    # I

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaxSupportLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioParaManger"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x6

    if-ge p1, v0, :cond_1e

    .line 94
    iput p1, p0, Landroid/media/AudioParaManger;->MaxVisual:I

    goto :goto_20

    .line 96
    :cond_1e
    iput v0, p0, Landroid/media/AudioParaManger;->MaxVisual:I

    .line 97
    :goto_20
    return-void
.end method

.method public blacklist setRecordType(I)V
    .registers 7
    .param p1, "recType"    # I

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRecordType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioParaManger"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget v0, p0, Landroid/media/AudioParaManger;->mVendor:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_56

    .line 279
    iput p1, p0, Landroid/media/AudioParaManger;->nAudioFocusType:I

    .line 281
    const/4 v0, 0x0

    if-ne p1, v2, :cond_30

    .line 282
    :try_start_22
    iget-object v2, p0, Landroid/media/AudioParaManger;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v3, "enableAudioFocus"

    new-array v4, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0}, Landroid/media/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 286
    :catch_2e
    move-exception v0

    goto :goto_3f

    .line 283
    :cond_30
    const/4 v2, 0x1

    if-eq p1, v2, :cond_56

    .line 284
    iget-object v2, p0, Landroid/media/AudioParaManger;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v3, "disableAudioFocus"

    new-array v4, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0}, Landroid/media/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3e} :catch_2e

    goto :goto_56

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    :goto_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRecordType error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_56
    :goto_56
    return-void
.end method

.method public blacklist setSensorAngleRange(I)I
    .registers 6
    .param p1, "angle"    # I

    .line 392
    iget v0, p0, Landroid/media/AudioParaManger;->mVendor:I

    const-string v1, "AudioParaManger"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_37

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensor_angle_range="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "parameter":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/AudioParaManger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSensorAngleRange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v1, 0x0

    return v1

    .line 398
    .end local v0    # "parameter":Ljava/lang/String;
    :cond_37
    const-string v0, "setSensorAngleRange: unsupported usage"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist setViewRegion(IIII)I
    .registers 9
    .param p1, "left_up_x"    # I
    .param p2, "left_up_y"    # I
    .param p3, "right_bottom_x"    # I
    .param p4, "right_bottom_y"    # I

    .line 379
    iget v0, p0, Landroid/media/AudioParaManger;->mVendor:I

    const-string v1, "AudioParaManger"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_51

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view_region="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "parameter":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/AudioParaManger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setViewRegion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v1, 0x0

    return v1

    .line 386
    .end local v0    # "parameter":Ljava/lang/String;
    :cond_51
    const-string v0, "setViewRegion: unsupported usage"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist start()V
    .registers 6

    .line 234
    const-string v0, "AudioParaManger"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget v1, p0, Landroid/media/AudioParaManger;->mVendor:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 236
    iget-object v0, p0, Landroid/media/AudioParaManger;->mMQSUtils:Landroid/media/MQSUtils;

    iget v2, p0, Landroid/media/AudioParaManger;->fWnd_ns:I

    iget v3, p0, Landroid/media/AudioParaManger;->fRecType:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MQSUtils;->reportCameraRecordDailyUse(III)V

    .line 237
    return-void

    .line 238
    :cond_16
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4b

    .line 240
    :try_start_19
    iget v1, p0, Landroid/media/AudioParaManger;->fRecType:I

    invoke-virtual {p0, v1}, Landroid/media/AudioParaManger;->setRecordType(I)V

    .line 241
    iget-boolean v1, p0, Landroid/media/AudioParaManger;->nWndNoise:Z

    invoke-virtual {p0, v1}, Landroid/media/AudioParaManger;->setAudioWindNoise(Z)V

    .line 242
    iget-boolean v1, p0, Landroid/media/AudioParaManger;->nWndNoise:Z

    if-eqz v1, :cond_28

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    move v1, v2

    .line 243
    .local v1, "nokiaWndNoise":I
    iget-object v2, p0, Landroid/media/AudioParaManger;->mMQSUtils:Landroid/media/MQSUtils;

    iget v3, p0, Landroid/media/AudioParaManger;->mVendor:I

    iget v4, p0, Landroid/media/AudioParaManger;->nAudioFocusType:I

    invoke-virtual {v2, v3, v1, v4}, Landroid/media/MQSUtils;->reportCameraRecordDailyUse(III)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_33} :catch_34

    .line 246
    .end local v1    # "nokiaWndNoise":I
    goto :goto_4b

    .line 244
    :catch_34
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4b
    :goto_4b
    return-void
.end method
