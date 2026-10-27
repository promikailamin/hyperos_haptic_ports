.class public final Landroid/content/pm/verify/developer/DeveloperVerificationSession;
.super Ljava/lang/Object;
.source "DeveloperVerificationSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/developer/DeveloperVerificationSession$DeveloperVerificationIncompleteReason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/verify/developer/DeveloperVerificationSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVELOPER_VERIFICATION_BYPASSED_REASON_ADB:I = 0x1

.field public static final whitelist DEVELOPER_VERIFICATION_BYPASSED_REASON_EMERGENCY:I = 0x2

.field public static final whitelist DEVELOPER_VERIFICATION_BYPASSED_REASON_TEST:I = 0x3

.field public static final blacklist DEVELOPER_VERIFICATION_BYPASSED_REASON_UNSPECIFIED:I = 0x0

.field public static final whitelist DEVELOPER_VERIFICATION_INCOMPLETE_NETWORK_UNAVAILABLE:I = 0x1

.field public static final whitelist DEVELOPER_VERIFICATION_INCOMPLETE_UNKNOWN:I


# instance fields
.field private final blacklist mDeclaredLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExtensionParams:Landroid/os/PersistableBundle;

.field private final blacklist mId:I

.field private final blacklist mInstallSessionId:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private volatile blacklist mPolicy:I

.field private final blacklist mSession:Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;

.field private final blacklist mSigningInfo:Landroid/content/pm/SigningInfo;

.field private final blacklist mStagedPackageUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 370
    new-instance v0, Landroid/content/pm/verify/developer/DeveloperVerificationSession$1;

    invoke-direct {v0}, Landroid/content/pm/verify/developer/DeveloperVerificationSession$1;-><init>()V

    sput-object v0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/SigningInfo;Ljava/util/List;Landroid/os/PersistableBundle;ILandroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/content/pm/SigningInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;",
            "Landroid/os/PersistableBundle;",
            "I",
            "Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;",
            ")V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mId:I

    .line 130
    iput p2, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mInstallSessionId:I

    .line 131
    iput-object p3, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mPackageName:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mStagedPackageUri:Landroid/net/Uri;

    .line 133
    iput-object p5, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mSigningInfo:Landroid/content/pm/SigningInfo;

    .line 134
    iput-object p6, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mDeclaredLibraries:Ljava/util/List;

    .line 135
    iput-object p7, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mExtensionParams:Landroid/os/PersistableBundle;

    .line 136
    iput p8, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mPolicy:I

    .line 137
    iput-object p9, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mSession:Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;

    .line 138
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mId:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mInstallSessionId:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mPackageName:Ljava/lang/String;

    .line 343
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mStagedPackageUri:Landroid/net/Uri;

    .line 344
    sget-object v0, Landroid/content/pm/SigningInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningInfo;

    iput-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mSigningInfo:Landroid/content/pm/SigningInfo;

    .line 345
    sget-object v0, Landroid/content/pm/SharedLibraryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mDeclaredLibraries:Ljava/util/List;

    .line 346
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mExtensionParams:Landroid/os/PersistableBundle;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mPolicy:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mSession:Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;

    .line 349
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/verify/developer/DeveloperVerificationSession-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/verify/developer/DeveloperVerificationSession;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist extendTimeout(Ljava/time/Duration;)Ljava/time/Duration;
    .registers 6

    .line 263
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mSession:Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;

    iget v1, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mId:I

    .line 264
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;->extendTimeoutMillis(IJ)J

    move-result-wide v0

    .line 263
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p1

    .line 265
    :catch_11
    move-exception p1

    .line 266
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getDeclaredLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mDeclaredLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExtensionParams()Landroid/os/PersistableBundle;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mExtensionParams:Landroid/os/PersistableBundle;

    if-nez v0, :cond_7

    .line 191
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    return-object v0

    .line 193
    :cond_7
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mExtensionParams:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 144
    iget v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mId:I

    return v0
.end method

.method public whitelist getInstallSessionId()I
    .registers 2

    .line 158
    iget v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mInstallSessionId:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPolicy()I
    .registers 2

    .line 221
    iget v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mPolicy:I

    return v0
.end method

.method public whitelist getSigningInfo()Landroid/content/pm/SigningInfo;
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mSigningInfo:Landroid/content/pm/SigningInfo;

    return-object v0
.end method

.method public whitelist getStagedPackageUri()Landroid/net/Uri;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mStagedPackageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getTimeoutTime()Ljava/time/Instant;
    .registers 3

    .line 207
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mSession:Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;

    iget v1, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mId:I

    invoke-interface {v0, v1}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;->getTimeoutTimeMillis(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 208
    :catch_d
    move-exception v0

    .line 209
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist reportVerificationBypassed(I)V
    .registers 4

    .line 333
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mSession:Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;

    iget v1, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;->reportVerificationBypassed(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 336
    nop

    .line 337
    return-void

    .line 334
    :catch_9
    move-exception p1

    .line 335
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist reportVerificationComplete(Landroid/content/pm/verify/developer/DeveloperVerificationStatus;)V
    .registers 5

    .line 297
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mSession:Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;

    iget v1, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;->reportVerificationComplete(ILandroid/content/pm/verify/developer/DeveloperVerificationStatus;Landroid/os/PersistableBundle;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 300
    nop

    .line 301
    return-void

    .line 298
    :catch_a
    move-exception p1

    .line 299
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist reportVerificationComplete(Landroid/content/pm/verify/developer/DeveloperVerificationStatus;Landroid/os/PersistableBundle;)V
    .registers 5

    .line 315
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mSession:Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;

    iget v1, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mId:I

    invoke-interface {v0, v1, p1, p2}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;->reportVerificationComplete(ILandroid/content/pm/verify/developer/DeveloperVerificationStatus;Landroid/os/PersistableBundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 318
    nop

    .line 319
    return-void

    .line 316
    :catch_9
    move-exception p1

    .line 317
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist reportVerificationIncomplete(I)V
    .registers 4

    .line 280
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mSession:Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;

    iget v1, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;->reportVerificationIncomplete(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 283
    nop

    .line 284
    return-void

    .line 281
    :catch_9
    move-exception p1

    .line 282
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setPolicy(I)Z
    .registers 5

    .line 234
    iget v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mPolicy:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_6

    .line 236
    return v1

    .line 239
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mSession:Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;

    iget v2, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mId:I

    invoke-interface {v0, v2, p1}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;->setVerificationPolicy(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 240
    iput p1, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mPolicy:I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_15

    .line 241
    return v1

    .line 243
    :cond_13
    const/4 p1, 0x0

    return p1

    .line 245
    :catch_15
    move-exception p1

    .line 246
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 358
    iget v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mInstallSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mStagedPackageUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 362
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mSigningInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/SigningInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 363
    iget-object p2, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mDeclaredLibraries:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 364
    iget-object p2, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mExtensionParams:Landroid/os/PersistableBundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 365
    iget p2, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mPolicy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget-object p2, p0, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->mSession:Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;

    invoke-interface {p2}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 367
    return-void
.end method
