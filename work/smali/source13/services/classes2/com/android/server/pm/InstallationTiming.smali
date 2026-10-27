.class Lcom/android/server/pm/InstallationTiming;
.super Ljava/lang/Object;
.source "InstallationTiming.java"


# static fields
.field private static final DEBUG:Z = false

.field static final INIT_TOTAL_INSTALLATION_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "InstallationTiming"


# instance fields
.field private collectingCerts:I

.field private createdAt:J

.field private dexopt:I

.field private extractNativeLib:I

.field private extractNativeLibStartedAt:J

.field private fileCopying:I

.field private googleVerification:I

.field private installer:Ljava/lang/String;

.field private miuiVerification:I

.field private phraseStartedAt:J

.field private pkg:Ljava/lang/String;

.field private total:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/pm/InstallationTiming;->pkg:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/server/pm/InstallationTiming;->installer:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/InstallationTiming;->fileCopying:I

    .line 21
    iput v0, p0, Lcom/android/server/pm/InstallationTiming;->collectingCerts:I

    .line 22
    iput v0, p0, Lcom/android/server/pm/InstallationTiming;->miuiVerification:I

    .line 23
    iput v0, p0, Lcom/android/server/pm/InstallationTiming;->googleVerification:I

    .line 24
    iput v0, p0, Lcom/android/server/pm/InstallationTiming;->dexopt:I

    .line 25
    iput v0, p0, Lcom/android/server/pm/InstallationTiming;->total:I

    .line 26
    iput v0, p0, Lcom/android/server/pm/InstallationTiming;->extractNativeLib:I

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/InstallationTiming;->createdAt:J

    .line 29
    iput-wide v0, p0, Lcom/android/server/pm/InstallationTiming;->phraseStartedAt:J

    .line 30
    iput-wide v0, p0, Lcom/android/server/pm/InstallationTiming;->extractNativeLibStartedAt:J

    return-void
.end method


# virtual methods
.method dump()V
    .registers 4

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/InstallationTiming;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/InstallationTiming;->installer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallationTiming;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallationTiming"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method getCollectingCerts()I
    .registers 2

    .line 122
    iget v0, p0, Lcom/android/server/pm/InstallationTiming;->collectingCerts:I

    return v0
.end method

.method getDexopt()I
    .registers 2

    .line 134
    iget v0, p0, Lcom/android/server/pm/InstallationTiming;->dexopt:I

    return v0
.end method

.method getExtractNativeLib()I
    .registers 2

    .line 142
    iget v0, p0, Lcom/android/server/pm/InstallationTiming;->extractNativeLib:I

    return v0
.end method

.method getFileCopying()I
    .registers 2

    .line 118
    iget v0, p0, Lcom/android/server/pm/InstallationTiming;->fileCopying:I

    return v0
.end method

.method getGoogleVerification()I
    .registers 2

    .line 130
    iget v0, p0, Lcom/android/server/pm/InstallationTiming;->googleVerification:I

    return v0
.end method

.method getMiuiVerification()I
    .registers 2

    .line 126
    iget v0, p0, Lcom/android/server/pm/InstallationTiming;->miuiVerification:I

    return v0
.end method

.method getTotal()I
    .registers 2

    .line 138
    iget v0, p0, Lcom/android/server/pm/InstallationTiming;->total:I

    return v0
.end method

.method isFinished()Z
    .registers 2

    .line 33
    iget v0, p0, Lcom/android/server/pm/InstallationTiming;->total:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method setCollectCertsFinished()V
    .registers 7

    .line 69
    iget v0, p0, Lcom/android/server/pm/InstallationTiming;->collectingCerts:I

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/pm/InstallationTiming;->phraseStartedAt:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/pm/InstallationTiming;->collectingCerts:I

    .line 73
    return-void
.end method

.method setCollectCertsStarted()V
    .registers 3

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/InstallationTiming;->phraseStartedAt:J

    .line 50
    return-void
.end method

.method setDexoptFinished()V
    .registers 5

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/InstallationTiming;->phraseStartedAt:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/pm/InstallationTiming;->dexopt:I

    .line 108
    return-void
.end method

.method setDexoptStarted()V
    .registers 3

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/InstallationTiming;->phraseStartedAt:J

    .line 66
    return-void
.end method

.method setExtractNativeLibFinished()V
    .registers 5

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/InstallationTiming;->extractNativeLibStartedAt:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/pm/InstallationTiming;->extractNativeLib:I

    .line 80
    return-void
.end method

.method setExtractNativeLibStarted()V
    .registers 3

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/InstallationTiming;->extractNativeLibStartedAt:J

    .line 54
    return-void
.end method

.method setFileCopied()V
    .registers 5

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/InstallationTiming;->createdAt:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/pm/InstallationTiming;->fileCopying:I

    .line 87
    return-void
.end method

.method setFinished()V
    .registers 5

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/InstallationTiming;->createdAt:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/pm/InstallationTiming;->total:I

    .line 115
    return-void
.end method

.method setGoogleVerificationFinished()V
    .registers 5

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/InstallationTiming;->phraseStartedAt:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/pm/InstallationTiming;->googleVerification:I

    .line 101
    return-void
.end method

.method setGoogleVerificationStarted()V
    .registers 3

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/InstallationTiming;->phraseStartedAt:J

    .line 62
    return-void
.end method

.method setInstaller(Ljava/lang/String;)V
    .registers 2
    .param p1, "installer"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/android/server/pm/InstallationTiming;->installer:Ljava/lang/String;

    .line 42
    return-void
.end method

.method setMiuiVerificationFinished()V
    .registers 5

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/InstallationTiming;->phraseStartedAt:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/pm/InstallationTiming;->miuiVerification:I

    .line 94
    return-void
.end method

.method setMiuiVerificationStarted()V
    .registers 3

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/InstallationTiming;->phraseStartedAt:J

    .line 58
    return-void
.end method

.method setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/android/server/pm/InstallationTiming;->pkg:Ljava/lang/String;

    .line 38
    return-void
.end method

.method setStarted()V
    .registers 3

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/InstallationTiming;->createdAt:J

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 151
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/pm/InstallationTiming;->total:I

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/pm/InstallationTiming;->fileCopying:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/pm/InstallationTiming;->collectingCerts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/pm/InstallationTiming;->extractNativeLib:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/pm/InstallationTiming;->miuiVerification:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/pm/InstallationTiming;->googleVerification:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/pm/InstallationTiming;->dexopt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 151
    const-string v2, "%d|%d|%d|%d|%d|%d|%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
