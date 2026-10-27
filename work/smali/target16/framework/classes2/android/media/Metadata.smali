.class public Landroid/media/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o ALBUM:I = 0x8

.field public static final greylist-max-o ALBUM_ART:I = 0x12

.field public static final greylist-max-o ANY:I = 0x0

.field public static final greylist-max-o ARTIST:I = 0x9

.field public static final greylist-max-o AUDIO_BIT_RATE:I = 0x15

.field public static final greylist-max-o AUDIO_CODEC:I = 0x1a

.field public static final greylist-max-o AUDIO_SAMPLE_RATE:I = 0x17

.field public static final greylist-max-o AUTHOR:I = 0xa

.field public static final greylist-max-o BIT_RATE:I = 0x14

.field public static final greylist-max-o BOOLEAN_VAL:I = 0x3

.field public static final greylist-max-o BYTE_ARRAY_VAL:I = 0x7

.field public static final greylist-max-o CD_TRACK_MAX:I = 0x10

.field public static final greylist-max-o CD_TRACK_NUM:I = 0xf

.field public static final greylist-max-o COMMENT:I = 0x6

.field public static final greylist-max-o COMPOSER:I = 0xb

.field public static final greylist-max-o COPYRIGHT:I = 0x7

.field public static final greylist-max-o DATE:I = 0xd

.field public static final greylist-max-o DATE_VAL:I = 0x6

.field public static final greylist-max-o DOUBLE_VAL:I = 0x5

.field public static final greylist-max-o DRM_CRIPPLED:I = 0x1f

.field public static final greylist-max-o DURATION:I = 0xe

.field private static final greylist-max-o FIRST_CUSTOM:I = 0x2000

.field public static final greylist-max-o GENRE:I = 0xc

.field public static final greylist-max-o INTEGER_VAL:I = 0x2

.field private static final greylist-max-o LAST_SYSTEM:I = 0x1f

.field private static final greylist-max-o LAST_TYPE:I = 0x7

.field public static final greylist-max-o LONG_VAL:I = 0x4

.field public static final greylist-max-o MATCH_ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o MATCH_NONE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o MIME_TYPE:I = 0x19

.field public static final greylist-max-o NUM_TRACKS:I = 0x1e

.field public static final greylist PAUSE_AVAILABLE:I = 0x1

.field public static final greylist-max-o RATING:I = 0x11

.field public static final greylist SEEK_AVAILABLE:I = 0x4

.field public static final greylist SEEK_BACKWARD_AVAILABLE:I = 0x2

.field public static final greylist SEEK_FORWARD_AVAILABLE:I = 0x3

.field public static final greylist-max-o STRING_VAL:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "media.Metadata"

.field public static final greylist-max-o TITLE:I = 0x5

.field public static final greylist-max-o VIDEO_BIT_RATE:I = 0x16

.field public static final greylist-max-o VIDEO_CODEC:I = 0x1b

.field public static final greylist-max-o VIDEO_FRAME:I = 0x13

.field public static final greylist-max-o VIDEO_FRAME_RATE:I = 0x18

.field public static final greylist-max-o VIDEO_HEIGHT:I = 0x1c

.field public static final greylist-max-o VIDEO_WIDTH:I = 0x1d

.field private static final greylist-max-o kInt32Size:I = 0x4

.field private static final greylist-max-o kMetaHeaderSize:I = 0x8

.field private static final greylist-max-o kMetaMarker:I = 0x4d455441

.field private static final greylist-max-o kRecordHeaderSize:I = 0xc


# instance fields
.field private final greylist-max-o mKeyToPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mParcel:Landroid/os/Parcel;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 213
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object v0, Landroid/media/Metadata;->MATCH_NONE:Ljava/util/Set;

    .line 217
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/media/Metadata;->MATCH_ALL:Ljava/util/Set;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    .line 273
    return-void
.end method

.method private greylist-max-o checkMetadataId(I)Z
    .registers 4

    .line 549
    if-lez p1, :cond_d

    const/16 v0, 0x1f

    if-ge v0, p1, :cond_b

    const/16 v0, 0x2000

    if-ge p1, v0, :cond_b

    goto :goto_d

    .line 553
    :cond_b
    const/4 p1, 0x1

    return p1

    .line 550
    :cond_d
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid metadata ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media.Metadata"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o checkType(II)V
    .registers 6

    .line 560
    iget-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 562
    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 564
    iget-object p1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 565
    if-ne p1, p2, :cond_1e

    .line 568
    return-void

    .line 566
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " but got "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o firstCustomId()I
    .registers 1

    .line 535
    const/16 v0, 0x2000

    return v0
.end method

.method public static greylist-max-o lastSytemId()I
    .registers 1

    .line 529
    const/16 v0, 0x1f

    return v0
.end method

.method public static greylist-max-o lastType()I
    .registers 1

    .line 541
    const/4 v0, 0x7

    return v0
.end method

.method private greylist-max-o scanAllRecords(Landroid/os/Parcel;I)Z
    .registers 12

    .line 300
    nop

    .line 301
    nop

    .line 303
    iget-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 304
    :goto_9
    const/16 v2, 0xc

    const-string v3, "media.Metadata"

    const/4 v4, 0x1

    if-le p2, v2, :cond_a3

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 309
    if-gt v6, v2, :cond_23

    .line 310
    const-string p1, "Record is too short"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    nop

    .line 312
    move p1, v4

    goto/16 :goto_a4

    .line 316
    :cond_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 317
    invoke-direct {p0, v2}, Landroid/media/Metadata;->checkMetadataId(I)Z

    move-result v7

    if-nez v7, :cond_31

    .line 318
    nop

    .line 319
    move p1, v4

    goto/16 :goto_a4

    .line 325
    :cond_31
    iget-object v7, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 326
    const-string p1, "Duplicate metadata ID found"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    nop

    .line 328
    move p1, v4

    goto :goto_a4

    .line 331
    :cond_45
    iget-object v7, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 335
    if-lez v2, :cond_8a

    const/4 v7, 0x7

    if-le v2, v7, :cond_60

    goto :goto_8a

    .line 343
    :cond_60
    :try_start_60
    invoke-static {v5, v6}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_67} :catch_6c

    .line 348
    nop

    .line 350
    sub-int/2addr p2, v6

    .line 351
    add-int/lit8 v1, v1, 0x1

    .line 352
    goto :goto_9

    .line 344
    :catch_6c
    move-exception p1

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    nop

    .line 347
    move p1, v4

    goto :goto_a4

    .line 336
    :cond_8a
    :goto_8a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid metadata type "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    nop

    .line 338
    move p1, v4

    goto :goto_a4

    .line 304
    :cond_a3
    move p1, v0

    .line 354
    :goto_a4
    if-nez p2, :cond_aa

    if-eqz p1, :cond_a9

    goto :goto_aa

    .line 359
    :cond_a9
    return v4

    .line 355
    :cond_aa
    :goto_aa
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ran out of data or error on record "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object p1, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 357
    return v0
.end method


# virtual methods
.method public greylist getBoolean(I)Z
    .registers 3

    .line 471
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    .line 472
    iget-object p1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist getByteArray(I)[B
    .registers 3

    .line 500
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    .line 501
    iget-object p1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public greylist getDate(I)Ljava/util/Date;
    .registers 5

    .line 509
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    .line 510
    iget-object p1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 511
    iget-object p1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1c

    .line 514
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1

    .line 516
    :cond_1c
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 517
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 519
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 520
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public greylist getDouble(I)D
    .registers 4

    .line 491
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    .line 492
    iget-object p1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getInt(I)I
    .registers 3

    .line 462
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    .line 463
    iget-object p1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    return p1
.end method

.method public greylist getLong(I)J
    .registers 4

    .line 480
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    .line 483
    iget-object p1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getString(I)Ljava/lang/String;
    .registers 3

    .line 453
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    .line 454
    iget-object p1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist has(I)Z
    .registers 5

    .line 438
    invoke-direct {p0, p1}, Landroid/media/Metadata;->checkMetadataId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 441
    iget-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 439
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist parse(Landroid/os/Parcel;)Z
    .registers 9

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    const-string v1, "media.Metadata"

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ge v0, v3, :cond_26

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough data "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return v2

    .line 398
    :cond_26
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    if-lt v5, v4, :cond_6f

    if-ge v4, v3, :cond_39

    goto :goto_6f

    .line 409
    :cond_39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 410
    const v6, 0x4d455441    # 2.0691458E8f

    if-eq v5, v6, :cond_60

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Marker missing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 413
    return v2

    .line 417
    :cond_60
    sub-int/2addr v4, v3

    invoke-direct {p0, p1, v4}, Landroid/media/Metadata;->scanAllRecords(Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 418
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 419
    return v2

    .line 421
    :cond_6b
    iput-object p1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    .line 422
    const/4 p1, 0x1

    return p1

    .line 403
    :cond_6f
    :goto_6f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad size "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " avail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 405
    return v2
.end method
