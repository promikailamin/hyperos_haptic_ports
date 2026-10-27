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

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3778
    new-instance v0, Landroid/app/AppOpsManager$OpEventProxyInfo$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$OpEventProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;

    .line 3689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3690
    iput p1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    .line 3691
    const-class v0, Landroid/annotation/IntRange;

    const/4 v1, 0x0

    const-string v3, "from"

    const-wide/16 v4, 0x0

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 3694
    iput-object p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    .line 3695
    iput-object p3, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    .line 3698
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 3
    .param p1, "orig"    # Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 3706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3707
    iget v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    iput v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    .line 3708
    iget-object v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    .line 3709
    iget-object v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    .line 3710
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 12
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3762
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 3763
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3764
    .local v7, "uid":I
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_12

    move-object v1, v2

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_16
    move-object v8, v1

    .line 3765
    .local v8, "packageName":Ljava/lang/String;
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    :goto_20
    move-object v9, v2

    .line 3767
    .local v9, "attributionTag":Ljava/lang/String;
    iput v7, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    .line 3768
    const-class v1, Landroid/annotation/IntRange;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const-string v4, "from"

    move v3, v7

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 3771
    iput-object v8, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    .line 3772
    iput-object v9, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    .line 3775
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 3753
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 3733
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 3725
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 3717
    iget v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    return v0
.end method

.method public blacklist reinit(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;

    .line 3654
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    .line 3655
    iput-object p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    .line 3656
    iput-object p3, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    .line 3657
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3742
    const/4 v0, 0x0

    .line 3743
    .local v0, "flg":B
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 3744
    :cond_8
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 3745
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 3746
    iget v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3747
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1e

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3748
    :cond_1e
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_25

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3749
    :cond_25
    return-void
.end method
