.class public Lmiui/io/FileStatCompat;
.super Ljava/lang/Object;
.source "FileStatCompat.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getCreatedTime(Ljava/lang/String;)J
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .line 23
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_ctime:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_a

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    .line 24
    :catch_a
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    return-wide v1
.end method
