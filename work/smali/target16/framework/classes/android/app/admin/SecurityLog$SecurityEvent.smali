.class public final Landroid/app/admin/SecurityLog$SecurityEvent;
.super Ljava/lang/Object;
.source "SecurityLog.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SecurityLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecurityEvent"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mEvent:Landroid/util/EventLog$Event;

.field private greylist-max-o mId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 915
    new-instance v0, Landroid/app/admin/SecurityLog$SecurityEvent$1;

    invoke-direct {v0}, Landroid/app/admin/SecurityLog$SecurityEvent$1;-><init>()V

    sput-object v0, Landroid/app/admin/SecurityLog$SecurityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(J[B)V
    .registers 4

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-wide p1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    .line 715
    invoke-static {p3}, Landroid/util/EventLog$Event;->fromBytes([B)Landroid/util/EventLog$Event;

    move-result-object p1

    iput-object p1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    .line 716
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 708
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    .line 709
    return-void
.end method

.method constructor greylist-max-r <init>([B)V
    .registers 4

    .line 700
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    .line 701
    return-void
.end method

.method private greylist-max-o getSuccess()Z
    .registers 5

    .line 815
    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 816
    const/4 v1, 0x0

    if-eqz v0, :cond_24

    instance-of v2, v0, [Ljava/lang/Object;

    if-nez v2, :cond_c

    goto :goto_24

    .line 820
    :cond_c
    check-cast v0, [Ljava/lang/Object;

    .line 821
    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_23

    aget-object v2, v0, v1

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_23

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_23

    move v1, v3

    :cond_23
    return v1

    .line 817
    :cond_24
    :goto_24
    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 906
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 933
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 934
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 935
    :cond_12
    check-cast p1, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 936
    iget-object v2, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    iget-object v3, p1, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v2, v3}, Landroid/util/EventLog$Event;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-wide v2, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    iget-wide v4, p1, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0

    .line 934
    :cond_29
    :goto_29
    return v1
.end method

.method public blacklist eventEquals(Landroid/app/admin/SecurityLog$SecurityEvent;)Z
    .registers 3

    .line 949
    if-eqz p1, :cond_e

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    iget-object p1, p1, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0, p1}, Landroid/util/EventLog$Event;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public whitelist getData()Ljava/lang/Object;
    .registers 2

    .line 736
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getId()J
    .registers 3

    .line 761
    iget-wide v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    return-wide v0
.end method

.method public blacklist getIntegerData(I)I
    .registers 3

    .line 741
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public whitelist getLogLevel()I
    .registers 5

    .line 768
    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTag()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_1e

    .line 809
    :pswitch_a
    return v3

    .line 807
    :pswitch_b
    return v1

    .line 795
    :pswitch_c
    invoke-direct {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_13

    move v2, v3

    :cond_13
    return v2

    .line 805
    :pswitch_14
    return v2

    .line 801
    :pswitch_15
    invoke-direct {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_1c

    move v1, v3

    :cond_1c
    return v1

    .line 792
    :pswitch_1d
    return v3

    :pswitch_data_1e
    .packed-switch 0x33451
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_15
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_14
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_a
        :pswitch_a
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_1d
        :pswitch_1d
        :pswitch_15
        :pswitch_c
        :pswitch_c
        :pswitch_14
        :pswitch_b
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public blacklist getStringData(I)Ljava/lang/String;
    .registers 3

    .line 746
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public whitelist getTag()I
    .registers 2

    .line 729
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v0

    return v0
.end method

.method public whitelist getTimeNanos()J
    .registers 3

    .line 722
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 944
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    iget-wide v1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist redact(I)Landroid/app/admin/SecurityLog$SecurityEvent;
    .registers 8

    .line 837
    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTag()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, -0x2710

    const-string v3, ""

    const/4 v4, 0x2

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_7a

    .line 893
    move v0, v2

    goto :goto_73

    .line 887
    :sswitch_10
    :try_start_10
    invoke-virtual {p0, v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_15

    .line 890
    goto :goto_73

    .line 888
    :catch_15
    move-exception p1

    .line 889
    return-object v5

    .line 880
    :sswitch_17
    :try_start_17
    invoke-virtual {p0, v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_20

    .line 883
    goto :goto_73

    .line 881
    :catch_20
    move-exception p1

    .line 882
    return-object v5

    .line 864
    :sswitch_22
    :try_start_22
    invoke-virtual {p0, v4}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_27

    .line 867
    goto :goto_73

    .line 865
    :catch_27
    move-exception p1

    .line 866
    return-object v5

    .line 873
    :sswitch_29
    :try_start_29
    invoke-virtual {p0, v4}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_31} :catch_32

    .line 876
    goto :goto_73

    .line 874
    :catch_32
    move-exception p1

    .line 875
    return-object v5

    .line 845
    :sswitch_34
    const/4 p1, 0x0

    :try_start_35
    invoke-virtual {p0, p1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getStringData(I)Ljava/lang/String;

    move-result-object p1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_39} :catch_52

    .line 848
    nop

    .line 849
    new-instance v0, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getId()J

    move-result-wide v1

    iget-object v4, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    .line 850
    invoke-virtual {v4, p1}, Landroid/util/EventLog$Event;->withNewData(Ljava/lang/Object;)Landroid/util/EventLog$Event;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    .line 849
    return-object v0

    .line 846
    :catch_52
    move-exception p1

    .line 847
    return-object v5

    .line 853
    :sswitch_54
    :try_start_54
    invoke-virtual {p0, v4}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5c} :catch_5d

    .line 856
    goto :goto_73

    .line 854
    :catch_5d
    move-exception p1

    .line 855
    return-object v5

    .line 839
    :sswitch_5f
    new-instance p1, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getId()J

    move-result-wide v0

    iget-object v2, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v2, v3}, Landroid/util/EventLog$Event;->withNewData(Ljava/lang/Object;)Landroid/util/EventLog$Event;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/EventLog$Event;->getBytes()[B

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    return-object p1

    .line 897
    :goto_73
    if-eq v0, v2, :cond_79

    if-ne p1, v0, :cond_78

    goto :goto_79

    .line 900
    :cond_78
    return-object v5

    .line 898
    :cond_79
    :goto_79
    return-object p0

    :sswitch_data_7a
    .sparse-switch
        0x33452 -> :sswitch_5f
        0x33455 -> :sswitch_54
        0x3345d -> :sswitch_34
        0x3345e -> :sswitch_34
        0x33468 -> :sswitch_29
        0x33469 -> :sswitch_29
        0x3346a -> :sswitch_29
        0x3346d -> :sswitch_22
        0x3346e -> :sswitch_22
        0x33470 -> :sswitch_17
        0x33474 -> :sswitch_10
        0x33479 -> :sswitch_22
        0x3347a -> :sswitch_22
        0x3347b -> :sswitch_22
    .end sparse-switch
.end method

.method public greylist-max-o setId(J)V
    .registers 3

    .line 753
    iput-wide p1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    .line 754
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 911
    iget-wide v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 912
    iget-object p2, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {p2}, Landroid/util/EventLog$Event;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 913
    return-void
.end method
