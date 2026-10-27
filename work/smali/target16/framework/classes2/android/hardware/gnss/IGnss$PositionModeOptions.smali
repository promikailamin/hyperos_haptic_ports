.class public Landroid/hardware/gnss/IGnss$PositionModeOptions;
.super Ljava/lang/Object;
.source "IGnss.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionModeOptions"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnss$PositionModeOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist lowPowerMode:Z

.field public blacklist minIntervalMs:I

.field public blacklist mode:I

.field public blacklist preferredAccuracyMeters:I

.field public blacklist preferredTimeMs:I

.field public blacklist recurrence:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1147
    new-instance v0, Landroid/hardware/gnss/IGnss$PositionModeOptions$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnss$PositionModeOptions$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 1137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->minIntervalMs:I

    .line 1142
    iput v0, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->preferredAccuracyMeters:I

    .line 1143
    iput v0, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->preferredTimeMs:I

    .line 1144
    iput-boolean v0, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->lowPowerMode:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1201
    nop

    .line 1202
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 1146
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 1176
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1179
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_c3

    .line 1180
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 1193
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 1196
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1180
    return-void

    .line 1194
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1181
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->mode:I

    .line 1182
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 1193
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 1196
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1182
    return-void

    .line 1194
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1183
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->recurrence:I

    .line 1184
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 1193
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 1196
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1184
    return-void

    .line 1194
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1185
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->minIntervalMs:I

    .line 1186
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 1193
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 1196
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1186
    return-void

    .line 1194
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1187
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->preferredAccuracyMeters:I

    .line 1188
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 1193
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 1196
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1188
    return-void

    .line 1194
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1189
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->preferredTimeMs:I

    .line 1190
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 1193
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 1196
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1190
    return-void

    .line 1194
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1191
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->lowPowerMode:Z
    :try_end_b2
    .catchall {:try_start_ac .. :try_end_b2} :catchall_c1

    .line 1193
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_bb

    .line 1196
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1197
    nop

    .line 1198
    return-void

    .line 1194
    :cond_bb
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1193
    :catchall_c1
    move-exception v2

    goto :goto_cb

    .line 1179
    :cond_c3
    :try_start_c3
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_cb
    .catchall {:try_start_c3 .. :try_end_cb} :catchall_c1

    .line 1193
    :goto_cb
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_d4

    .line 1194
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1196
    :cond_d4
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1197
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1161
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 1162
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1163
    iget v0, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    iget v0, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->recurrence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    iget v0, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->minIntervalMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1166
    iget v0, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->preferredAccuracyMeters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1167
    iget v0, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->preferredTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1168
    iget-boolean v0, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->lowPowerMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1169
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1170
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1171
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1173
    return-void
.end method
