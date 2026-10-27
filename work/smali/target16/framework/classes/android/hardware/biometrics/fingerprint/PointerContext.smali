.class public Landroid/hardware/biometrics/fingerprint/PointerContext;
.super Ljava/lang/Object;
.source "PointerContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/fingerprint/PointerContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist gestureStart:J

.field public blacklist isAod:Z

.field public blacklist major:F

.field public blacklist minor:F

.field public blacklist orientation:F

.field public blacklist pointerId:I

.field public blacklist time:J

.field public blacklist x:F

.field public blacklist y:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/hardware/biometrics/fingerprint/PointerContext$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/PointerContext$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 42
    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 44
    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 46
    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 48
    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    .line 71
    iput-wide v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 159
    nop

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 137
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 138
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 139
    :cond_8
    instance-of v2, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    if-nez v2, :cond_d

    return v1

    .line 140
    :cond_d
    check-cast p1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 141
    iget v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 142
    :cond_22
    iget v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    return v1

    .line 143
    :cond_35
    iget v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    return v1

    .line 144
    :cond_48
    iget v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    return v1

    .line 145
    :cond_5b
    iget v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    return v1

    .line 146
    :cond_6e
    iget v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    return v1

    .line 147
    :cond_81
    iget-boolean v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    return v1

    .line 148
    :cond_94
    iget-wide v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a7

    return v1

    .line 149
    :cond_a7
    iget-wide v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ba

    return v1

    .line 150
    :cond_ba
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 155
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/io/Serializable;

    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 109
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_114

    .line 110
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 132
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 110
    return-void

    .line 130
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 132
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 112
    return-void

    .line 130
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 132
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 114
    return-void

    .line 130
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 132
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 116
    return-void

    .line 130
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 132
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 118
    return-void

    .line 130
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 132
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    return-void

    .line 130
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 132
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 122
    return-void

    .line 130
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_c7
    :try_start_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 132
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    return-void

    .line 130
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_e2
    :try_start_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ec
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_fd

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f7

    .line 132
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 126
    return-void

    .line 130
    :cond_f7
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_fd
    :try_start_fd
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J
    :try_end_103
    .catchall {:try_start_fd .. :try_end_103} :catchall_112

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10c

    .line 132
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 133
    nop

    .line 134
    return-void

    .line 130
    :cond_10c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :catchall_112
    move-exception v2

    goto :goto_11c

    .line 109
    :cond_114
    :try_start_114
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11c
    .catchall {:try_start_114 .. :try_end_11c} :catchall_112

    .line 129
    :goto_11c
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_125

    .line 130
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 133
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 92
    iget v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 93
    iget v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 94
    iget v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 95
    iget v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 96
    iget-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 97
    iget-wide v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget-wide v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 100
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 101
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    return-void
.end method
