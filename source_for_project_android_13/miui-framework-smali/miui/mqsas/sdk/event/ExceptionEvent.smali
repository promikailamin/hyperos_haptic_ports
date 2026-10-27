.class public Lmiui/mqsas/sdk/event/ExceptionEvent;
.super Ljava/lang/Object;
.source "ExceptionEvent.java"


# static fields
.field public static final blacklist IMPORTANT_PROCESS:I = 0x1

.field public static final blacklist NORMAL_PROCESS:I = 0x2

.field public static final blacklist SEVERITY_FATAL:I = 0x0

.field public static final blacklist SEVERITY_MAJOR:I = 0x1

.field public static final blacklist SEVERITY_MINOR:I = 0x3

.field public static final blacklist SEVERITY_NORMAL:I = 0x2

.field public static final blacklist UNKWOWN_PROCESS:I = -0x1

.field public static final blacklist VERY_IMPORTANT_PROCESS:I


# instance fields
.field private blacklist extraFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mDetails:Ljava/lang/String;

.field protected blacklist mDigest:Ljava/lang/String;

.field public final blacklist mImportantProcesses:[Ljava/lang/String;

.field protected blacklist mIsSystem:Z

.field protected blacklist mIsSystemApp:Z

.field protected blacklist mIsUpload:Z

.field protected blacklist mKeyWord:Ljava/lang/String;

.field protected blacklist mLogName:Ljava/lang/String;

.field protected blacklist mMTKdbg:I

.field protected blacklist mMd5sum:Ljava/lang/String;

.field protected blacklist mPackageName:Ljava/lang/String;

.field protected blacklist mPid:I

.field protected blacklist mProcessName:Ljava/lang/String;

.field protected blacklist mSummary:Ljava/lang/String;

.field protected blacklist mTimeStamp:J

.field protected blacklist mType:I

.field public final blacklist mVerytImportantProcesses:[Ljava/lang/String;

.field protected blacklist mZygotePid:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 6

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "system_server"

    const-string v1, "zygote"

    const-string v2, "zygote64"

    const-string v3, "surfaceflinger"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mVerytImportantProcesses:[Ljava/lang/String;

    .line 36
    const-string v0, "com.android.systemui"

    const-string v1, "com.miui.home"

    const-string v2, "com.android.phone"

    const-string v3, "mediaserver"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mImportantProcesses:[Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->initType()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    .line 87
    const-string v1, ""

    iput-object v1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    .line 90
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    .line 91
    iput-object v1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    .line 96
    iput-boolean v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    .line 97
    iput-object v1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mZygotePid:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mMd5sum:Ljava/lang/String;

    .line 99
    iput-boolean v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystemApp:Z

    .line 100
    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mMTKdbg:I

    .line 101
    return-void
.end method


# virtual methods
.method public blacklist getDetails()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDigest()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEventSeverity()I
    .registers 2

    .line 204
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getExtraFiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->extraFiles:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getKeyWord()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLogName()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMTKdbg()I
    .registers 2

    .line 230
    iget v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mMTKdbg:I

    return v0
.end method

.method public blacklist getMd5sum()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mMd5sum:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPid()I
    .registers 2

    .line 116
    iget v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    return v0
.end method

.method public blacklist getProcessName()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSummary()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTimeStamp()J
    .registers 3

    .line 148
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    return-wide v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 104
    iget v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    return v0
.end method

.method public blacklist getZygotePid()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mZygotePid:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist initType()V
    .registers 2

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    .line 113
    return-void
.end method

.method public blacklist isSystem()Z
    .registers 2

    .line 140
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    return v0
.end method

.method public blacklist isSystemApp()Z
    .registers 2

    .line 218
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystemApp:Z

    return v0
.end method

.method public blacklist isUpload()Z
    .registers 2

    .line 196
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    return v0
.end method

.method public blacklist judgeProcessLevel()I
    .registers 7

    .line 44
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_46

    .line 48
    :cond_9
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mVerytImportantProcesses:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_27

    aget-object v4, v0, v3

    .line 49
    .local v4, "process":Ljava/lang/String;
    iget-object v5, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    iget-object v5, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_26

    .line 48
    .end local v4    # "process":Ljava/lang/String;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 50
    .restart local v4    # "process":Ljava/lang/String;
    :cond_26
    :goto_26
    return v2

    .line 54
    .end local v4    # "process":Ljava/lang/String;
    :cond_27
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mImportantProcesses:[Ljava/lang/String;

    array-length v1, v0

    :goto_2a
    if-ge v2, v1, :cond_44

    aget-object v3, v0, v2

    .line 55
    .local v3, "process":Ljava/lang/String;
    iget-object v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    goto :goto_42

    .line 54
    .end local v3    # "process":Ljava/lang/String;
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 56
    .restart local v3    # "process":Ljava/lang/String;
    :cond_42
    :goto_42
    const/4 v0, 0x1

    return v0

    .line 60
    .end local v3    # "process":Ljava/lang/String;
    :cond_44
    const/4 v0, 0x2

    return v0

    .line 45
    :cond_46
    :goto_46
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist setDetails(Ljava/lang/String;)V
    .registers 2
    .param p1, "mDetails"    # Ljava/lang/String;

    .line 168
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public blacklist setDigest(Ljava/lang/String;)V
    .registers 2
    .param p1, "mDigest"    # Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public blacklist setExtraFiles(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p1, "extraFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->extraFiles:Ljava/util/List;

    .line 27
    return-void
.end method

.method public blacklist setKeyWord(Ljava/lang/String;)V
    .registers 2
    .param p1, "mKeyWord"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public blacklist setLogName(Ljava/lang/String;)V
    .registers 2
    .param p1, "mLogName"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public blacklist setMTKdbg(I)V
    .registers 2
    .param p1, "mMTKdbg"    # I

    .line 226
    iput p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mMTKdbg:I

    .line 227
    return-void
.end method

.method public blacklist setMd5sum(Ljava/lang/String;)V
    .registers 2
    .param p1, "mMd5sum"    # Ljava/lang/String;

    .line 215
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mMd5sum:Ljava/lang/String;

    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "mPackageName"    # Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public blacklist setPid(I)V
    .registers 2
    .param p1, "mPid"    # I

    .line 120
    iput p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    .line 121
    return-void
.end method

.method public blacklist setProcessName(Ljava/lang/String;)V
    .registers 2
    .param p1, "mProcessName"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public blacklist setSummary(Ljava/lang/String;)V
    .registers 2
    .param p1, "mSummary"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public blacklist setSystem(Z)V
    .registers 2
    .param p1, "system"    # Z

    .line 144
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    .line 145
    return-void
.end method

.method public blacklist setSystemApp(Z)V
    .registers 2
    .param p1, "systemApp"    # Z

    .line 222
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystemApp:Z

    .line 223
    return-void
.end method

.method public blacklist setTimeStamp(J)V
    .registers 3
    .param p1, "mTimeStamp"    # J

    .line 152
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    .line 153
    return-void
.end method

.method public blacklist setType(I)V
    .registers 2
    .param p1, "mType"    # I

    .line 108
    iput p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    .line 109
    return-void
.end method

.method public blacklist setUpload(Z)V
    .registers 2
    .param p1, "upload"    # Z

    .line 200
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    .line 201
    return-void
.end method

.method public blacklist setZygotePid(Ljava/lang/String;)V
    .registers 2
    .param p1, "mZygotePid"    # Ljava/lang/String;

    .line 210
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mZygotePid:Ljava/lang/String;

    .line 211
    return-void
.end method
