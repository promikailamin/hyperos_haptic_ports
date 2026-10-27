.class public final Landroid/os/BatteryStats$HistoryStepDetails;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryStepDetails"
.end annotation


# instance fields
.field public greylist-max-o appCpuSTime1:I

.field public greylist-max-o appCpuSTime2:I

.field public greylist-max-o appCpuSTime3:I

.field public greylist-max-o appCpuUTime1:I

.field public greylist-max-o appCpuUTime2:I

.field public greylist-max-o appCpuUTime3:I

.field public greylist-max-o appCpuUid1:I

.field public greylist-max-o appCpuUid2:I

.field public greylist-max-o appCpuUid3:I

.field public greylist-max-o statIOWaitTime:I

.field public greylist-max-o statIdlTime:I

.field public greylist-max-o statIrqTime:I

.field public greylist-max-o statSoftIrqTime:I

.field public greylist-max-o statSubsystemPowerState:Ljava/lang/String;

.field public greylist-max-o statSystemTime:I

.field public greylist-max-o statUserTime:I

.field public greylist-max-o systemTime:I

.field public greylist-max-o userTime:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1717
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryStepDetails;->clear()V

    .line 1718
    return-void
.end method


# virtual methods
.method public greylist-max-o clear()V
    .registers 3

    .line 1721
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    .line 1722
    const/4 v1, -0x1

    iput v1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iput v1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 1723
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 1725
    return-void
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1749
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    .line 1750
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    .line 1751
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 1752
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 1753
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 1754
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 1755
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 1756
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 1757
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 1758
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 1759
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 1760
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    .line 1761
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    .line 1762
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    .line 1763
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    .line 1764
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    .line 1765
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    .line 1766
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    .line 1767
    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;

    .line 1728
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1729
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1730
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1731
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1732
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1733
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1734
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1735
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1736
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1737
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1738
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1740
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1741
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1742
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1743
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1744
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1745
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1746
    return-void
.end method
