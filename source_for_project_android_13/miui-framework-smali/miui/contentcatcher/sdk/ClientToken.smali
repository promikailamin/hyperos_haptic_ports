.class public Lmiui/contentcatcher/sdk/ClientToken;
.super Ljava/lang/Object;
.source "ClientToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/contentcatcher/sdk/ClientToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mJobTag:Ljava/lang/String;

.field private blacklist mParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPkgName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lmiui/contentcatcher/sdk/ClientToken$1;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/ClientToken$1;-><init>()V

    sput-object v0, Lmiui/contentcatcher/sdk/ClientToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mParams:Ljava/util/HashMap;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mPkgName:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mJobTag:Ljava/lang/String;

    .line 21
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mParams:Ljava/util/HashMap;

    .line 22
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mParams:Ljava/util/HashMap;

    .line 15
    iput-object p1, p0, Lmiui/contentcatcher/sdk/ClientToken;->mPkgName:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 85
    instance-of v0, p1, Lmiui/contentcatcher/sdk/ClientToken;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 86
    return v1

    .line 88
    :cond_6
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ClientToken;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public whitelist getJobTag()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mJobTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParams()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public whitelist getPkgName()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 79
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mPkgName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_d

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2f

    .line 80
    :goto_d
    iget-object v2, p0, Lmiui/contentcatcher/sdk/ClientToken;->mJobTag:Ljava/lang/String;

    if-nez v2, :cond_12

    goto :goto_18

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x43

    :goto_18
    add-int/2addr v0, v1

    .line 79
    return v0
.end method

.method public whitelist isMatch(Lmiui/contentcatcher/sdk/ClientToken;)Z
    .registers 4
    .param p1, "token"    # Lmiui/contentcatcher/sdk/ClientToken;

    .line 45
    if-eq p0, p1, :cond_1f

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientToken;->getPkgName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/ClientToken;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 46
    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientToken;->getJobTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/ClientToken;->mJobTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 45
    :goto_20
    return v0
.end method

.method public whitelist setJobTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "jobTag"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lmiui/contentcatcher/sdk/ClientToken;->mJobTag:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public whitelist setParams(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lmiui/contentcatcher/sdk/ClientToken;->mParams:Ljava/util/HashMap;

    .line 30
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token {pkg name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/ClientToken;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mJobTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/ClientToken;->mJobTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 56
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mJobTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mParams:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 59
    return-void
.end method
