.class public final Landroid/app/ZenBypassingApp;
.super Ljava/lang/Object;
.source "ZenBypassingApp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ZenBypassingApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAllChannelsBypass:Z

.field private blacklist mPkg:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Landroid/app/ZenBypassingApp$1;

    invoke-direct {v0}, Landroid/app/ZenBypassingApp$1;-><init>()V

    sput-object v0, Landroid/app/ZenBypassingApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist doAllChannelsBypass()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 79
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 80
    :cond_4
    instance-of v1, p1, Landroid/app/ZenBypassingApp;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 81
    :cond_a
    check-cast p1, Landroid/app/ZenBypassingApp;

    .line 82
    iget-boolean v1, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    iget-boolean v3, p1, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    if-ne v1, v3, :cond_1d

    iget-object v1, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public blacklist getPkg()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 88
    iget-object v0, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZenBypassingApp{mPkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllChannelsBypass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 61
    iget-object p2, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-boolean p2, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 63
    return-void
.end method
