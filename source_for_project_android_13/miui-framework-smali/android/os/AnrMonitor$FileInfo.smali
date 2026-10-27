.class public Landroid/os/AnrMonitor$FileInfo;
.super Ljava/lang/Object;
.source "AnrMonitor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AnrMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/os/AnrMonitor$FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mFile:Ljava/io/File;

.field private blacklist mModifiedTime:J


# direct methods
.method public constructor blacklist <init>(Ljava/io/File;J)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "modifiedTime"    # J

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    iput-object p1, p0, Landroid/os/AnrMonitor$FileInfo;->mFile:Ljava/io/File;

    .line 1061
    iput-wide p2, p0, Landroid/os/AnrMonitor$FileInfo;->mModifiedTime:J

    .line 1062
    return-void
.end method


# virtual methods
.method public blacklist compareTo(JJ)I
    .registers 6
    .param p1, "x"    # J
    .param p3, "y"    # J

    .line 1078
    cmp-long v0, p1, p3

    if-gez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_d

    :cond_6
    cmp-long v0, p1, p3

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public blacklist compareTo(Landroid/os/AnrMonitor$FileInfo;)I
    .registers 6
    .param p1, "another"    # Landroid/os/AnrMonitor$FileInfo;

    .line 1074
    invoke-virtual {p1}, Landroid/os/AnrMonitor$FileInfo;->getModifiedTime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/AnrMonitor$FileInfo;->mModifiedTime:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/AnrMonitor$FileInfo;->compareTo(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1055
    check-cast p1, Landroid/os/AnrMonitor$FileInfo;

    invoke-virtual {p0, p1}, Landroid/os/AnrMonitor$FileInfo;->compareTo(Landroid/os/AnrMonitor$FileInfo;)I

    move-result p1

    return p1
.end method

.method public blacklist getFile()Ljava/io/File;
    .registers 2

    .line 1065
    iget-object v0, p0, Landroid/os/AnrMonitor$FileInfo;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public blacklist getModifiedTime()J
    .registers 3

    .line 1069
    iget-wide v0, p0, Landroid/os/AnrMonitor$FileInfo;->mModifiedTime:J

    return-wide v0
.end method
