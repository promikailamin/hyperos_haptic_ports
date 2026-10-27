.class public Lcom/miui/whetstone/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/whetstone/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mPrePackageName:Ljava/lang/String;

.field public blacklist mPreUid:I

.field public blacklist mScreenPackageName:Ljava/lang/String;

.field public blacklist mScreenUid:I

.field public blacklist mTopMultiPackageName:Ljava/lang/String;

.field public blacklist mTopMultiUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/miui/whetstone/AppInfo$1;

    invoke-direct {v0}, Lcom/miui/whetstone/AppInfo$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/AppInfo;->mScreenPackageName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/AppInfo;->mScreenUid:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/AppInfo;->mPrePackageName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/AppInfo;->mPreUid:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiPackageName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiUid:I

    .line 30
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/miui/whetstone/AppInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/whetstone/AppInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .registers 7
    .param p1, "sPackageName"    # Ljava/lang/String;
    .param p2, "sUid"    # I
    .param p3, "pPackageName"    # Ljava/lang/String;
    .param p4, "pUid"    # I
    .param p5, "mPackageName"    # Ljava/lang/String;
    .param p6, "mUid"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/miui/whetstone/AppInfo;->mScreenPackageName:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/miui/whetstone/AppInfo;->mScreenUid:I

    .line 17
    iput-object p3, p0, Lcom/miui/whetstone/AppInfo;->mPrePackageName:Ljava/lang/String;

    .line 18
    iput p4, p0, Lcom/miui/whetstone/AppInfo;->mPreUid:I

    .line 19
    iput-object p5, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiPackageName:Ljava/lang/String;

    .line 20
    iput p6, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiUid:I

    .line 21
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 39
    iget-object v0, p0, Lcom/miui/whetstone/AppInfo;->mScreenPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/miui/whetstone/AppInfo;->mScreenUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v0, p0, Lcom/miui/whetstone/AppInfo;->mPrePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcom/miui/whetstone/AppInfo;->mPreUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget v0, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    return-void
.end method
