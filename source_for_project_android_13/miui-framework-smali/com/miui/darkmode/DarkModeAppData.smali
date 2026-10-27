.class public Lcom/miui/darkmode/DarkModeAppData;
.super Ljava/lang/Object;
.source "DarkModeAppData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/darkmode/DarkModeAppData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist createTime:J

.field private blacklist darkModeAppDetailInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/darkmode/DarkModeAppDetailInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lcom/miui/darkmode/DarkModeAppData$1;

    invoke-direct {v0}, Lcom/miui/darkmode/DarkModeAppData$1;-><init>()V

    sput-object v0, Lcom/miui/darkmode/DarkModeAppData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/darkmode/DarkModeAppData;->createTime:J

    .line 60
    sget-object v0, Lcom/miui/darkmode/DarkModeAppDetailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/darkmode/DarkModeAppData;->darkModeAppDetailInfoList:Ljava/util/List;

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCreateTime()J
    .registers 3

    .line 17
    iget-wide v0, p0, Lcom/miui/darkmode/DarkModeAppData;->createTime:J

    return-wide v0
.end method

.method public blacklist getDarkModeAppDetailInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/darkmode/DarkModeAppDetailInfo;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/miui/darkmode/DarkModeAppData;->darkModeAppDetailInfoList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getInfoWithPackageName(Ljava/lang/String;)Lcom/miui/darkmode/DarkModeAppDetailInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    if-eqz p1, :cond_25

    iget-object v1, p0, Lcom/miui/darkmode/DarkModeAppData;->darkModeAppDetailInfoList:Ljava/util/List;

    if-nez v1, :cond_8

    goto :goto_25

    .line 36
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/darkmode/DarkModeAppDetailInfo;

    .line 37
    .local v2, "detailInfo":Lcom/miui/darkmode/DarkModeAppDetailInfo;
    invoke-virtual {v2}, Lcom/miui/darkmode/DarkModeAppDetailInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 38
    return-object v2

    .line 40
    .end local v2    # "detailInfo":Lcom/miui/darkmode/DarkModeAppDetailInfo;
    :cond_23
    goto :goto_c

    .line 41
    :cond_24
    return-object v0

    .line 34
    :cond_25
    :goto_25
    return-object v0
.end method

.method public blacklist setCreateTime(J)V
    .registers 3
    .param p1, "createTime"    # J

    .line 21
    iput-wide p1, p0, Lcom/miui/darkmode/DarkModeAppData;->createTime:J

    .line 22
    return-void
.end method

.method public blacklist setDarkModeAppDetailInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/darkmode/DarkModeAppDetailInfo;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "darkModeAppDetailInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/darkmode/DarkModeAppDetailInfo;>;"
    iput-object p1, p0, Lcom/miui/darkmode/DarkModeAppData;->darkModeAppDetailInfoList:Ljava/util/List;

    .line 30
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DarkModeAppData{createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/miui/darkmode/DarkModeAppData;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", darkModeAppDetailInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/darkmode/DarkModeAppData;->darkModeAppDetailInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 51
    iget-wide v0, p0, Lcom/miui/darkmode/DarkModeAppData;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 52
    iget-object v0, p0, Lcom/miui/darkmode/DarkModeAppData;->darkModeAppDetailInfoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 53
    return-void
.end method
