.class public Landroid/app/backup/FullRestoreDataInput;
.super Ljava/lang/Object;
.source "FullRestoreDataInput.java"


# instance fields
.field private final blacklist mAppVersionCode:J

.field private final blacklist mContentVersion:Ljava/lang/String;

.field private final blacklist mData:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mDestination:Ljava/io/File;

.field private final blacklist mMode:J

.field private final blacklist mModificationTime:J

.field private final blacklist mSize:J

.field private final blacklist mTransportFlags:I

.field private final blacklist mType:I


# direct methods
.method public constructor blacklist <init>(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJJILjava/lang/String;)V
    .registers 14

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/app/backup/FullRestoreDataInput;->mData:Landroid/os/ParcelFileDescriptor;

    .line 58
    iput-wide p2, p0, Landroid/app/backup/FullRestoreDataInput;->mSize:J

    .line 59
    iput-object p4, p0, Landroid/app/backup/FullRestoreDataInput;->mDestination:Ljava/io/File;

    .line 60
    iput p5, p0, Landroid/app/backup/FullRestoreDataInput;->mType:I

    .line 61
    iput-wide p6, p0, Landroid/app/backup/FullRestoreDataInput;->mMode:J

    .line 62
    iput-wide p8, p0, Landroid/app/backup/FullRestoreDataInput;->mModificationTime:J

    .line 63
    iput-wide p10, p0, Landroid/app/backup/FullRestoreDataInput;->mAppVersionCode:J

    .line 64
    iput p12, p0, Landroid/app/backup/FullRestoreDataInput;->mTransportFlags:I

    .line 65
    iput-object p13, p0, Landroid/app/backup/FullRestoreDataInput;->mContentVersion:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist getAppVersionCode()J
    .registers 3

    .line 113
    iget-wide v0, p0, Landroid/app/backup/FullRestoreDataInput;->mAppVersionCode:J

    return-wide v0
.end method

.method public whitelist getContentVersion()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/app/backup/FullRestoreDataInput;->mContentVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getData()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/app/backup/FullRestoreDataInput;->mData:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist getDestination()Ljava/io/File;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/app/backup/FullRestoreDataInput;->mDestination:Ljava/io/File;

    return-object v0
.end method

.method public whitelist getMode()J
    .registers 3

    .line 99
    iget-wide v0, p0, Landroid/app/backup/FullRestoreDataInput;->mMode:J

    return-wide v0
.end method

.method public whitelist getModificationTimeSeconds()J
    .registers 3

    .line 108
    iget-wide v0, p0, Landroid/app/backup/FullRestoreDataInput;->mModificationTime:J

    return-wide v0
.end method

.method public whitelist getSize()J
    .registers 3

    .line 76
    iget-wide v0, p0, Landroid/app/backup/FullRestoreDataInput;->mSize:J

    return-wide v0
.end method

.method public whitelist getTransportFlags()I
    .registers 2

    .line 122
    iget v0, p0, Landroid/app/backup/FullRestoreDataInput;->mTransportFlags:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/app/backup/FullRestoreDataInput;->mType:I

    return v0
.end method
