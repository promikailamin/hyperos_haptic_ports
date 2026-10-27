.class public final Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssData"
.end annotation


# instance fields
.field public blacklist clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

.field public blacklist elapsedRealtime:Landroid/hardware/gnss/V2_0/ElapsedRealtime;

.field public blacklist measurements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    .line 789
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    .line 794
    new-instance v0, Landroid/hardware/gnss/V2_0/ElapsedRealtime;

    invoke-direct {v0}, Landroid/hardware/gnss/V2_0/ElapsedRealtime;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->elapsedRealtime:Landroid/hardware/gnss/V2_0/ElapsedRealtime;

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
            "Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;",
            ">;"
        }
    .end annotation

    .line 848
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 849
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 852
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 853
    mul-int/lit8 v3, v2, 0x70

    int-to-long v5, v3

    .line 854
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 853
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 857
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 858
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 859
    new-instance v3, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;

    invoke-direct {v3}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;-><init>()V

    .line 860
    mul-int/lit8 v5, v1, 0x70

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 861
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 865
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
            "Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;",
            ">;)V"
        }
    .end annotation

    .line 895
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 897
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 898
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 899
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 900
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x70

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 901
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 902
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;

    mul-int/lit8 v5, v4, 0x70

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 901
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 904
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 907
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 908
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 798
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 799
    return v0

    .line 801
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 802
    return v1

    .line 804
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;

    if-eq v2, v3, :cond_11

    .line 805
    return v1

    .line 807
    :cond_11
    check-cast p1, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;

    .line 808
    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 809
    return v1

    .line 811
    :cond_1e
    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    iget-object v3, p1, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 812
    return v1

    .line 814
    :cond_29
    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->elapsedRealtime:Landroid/hardware/gnss/V2_0/ElapsedRealtime;

    iget-object p1, p1, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->elapsedRealtime:Landroid/hardware/gnss/V2_0/ElapsedRealtime;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    .line 815
    return v1

    .line 817
    :cond_34
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 822
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    .line 823
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    .line 824
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->elapsedRealtime:Landroid/hardware/gnss/V2_0/ElapsedRealtime;

    .line 825
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 822
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 19

    .line 871
    move-object/from16 v8, p2

    const-wide/16 v0, 0x0

    add-long v2, p3, v0

    const-wide/16 v4, 0x8

    add-long/2addr v4, v2

    invoke-virtual {v8, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 872
    mul-int/lit16 v4, v9, 0xb0

    int-to-long v4, v4

    .line 873
    move-wide v10, v0

    move-wide v12, v4

    move-wide v5, v2

    move-wide v1, v12

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long/2addr v5, v10

    .line 872
    const/4 v7, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 876
    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 877
    const/4 v2, 0x0

    :goto_25
    if-ge v2, v9, :cond_3a

    .line 878
    new-instance v3, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-direct {v3}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;-><init>()V

    .line 879
    mul-int/lit16 v4, v2, 0xb0

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 880
    iget-object v4, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 883
    :cond_3a
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    const-wide/16 v2, 0x10

    add-long v2, p3, v2

    invoke-virtual {v1, p1, v8, v2, v3}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 884
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->elapsedRealtime:Landroid/hardware/gnss/V2_0/ElapsedRealtime;

    const-wide/16 v2, 0x58

    add-long v2, p3, v2

    invoke-virtual {v1, p1, v8, v2, v3}, Landroid/hardware/gnss/V2_0/ElapsedRealtime;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 885
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 843
    const-wide/16 v0, 0x70

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 844
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 845
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    const-string v1, ".measurements = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 834
    const-string v1, ", .clock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 836
    const-string v1, ", .elapsedRealtime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->elapsedRealtime:Landroid/hardware/gnss/V2_0/ElapsedRealtime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 838
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14

    .line 913
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 914
    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    const-wide/16 v5, 0x8

    add-long/2addr v5, v3

    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 915
    const-wide/16 v5, 0xc

    add-long/2addr v5, v3

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 916
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit16 v6, v0, 0xb0

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 917
    nop

    :goto_1f
    if-ge v7, v0, :cond_32

    .line 918
    iget-object v6, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    mul-int/lit16 v8, v7, 0xb0

    int-to-long v8, v8

    invoke-virtual {v6, v5, v8, v9}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 917
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 920
    :cond_32
    add-long/2addr v3, v1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 922
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    const-wide/16 v1, 0x10

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 923
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->elapsedRealtime:Landroid/hardware/gnss/V2_0/ElapsedRealtime;

    const-wide/16 v1, 0x58

    add-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/gnss/V2_0/ElapsedRealtime;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 924
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 888
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 889
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 890
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 891
    return-void
.end method
