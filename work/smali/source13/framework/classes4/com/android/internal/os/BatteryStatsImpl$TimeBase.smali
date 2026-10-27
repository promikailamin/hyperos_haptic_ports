.class public Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeBase"
.end annotation


# instance fields
.field protected final blacklist mObservers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mPastRealtimeUs:J

.field protected blacklist mPastUptimeUs:J

.field protected blacklist mRealtimeStartUs:J

.field protected blacklist mRealtimeUs:J

.field protected greylist-max-o mRunning:Z

.field protected blacklist mUnpluggedRealtimeUs:J

.field protected blacklist mUnpluggedUptimeUs:J

.field protected blacklist mUptimeStartUs:J

.field protected blacklist mUptimeUs:J


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 1777
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>(Z)V

    .line 1778
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "isLongList"    # Z

    .line 1772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1773
    if-eqz p1, :cond_b

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_10

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_10
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    .line 1774
    return-void
.end method


# virtual methods
.method public greylist-max-o add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    .line 1781
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1782
    return-void
.end method

.method public greylist-max-o computeRealtime(JI)J
    .registers 8
    .param p1, "curTimeUs"    # J
    .param p3, "which"    # I

    .line 1823
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o computeUptime(JI)J
    .registers 8
    .param p1, "curTimeUs"    # J
    .param p3, "which"    # I

    .line 1819
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1736
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1737
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mRunning="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1738
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1739
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    const-string/jumbo v2, "mUptime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1742
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1744
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    const-string/jumbo v2, "mRealtime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1747
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1749
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    const-string/jumbo v2, "mPastUptime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v2, "mUptimeStart="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1753
    const-string/jumbo v2, "mUnpluggedUptime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1754
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1755
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1756
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1757
    const-string/jumbo v1, "mPastRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    div-long/2addr v1, v4

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v1, "mRealtimeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    div-long/2addr v1, v4

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1760
    const-string/jumbo v1, "mUnpluggedRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    div-long/2addr v1, v4

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1761
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1762
    return-void
.end method

.method public greylist-max-o getRealtime(J)J
    .registers 7
    .param p1, "curTimeUs"    # J

    .line 1835
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 1836
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v2, :cond_b

    .line 1837
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 1839
    :cond_b
    return-wide v0
.end method

.method public greylist-max-o getRealtimeStart()J
    .registers 3

    .line 1847
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    return-wide v0
.end method

.method public greylist-max-o getUptime(J)J
    .registers 7
    .param p1, "curTimeUs"    # J

    .line 1827
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 1828
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v2, :cond_b

    .line 1829
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 1831
    :cond_b
    return-wide v0
.end method

.method public greylist-max-o getUptimeStart()J
    .registers 3

    .line 1843
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    return-wide v0
.end method

.method public greylist-max-o hasObserver(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)Z
    .registers 3
    .param p1, "observer"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    .line 1789
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o init(JJ)V
    .registers 7
    .param p1, "uptimeUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 1793
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    .line 1794
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    .line 1795
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 1796
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 1797
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 1798
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 1799
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 1800
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    .line 1801
    return-void
.end method

.method public greylist-max-o isRunning()Z
    .registers 2

    .line 1851
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 1901
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    .line 1902
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 1903
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 1904
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    .line 1905
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 1906
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 1907
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 1908
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    .line 1909
    return-void
.end method

.method public greylist-max-o readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1890
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    .line 1891
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    .line 1892
    return-void
.end method

.method public greylist-max-o remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    .line 1785
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1786
    return-void
.end method

.method public greylist-max-o reset(JJ)V
    .registers 7
    .param p1, "uptimeUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 1804
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-nez v0, :cond_b

    .line 1805
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 1806
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    goto :goto_1b

    .line 1808
    :cond_b
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 1809
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 1812
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 1814
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    .line 1816
    :goto_1b
    return-void
.end method

.method public greylist-max-o setRunning(ZJJ)Z
    .registers 24
    .param p1, "running"    # Z
    .param p2, "uptimeUs"    # J
    .param p4, "elapsedRealtimeUs"    # J

    .line 1855
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v11, p4

    iget-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eq v4, v1, :cond_6f

    .line 1856
    iput-boolean v1, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 1857
    if-eqz v1, :cond_39

    .line 1858
    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 1859
    iput-wide v11, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 1860
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 1861
    .local v7, "batteryUptimeUs":J
    invoke-virtual {v0, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    .line 1865
    .local v9, "batteryRealtimeUs":J
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1866
    .local v13, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;>;"
    :goto_26
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1867
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    move-wide/from16 v5, p4

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;->onTimeStarted(JJJ)V

    goto :goto_26

    .line 1870
    .end local v7    # "batteryUptimeUs":J
    .end local v9    # "batteryRealtimeUs":J
    .end local v13    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;>;"
    :cond_38
    goto :goto_6d

    .line 1871
    :cond_39
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 1872
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    sub-long v6, v11, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 1873
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v13

    .line 1874
    .local v13, "batteryUptimeUs":J
    invoke-virtual {v0, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v15

    .line 1878
    .local v15, "batteryRealtimeUs":J
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 1879
    .local v17, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;>;"
    :goto_59
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 1880
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    move-wide/from16 v5, p4

    move-wide v7, v13

    move-wide v9, v15

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;->onTimeStopped(JJJ)V

    goto :goto_59

    .line 1884
    .end local v13    # "batteryUptimeUs":J
    .end local v15    # "batteryRealtimeUs":J
    .end local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;>;"
    :cond_6d
    :goto_6d
    const/4 v4, 0x1

    return v4

    .line 1886
    :cond_6f
    const/4 v4, 0x0

    return v4
.end method

.method public greylist-max-o writeSummaryToParcel(Landroid/os/Parcel;JJ)V
    .registers 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "uptimeUs"    # J
    .param p4, "elapsedRealtimeUs"    # J

    .line 1895
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1896
    invoke-virtual {p0, p4, p5, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1897
    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;JJ)V
    .registers 12
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "uptimeUs"    # J
    .param p4, "elapsedRealtimeUs"    # J

    .line 1912
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    .line 1913
    .local v0, "runningUptime":J
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    .line 1914
    .local v2, "runningRealtime":J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1915
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1916
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1917
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1918
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1919
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1920
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1921
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1922
    return-void
.end method
