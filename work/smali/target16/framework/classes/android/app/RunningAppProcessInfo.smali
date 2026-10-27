.class public Landroid/app/RunningAppProcessInfo;
.super Ljava/lang/Object;
.source "RunningAppProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_CANT_SAVE_STATE:I = 0x1

.field public static final blacklist FLAG_HAS_ACTIVITIES:I = 0x4

.field public static final blacklist FLAG_PERSISTENT:I = 0x2

.field public static final blacklist IMPORTANCE_BACKGROUND:I = 0x190
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist IMPORTANCE_CACHED:I = 0x190

.field public static final blacklist IMPORTANCE_CANT_SAVE_STATE:I = 0x15e

.field public static final blacklist IMPORTANCE_CANT_SAVE_STATE_PRE_26:I = 0xaa

.field public static final blacklist IMPORTANCE_FOREGROUND:I = 0x64

.field public static final blacklist IMPORTANCE_FOREGROUND_SERVICE:I = 0x7d

.field public static final blacklist IMPORTANCE_GONE:I = 0x3e8

.field public static final blacklist IMPORTANCE_PERCEPTIBLE:I = 0xe6

.field public static final blacklist IMPORTANCE_PERCEPTIBLE_PRE_26:I = 0x82

.field public static final blacklist IMPORTANCE_SERVICE:I = 0x12c

.field public static final blacklist IMPORTANCE_TOP_SLEEPING:I = 0x145

.field public static final blacklist IMPORTANCE_VISIBLE:I = 0xc8

.field public static final blacklist REASON_PROVIDER_IN_USE:I = 0x1

.field public static final blacklist REASON_SERVICE_IN_USE:I = 0x2

.field public static final blacklist REASON_UNKNOWN:I


# instance fields
.field public blacklist flags:I

.field public blacklist importance:I

.field public blacklist importanceReasonCode:I

.field public blacklist importanceReasonComponent:Ljava/lang/String;

.field public blacklist importanceReasonImportance:I

.field public blacklist importanceReasonPid:I

.field public blacklist isFocused:Z

.field public blacklist lastActivityTime:J

.field public blacklist lastTrimLevel:I

.field public blacklist lru:I

.field public blacklist pid:I

.field public blacklist pkgDeps:[Ljava/lang/String;

.field public blacklist pkgList:[Ljava/lang/String;

.field public blacklist processName:Ljava/lang/String;

.field public blacklist processState:I

.field public blacklist uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    new-instance v0, Landroid/app/RunningAppProcessInfo$1;

    invoke-direct {v0}, Landroid/app/RunningAppProcessInfo$1;-><init>()V

    sput-object v0, Landroid/app/RunningAppProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/RunningAppProcessInfo;->pid:I

    .line 30
    iput v0, p0, Landroid/app/RunningAppProcessInfo;->uid:I

    .line 39
    iput v0, p0, Landroid/app/RunningAppProcessInfo;->flags:I

    .line 45
    iput v0, p0, Landroid/app/RunningAppProcessInfo;->lastTrimLevel:I

    .line 51
    iput v0, p0, Landroid/app/RunningAppProcessInfo;->importance:I

    .line 61
    iput v0, p0, Landroid/app/RunningAppProcessInfo;->lru:I

    .line 63
    iput v0, p0, Landroid/app/RunningAppProcessInfo;->importanceReasonCode:I

    .line 69
    iput v0, p0, Landroid/app/RunningAppProcessInfo;->importanceReasonPid:I

    .line 79
    iput v0, p0, Landroid/app/RunningAppProcessInfo;->importanceReasonImportance:I

    .line 81
    iput v0, p0, Landroid/app/RunningAppProcessInfo;->processState:I

    .line 83
    iput-boolean v0, p0, Landroid/app/RunningAppProcessInfo;->isFocused:Z

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/RunningAppProcessInfo;->lastActivityTime:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 297
    nop

    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_1d1

    .line 129
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 129
    return-void

    .line 163
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 131
    return-void

    .line 163
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/RunningAppProcessInfo;->pid:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 133
    return-void

    .line 163
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/RunningAppProcessInfo;->uid:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 135
    return-void

    .line 163
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    return-void

    .line 163
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 139
    return-void

    .line 163
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/RunningAppProcessInfo;->flags:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 141
    return-void

    .line 163
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_c7
    :try_start_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/RunningAppProcessInfo;->lastTrimLevel:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 143
    return-void

    .line 163
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_e2
    :try_start_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/RunningAppProcessInfo;->importance:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ec
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_fd

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f7

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 145
    return-void

    .line 163
    :cond_f7
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_fd
    :try_start_fd
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/RunningAppProcessInfo;->lru:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_107
    .catchall {:try_start_fd .. :try_end_107} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_118

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_112

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 147
    return-void

    .line 163
    :cond_112
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_118
    :try_start_118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/RunningAppProcessInfo;->importanceReasonCode:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_122
    .catchall {:try_start_118 .. :try_end_122} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_133

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12d

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 149
    return-void

    .line 163
    :cond_12d
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_133
    :try_start_133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/RunningAppProcessInfo;->importanceReasonPid:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_13d
    .catchall {:try_start_133 .. :try_end_13d} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_14e

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_148

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 151
    return-void

    .line 163
    :cond_148
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_14e
    :try_start_14e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/RunningAppProcessInfo;->importanceReasonComponent:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_158
    .catchall {:try_start_14e .. :try_end_158} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_169

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_163

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 153
    return-void

    .line 163
    :cond_163
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_169
    :try_start_169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/RunningAppProcessInfo;->importanceReasonImportance:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_173
    .catchall {:try_start_169 .. :try_end_173} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_184

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_17e

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 155
    return-void

    .line 163
    :cond_17e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_184
    :try_start_184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/RunningAppProcessInfo;->processState:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_18e
    .catchall {:try_start_184 .. :try_end_18e} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_19f

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_199

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 157
    return-void

    .line 163
    :cond_199
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_19f
    :try_start_19f
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/RunningAppProcessInfo;->isFocused:Z

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1a9
    .catchall {:try_start_19f .. :try_end_1a9} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ba

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1b4

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 159
    return-void

    .line 163
    :cond_1b4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_1ba
    :try_start_1ba
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/app/RunningAppProcessInfo;->lastActivityTime:J
    :try_end_1c0
    .catchall {:try_start_1ba .. :try_end_1c0} :catchall_1cf

    .line 162
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1c9

    .line 165
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 166
    nop

    .line 167
    return-void

    .line 163
    :cond_1c9
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :catchall_1cf
    move-exception v2

    goto :goto_1d9

    .line 128
    :cond_1d1
    :try_start_1d1
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1d9
    .catchall {:try_start_1d1 .. :try_end_1d9} :catchall_1cf

    .line 162
    :goto_1d9
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1e2

    .line 163
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_1e2
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 166
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Landroid/app/RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget v0, p0, Landroid/app/RunningAppProcessInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Landroid/app/RunningAppProcessInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Landroid/app/RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Landroid/app/RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 107
    iget v0, p0, Landroid/app/RunningAppProcessInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Landroid/app/RunningAppProcessInfo;->lastTrimLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Landroid/app/RunningAppProcessInfo;->importance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Landroid/app/RunningAppProcessInfo;->lru:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Landroid/app/RunningAppProcessInfo;->importanceReasonCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Landroid/app/RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Landroid/app/RunningAppProcessInfo;->importanceReasonComponent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Landroid/app/RunningAppProcessInfo;->importanceReasonImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Landroid/app/RunningAppProcessInfo;->processState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-boolean v0, p0, Landroid/app/RunningAppProcessInfo;->isFocused:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 117
    iget-wide v0, p0, Landroid/app/RunningAppProcessInfo;->lastActivityTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 119
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 122
    return-void
.end method
