.class public final Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeveloperVerificationUserConfirmationInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo$UserActionNeededReason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVELOPER_VERIFICATION_USER_ACTION_NEEDED_REASON_DEVELOPER_BLOCKED:I = 0x2

.field public static final whitelist DEVELOPER_VERIFICATION_USER_ACTION_NEEDED_REASON_LITE_VERIFICATION:I = 0x3

.field public static final whitelist DEVELOPER_VERIFICATION_USER_ACTION_NEEDED_REASON_NETWORK_UNAVAILABLE:I = 0x1

.field public static final whitelist DEVELOPER_VERIFICATION_USER_ACTION_NEEDED_REASON_UNKNOWN:I


# instance fields
.field private final blacklist mUserActionNeededReason:I

.field private final blacklist mVerificationPolicy:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 5185
    new-instance v0, Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3

    .line 5145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5146
    iput p1, p0, Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;->mVerificationPolicy:I

    .line 5147
    iput p2, p0, Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;->mUserActionNeededReason:I

    .line 5148
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 5150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;->mVerificationPolicy:I

    .line 5152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;->mUserActionNeededReason:I

    .line 5153
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/PackageInstaller-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 5175
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getUserActionNeededReason()I
    .registers 2

    .line 5170
    iget v0, p0, Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;->mUserActionNeededReason:I

    return v0
.end method

.method public whitelist getVerificationPolicy()I
    .registers 2

    .line 5161
    iget v0, p0, Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;->mVerificationPolicy:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 5200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerificationUserConfirmationInfo{verificationPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;->mVerificationPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verificationUserActionReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;->mUserActionNeededReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 5180
    iget p2, p0, Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;->mVerificationPolicy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5181
    iget p2, p0, Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;->mUserActionNeededReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5182
    return-void
.end method
