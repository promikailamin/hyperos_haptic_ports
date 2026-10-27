.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field private static final greylist FIRST_AUDIO_FILE_TYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist LAST_AUDIO_FILE_TYPE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    .line 103
    const/16 v0, 0x3009

    const-string v1, "audio/mpeg"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 104
    const/16 v0, 0x3008

    const-string v2, "audio/x-wav"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 105
    const v0, 0xb901

    const-string v2, "audio/x-ms-wma"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 106
    const v0, 0xb902

    const-string v2, "audio/ogg"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 107
    const v0, 0xb903

    const-string v2, "audio/aac"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 108
    const v0, 0xb906

    const-string v2, "audio/flac"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 109
    const/16 v0, 0x3007

    const-string v2, "audio/x-aiff"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 110
    const v0, 0xb983

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 112
    const/16 v0, 0x300b

    const-string v1, "video/mpeg"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 113
    const v0, 0xb982

    const-string v1, "video/mp4"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 114
    const v0, 0xb984

    const-string v1, "video/3gpp"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 115
    const-string v1, "video/3gpp2"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 116
    const/16 v0, 0x300a

    const-string v1, "video/avi"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 117
    const v0, 0xb981

    const-string v1, "video/x-ms-wmv"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 118
    const/16 v0, 0x300c

    const-string v1, "video/x-ms-asf"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 120
    const/16 v0, 0x3801

    const-string v2, "image/jpeg"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 121
    const/16 v0, 0x3807

    const-string v2, "image/gif"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 122
    const/16 v0, 0x380b

    const-string v2, "image/png"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 123
    const/16 v0, 0x3804

    const-string v2, "image/x-ms-bmp"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 124
    const/16 v0, 0x3812

    const-string v2, "image/heif"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 125
    const/16 v0, 0x3811

    const-string v2, "image/x-adobe-dng"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 126
    const/16 v0, 0x380d

    const-string v2, "image/tiff"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 127
    const-string v3, "image/x-canon-cr2"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 128
    const-string v3, "image/x-nikon-nrw"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 129
    const-string v3, "image/x-sony-arw"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 130
    const-string v3, "image/x-panasonic-rw2"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 131
    const-string v3, "image/x-olympus-orf"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 132
    const-string v3, "image/x-pentax-pef"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 133
    const-string v3, "image/x-samsung-srw"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 134
    const/16 v0, 0x3802

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 135
    const-string v2, "image/x-nikon-nef"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 136
    const/16 v0, 0x380f

    const-string v2, "image/jp2"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 137
    const/16 v0, 0x3810

    const-string v2, "image/jpx"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 139
    const v0, 0xba11

    const-string v2, "audio/x-mpegurl"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 140
    const v0, 0xba14

    const-string v2, "audio/x-scpls"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 141
    const v0, 0xba10

    const-string v2, "application/vnd.ms-wpl"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 142
    const v0, 0xba13

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 144
    const/16 v0, 0x3004

    const-string v1, "text/plain"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 145
    const/16 v0, 0x3005

    const-string v1, "text/html"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 146
    const v0, 0xba82

    const-string v1, "text/xml"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 148
    const v0, 0xba83

    const-string v1, "application/msword"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 150
    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 152
    const v0, 0xba85

    const-string v1, "application/vnd.ms-excel"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 154
    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 156
    const v0, 0xba86

    const-string v1, "application/vnd.ms-powerpoint"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 158
    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 174
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method private static blacklist addFileType(ILjava/lang/String;)V
    .registers 4
    .param p0, "mtpFormatCode"    # I
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 94
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 95
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_f
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 98
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_22
    return-void
.end method

.method static greylist addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .registers 3
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    return-void
.end method

.method public static blacklist getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 351
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 352
    return-object v0

    .line 354
    :cond_4
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 355
    .local v1, "lastDot":I
    if-ltz v1, :cond_13

    .line 356
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 358
    :cond_13
    return-object v0
.end method

.method public static greylist getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 335
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 336
    .local v0, "lastSlash":I
    if-ltz v0, :cond_14

    .line 337
    add-int/lit8 v0, v0, 0x1

    .line 338
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 339
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 343
    :cond_14
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 344
    .local v1, "lastDot":I
    if-lez v1, :cond_21

    .line 345
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 347
    :cond_21
    return-object p0
.end method

.method public static greylist getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist getFileTypeForMimeType(Ljava/lang/String;)I
    .registers 2
    .param p0, "mimeType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 403
    invoke-static {p1}, Landroid/media/MediaFile;->getFormatCodeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 404
    .local v0, "formatCode":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_9

    .line 405
    return v0

    .line 409
    :cond_9
    invoke-static {p0}, Landroid/media/MediaFile;->getFormatCodeForFile(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static blacklist getFormatCodeForFile(Ljava/lang/String;)I
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 413
    invoke-static {p0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaFile;->getFormatCodeForMimeType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist getFormatCodeForMimeType(Ljava/lang/String;)I
    .registers 4
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 417
    const/16 v0, 0x3000

    if-nez p0, :cond_5

    .line 418
    return v0

    .line 422
    :cond_5
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 423
    .local v2, "value":Ljava/lang/Integer;
    if-eqz v2, :cond_14

    .line 424
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 428
    :cond_14
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 429
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 430
    .end local v2    # "value":Ljava/lang/Integer;
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_25

    .line 431
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 432
    :cond_25
    const-string v2, "audio/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 433
    const v0, 0xb900

    return v0

    .line 434
    :cond_31
    const-string v2, "video/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 435
    const v0, 0xb980

    return v0

    .line 436
    :cond_3d
    const-string v2, "image/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 437
    const/16 v0, 0x3800

    return v0

    .line 439
    :cond_48
    return v0
.end method

.method public static blacklist getMimeType(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "formatCode"    # I

    .line 375
    invoke-static {p0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "application/octet-stream"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 377
    return-object v0

    .line 381
    :cond_d
    invoke-static {p1}, Landroid/media/MediaFile;->getMimeTypeForFormatCode(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 386
    invoke-static {p0}, Landroid/media/MediaFile;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "ext":Ljava/lang/String;
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "mimeType":Ljava/lang/String;
    if-eqz v1, :cond_10

    move-object v2, v1

    goto :goto_12

    :cond_10
    const-string v2, "application/octet-stream"

    :goto_12
    return-object v2
.end method

.method public static greylist-max-o getMimeTypeForFormatCode(I)Ljava/lang/String;
    .registers 3
    .param p0, "formatCode"    # I

    .line 392
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 393
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_10

    move-object v1, v0

    goto :goto_12

    :cond_10
    const-string v1, "application/octet-stream"

    :goto_12
    return-object v1
.end method

.method public static greylist isAudioFileType(I)Z
    .registers 2
    .param p0, "fileType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isAudioMimeType(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 302
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDocumentMimeType(Ljava/lang/String;)Z
    .registers 7
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 225
    return v0

    .line 228
    :cond_4
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "normalizedMimeType":Ljava/lang/String;
    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    .line 230
    return v3

    .line 233
    :cond_12
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2b4

    :cond_20
    goto/16 :goto_2af

    :sswitch_22
    const-string v5, "application/vnd.oasis.opendocument.database"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x11

    goto/16 :goto_2af

    :sswitch_2e
    const-string v5, "application/vnd.ms-excel.addin.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v4, 0x5

    goto/16 :goto_2af

    :sswitch_39
    const-string v5, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x20

    goto/16 :goto_2af

    :sswitch_45
    const-string v5, "application/vnd.ms-powerpoint.presentation.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0xb

    goto/16 :goto_2af

    :sswitch_51
    const-string v5, "application/vnd.stardivision.writer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x2b

    goto/16 :goto_2af

    :sswitch_5d
    const-string v5, "application/vnd.oasis.opendocument.spreadsheet"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x17

    goto/16 :goto_2af

    :sswitch_69
    const-string v5, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x1e

    goto/16 :goto_2af

    :sswitch_75
    const-string v5, "application/vnd.oasis.opendocument.text-master"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x1a

    goto/16 :goto_2af

    :sswitch_81
    const-string v5, "application/vnd.oasis.opendocument.presentation"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x15

    goto/16 :goto_2af

    :sswitch_8d
    const-string v5, "application/vnd.sun.xml.impress"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x31

    goto/16 :goto_2af

    :sswitch_99
    const-string v5, "application/vnd.ms-word.template.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0xf

    goto/16 :goto_2af

    :sswitch_a5
    const-string v5, "application/vnd.oasis.opendocument.graphics-template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x14

    goto/16 :goto_2af

    :sswitch_b1
    const-string v5, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x23

    goto/16 :goto_2af

    :sswitch_bd
    const-string v5, "application/msword"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move v4, v3

    goto/16 :goto_2af

    :sswitch_c8
    const-string v5, "application/vnd.stardivision.impress-packed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x28

    goto/16 :goto_2af

    :sswitch_d4
    const-string v5, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x1f

    goto/16 :goto_2af

    :sswitch_e0
    const-string v5, "application/vnd.stardivision.impress"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x27

    goto/16 :goto_2af

    :sswitch_ec
    const-string v5, "application/vnd.stardivision.writer-global"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x2c

    goto/16 :goto_2af

    :sswitch_f8
    const-string v5, "application/vnd.oasis.opendocument.graphics"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x13

    goto/16 :goto_2af

    :sswitch_104
    const-string v5, "application/vnd.ms-powerpoint.template.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0xd

    goto/16 :goto_2af

    :sswitch_110
    const-string v5, "application/vnd.oasis.opendocument.spreadsheet-template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x18

    goto/16 :goto_2af

    :sswitch_11c
    const-string v5, "application/vnd.ms-powerpoint.addin.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0xa

    goto/16 :goto_2af

    :sswitch_128
    const-string v5, "application/vnd.oasis.opendocument.presentation-template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x16

    goto/16 :goto_2af

    :sswitch_134
    const-string v5, "application/vnd.ms-excel.sheet.binary.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v4, 0x6

    goto/16 :goto_2af

    :sswitch_13f
    const-string v5, "application/vnd.ms-excel"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v4, 0x4

    goto/16 :goto_2af

    :sswitch_14a
    const-string v5, "application/vnd.sun.xml.impress.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x32

    goto/16 :goto_2af

    :sswitch_156
    const-string v5, "application/vnd.sun.xml.writer.global"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x35

    goto/16 :goto_2af

    :sswitch_162
    const-string v5, "application/x-mspublisher"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x37

    goto/16 :goto_2af

    :sswitch_16e
    const-string v5, "application/vnd.oasis.opendocument.text-web"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x1c

    goto/16 :goto_2af

    :sswitch_17a
    const-string v5, "application/vnd.sun.xml.math"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x33

    goto/16 :goto_2af

    :sswitch_186
    const-string v5, "application/vnd.sun.xml.draw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x2f

    goto/16 :goto_2af

    :sswitch_192
    const-string v5, "application/vnd.sun.xml.calc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x2d

    goto/16 :goto_2af

    :sswitch_19e
    const-string v5, "application/vnd.ms-excel.template.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x8

    goto/16 :goto_2af

    :sswitch_1aa
    const-string v5, "application/vnd.oasis.opendocument.formula"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x12

    goto/16 :goto_2af

    :sswitch_1b6
    const-string v5, "application/vnd.sun.xml.draw.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x30

    goto/16 :goto_2af

    :sswitch_1c2
    const-string v5, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x22

    goto/16 :goto_2af

    :sswitch_1ce
    const-string v5, "application/vnd.ms-powerpoint"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x9

    goto/16 :goto_2af

    :sswitch_1da
    const-string v5, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x1d

    goto/16 :goto_2af

    :sswitch_1e6
    const-string v5, "application/vnd.ms-powerpoint.slideshow.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0xc

    goto/16 :goto_2af

    :sswitch_1f2
    const-string v5, "application/rtf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v4, 0x3

    goto/16 :goto_2af

    :sswitch_1fd
    const-string v5, "application/pdf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v4, 0x2

    goto/16 :goto_2af

    :sswitch_208
    const-string v5, "application/vnd.ms-word.document.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0xe

    goto/16 :goto_2af

    :sswitch_214
    const-string v5, "application/vnd.oasis.opendocument.text-template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x1b

    goto/16 :goto_2af

    :sswitch_220
    const-string v5, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x21

    goto/16 :goto_2af

    :sswitch_22c
    const-string v5, "application/vnd.sun.xml.calc.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x2e

    goto/16 :goto_2af

    :sswitch_238
    const-string v5, "application/vnd.sun.xml.writer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x34

    goto/16 :goto_2af

    :sswitch_244
    const-string v5, "application/vnd.ms-excel.sheet.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v4, 0x7

    goto :goto_2af

    :sswitch_24e
    const-string v5, "application/vnd.oasis.opendocument.text"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x19

    goto :goto_2af

    :sswitch_259
    const-string v5, "application/vnd.sun.xml.writer.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x36

    goto :goto_2af

    :sswitch_264
    const-string v5, "application/vnd.stardivision.chart"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x25

    goto :goto_2af

    :sswitch_26f
    const-string v5, "application/vnd.oasis.opendocument.chart"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x10

    goto :goto_2af

    :sswitch_27a
    const-string v5, "application/epub+zip"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move v4, v0

    goto :goto_2af

    :sswitch_284
    const-string v5, "application/vnd.stardivision.math"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x2a

    goto :goto_2af

    :sswitch_28f
    const-string v5, "application/vnd.stardivision.mail"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x29

    goto :goto_2af

    :sswitch_29a
    const-string v5, "application/vnd.stardivision.draw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x26

    goto :goto_2af

    :sswitch_2a5
    const-string v5, "application/vnd.stardivision.calc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x24

    :goto_2af
    packed-switch v4, :pswitch_data_396

    .line 292
    return v0

    .line 290
    :pswitch_2b3
    return v3

    :sswitch_data_2b4
    .sparse-switch
        -0x7f44465d -> :sswitch_2a5
        -0x7f43936e -> :sswitch_29a
        -0x7f3fbafb -> :sswitch_28f
        -0x7f3fb9aa -> :sswitch_284
        -0x77b8a693 -> :sswitch_27a
        -0x6a428d87 -> :sswitch_26f
        -0x69417db0 -> :sswitch_264
        -0x68255665 -> :sswitch_259
        -0x667e94ce -> :sswitch_24e
        -0x62888ad2 -> :sswitch_244
        -0x610e9853 -> :sswitch_238
        -0x5ed1e487 -> :sswitch_22c
        -0x59c3e1a9 -> :sswitch_220
        -0x4e7ea34b -> :sswitch_214
        -0x4d189f3b -> :sswitch_208
        -0x4a68144d -> :sswitch_1fd
        -0x4a680adb -> :sswitch_1f2
        -0x4151d343 -> :sswitch_1e6
        -0x3ffe58cb -> :sswitch_1da
        -0x3fe2a28f -> :sswitch_1ce
        -0x3ea35d2d -> :sswitch_1c2
        -0x3d99ba96 -> :sswitch_1b6
        -0x38434ebf -> :sswitch_1aa
        -0x3464229d -> :sswitch_19e
        -0x2e7d3bf1 -> :sswitch_192
        -0x2e7c8902 -> :sswitch_186
        -0x2e78af3e -> :sswitch_17a
        -0x28553dc7 -> :sswitch_16e
        -0x1cb6d53e -> :sswitch_162
        -0x1c904afc -> :sswitch_156
        -0x17a6095d -> :sswitch_14a
        -0x15d566cf -> :sswitch_13f
        -0x11ed9627 -> :sswitch_134
        -0x11654d98 -> :sswitch_128
        -0x901206b -> :sswitch_11c
        -0x6850aa0 -> :sswitch_110
        0x3e26123 -> :sswitch_104
        0x198f4610 -> :sswitch_f8
        0x22098aaf -> :sswitch_ec
        0x27e80391 -> :sswitch_e0
        0x2967ba15 -> :sswitch_d4
        0x2e45be34 -> :sswitch_c8
        0x35ebd34f -> :sswitch_bd
        0x3f3a9e32 -> :sswitch_b1
        0x5218db97 -> :sswitch_a5
        0x5278be24 -> :sswitch_99
        0x527dd1a5 -> :sswitch_8d
        0x55a6501f -> :sswitch_81
        0x57208d5d -> :sswitch_75
        0x5e059df3 -> :sswitch_69
        0x61f85627 -> :sswitch_5d
        0x63c34841 -> :sswitch_51
        0x68571d43 -> :sswitch_45
        0x76d7a0a2 -> :sswitch_39
        0x7cd0cb55 -> :sswitch_2e
        0x7e37ad00 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_396
    .packed-switch 0x0
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
        :pswitch_2b3
    .end packed-switch
.end method

.method public static greylist isDrmFileType(I)Z
    .registers 2
    .param p0, "fileType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isDrmMimeType(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 328
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-android-drm-fl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isExifMimeType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 298
    invoke-static {p0}, Landroid/media/MediaFile;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist isImageFileType(I)Z
    .registers 2
    .param p0, "fileType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isImageMimeType(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 310
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist isPlayListFileType(I)Z
    .registers 2
    .param p0, "fileType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isPlayListMimeType(Ljava/lang/String;)Z
    .registers 5
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 314
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_50

    :cond_d
    goto :goto_4a

    :sswitch_e
    const-string v1, "application/vnd.ms-wpl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_4b

    :sswitch_18
    const-string v1, "audio/x-mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_4b

    :sswitch_22
    const-string v1, "audio/mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_4b

    :sswitch_2c
    const-string v1, "application/vnd.apple.mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    goto :goto_4b

    :sswitch_36
    const-string v1, "application/x-mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_4b

    :sswitch_40
    const-string v1, "audio/x-scpls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    goto :goto_4b

    :goto_4a
    const/4 v0, -0x1

    :goto_4b
    packed-switch v0, :pswitch_data_6a

    .line 323
    return v2

    .line 321
    :pswitch_4f
    return v3

    :sswitch_data_50
    .sparse-switch
        -0x45784127 -> :sswitch_40
        -0x3a5bd08a -> :sswitch_36
        -0x251f4d8b -> :sswitch_2c
        -0x19cb7f6f -> :sswitch_22
        0xfbfd67c -> :sswitch_18
        0x6f9869ad -> :sswitch_e
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
    .end packed-switch
.end method

.method public static greylist isVideoFileType(I)Z
    .registers 2
    .param p0, "fileType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isVideoMimeType(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 306
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 449
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    .line 450
    .local v0, "mimeMap":Llibcore/content/type/MimeMap;
    invoke-virtual {v0, p0}, Llibcore/content/type/MimeMap;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "extension":Ljava/lang/String;
    if-eqz v1, :cond_11

    .line 452
    invoke-virtual {v0, v1}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "extensionMimeType":Ljava/lang/String;
    if-eqz v2, :cond_11

    .line 454
    return-object v2

    .line 457
    .end local v2    # "extensionMimeType":Ljava/lang/String;
    :cond_11
    if-eqz p0, :cond_15

    move-object v2, p0

    goto :goto_17

    :cond_15
    const-string v2, "application/octet-stream"

    :goto_17
    return-object v2
.end method
