.class public Lcom/google/android/mms/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"


# static fields
.field public static final blacklist APP_DRM_CONTENT:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field public static final blacklist APP_DRM_MESSAGE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field public static final blacklist APP_SMIL:Ljava/lang/String; = "application/smil"

.field public static final blacklist APP_WAP_XHTML:Ljava/lang/String; = "application/vnd.wap.xhtml+xml"

.field public static final blacklist APP_XHTML:Ljava/lang/String; = "application/xhtml+xml"

.field public static final blacklist AUDIO_3GPP:Ljava/lang/String; = "audio/3gpp"

.field public static final blacklist AUDIO_AAC:Ljava/lang/String; = "audio/aac"

.field public static final blacklist AUDIO_AMR:Ljava/lang/String; = "audio/amr"

.field public static final blacklist AUDIO_IMELODY:Ljava/lang/String; = "audio/imelody"

.field public static final blacklist AUDIO_MID:Ljava/lang/String; = "audio/mid"

.field public static final blacklist AUDIO_MIDI:Ljava/lang/String; = "audio/midi"

.field public static final blacklist AUDIO_MP3:Ljava/lang/String; = "audio/mp3"

.field public static final blacklist AUDIO_MP4:Ljava/lang/String; = "audio/mp4"

.field public static final blacklist AUDIO_MPEG:Ljava/lang/String; = "audio/mpeg"

.field public static final blacklist AUDIO_MPEG3:Ljava/lang/String; = "audio/mpeg3"

.field public static final blacklist AUDIO_MPG:Ljava/lang/String; = "audio/mpg"

.field public static final blacklist AUDIO_OGG:Ljava/lang/String; = "application/ogg"

.field public static final blacklist AUDIO_OGG2:Ljava/lang/String; = "audio/ogg"

.field public static final blacklist AUDIO_UNSPECIFIED:Ljava/lang/String; = "audio/*"

.field public static final blacklist AUDIO_X_MID:Ljava/lang/String; = "audio/x-mid"

.field public static final blacklist AUDIO_X_MIDI:Ljava/lang/String; = "audio/x-midi"

.field public static final blacklist AUDIO_X_MP3:Ljava/lang/String; = "audio/x-mp3"

.field public static final blacklist AUDIO_X_MPEG:Ljava/lang/String; = "audio/x-mpeg"

.field public static final blacklist AUDIO_X_MPEG3:Ljava/lang/String; = "audio/x-mpeg3"

.field public static final blacklist AUDIO_X_MPG:Ljava/lang/String; = "audio/x-mpg"

.field public static final blacklist AUDIO_X_WAV:Ljava/lang/String; = "audio/x-wav"

.field public static final blacklist IMAGE_GIF:Ljava/lang/String; = "image/gif"

.field public static final blacklist IMAGE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final blacklist IMAGE_JPG:Ljava/lang/String; = "image/jpg"

.field public static final blacklist IMAGE_PNG:Ljava/lang/String; = "image/png"

.field public static final blacklist IMAGE_UNSPECIFIED:Ljava/lang/String; = "image/*"

.field public static final blacklist IMAGE_WBMP:Ljava/lang/String; = "image/vnd.wap.wbmp"

.field public static final blacklist IMAGE_X_MS_BMP:Ljava/lang/String; = "image/x-ms-bmp"

.field public static final blacklist MMS_GENERIC:Ljava/lang/String; = "application/vnd.wap.mms-generic"

.field public static final blacklist MMS_MESSAGE:Ljava/lang/String; = "application/vnd.wap.mms-message"

.field public static final blacklist MULTIPART_ALTERNATIVE:Ljava/lang/String; = "application/vnd.wap.multipart.alternative"

.field public static final blacklist MULTIPART_MIXED:Ljava/lang/String; = "application/vnd.wap.multipart.mixed"

.field public static final blacklist MULTIPART_RELATED:Ljava/lang/String; = "application/vnd.wap.multipart.related"

.field public static final blacklist TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final blacklist TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final blacklist TEXT_VCALENDAR:Ljava/lang/String; = "text/x-vCalendar"

.field public static final blacklist TEXT_VCARD:Ljava/lang/String; = "text/x-vCard"

.field public static final blacklist VIDEO_3G2:Ljava/lang/String; = "video/3gpp2"

.field public static final blacklist VIDEO_3GPP:Ljava/lang/String; = "video/3gpp"

.field public static final blacklist VIDEO_H263:Ljava/lang/String; = "video/h263"

.field public static final blacklist VIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field public static final blacklist VIDEO_UNSPECIFIED:Ljava/lang/String; = "video/*"

.field private static final blacklist sSupportedAudioTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSupportedContentTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSupportedImageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSupportedVideoTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 27

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/google/android/mms/ContentType;->sSupportedImageTypes:Ljava/util/ArrayList;

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/google/android/mms/ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    .line 88
    const-string v4, "text/plain"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v4, "text/html"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v4, "text/x-vCalendar"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v4, "text/x-vCard"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v4, "image/jpeg"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v5, "image/gif"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v6, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v7, "image/png"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v8, "image/jpg"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v9, "image/x-ms-bmp"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v10, "audio/aac"

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v11, "audio/amr"

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v12, "audio/imelody"

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v13, "audio/mid"

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    const-string v14, "audio/midi"

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v15, "audio/mp3"

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    move-object/from16 v16, v3

    const-string v3, "audio/mp4"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    move-object/from16 v17, v3

    const-string v3, "audio/mpeg3"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    move-object/from16 v18, v3

    const-string v3, "audio/mpeg"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    move-object/from16 v19, v3

    const-string v3, "audio/mpg"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    move-object/from16 v20, v3

    const-string v3, "audio/x-mid"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    move-object/from16 v21, v3

    const-string v3, "audio/x-midi"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    move-object/from16 v22, v3

    const-string v3, "audio/x-mp3"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    move-object/from16 v23, v3

    const-string v3, "audio/x-mpeg3"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    move-object/from16 v24, v3

    const-string v3, "audio/x-mpeg"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    move-object/from16 v25, v3

    const-string v3, "audio/x-mpg"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    move-object/from16 v26, v3

    const-string v3, "audio/x-wav"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v3, "audio/3gpp"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v3, "application/ogg"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v3, "audio/ogg"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v3, "video/3gpp"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v3, "video/3gpp2"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v3, "video/h263"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v3, "video/mp4"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v3, "application/smil"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v3, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v3, "application/xhtml+xml"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v3, "application/vnd.oma.drm.content"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    const-string v3, "application/vnd.oma.drm.message"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    const-string v0, "audio/x-wav"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v0, "audio/3gpp"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v0, "application/ogg"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v0, "audio/ogg"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v0, "video/3gpp"

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v0, "video/3gpp2"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v0, "video/h263"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v0, "video/mp4"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method public static greylist getAudioTypes()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static greylist getImageTypes()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedImageTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static blacklist getSupportedTypes()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static greylist getVideoTypes()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 241
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static greylist isAudioType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "contentType"    # Ljava/lang/String;

    .line 207
    if-eqz p0, :cond_c

    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static greylist isDrmType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "contentType"    # Ljava/lang/String;

    .line 217
    if-eqz p0, :cond_14

    .line 218
    const-string v0, "application/vnd.oma.drm.content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 219
    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 217
    :goto_15
    return v0
.end method

.method public static greylist isImageType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "contentType"    # Ljava/lang/String;

    .line 202
    if-eqz p0, :cond_c

    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static greylist-max-r isSupportedAudioType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "contentType"    # Ljava/lang/String;

    .line 187
    invoke-static {p0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static greylist-max-r isSupportedImageType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "contentType"    # Ljava/lang/String;

    .line 182
    invoke-static {p0}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static greylist isSupportedType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "contentType"    # Ljava/lang/String;

    .line 177
    if-eqz p0, :cond_c

    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static greylist-max-r isSupportedVideoType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "contentType"    # Ljava/lang/String;

    .line 192
    invoke-static {p0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static greylist isTextType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "contentType"    # Ljava/lang/String;

    .line 197
    if-eqz p0, :cond_c

    const-string v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static blacklist isUnspecified(Ljava/lang/String;)Z
    .registers 2
    .param p0, "contentType"    # Ljava/lang/String;

    .line 223
    if-eqz p0, :cond_c

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static greylist isVideoType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "contentType"    # Ljava/lang/String;

    .line 212
    if-eqz p0, :cond_c

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
