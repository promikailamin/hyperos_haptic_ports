.class public Lcom/miui/whetstone/CloudControlInfo;
.super Ljava/lang/Object;
.source "CloudControlInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CONFIG_MASK_APPEND_TOKEN_TO_URL:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/whetstone/CloudControlInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DBG:Z = true

.field private static final blacklist HTTP_MASK_CLASS:I = 0x2

.field private static final blacklist HTTP_MASK_CONFIG:I = 0x200

.field private static final blacklist HTTP_MASK_HTTP_METHOD:I = 0x10

.field private static final blacklist HTTP_MASK_INTENT_WITH_RESPONSE:I = 0x100

.field private static final blacklist HTTP_MASK_INTERVAL_AT_MIN:I = 0x40

.field private static final blacklist HTTP_MASK_PACKAGE:I = 0x1

.field private static final blacklist HTTP_MASK_PARAMS:I = 0x8

.field private static final blacklist HTTP_MASK_TIMEOUT:I = 0x80

.field private static final blacklist HTTP_MASK_TRIGGER_DELAY_AT_MIN:I = 0x20

.field private static final blacklist HTTP_MASK_URL:I = 0x4

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CloudControlInfo"


# instance fields
.field public blacklist mClassName:Ljava/lang/String;

.field public blacklist mConfig:Ljava/lang/String;

.field public blacklist mHttpMethod:Ljava/lang/String;

.field public blacklist mIntervalAtMin:I

.field public blacklist mIsIntentWithResponse:Z

.field public blacklist mParams:Ljava/lang/String;

.field public blacklist mPkgName:Ljava/lang/String;

.field public blacklist mTimeout:I

.field public blacklist mTriggerDelayAtMin:I

.field public blacklist mUrl:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 188
    new-instance v0, Lcom/miui/whetstone/CloudControlInfo$1;

    invoke-direct {v0}, Lcom/miui/whetstone/CloudControlInfo$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/CloudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size of HttpRequest parcel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/whetstone/CloudControlInfo;->log(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .local v0, "flag":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    .line 132
    :cond_2b
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_35

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    .line 133
    :cond_35
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3f

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    .line 134
    :cond_3f
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_49

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    .line 135
    :cond_49
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_53

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    .line 136
    :cond_53
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5d

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    .line 137
    :cond_5d
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_67

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    .line 138
    :cond_67
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_71

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    .line 139
    :cond_71
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_80

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v1, 0x0

    :goto_7e
    iput-boolean v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    .line 140
    :cond_80
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_8a

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    .line 141
    :cond_8a
    return-void
.end method

.method public constructor blacklist <init>(Lcom/miui/whetstone/CloudControlInfo;)V
    .registers 2
    .param p1, "c"    # Lcom/miui/whetstone/CloudControlInfo;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/CloudControlInfo;->copyFrom(Lcom/miui/whetstone/CloudControlInfo;)V

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/lang/String;
    .param p5, "httpMethod"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Lcom/miui/whetstone/CloudControlInfo;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/lang/String;
    .param p5, "httpMethod"    # Ljava/lang/String;
    .param p6, "triggerDelayAtMin"    # I
    .param p7, "intervalAtMin"    # I
    .param p8, "timeout"    # I
    .param p9, "isIntentWithResponse"    # Z
    .param p10, "config"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual/range {p0 .. p10}, Lcom/miui/whetstone/CloudControlInfo;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    .line 67
    return-void
.end method

.method private blacklist buildFlagValue()I
    .registers 3

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "flag":I
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    .line 146
    :cond_7
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    .line 147
    :cond_d
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x4

    .line 148
    :cond_13
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    if-eqz v1, :cond_19

    or-int/lit8 v0, v0, 0x8

    .line 149
    :cond_19
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    if-eqz v1, :cond_1f

    or-int/lit8 v0, v0, 0x10

    .line 150
    :cond_1f
    or-int/lit8 v0, v0, 0x20

    .line 151
    or-int/lit8 v0, v0, 0x40

    .line 152
    or-int/lit16 v0, v0, 0x80

    .line 153
    or-int/lit16 v0, v0, 0x100

    .line 154
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    if-eqz v1, :cond_2d

    or-int/lit16 v0, v0, 0x200

    .line 155
    :cond_2d
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 266
    const-string v0, "CloudControlInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method


# virtual methods
.method protected blacklist copyFrom(Lcom/miui/whetstone/CloudControlInfo;)V
    .registers 3
    .param p1, "c"    # Lcom/miui/whetstone/CloudControlInfo;

    .line 111
    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    .line 113
    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    .line 116
    iget v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    iput v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    .line 117
    iget v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    iput v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    .line 118
    iget v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    iput v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    .line 119
    iget-boolean v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    iput-boolean v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    .line 120
    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 206
    const/4 v0, 0x0

    :try_start_1
    move-object v1, p1

    check-cast v1, Lcom/miui/whetstone/CloudControlInfo;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_4} :catch_60

    .line 209
    .local v1, "p":Lcom/miui/whetstone/CloudControlInfo;
    nop

    .line 211
    if-nez p1, :cond_8

    .line 212
    return v0

    .line 215
    :cond_8
    iget-object v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    iget-object v3, v1, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    iget-object v3, v1, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    iget-object v3, v1, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    iget-object v3, v1, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    iget v3, v1, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    if-ne v2, v3, :cond_5e

    iget v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    iget v3, v1, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    if-ne v2, v3, :cond_5e

    iget v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    iget v3, v1, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    if-ne v2, v3, :cond_5e

    iget-boolean v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    iget-boolean v3, v1, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    if-ne v2, v3, :cond_5e

    iget-object v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    iget-object v3, v1, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    const/4 v0, 0x1

    goto :goto_5f

    :cond_5e
    nop

    .line 215
    :goto_5f
    return v0

    .line 207
    .end local v1    # "p":Lcom/miui/whetstone/CloudControlInfo;
    :catch_60
    move-exception v1

    .line 208
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public blacklist getComponentToShortString()Ljava/lang/String;
    .registers 3

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/lang/String;
    .param p5, "httpMethod"    # Ljava/lang/String;
    .param p6, "triggerDelayAtMin"    # I
    .param p7, "intervalAtMin"    # I
    .param p8, "timeout"    # I
    .param p9, "isIntentWithResponse"    # Z
    .param p10, "config"    # Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    .line 99
    iput-object p5, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    .line 100
    iput p6, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    .line 101
    iput p7, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    .line 102
    iput p8, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    .line 103
    iput-boolean p9, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    .line 104
    iput-object p10, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    .line 259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 255
    :goto_27
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudControlInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 162
    invoke-direct {p0}, Lcom/miui/whetstone/CloudControlInfo;->buildFlagValue()I

    move-result v0

    .line 163
    .local v0, "flag":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    :cond_e
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    if-eqz v1, :cond_15

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    :cond_15
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_1c

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    :cond_1c
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    if-eqz v1, :cond_23

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    :cond_23
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    if-eqz v1, :cond_2a

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    :cond_2a
    iget v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-boolean v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 173
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    if-eqz v1, :cond_46

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    :cond_46
    return-void
.end method
