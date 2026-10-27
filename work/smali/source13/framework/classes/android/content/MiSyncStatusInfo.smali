.class public Landroid/content/MiSyncStatusInfo;
.super Ljava/lang/Object;
.source "MiSyncStatusInfo.java"


# static fields
.field static final blacklist MICLOUD_VERSION:I = 0x2


# instance fields
.field public blacklist lastResultMessage:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/MiSyncStatusInfo;->lastResultMessage:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/MiSyncStatusInfo;)V
    .registers 3
    .param p1, "other"    # Landroid/content/MiSyncStatusInfo;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget-object v0, p1, Landroid/content/MiSyncStatusInfo;->lastResultMessage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/MiSyncStatusInfo;->lastResultMessage:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "micloudVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_e

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 34
    :cond_e
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/MiSyncStatusInfo;->lastResultMessage:Ljava/lang/String;

    goto :goto_28

    .line 37
    :cond_1b
    const/4 v1, 0x2

    if-lt v0, v1, :cond_25

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/MiSyncStatusInfo;->lastResultMessage:Ljava/lang/String;

    goto :goto_28

    .line 40
    :cond_25
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/MiSyncStatusInfo;->lastResultMessage:Ljava/lang/String;

    .line 42
    :goto_28
    return-void
.end method


# virtual methods
.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 49
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v0, p0, Landroid/content/MiSyncStatusInfo;->lastResultMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return-void
.end method
