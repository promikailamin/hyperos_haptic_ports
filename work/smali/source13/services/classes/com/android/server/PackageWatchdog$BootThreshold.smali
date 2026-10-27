.class Lcom/android/server/PackageWatchdog$BootThreshold;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BootThreshold"
.end annotation


# instance fields
.field private final mBootTriggerCount:I

.field private final mTriggerWindow:J

.field final synthetic this$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/PackageWatchdog;IJ)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/PackageWatchdog;
    .param p2, "bootTriggerCount"    # I
    .param p3, "triggerWindow"    # J

    .line 1706
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1707
    iput p2, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mBootTriggerCount:I

    .line 1708
    iput-wide p3, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mTriggerWindow:J

    .line 1709
    return-void
.end method

.method private getCount()I
    .registers 3

    .line 1717
    const-string/jumbo v0, "sys.rescue_boot_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setCount(I)V
    .registers 4
    .param p1, "count"    # I

    .line 1721
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sys.rescue_boot_count"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    return-void
.end method


# virtual methods
.method public getMitigationCount()I
    .registers 3

    .line 1729
    const-string/jumbo v0, "sys.boot_mitigation_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMitigationStart()J
    .registers 4

    .line 1741
    const-string/jumbo v0, "sys.boot_mitigation_start"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStart()J
    .registers 4

    .line 1725
    const-string/jumbo v0, "sys.rescue_boot_start"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementAndTest()Z
    .registers 9

    .line 1778
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->readMitigationCountFromMetadataIfNecessary()V

    .line 1779
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->-$$Nest$fgetmSystemClock(Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$SystemClock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1780
    .local v0, "now":J
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getStart()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_26

    .line 1781
    const-string v2, "PackageWatchdog"

    const-string v3, "Window was less than zero. Resetting start to current time."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setStart(J)V

    .line 1783
    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setMitigationStart(J)V

    .line 1785
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getMitigationStart()J

    move-result-wide v2

    sub-long v2, v0, v2

    sget-wide v4, Lcom/android/server/PackageWatchdog;->DEFAULT_DEESCALATION_WINDOW_MS:J

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-lez v2, :cond_39

    .line 1786
    invoke-virtual {p0, v3}, Lcom/android/server/PackageWatchdog$BootThreshold;->setMitigationCount(I)V

    .line 1787
    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setMitigationStart(J)V

    .line 1789
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getStart()J

    move-result-wide v4

    sub-long v4, v0, v4

    .line 1790
    .local v4, "window":J
    iget-wide v6, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mTriggerWindow:J

    cmp-long v2, v4, v6

    const/4 v6, 0x1

    if-ltz v2, :cond_4d

    .line 1791
    invoke-direct {p0, v6}, Lcom/android/server/PackageWatchdog$BootThreshold;->setCount(I)V

    .line 1792
    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setStart(J)V

    .line 1793
    return v3

    .line 1795
    :cond_4d
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getCount()I

    move-result v2

    add-int/2addr v2, v6

    .line 1796
    .local v2, "count":I
    invoke-direct {p0, v2}, Lcom/android/server/PackageWatchdog$BootThreshold;->setCount(I)V

    .line 1797
    invoke-static {v3, v2, v4, v5}, Lcom/android/server/EventLogTags;->writeRescueNote(IIJ)V

    .line 1798
    iget v7, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mBootTriggerCount:I

    if-lt v2, v7, :cond_5d

    move v3, v6

    :cond_5d
    return v3
.end method

.method public readMitigationCountFromMetadataIfNecessary()V
    .registers 5

    .line 1763
    new-instance v0, Ljava/io/File;

    const-string v1, "/metadata/watchdog/mitigation_count.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1764
    .local v0, "bootPropsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1765
    :try_start_d
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_34

    move-object v1, v2

    .line 1766
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1767
    .local v2, "mitigationCount":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/PackageWatchdog$BootThreshold;->setMitigationCount(I)V

    .line 1768
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_2a

    .line 1769
    .end local v2    # "mitigationCount":Ljava/lang/String;
    :try_start_26
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_34

    .line 1771
    .end local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_4d

    .line 1765
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_2a
    move-exception v2

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception v3

    :try_start_30
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "bootPropsFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/PackageWatchdog$BootThreshold;
    :goto_33
    throw v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_34} :catch_34

    .line 1769
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "bootPropsFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/PackageWatchdog$BootThreshold;
    :catch_34
    move-exception v1

    .line 1770
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read metadata file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageWatchdog"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4d
    :goto_4d
    return-void
.end method

.method public reset()V
    .registers 3

    .line 1712
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setStart(J)V

    .line 1713
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog$BootThreshold;->setCount(I)V

    .line 1714
    return-void
.end method

.method public saveMitigationCountToMetadata()V
    .registers 4

    .line 1755
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/metadata/watchdog/mitigation_count.txt"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_25

    .line 1756
    .local v0, "writer":Ljava/io/BufferedWriter;
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getMitigationCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1b

    .line 1757
    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_25

    .line 1759
    .end local v0    # "writer":Ljava/io/BufferedWriter;
    goto :goto_3e

    .line 1755
    .restart local v0    # "writer":Ljava/io/BufferedWriter;
    :catchall_1b
    move-exception v1

    :try_start_1c
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v2

    :try_start_21
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/PackageWatchdog$BootThreshold;
    :goto_24
    throw v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_25

    .line 1757
    .end local v0    # "writer":Ljava/io/BufferedWriter;
    .restart local p0    # "this":Lcom/android/server/PackageWatchdog$BootThreshold;
    :catch_25
    move-exception v0

    .line 1758
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not save metadata to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageWatchdog"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method public setMitigationCount(I)V
    .registers 4
    .param p1, "count"    # I

    .line 1745
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sys.boot_mitigation_count"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    return-void
.end method

.method public setMitigationStart(J)V
    .registers 4
    .param p1, "start"    # J

    .line 1737
    const-string/jumbo v0, "sys.boot_mitigation_start"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/PackageWatchdog$BootThreshold;->setPropertyStart(Ljava/lang/String;J)V

    .line 1738
    return-void
.end method

.method public setPropertyStart(Ljava/lang/String;J)V
    .registers 13
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "start"    # J

    .line 1749
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->-$$Nest$fgetmSystemClock(Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$SystemClock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1750
    .local v7, "now":J
    const-wide/16 v3, 0x0

    move-wide v1, p2

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    .line 1751
    .local v0, "newStart":J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    return-void
.end method

.method public setStart(J)V
    .registers 4
    .param p1, "start"    # J

    .line 1733
    const-string/jumbo v0, "sys.rescue_boot_start"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/PackageWatchdog$BootThreshold;->setPropertyStart(Ljava/lang/String;J)V

    .line 1734
    return-void
.end method
