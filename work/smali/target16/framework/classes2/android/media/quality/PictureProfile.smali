.class public final Landroid/media/quality/PictureProfile;
.super Ljava/lang/Object;
.source "PictureProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/PictureProfile$Builder;,
        Landroid/media/quality/PictureProfile$ErrorCode;,
        Landroid/media/quality/PictureProfile$ProfileName;,
        Landroid/media/quality/PictureProfile$ProfileType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/PictureProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR_DUPLICATE:I = 0x2

.field public static final whitelist ERROR_INVALID_ARGUMENT:I = 0x3

.field public static final whitelist ERROR_NOT_ALLOWLISTED:I = 0x4

.field public static final whitelist ERROR_NO_PERMISSION:I = 0x1

.field public static final whitelist ERROR_UNKNOWN:I = 0x0

.field public static final blacklist NAME_DEFAULT:Ljava/lang/String; = "default"

.field public static final blacklist NAME_ENERGY_SAVING:Ljava/lang/String; = "energy_saving"

.field public static final blacklist NAME_GAME:Ljava/lang/String; = "game"

.field public static final blacklist NAME_MOVIE:Ljava/lang/String; = "movie"

.field public static final blacklist NAME_SPORTS:Ljava/lang/String; = "sports"

.field public static final blacklist NAME_STANDARD:Ljava/lang/String; = "standard"

.field public static final blacklist NAME_USER:Ljava/lang/String; = "user"

.field public static final blacklist NAME_VIVID:Ljava/lang/String; = "vivid"

.field public static final blacklist STATUS_DOLBY_VISION:Ljava/lang/String; = "DOLBY_VISION"

.field public static final blacklist STATUS_FMM_DOLBY:Ljava/lang/String; = "FMM_DOLBY"

.field public static final blacklist STATUS_FMM_HDR10:Ljava/lang/String; = "FMM_HDR10"

.field public static final blacklist STATUS_FMM_HDR10_PLUS:Ljava/lang/String; = "FMM_HDR10_PLUS"

.field public static final blacklist STATUS_FMM_HDR_VIVID:Ljava/lang/String; = "FMM_HDR_VIVID"

.field public static final blacklist STATUS_FMM_HLG:Ljava/lang/String; = "FMM_HLG"

.field public static final blacklist STATUS_FMM_SDR:Ljava/lang/String; = "FMM_SDR"

.field public static final blacklist STATUS_FMM_TCH:Ljava/lang/String; = "FMM_TCH"

.field public static final blacklist STATUS_HDR10:Ljava/lang/String; = "HDR10"

.field public static final blacklist STATUS_HDR10_PLUS:Ljava/lang/String; = "HDR10_PLUS"

.field public static final blacklist STATUS_HDR_VIVID:Ljava/lang/String; = "HDR_VIVID"

.field public static final blacklist STATUS_HLG:Ljava/lang/String; = "HLG"

.field public static final blacklist STATUS_IMAX_HDR10:Ljava/lang/String; = "IMAX_HDR10"

.field public static final blacklist STATUS_IMAX_HDR10_PLUS:Ljava/lang/String; = "IMAX_HDR10_PLUS"

.field public static final blacklist STATUS_IMAX_SDR:Ljava/lang/String; = "IMAX_SDR"

.field public static final blacklist STATUS_SDR:Ljava/lang/String; = "SDR"

.field public static final blacklist STATUS_TCH:Ljava/lang/String; = "TCH"

.field public static final whitelist TYPE_APPLICATION:I = 0x2

.field public static final whitelist TYPE_SYSTEM:I = 0x1


# instance fields
.field private final blacklist mHandle:Landroid/media/quality/PictureProfileHandle;

.field private blacklist mId:Ljava/lang/String;

.field private final blacklist mInputId:Ljava/lang/String;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mParams:Landroid/os/PersistableBundle;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 276
    new-instance v0, Landroid/media/quality/PictureProfile$1;

    invoke-direct {v0}, Landroid/media/quality/PictureProfile$1;-><init>()V

    sput-object v0, Landroid/media/quality/PictureProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/PictureProfile;->mId:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/PictureProfile;->mType:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/PictureProfile;->mName:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/PictureProfile;->mInputId:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/PictureProfile;->mPackageName:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/PictureProfile;->mParams:Landroid/os/PersistableBundle;

    .line 255
    const-class v0, Landroid/media/quality/PictureProfileHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/media/quality/PictureProfileHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/quality/PictureProfileHandle;

    iput-object p1, p0, Landroid/media/quality/PictureProfile;->mHandle:Landroid/media/quality/PictureProfileHandle;

    .line 257
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/quality/PictureProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/quality/PictureProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/media/quality/PictureProfileHandle;)V
    .registers 8

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Landroid/media/quality/PictureProfile;->mId:Ljava/lang/String;

    .line 303
    iput p2, p0, Landroid/media/quality/PictureProfile;->mType:I

    .line 304
    iput-object p3, p0, Landroid/media/quality/PictureProfile;->mName:Ljava/lang/String;

    .line 305
    iput-object p4, p0, Landroid/media/quality/PictureProfile;->mInputId:Ljava/lang/String;

    .line 306
    iput-object p5, p0, Landroid/media/quality/PictureProfile;->mPackageName:Ljava/lang/String;

    .line 307
    iput-object p6, p0, Landroid/media/quality/PictureProfile;->mParams:Landroid/os/PersistableBundle;

    .line 308
    iput-object p7, p0, Landroid/media/quality/PictureProfile;->mHandle:Landroid/media/quality/PictureProfileHandle;

    .line 309
    return-void
.end method

.method public static blacklist copyFrom(Landroid/media/quality/PictureProfile;)Landroid/media/quality/PictureProfile;
    .registers 9

    .line 405
    new-instance v0, Landroid/media/quality/PictureProfile;

    iget-object v1, p0, Landroid/media/quality/PictureProfile;->mId:Ljava/lang/String;

    iget v2, p0, Landroid/media/quality/PictureProfile;->mType:I

    iget-object v3, p0, Landroid/media/quality/PictureProfile;->mName:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/quality/PictureProfile;->mInputId:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/quality/PictureProfile;->mPackageName:Ljava/lang/String;

    new-instance v6, Landroid/os/PersistableBundle;

    iget-object v7, p0, Landroid/media/quality/PictureProfile;->mParams:Landroid/os/PersistableBundle;

    invoke-direct {v6, v7}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iget-object v7, p0, Landroid/media/quality/PictureProfile;->mHandle:Landroid/media/quality/PictureProfileHandle;

    invoke-direct/range {v0 .. v7}, Landroid/media/quality/PictureProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/media/quality/PictureProfileHandle;)V

    return-object v0
.end method


# virtual methods
.method public blacklist addStringParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 397
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mParams:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHandle()Landroid/media/quality/PictureProfileHandle;
    .registers 2

    .line 421
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mHandle:Landroid/media/quality/PictureProfileHandle;

    return-object v0
.end method

.method public whitelist getInputId()Ljava/lang/String;
    .registers 2

    .line 361
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mInputId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 348
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 375
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParameters()Landroid/os/PersistableBundle;
    .registers 3

    .line 388
    new-instance v0, Landroid/os/PersistableBundle;

    iget-object v1, p0, Landroid/media/quality/PictureProfile;->mParams:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist getProfileId()Ljava/lang/String;
    .registers 2

    .line 324
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProfileType()I
    .registers 2

    .line 340
    iget v0, p0, Landroid/media/quality/PictureProfile;->mType:I

    return v0
.end method

.method public blacklist setProfileId(Ljava/lang/String;)V
    .registers 2

    .line 332
    iput-object p1, p0, Landroid/media/quality/PictureProfile;->mId:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 261
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget v0, p0, Landroid/media/quality/PictureProfile;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mParams:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 267
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mHandle:Landroid/media/quality/PictureProfileHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 268
    return-void
.end method
