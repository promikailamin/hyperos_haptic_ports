.class public Lcom/miui/darkmode/DarkModeAppDetailInfo;
.super Ljava/lang/Object;
.source "DarkModeAppDetailInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/darkmode/DarkModeAppDetailInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist adaptStatus:I

.field private blacklist enabled:Z

.field private blacklist extra:Landroid/os/Bundle;

.field private blacklist label:Ljava/lang/String;

.field private blacklist pkgName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Lcom/miui/darkmode/DarkModeAppDetailInfo$1;

    invoke-direct {v0}, Lcom/miui/darkmode/DarkModeAppDetailInfo$1;-><init>()V

    sput-object v0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->pkgName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->label:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-boolean v0, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->enabled:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->adaptStatus:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->extra:Landroid/os/Bundle;

    .line 75
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAdaptStatus()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->adaptStatus:I

    return v0
.end method

.method public blacklist getLabel()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPkgName()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->enabled:Z

    return v0
.end method

.method public blacklist setAdaptStatus(I)V
    .registers 2
    .param p1, "adaptStatus"    # I

    .line 51
    iput p1, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->adaptStatus:I

    .line 52
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->enabled:Z

    .line 44
    return-void
.end method

.method public blacklist setLabel(Ljava/lang/String;)V
    .registers 2
    .param p1, "label"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->label:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public blacklist setPkgName(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->pkgName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DarkModeAppInfo{pkgName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", label=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adaptStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->adaptStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 62
    iget-object v0, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-boolean v0, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 65
    iget v0, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->adaptStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method
