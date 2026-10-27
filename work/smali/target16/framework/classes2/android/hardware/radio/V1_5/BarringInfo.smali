.class public final Landroid/hardware/radio/V1_5/BarringInfo;
.super Ljava/lang/Object;
.source "BarringInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;,
        Landroid/hardware/radio/V1_5/BarringInfo$ServiceType;,
        Landroid/hardware/radio/V1_5/BarringInfo$BarringType;
    }
.end annotation


# instance fields
.field public blacklist barringType:I

.field public blacklist barringTypeSpecificInfo:Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

.field public blacklist serviceType:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_5/BarringInfo;->serviceType:I

    .line 798
    iput v0, p0, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    .line 802
    new-instance v0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/BarringInfo;",
            ">;"
        }
    .end annotation

    .line 856
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 860
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 861
    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 862
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 861
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 865
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 866
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 867
    new-instance v3, Landroid/hardware/radio/V1_5/BarringInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_5/BarringInfo;-><init>()V

    .line 868
    mul-int/lit8 v5, v1, 0x18

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/radio/V1_5/BarringInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 869
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 873
    :cond_37
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/BarringInfo;",
            ">;)V"
        }
    .end annotation

    .line 891
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 893
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 894
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 895
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 896
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 897
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 898
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_5/BarringInfo;

    mul-int/lit8 v5, v4, 0x18

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_5/BarringInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 897
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 900
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 903
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 904
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 806
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 807
    return v0

    .line 809
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 810
    return v1

    .line 812
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/BarringInfo;

    if-eq v2, v3, :cond_11

    .line 813
    return v1

    .line 815
    :cond_11
    check-cast p1, Landroid/hardware/radio/V1_5/BarringInfo;

    .line 816
    iget v2, p0, Landroid/hardware/radio/V1_5/BarringInfo;->serviceType:I

    iget v3, p1, Landroid/hardware/radio/V1_5/BarringInfo;->serviceType:I

    if-eq v2, v3, :cond_1a

    .line 817
    return v1

    .line 819
    :cond_1a
    iget v2, p0, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    iget v3, p1, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    if-eq v2, v3, :cond_21

    .line 820
    return v1

    .line 822
    :cond_21
    iget-object v2, p0, Landroid/hardware/radio/V1_5/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    iget-object p1, p1, Landroid/hardware/radio/V1_5/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 823
    return v1

    .line 825
    :cond_2c
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 830
    iget v0, p0, Landroid/hardware/radio/V1_5/BarringInfo;->serviceType:I

    .line 831
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    .line 832
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_5/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    .line 833
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 830
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8

    .line 878
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_5/BarringInfo;->serviceType:I

    .line 879
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    .line 880
    iget-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    const-wide/16 v1, 0x8

    add-long/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 881
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 851
    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 852
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/BarringInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 853
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    const-string v1, ".serviceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    iget v1, p0, Landroid/hardware/radio/V1_5/BarringInfo;->serviceType:I

    invoke-static {v1}, Landroid/hardware/radio/V1_5/BarringInfo$ServiceType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    const-string v1, ", .barringType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    iget v1, p0, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    invoke-static {v1}, Landroid/hardware/radio/V1_5/BarringInfo$BarringType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    const-string v1, ", .barringTypeSpecificInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    iget-object v1, p0, Landroid/hardware/radio/V1_5/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 846
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 908
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/BarringInfo;->serviceType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 909
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 910
    iget-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    const-wide/16 v1, 0x8

    add-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 911
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 884
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 885
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/BarringInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 886
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 887
    return-void
.end method
