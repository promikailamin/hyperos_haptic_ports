.class public Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
.super Ljava/lang/Object;
.source "WhetstonePackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final blacklist CAP_LOWMEM_KILL:I = 0x1

.field public static final blacklist CAP_LOWMEM_THRESOLD_KILL:I = 0x2

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_ANDROID_PERSISTENT_APP:I = 0x40000

.field public static final blacklist FLAG_APP_STOP:I = 0x40000000

.field public static final blacklist FLAG_APP_SYSTEM:I = -0x80000000

.field public static final blacklist FLAG_BACKGROUND_START:I = 0x100

.field public static final blacklist FLAG_BITMAPCACHE:I = 0x1

.field public static final blacklist FLAG_DEAL_SCHEDULE:I = 0x1000

.field public static final blacklist FLAG_DESTORYACTIVITY:I = 0x4

.field public static final blacklist FLAG_DISABLEOPENGL:I = 0x2

.field public static final blacklist FLAG_DISABLE_WAKELOCK:I = 0x4000

.field public static final blacklist FLAG_ONEKEY_CLEAN_NO_UI_WHITE:I = 0x20000

.field public static final blacklist FLAG_ONEKEY_CLEAN_WHITE:I = 0x10000

.field public static final blacklist FLAG_SOFT_RESET:I = 0x400

.field public static final blacklist FLAG_TRIMBACKGOUNDAPPS:I = 0x20

.field public static final blacklist FLAG_TRIMHEAPS:I = 0x40

.field public static final blacklist FLAG_TRIMHEAPSIZE:I = 0x2000

.field public static final blacklist FLAG_TRIMPROCESS_BY_ACTIVITY:I = 0x800

.field public static final blacklist FLAG_TRIMSERVICES:I = 0x10

.field public static final blacklist FLAG_TRIM_OPENGL:I = 0x200

.field public static final blacklist FLAG_UPDATESETTING:I = 0x8

.field public static final blacklist FLAG_ZRAM:I = 0x80

.field public static final blacklist TRIM_LEVEL_WHETSTONE_HEAP:I = 0x3e9

.field public static final blacklist TRIM_LEVLE_WHETSTONE_BITMAPCACHE:I = 0x3e8

.field public static final blacklist TRIM_LEVLE_WHETSTONE_DEFAULT:I = 0x44c

.field public static final blacklist TRIM_LEVLE_WHETSTONE_NATIVE:I = 0x3ea

.field public static final blacklist TYPE_AUTO_START:I = 0x40

.field public static final blacklist TYPE_GAME:I = 0x2

.field public static final blacklist TYPE_IM_PUSH:I = 0x1

.field public static final blacklist TYPE_INPUT_METHOD:I = 0x20

.field public static final blacklist TYPE_LARGE_MEMORY:I = 0x80

.field public static final blacklist TYPE_MUSIC:I = 0x4

.field public static final blacklist TYPE_NOTE:I = 0x8

.field public static final blacklist TYPE_NOTIFICATION:I = 0x10


# instance fields
.field public blacklist capacity:I

.field public blacklist flag:I

.field public blacklist mBackGroundTime:J

.field public blacklist mClearScore:I

.field public blacklist mClearType:I

.field public blacklist mExceptionAnrCount:I

.field public blacklist mExceptionCrashCount:I

.field public blacklist mExceptionTotalCount:I

.field public blacklist mFirstExceptionTime:J

.field public blacklist mForeGroundStartCount:J

.field public blacklist mForeGroundTime:J

.field public blacklist mHistoryOrder:I

.field public blacklist mLifeOrder:I

.field public blacklist mPermission:I

.field public blacklist mPromoteLevel:I

.field public blacklist mScreenOffClear:Z

.field public blacklist mStartTime:J

.field public blacklist mTotalForeGroundTime:J

.field public blacklist nonUiMemoryThresold:I

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist samePackageList:Ljava/lang/String;

.field public blacklist type:I

.field public blacklist uiMemoryThresold:I

.field public blacklist uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 233
    new-instance v0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;

    invoke-direct {v0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 245
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/miui/whetstone/strategy/WhetstonePackageInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "samePList"    # Ljava/lang/String;
    .param p3, "packageCapability"    # I
    .param p4, "uiThreshold"    # I
    .param p5, "nonUiThreshold"    # I
    .param p6, "screenOffClear"    # Z

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->samePackageList:Ljava/lang/String;

    .line 115
    iput p3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->capacity:I

    .line 116
    iput p4, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uiMemoryThresold:I

    .line 117
    iput p5, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->nonUiMemoryThresold:I

    .line 118
    iput-boolean p6, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mScreenOffClear:Z

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    .line 120
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    .line 121
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    .line 122
    iput-wide v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundTime:J

    .line 123
    iput-wide v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mBackGroundTime:J

    .line 124
    iput-wide v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mTotalForeGroundTime:J

    .line 125
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mHistoryOrder:I

    .line 126
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mLifeOrder:I

    .line 127
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearType:I

    .line 128
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearScore:I

    .line 129
    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPermission:I

    .line 130
    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPromoteLevel:I

    .line 131
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "system"    # Z

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    if-eqz p2, :cond_b

    const/high16 v1, -0x80000000

    goto :goto_c

    :cond_b
    move v1, v0

    :goto_c
    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    .line 96
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    .line 97
    iput-boolean v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mScreenOffClear:Z

    .line 98
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    .line 99
    iput-wide v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundTime:J

    .line 100
    iput-wide v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mBackGroundTime:J

    .line 101
    iput-wide v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mTotalForeGroundTime:J

    .line 102
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mHistoryOrder:I

    .line 103
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mLifeOrder:I

    .line 104
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearType:I

    .line 105
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearScore:I

    .line 106
    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPermission:I

    .line 107
    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPromoteLevel:I

    .line 108
    return-void
.end method


# virtual methods
.method public blacklist addFlag(I)V
    .registers 3
    .param p1, "flg"    # I

    .line 191
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    .line 192
    return-void
.end method

.method public blacklist addForeGroundStartCount()V
    .registers 5

    .line 134
    iget-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    .line 135
    return-void
.end method

.method public blacklist addType(I)V
    .registers 3
    .param p1, "flag"    # I

    .line 187
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    .line 188
    return-void
.end method

.method public blacklist clearBackGroundStartTime()V
    .registers 3

    .line 167
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mBackGroundTime:J

    .line 168
    return-void
.end method

.method public blacklist clearForeGroundStartTime()V
    .registers 3

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundTime:J

    .line 164
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 314
    const/4 v0, 0x0

    .line 316
    .local v0, "info":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 319
    goto :goto_d

    .line 317
    :catch_9
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 320
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_d
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist endForeGround()V
    .registers 7

    .line 152
    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->setBackGroundStartTime()V

    .line 153
    iget-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mTotalForeGroundTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mTotalForeGroundTime:J

    .line 154
    return-void
.end method

.method public blacklist getForeGroundStartCount()J
    .registers 3

    .line 138
    iget-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    return-wide v0
.end method

.method public blacklist getScore()I
    .registers 2

    .line 207
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearScore:I

    return v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 175
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    return v0
.end method

.method public blacklist isDisableWakelock()Z
    .registers 2

    .line 199
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isEnable(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 179
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isSystemApp()Z
    .registers 3

    .line 195
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isType(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 183
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPermission:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPromoteLevel:I

    .line 231
    return-void
.end method

.method public blacklist setBackGroundStartTime()V
    .registers 3

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mBackGroundTime:J

    return-void
.end method

.method public blacklist setForeGroundStartCount(J)V
    .registers 3
    .param p1, "count"    # J

    .line 142
    iput-wide p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    .line 143
    return-void
.end method

.method public blacklist setForeGroundStartTime()V
    .registers 3

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundTime:J

    .line 147
    return-void
.end method

.method public blacklist setScore(I)V
    .registers 2
    .param p1, "score"    # I

    .line 203
    iput p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearScore:I

    .line 204
    return-void
.end method

.method public blacklist setUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 171
    iput p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    .line 172
    return-void
.end method

.method public blacklist startForceGround()V
    .registers 1

    .line 157
    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->clearBackGroundStartTime()V

    .line 158
    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->setForeGroundStartTime()V

    .line 159
    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->addForeGroundStartCount()V

    .line 160
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{WhetstonePackageInfo#PacakgeName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " uiMemoryThresold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uiMemoryThresold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " nonUiMemoryThresold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->nonUiMemoryThresold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "hexFlag":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_9e

    .line 257
    const-string v2, ",BitmapCache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_9e
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a9

    .line 260
    const-string v2, ",DestoryActivity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_a9
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_b4

    .line 263
    const-string v2, ",isOPENGLDiable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_b4
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_bf

    .line 266
    const-string v2, ",TRIMHEAPS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_bf
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_ca

    .line 269
    const-string v2, ",TRIM_OPENGL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_ca
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_d5

    .line 272
    const-string v2, ",SOFT_RESET"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_d5
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_e1

    .line 275
    const-string v2, ",APP_SYSTEM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_e1
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_ec

    .line 278
    const-string v2, ",ZRAM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_ec
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_f7

    .line 281
    const-string v2, ",TRIMPROCESS_BY_ACTIVITY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_f7
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_102

    .line 284
    const-string v2, ",FLAG_DEAL_SCHEDULE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_102
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_10d

    .line 287
    const-string v2, ",FLAG_TRIMHEAPSIZE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_10d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "] Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_136

    .line 291
    const-string v2, ",IM_PUSH"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_136
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_141

    .line 294
    const-string v2, ",Game"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_141
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_14c

    .line 297
    const-string v2, ",note"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_14c
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_157

    .line 300
    const-string v2, ",notification"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_157
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_162

    .line 303
    const-string v2, ",AUTO_START"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_162
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_16d

    .line 306
    const-string v2, ",TYPE_LARGE_MEMORY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_16d
    const-string v2, "] }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 216
    iget-object v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPermission:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPromoteLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    return-void
.end method
