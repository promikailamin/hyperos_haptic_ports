.class public Lmiui/mqsas/sdk/event/AnrEvent;
.super Lmiui/mqsas/sdk/event/ExceptionEvent;
.source "AnrEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/AnrEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PATTERN_ACTION:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN_COMPONENT:Ljava/util/regex/Pattern;

.field private static final blacklist REASON_NOT_RESPONDING:Ljava/lang/String; = "is not responding"

.field private static final blacklist REASON_NO_FOCUSED_WINDOW:Ljava/lang/String; = "does not have a focused window"

.field private static final blacklist REGEX_DECIMAL:Ljava/lang/String; = "\\d{1,}\\.\\d{1,}"

.field private static final blacklist REGEX_EXTRAS:Ljava/lang/String; = "(?<=timed out \\().*?(?=Waiting)"

.field private static final blacklist REGEX_HASHCODE:Ljava/lang/String; = "\\b[0-9a-fA-F]{2,}\\b"

.field private static final blacklist REGEX_INT:Ljava/lang/String; = "\\d{1,}"

.field private static final blacklist REGEX_STATUS:Ljava/lang/String; = "NORMAL|BROKEN|ZOMBIE|UNKNOWN"

.field private static final blacklist REGEX_TARGET_TYPE:Ljava/lang/String; = "touched|focused"

.field private static final blacklist REPLACEMENT:Ljava/lang/String; = "XX"

.field private static final blacklist SPECIAL_CHARS:Ljava/lang/String; = "\\(\\)\\{\\}\\[\\]\\s"


# instance fields
.field private blacklist mBinderTransactionInfo:Ljava/lang/String;

.field private blacklist mCpuInfo:Ljava/lang/String;

.field private blacklist mIsBgAnr:Z

.field private blacklist mIsBlockSystem:Z

.field private blacklist mParent:Ljava/lang/String;

.field private blacklist mReason:Ljava/lang/String;

.field private blacklist mTargetActivity:Ljava/lang/String;

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 27
    const-string v0, "act=[^\\(\\)\\{\\}\\[\\]\\s]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/sdk/event/AnrEvent;->PATTERN_ACTION:Ljava/util/regex/Pattern;

    .line 28
    const-string v0, "cmp=[^\\(\\)\\{\\}\\[\\]\\s]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/sdk/event/AnrEvent;->PATTERN_COMPONENT:Ljava/util/regex/Pattern;

    .line 92
    new-instance v0, Lmiui/mqsas/sdk/event/AnrEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/AnrEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/AnrEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBgAnr:Z

    .line 46
    const-string v1, ""

    iput-object v1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mParent:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mCpuInfo:Ljava/lang/String;

    .line 50
    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBlockSystem:Z

    .line 51
    iput-object v1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mBinderTransactionInfo:Ljava/lang/String;

    .line 52
    iput v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mUid:I

    .line 53
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 103
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mType:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mPid:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mUid:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mProcessName:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mPackageName:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2b

    move v0, v2

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsSystem:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTimeStamp:J

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mSummary:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mDetails:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mDigest:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mLogName:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mKeyWord:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_5a

    move v0, v2

    goto :goto_5b

    :cond_5a
    move v0, v1

    :goto_5b
    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBgAnr:Z

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mParent:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mCpuInfo:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_7d

    move v0, v2

    goto :goto_7e

    :cond_7d
    move v0, v1

    :goto_7e
    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsUpload:Z

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_88

    move v0, v2

    goto :goto_89

    :cond_88
    move v0, v1

    :goto_89
    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBlockSystem:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mBinderTransactionInfo:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_98

    move v1, v2

    :cond_98
    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsSystemApp:Z

    .line 125
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/mqsas/sdk/event/AnrEvent;->setExtraFiles(Ljava/util/List;)V

    .line 126
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/AnrEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/AnrEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist getBroadcastDetails()Ljava/lang/String;
    .registers 9

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v0, "details":Ljava/lang/StringBuilder;
    sget-object v1, Lmiui/mqsas/sdk/event/AnrEvent;->PATTERN_ACTION:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 228
    .local v1, "act":Ljava/util/regex/Matcher;
    sget-object v2, Lmiui/mqsas/sdk/event/AnrEvent;->PATTERN_COMPONENT:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 229
    .local v2, "cmp":Ljava/util/regex/Matcher;
    const-string v3, "Broadcast of Intent { "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 230
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const-string v5, " "

    const-string v6, ""

    if-eqz v4, :cond_3f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_40

    :cond_3f
    move-object v4, v6

    :goto_40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 231
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_5f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private blacklist getFixedReason(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 358
    const-string v0, "\\b[0-9a-fA-F]{2,}\\b"

    const-string v1, "XX"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 359
    const-string v0, "Input dispatching timed out"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 361
    :try_start_16
    const-string v0, "\\d{1,}\\.\\d{1,}"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\d{1,}"

    .line 362
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "touched|focused"

    .line 363
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "NORMAL|BROKEN|ZOMBIE|UNKNOWN"

    .line 364
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2e} :catch_2f

    .line 365
    .local v0, "newStr":Ljava/lang/String;
    return-object v0

    .line 366
    .end local v0    # "newStr":Ljava/lang/String;
    :catch_2f
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_33
    return-object p1
.end method

.method private blacklist getInformation()Ljava/lang/String;
    .registers 4

    .line 237
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "information":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->isBroadcastAnr()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 239
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getBroadcastDetails()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 240
    :cond_f
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->isInputAnr()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getProcessName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "system"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 241
    const-string v1, "(?<=timed out \\().*?(?=Waiting)"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 243
    :cond_2a
    :goto_2a
    return-object v0
.end method


# virtual methods
.method public blacklist createDefaultDetails()Ljava/lang/String;
    .registers 5

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .local v0, "detailBuilder":Ljava/lang/StringBuilder;
    const-string v1, "@@@"

    .line 275
    .local v1, "splitChar":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bgAnr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getBgAnr()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getAnrType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist createDefaultDigest()Ljava/lang/String;
    .registers 4

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v0, "digest":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 265
    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_21
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getInformation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist createDefaultSummary()Ljava/lang/String;
    .registers 4

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v0, "summary":Ljava/lang/StringBuilder;
    const-string v1, "ANR in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 252
    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_27
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getInformation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAnrType()Ljava/lang/String;
    .registers 3

    .line 281
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->isInputAnr()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 282
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 283
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    const-string v1, "is not responding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 284
    const-string v0, "input.app"

    return-object v0

    .line 285
    :cond_1b
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    const-string v1, "does not have a focused window"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 286
    const-string v0, "input.window"

    return-object v0

    .line 289
    :cond_28
    const-string v0, "input"

    return-object v0

    .line 290
    :cond_2b
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->isServiceAnr()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 291
    const-string v0, "service"

    return-object v0

    .line 292
    :cond_34
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->isBroadcastAnr()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 293
    const-string v0, "broadcast"

    return-object v0

    .line 294
    :cond_3d
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->isProviderAnr()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 295
    const-string v0, "provider"

    return-object v0

    .line 297
    :cond_46
    const-string v0, "unknown"

    return-object v0
.end method

.method public blacklist getBgAnr()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBgAnr:Z

    return v0
.end method

.method public blacklist getBinderTransactionInfo()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mBinderTransactionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBlockSystemState()Z
    .registers 2

    .line 170
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBlockSystem:Z

    return v0
.end method

.method public blacklist getCpuInfo()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mCpuInfo:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParent()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mParent:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getReason()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTargetActivity()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 192
    iget v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mUid:I

    return v0
.end method

.method public blacklist initType()V
    .registers 2

    .line 57
    const/16 v0, 0x8

    iput v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mType:I

    .line 58
    return-void
.end method

.method public blacklist isBroadcastAnr()Z
    .registers 3

    .line 320
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 321
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    const-string v1, "Broadcast of"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 322
    const/4 v0, 0x1

    return v0

    .line 325
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInputAnr()Z
    .registers 3

    .line 302
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 303
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    const-string v1, "Input dispatching timed out"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 304
    const/4 v0, 0x1

    return v0

    .line 307
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isProviderAnr()Z
    .registers 3

    .line 329
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 330
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    const-string v1, "ContentProvider not responding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 331
    const/4 v0, 0x1

    return v0

    .line 334
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isServiceAnr()Z
    .registers 3

    .line 311
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 312
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    const-string v1, "executing service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    const-string v1, "Context.startForegroundService()"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 313
    :cond_1c
    const/4 v0, 0x1

    return v0

    .line 316
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setBgAnr(Z)V
    .registers 2
    .param p1, "mIsBgAnr"    # Z

    .line 133
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBgAnr:Z

    .line 134
    return-void
.end method

.method public blacklist setBinderTransactionInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "mBinderTransactionInfo"    # Ljava/lang/String;

    .line 182
    iput-object p1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mBinderTransactionInfo:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public blacklist setBlockSystemState(Z)V
    .registers 2
    .param p1, "mIsBlockSystem"    # Z

    .line 174
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBlockSystem:Z

    .line 175
    return-void
.end method

.method public blacklist setCpuInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "cpuInfo"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mCpuInfo:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public blacklist setParent(Ljava/lang/String;)V
    .registers 2
    .param p1, "mParent"    # Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mParent:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public blacklist setReason(Ljava/lang/String;)V
    .registers 3
    .param p1, "mReason"    # Ljava/lang/String;

    .line 141
    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/AnrEvent;->getFixedReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public blacklist setTargetActivity(Ljava/lang/String;)V
    .registers 2
    .param p1, "mTargetActivity"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public blacklist setUid(I)V
    .registers 2
    .param p1, "mUid"    # I

    .line 187
    iput p1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mUid:I

    .line 188
    return-void
.end method

.method public blacklist toShortString()Ljava/lang/String;
    .registers 5

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnrEvent { mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " processName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDigest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mDigest:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSummary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLogName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mLogName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyWord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsBgAnr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBgAnr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTargetActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mParent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mParent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCpuinfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mCpuInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsBlockSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBlockSystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBinderTransactionInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mBinderTransactionInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnrEvent { mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " processName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSummary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mDetails="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mDetails:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mDigest="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mDigest:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mDetails:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLogName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mLogName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyWord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsBgAnr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBgAnr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTargetActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mParent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mParent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCpuinfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mCpuInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsBlockSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBlockSystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBinderTransactionInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mBinderTransactionInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsSystemApp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsSystemApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    iget v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsSystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mDetails:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mDigest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mLogName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mKeyWord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBgAnr:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mParent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mCpuInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsUpload:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBlockSystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mBinderTransactionInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsSystemApp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getExtraFiles()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 90
    return-void
.end method
