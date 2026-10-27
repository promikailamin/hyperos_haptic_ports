.class public Lmiui/hardware/input/MiuiKeyboardStatus;
.super Ljava/lang/Object;
.source "MiuiKeyboardStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/hardware/input/MiuiKeyboardStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAngleStatus:Z

.field private blacklist mAuthStatus:Z

.field private blacklist mConnected:Z

.field private blacklist mKeyboardEnable:Z

.field private blacklist mKeyboardVersion:Ljava/lang/String;

.field private blacklist mLidStatus:Z

.field private blacklist mMCUVersion:Ljava/lang/String;

.field private blacklist mTabletStatus:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 125
    new-instance v0, Lmiui/hardware/input/MiuiKeyboardStatus$1;

    invoke-direct {v0}, Lmiui/hardware/input/MiuiKeyboardStatus$1;-><init>()V

    sput-object v0, Lmiui/hardware/input/MiuiKeyboardStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mConnected:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mAuthStatus:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mAngleStatus:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mLidStatus:Z

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mTabletStatus:Z

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mKeyboardEnable:Z

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mMCUVersion:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mKeyboardVersion:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor blacklist <init>(ZZZZZZLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "connected"    # Z
    .param p2, "authStatus"    # Z
    .param p3, "angleStatus"    # Z
    .param p4, "lidStatus"    # Z
    .param p5, "tabletStatus"    # Z
    .param p6, "keyboardEnable"    # Z
    .param p7, "mcuVersion"    # Ljava/lang/String;
    .param p8, "keyboardVersion"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mConnected:Z

    .line 34
    iput-boolean p2, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mAuthStatus:Z

    .line 35
    iput-boolean p3, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mAngleStatus:Z

    .line 36
    iput-boolean p4, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mLidStatus:Z

    .line 37
    iput-boolean p5, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mTabletStatus:Z

    .line 38
    iput-boolean p6, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mKeyboardEnable:Z

    .line 39
    iput-object p7, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mMCUVersion:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mKeyboardVersion:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getKeyboardVersion()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mKeyboardVersion:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMCUVersion()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mMCUVersion:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isAngleStatusWork()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mAngleStatus:Z

    return v0
.end method

.method public blacklist isAuthStatus()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mAuthStatus:Z

    return v0
.end method

.method public blacklist isConnected()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mConnected:Z

    return v0
.end method

.method public blacklist isKeyboardEnable()Z
    .registers 2

    .line 84
    iget-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mKeyboardEnable:Z

    return v0
.end method

.method public blacklist isLidStatus()Z
    .registers 2

    .line 68
    iget-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mLidStatus:Z

    return v0
.end method

.method public blacklist isTabletStatus()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mTabletStatus:Z

    return v0
.end method

.method public blacklist setAngleStatus(Z)V
    .registers 2
    .param p1, "angleStatus"    # Z

    .line 64
    iput-boolean p1, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mAngleStatus:Z

    .line 65
    return-void
.end method

.method public blacklist setAuthStatus(Z)V
    .registers 2
    .param p1, "authStatus"    # Z

    .line 56
    iput-boolean p1, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mAuthStatus:Z

    .line 57
    return-void
.end method

.method public blacklist setConnected(Z)V
    .registers 2
    .param p1, "connected"    # Z

    .line 48
    iput-boolean p1, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mConnected:Z

    .line 49
    return-void
.end method

.method public blacklist setKeyboardEnable(Z)V
    .registers 2
    .param p1, "keyboardEnable"    # Z

    .line 88
    iput-boolean p1, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mKeyboardEnable:Z

    .line 89
    return-void
.end method

.method public blacklist setKeyboardVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "keyboardVersion"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mKeyboardVersion:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public blacklist setLidStatus(Z)V
    .registers 2
    .param p1, "lidStatus"    # Z

    .line 72
    iput-boolean p1, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mLidStatus:Z

    .line 73
    return-void
.end method

.method public blacklist setMCUVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "MCUVersion"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mMCUVersion:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public blacklist setTabletStatus(Z)V
    .registers 2
    .param p1, "tabletStatus"    # Z

    .line 80
    iput-boolean p1, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mTabletStatus:Z

    .line 81
    return-void
.end method

.method public blacklist shouldIgnoreKeyboard()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mKeyboardEnable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Miui KeyboardStatus{authStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", angleStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mAuthStatus:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mAngleStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lidStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mLidStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tabletStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mTabletStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyboardEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mKeyboardEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mcuVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mMCUVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyboardVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mKeyboardVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 144
    iget-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mConnected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 145
    iget-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mAuthStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 146
    iget-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mAngleStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 147
    iget-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mLidStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 148
    iget-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mTabletStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 149
    iget-boolean v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mKeyboardEnable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 150
    iget-object v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mMCUVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lmiui/hardware/input/MiuiKeyboardStatus;->mKeyboardVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return-void
.end method
