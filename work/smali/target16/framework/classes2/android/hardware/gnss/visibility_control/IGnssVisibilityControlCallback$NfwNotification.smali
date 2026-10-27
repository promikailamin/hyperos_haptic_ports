.class public Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;
.super Ljava/lang/Object;
.source "IGnssVisibilityControlCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NfwNotification"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist inEmergencyMode:Z

.field public blacklist isCachedLocation:Z

.field public blacklist otherProtocolStackName:Ljava/lang/String;

.field public blacklist protocolStack:I

.field public blacklist proxyAppPackageName:Ljava/lang/String;

.field public blacklist requestor:I

.field public blacklist requestorId:Ljava/lang/String;

.field public blacklist responseType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 289
    new-instance v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification$1;

    invoke-direct {v0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->inEmergencyMode:Z

    .line 286
    iput-boolean v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->isCachedLocation:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 349
    nop

    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 323
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_f9

    .line 324
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 344
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 324
    return-void

    .line 342
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 325
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->proxyAppPackageName:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 344
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 326
    return-void

    .line 342
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 327
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->protocolStack:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 344
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 328
    return-void

    .line 342
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 329
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->otherProtocolStackName:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 344
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 330
    return-void

    .line 342
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 331
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->requestor:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 344
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 332
    return-void

    .line 342
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 333
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->requestorId:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 344
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 334
    return-void

    .line 342
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 335
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->responseType:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 344
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 336
    return-void

    .line 342
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 337
    :cond_c7
    :try_start_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->inEmergencyMode:Z

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 344
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 338
    return-void

    .line 342
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 339
    :cond_e2
    :try_start_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->isCachedLocation:Z
    :try_end_e8
    .catchall {:try_start_e2 .. :try_end_e8} :catchall_f7

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f1

    .line 344
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 345
    nop

    .line 346
    return-void

    .line 342
    :cond_f1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 341
    :catchall_f7
    move-exception v2

    goto :goto_101

    .line 323
    :cond_f9
    :try_start_f9
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_101
    .catchall {:try_start_f9 .. :try_end_101} :catchall_f7

    .line 341
    :goto_101
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_10a

    .line 342
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 344
    :cond_10a
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 345
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->proxyAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->protocolStack:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget-object v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->otherProtocolStackName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->requestor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget-object v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->responseType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-boolean v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->inEmergencyMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 312
    iget-boolean v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->isCachedLocation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 314
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 315
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 317
    return-void
.end method
