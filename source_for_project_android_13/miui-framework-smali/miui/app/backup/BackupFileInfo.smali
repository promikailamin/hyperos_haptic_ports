.class public Lmiui/app/backup/BackupFileInfo;
.super Ljava/lang/Object;
.source "BackupFileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/app/backup/BackupFileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist isDir:Z

.field public final blacklist md5:Ljava/lang/String;

.field public final blacklist path:Ljava/lang/String;

.field public final blacklist sha1:Ljava/lang/String;

.field public final blacklist size:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Lmiui/app/backup/BackupFileInfo$1;

    invoke-direct {v0}, Lmiui/app/backup/BackupFileInfo$1;-><init>()V

    sput-object v0, Lmiui/app/backup/BackupFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/backup/BackupFileInfo;->path:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lmiui/app/backup/BackupFileInfo;->isDir:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/backup/BackupFileInfo;->md5:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/backup/BackupFileInfo;->sha1:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/app/backup/BackupFileInfo;->size:J

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isDir"    # Z

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lmiui/app/backup/BackupFileInfo;->path:Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lmiui/app/backup/BackupFileInfo;->isDir:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/backup/BackupFileInfo;->md5:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lmiui/app/backup/BackupFileInfo;->sha1:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/app/backup/BackupFileInfo;->size:J

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isDir"    # Z
    .param p3, "md5"    # Ljava/lang/String;
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "size"    # J

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lmiui/app/backup/BackupFileInfo;->path:Ljava/lang/String;

    .line 26
    iput-boolean p2, p0, Lmiui/app/backup/BackupFileInfo;->isDir:Z

    .line 27
    iput-object p3, p0, Lmiui/app/backup/BackupFileInfo;->md5:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lmiui/app/backup/BackupFileInfo;->sha1:Ljava/lang/String;

    .line 29
    iput-wide p5, p0, Lmiui/app/backup/BackupFileInfo;->size:J

    .line 30
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
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 39
    iget-object v0, p0, Lmiui/app/backup/BackupFileInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-boolean v0, p0, Lmiui/app/backup/BackupFileInfo;->isDir:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 41
    iget-object v0, p0, Lmiui/app/backup/BackupFileInfo;->md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lmiui/app/backup/BackupFileInfo;->sha1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-wide v0, p0, Lmiui/app/backup/BackupFileInfo;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    return-void
.end method
