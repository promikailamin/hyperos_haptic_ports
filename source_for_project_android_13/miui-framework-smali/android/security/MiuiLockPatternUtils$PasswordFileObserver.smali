.class Landroid/security/MiuiLockPatternUtils$PasswordFileObserver;
.super Landroid/os/FileObserver;
.source "MiuiLockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/MiuiLockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordFileObserver"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mask"    # I

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 99
    return-void
.end method


# virtual methods
.method public whitelist onEvent(ILjava/lang/String;)V
    .registers 11
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 103
    invoke-static {}, Landroid/security/MiuiLockPatternUtils;->-$$Nest$sfgetmMiuiLockPatternDatas()[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    move-result-object v0

    array-length v0, v0

    .line 104
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_54

    .line 105
    invoke-static {}, Landroid/security/MiuiLockPatternUtils;->-$$Nest$sfgetmMiuiLockPatternDatas()[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    move-result-object v2

    aget-object v2, v2, v1

    .line 106
    .local v2, "data":Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;
    iget-object v3, v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFile:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "password file changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiLockPatternUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v3, v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v4, Ljava/io/File;

    iget-object v5, v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4d

    const/4 v4, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v4, 0x0

    :goto_4e
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    .end local v2    # "data":Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 111
    .end local v1    # "i":I
    :cond_54
    return-void
.end method
