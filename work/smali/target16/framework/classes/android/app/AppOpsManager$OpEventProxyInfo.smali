.class public final Landroid/app/AppOpsManager$OpEventProxyInfo;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpEventProxyInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private blacklist mDeviceId:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 4033
    new-instance v0, Landroid/app/AppOpsManager$OpEventProxyInfo$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$OpEventProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 3917
    const-string v0, "default:0"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3919
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 3935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3936
    iput p1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    .line 3937
    const-class v0, Landroid/annotation/IntRange;

    iget v2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    const-string v3, "from"

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 3940
    iput-object p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    .line 3941
    iput-object p3, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    .line 3942
    if-nez p4, :cond_1a

    const-string p4, "default:0"

    goto :goto_1b

    .line 3943
    :cond_1a
    nop

    :goto_1b
    iput-object p4, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    .line 3944
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 3

    .line 3951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3952
    iget v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    iput v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    .line 3953
    iget-object v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    .line 3954
    iget-object v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    .line 3955
    iget-object p1, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    iput-object p1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    .line 3956
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 12

    .line 4012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4016
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 4017
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4018
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    move-object v2, v3

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4019
    :goto_16
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4020
    :goto_1f
    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_26

    const-string p1, "default:0"

    goto :goto_2a

    .line 4021
    :cond_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4022
    :goto_2a
    iput v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    .line 4023
    const-class v4, Landroid/annotation/IntRange;

    iget v6, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    const-string v7, "from"

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 4026
    iput-object v2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    .line 4027
    iput-object v3, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    .line 4028
    iput-object p1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    .line 4030
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 4007
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 3979
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceId()Ljava/lang/String;
    .registers 2

    .line 3986
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 3971
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 3963
    iget v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    return v0
.end method

.method public blacklist reinit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 3880
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result p1

    iput p1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    .line 3881
    iput-object p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    .line 3882
    iput-object p3, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    .line 3883
    iput-object p4, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    .line 3884
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 3994
    nop

    .line 3995
    iget-object p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    if-eqz p2, :cond_8

    const/4 p2, 0x2

    int-to-byte p2, p2

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 3996
    :goto_9
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    if-eqz v0, :cond_10

    or-int/lit8 p2, p2, 0x4

    int-to-byte p2, p2

    .line 3997
    :cond_10
    or-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 3998
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3999
    iget p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4000
    iget-object p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    if-eqz p2, :cond_24

    iget-object p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4001
    :cond_24
    iget-object p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    if-eqz p2, :cond_2d

    iget-object p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4002
    :cond_2d
    iget-object p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4003
    return-void
.end method
