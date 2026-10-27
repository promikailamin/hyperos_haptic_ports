.class final Lcom/android/server/pm/OriginInfo;
.super Ljava/lang/Object;
.source "OriginInfo.java"


# instance fields
.field final mExisting:Z

.field final mFile:Ljava/io/File;

.field final mResolvedFile:Ljava/io/File;

.field final mResolvedPath:Ljava/lang/String;

.field final mStaged:Z

.field mTiming:Lcom/android/server/pm/InstallationTiming;


# direct methods
.method private constructor <init>(Ljava/io/File;ZZ)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "staged"    # Z
    .param p3, "existing"    # Z

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 71
    iput-boolean p2, p0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    .line 72
    iput-boolean p3, p0, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    .line 74
    if-eqz p1, :cond_14

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    goto :goto_19

    .line 78
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 81
    :goto_19
    return-void
.end method

.method static fromExistingFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .line 62
    new-instance v0, Lcom/android/server/pm/OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method

.method static fromNothing()Lcom/android/server/pm/OriginInfo;
    .registers 3

    .line 58
    new-instance v0, Lcom/android/server/pm/OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method

.method static fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .line 66
    new-instance v0, Lcom/android/server/pm/OriginInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method


# virtual methods
.method getTiming()Lcom/android/server/pm/InstallationTiming;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/android/server/pm/OriginInfo;->mTiming:Lcom/android/server/pm/InstallationTiming;

    if-nez v0, :cond_b

    .line 50
    new-instance v0, Lcom/android/server/pm/InstallationTiming;

    invoke-direct {v0}, Lcom/android/server/pm/InstallationTiming;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/OriginInfo;->mTiming:Lcom/android/server/pm/InstallationTiming;

    .line 52
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/OriginInfo;->mTiming:Lcom/android/server/pm/InstallationTiming;

    return-object v0
.end method
