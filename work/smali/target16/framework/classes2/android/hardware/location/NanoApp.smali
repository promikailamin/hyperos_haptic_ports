.class public Landroid/hardware/location/NanoApp;
.super Ljava/lang/Object;
.source "NanoApp.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o TAG:Ljava/lang/String;

.field private final greylist-max-o UNKNOWN:Ljava/lang/String;

.field private greylist-max-o mAppBinary:[B

.field private greylist-max-o mAppId:J

.field private greylist-max-o mAppIdSet:Z

.field private greylist-max-o mAppVersion:I

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mNeededExecMemBytes:I

.field private greylist-max-o mNeededReadMemBytes:I

.field private greylist-max-o mNeededSensors:[I

.field private greylist-max-o mNeededWriteMemBytes:I

.field private greylist-max-o mOutputEvents:[I

.field private greylist-max-o mPublisher:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 363
    new-instance v0, Landroid/hardware/location/NanoApp$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoApp$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 70
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/location/NanoApp;-><init>(J[B)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    .line 72
    return-void
.end method

.method public constructor whitelist <init>(I[B)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string p1, "NanoApp"

    iput-object p1, p0, Landroid/hardware/location/NanoApp;->TAG:Ljava/lang/String;

    .line 45
    const-string p2, "Unknown"

    iput-object p2, p0, Landroid/hardware/location/NanoApp;->UNKNOWN:Ljava/lang/String;

    .line 92
    const-string p2, "NanoApp(int, byte[]) is deprecated, please use NanoApp(long, byte[]) instead."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public constructor whitelist <init>(J[B)V
    .registers 5

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "NanoApp"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->TAG:Ljava/lang/String;

    .line 45
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->UNKNOWN:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    .line 114
    iput-wide p1, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    .line 115
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    .line 116
    const/4 p1, 0x0

    iput p1, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    .line 118
    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    .line 119
    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    .line 120
    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    .line 122
    new-array p2, p1, [I

    iput-object p2, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    .line 123
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    .line 124
    iput-object p3, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    .line 125
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "NanoApp"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->TAG:Ljava/lang/String;

    .line 45
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->UNKNOWN:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 321
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    .line 322
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 325
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    .line 326
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 329
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    .line 330
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 331
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoApp-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/location/NanoApp;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAppBinary()[B
    .registers 2

    .line 307
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    return-object v0
.end method

.method public whitelist getAppId()J
    .registers 3

    .line 244
    iget-wide v0, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    return-wide v0
.end method

.method public whitelist getAppVersion()I
    .registers 2

    .line 253
    iget v0, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 235
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNeededExecMemBytes()I
    .registers 2

    .line 280
    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    return v0
.end method

.method public whitelist getNeededReadMemBytes()I
    .registers 2

    .line 262
    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    return v0
.end method

.method public whitelist getNeededSensors()[I
    .registers 2

    .line 289
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    return-object v0
.end method

.method public whitelist getNeededWriteMemBytes()I
    .registers 2

    .line 271
    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    return v0
.end method

.method public whitelist getOutputEvents()[I
    .registers 2

    .line 298
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    return-object v0
.end method

.method public whitelist getPublisher()Ljava/lang/String;
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setAppBinary([B)V
    .registers 3

    .line 216
    const-string v0, "appBinary must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    .line 218
    return-void
.end method

.method public whitelist setAppId(J)V
    .registers 3

    .line 151
    iput-wide p1, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    .line 152
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    .line 153
    return-void
.end method

.method public whitelist setAppVersion(I)V
    .registers 2

    .line 161
    iput p1, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    .line 162
    return-void
.end method

.method public whitelist setName(Ljava/lang/String;)V
    .registers 2

    .line 142
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public whitelist setNeededExecMemBytes(I)V
    .registers 2

    .line 191
    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    .line 192
    return-void
.end method

.method public whitelist setNeededReadMemBytes(I)V
    .registers 2

    .line 171
    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    .line 172
    return-void
.end method

.method public whitelist setNeededSensors([I)V
    .registers 3

    .line 201
    const-string v0, "neededSensors must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    .line 203
    return-void
.end method

.method public whitelist setNeededWriteMemBytes(I)V
    .registers 2

    .line 181
    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    .line 182
    return-void
.end method

.method public whitelist setOutputEvents([I)V
    .registers 3

    .line 206
    const-string v0, "outputEvents must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    .line 208
    return-void
.end method

.method public whitelist setPublisher(Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Publisher : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 338
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    if-eqz p2, :cond_68

    .line 341
    iget-boolean p2, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    if-eqz p2, :cond_4d

    .line 345
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    iget-wide v0, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 348
    iget p2, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget p2, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget p2, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget p2, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 356
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 359
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 361
    return-void

    .line 342
    :cond_4d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Must set AppId for nanoapp "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 339
    :cond_68
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Must set non-null AppBinary for nanoapp "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
