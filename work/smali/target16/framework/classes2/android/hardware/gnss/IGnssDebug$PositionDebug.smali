.class public Landroid/hardware/gnss/IGnssDebug$PositionDebug;
.super Ljava/lang/Object;
.source "IGnssDebug.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionDebug"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssDebug$PositionDebug;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist ageSeconds:F

.field public blacklist altitudeMeters:F

.field public blacklist bearingAccuracyDegrees:D

.field public blacklist bearingDegrees:F

.field public blacklist horizontalAccuracyMeters:D

.field public blacklist latitudeDegrees:D

.field public blacklist longitudeDegrees:D

.field public blacklist speedAccuracyMetersPerSecond:D

.field public blacklist speedMetersPerSec:F

.field public blacklist valid:Z

.field public blacklist verticalAccuracyMeters:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 301
    new-instance v0, Landroid/hardware/gnss/IGnssDebug$PositionDebug$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssDebug$PositionDebug$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->valid:Z

    .line 289
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->latitudeDegrees:D

    .line 290
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->longitudeDegrees:D

    .line 291
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->altitudeMeters:F

    .line 292
    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedMetersPerSec:F

    .line 293
    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingDegrees:F

    .line 294
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->horizontalAccuracyMeters:D

    .line 295
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->verticalAccuracyMeters:D

    .line 296
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedAccuracyMetersPerSecond:D

    .line 297
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingAccuracyDegrees:D

    .line 298
    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->ageSeconds:F

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 370
    nop

    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_14a

    .line 339
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 365
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 339
    return-void

    .line 363
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 340
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->valid:Z

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 365
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 341
    return-void

    .line 363
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->latitudeDegrees:D

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 365
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 343
    return-void

    .line 363
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 344
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->longitudeDegrees:D

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 365
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 345
    return-void

    .line 363
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 346
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->altitudeMeters:F

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 365
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 347
    return-void

    .line 363
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedMetersPerSec:F

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 365
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 349
    return-void

    .line 363
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 350
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingDegrees:F

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 365
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 351
    return-void

    .line 363
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_c7
    :try_start_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->horizontalAccuracyMeters:D

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 365
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 353
    return-void

    .line 363
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 354
    :cond_e2
    :try_start_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->verticalAccuracyMeters:D

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ec
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_fd

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f7

    .line 365
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 355
    return-void

    .line 363
    :cond_f7
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :cond_fd
    :try_start_fd
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedAccuracyMetersPerSecond:D

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_107
    .catchall {:try_start_fd .. :try_end_107} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_118

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_112

    .line 365
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 357
    return-void

    .line 363
    :cond_112
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_118
    :try_start_118
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingAccuracyDegrees:D

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_122
    .catchall {:try_start_118 .. :try_end_122} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_133

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12d

    .line 365
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 359
    return-void

    .line 363
    :cond_12d
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 360
    :cond_133
    :try_start_133
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->ageSeconds:F
    :try_end_139
    .catchall {:try_start_133 .. :try_end_139} :catchall_148

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_142

    .line 365
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 366
    nop

    .line 367
    return-void

    .line 363
    :cond_142
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :catchall_148
    move-exception v2

    goto :goto_152

    .line 338
    :cond_14a
    :try_start_14a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_152
    .catchall {:try_start_14a .. :try_end_152} :catchall_148

    .line 362
    :goto_152
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_15b

    .line 363
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 365
    :cond_15b
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 366
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 316
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-boolean v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->valid:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 318
    iget-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->latitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 319
    iget-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->longitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 320
    iget v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->altitudeMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 321
    iget v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedMetersPerSec:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 322
    iget v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 323
    iget-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->horizontalAccuracyMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 324
    iget-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->verticalAccuracyMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 325
    iget-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedAccuracyMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 326
    iget-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingAccuracyDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 327
    iget v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->ageSeconds:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 329
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 330
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 332
    return-void
.end method
