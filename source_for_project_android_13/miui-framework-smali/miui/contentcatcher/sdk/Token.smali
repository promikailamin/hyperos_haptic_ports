.class public Lmiui/contentcatcher/sdk/Token;
.super Ljava/lang/Object;
.source "Token.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/contentcatcher/sdk/Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActivityHashCode:Ljava/lang/String;

.field private blacklist mActivityName:Ljava/lang/String;

.field private blacklist mPkgName:Ljava/lang/String;

.field private blacklist mVersionCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Lmiui/contentcatcher/sdk/Token$1;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/Token$1;-><init>()V

    sput-object v0, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "versionCode"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    .line 19
    iput p3, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    .line 20
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "activityHashCode"    # Ljava/lang/String;
    .param p4, "versionCode"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    .line 25
    iput p4, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    .line 26
    iput-object p3, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActivityHashCode()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getActivityName()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPkgName()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVersionCode()I
    .registers 2

    .line 49
    iget v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    return v0
.end method

.method public whitelist isMatch(Lmiui/contentcatcher/sdk/Token;)Z
    .registers 4
    .param p1, "token"    # Lmiui/contentcatcher/sdk/Token;

    .line 53
    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/Token;->getPkgName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 54
    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/Token;->getActivityName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 55
    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/Token;->getVersionCode()I

    move-result v0

    iget v1, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    if-ne v0, v1, :cond_2a

    .line 56
    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/Token;->getActivityHashCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    if-ne v0, v1, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 53
    :goto_2b
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token {pkg name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activity name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityhashcode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 66
    iget v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return-void
.end method
