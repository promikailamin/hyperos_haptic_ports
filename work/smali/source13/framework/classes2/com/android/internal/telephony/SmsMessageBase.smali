.class public abstract Lcom/android/internal/telephony/SmsMessageBase;
.super Ljava/lang/Object;
.source "SmsMessageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    }
.end annotation


# static fields
.field public static final blacklist NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected greylist-max-o mEmailBody:Ljava/lang/String;

.field protected greylist-max-o mEmailFrom:Ljava/lang/String;

.field protected greylist-max-o mIndexOnIcc:I

.field protected greylist-max-o mIsEmail:Z

.field protected greylist-max-r mIsMwi:Z

.field protected greylist-max-r mMessageBody:Ljava/lang/String;

.field public greylist-max-r mMessageRef:I

.field protected greylist-max-r mMwiDontStore:Z

.field protected greylist-max-r mMwiSense:Z

.field protected greylist-max-r mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected greylist mPdu:[B

.field protected greylist-max-o mPseudoSubject:Ljava/lang/String;

.field protected blacklist mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected greylist-max-r mScAddress:Ljava/lang/String;

.field protected greylist-max-o mScTimeMillis:J

.field protected greylist-max-o mStatusOnIcc:I

.field protected greylist-max-o mUserData:[B

.field protected greylist-max-r mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    nop

    .line 39
    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsMessageBase;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 38
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    .line 104
    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    .line 112
    return-void
.end method

.method public static greylist-max-o calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 9
    .param p0, "msgBody"    # Ljava/lang/CharSequence;

    .line 464
    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 465
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 466
    .local v1, "octets":I
    const/4 v2, 0x3

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 467
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 468
    const/16 v2, 0x8c

    if-le v1, v2, :cond_4c

    .line 474
    const/16 v2, 0x86

    .line 475
    .local v2, "maxUserDataBytesWithHeader":I
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v3

    if-nez v3, :cond_28

    .line 477
    add-int/lit8 v3, v2, -0x2

    mul-int/lit8 v3, v3, 0x9

    if-gt v1, v3, :cond_28

    .line 478
    add-int/lit8 v2, v2, -0x2

    .line 482
    :cond_28
    const/4 v3, 0x0

    .line 483
    .local v3, "pos":I
    const/4 v4, 0x0

    .line 484
    .local v4, "msgCount":I
    :goto_2a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_49

    .line 485
    invoke-static {v3, v2, p0}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v5

    .line 487
    .local v5, "nextPos":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v5, v6, :cond_44

    .line 488
    div-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v3

    .line 489
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 491
    :cond_44
    move v3, v5

    .line 492
    nop

    .end local v5    # "nextPos":I
    add-int/lit8 v4, v4, 0x1

    .line 493
    goto :goto_2a

    .line 494
    :cond_49
    iput v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 495
    .end local v2    # "maxUserDataBytesWithHeader":I
    .end local v3    # "pos":I
    .end local v4    # "msgCount":I
    goto :goto_55

    .line 496
    :cond_4c
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 497
    rsub-int v2, v1, 0x8c

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 500
    :goto_55
    return-object v0
.end method

.method private static blacklist extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "messageHeader"    # Ljava/lang/String;

    .line 366
    sget-object v0, Lcom/android/internal/telephony/SmsMessageBase;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 368
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 369
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 371
    :cond_12
    return-object p0
.end method

.method public static greylist-max-o findNextUnicodePosition(IILjava/lang/CharSequence;)I
    .registers 7
    .param p0, "currentPosition"    # I
    .param p1, "byteLimit"    # I
    .param p2, "msgBody"    # Ljava/lang/CharSequence;

    .line 427
    div-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 431
    .local v0, "nextPos":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 432
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v1

    .line 433
    .local v1, "breakIterator":Ljava/text/BreakIterator;
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v2

    if-nez v2, :cond_55

    .line 435
    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v2

    .line 436
    .local v2, "breakPos":I
    :goto_26
    add-int/lit8 v3, v2, 0x4

    if-gt v3, v0, :cond_43

    .line 438
    invoke-static {p2, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 437
    invoke-static {v3}, Lcom/android/internal/telephony/SmsMessageBase;->isRegionalIndicatorSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_43

    add-int/lit8 v3, v2, 0x2

    .line 440
    invoke-static {p2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 439
    invoke-static {v3}, Lcom/android/internal/telephony/SmsMessageBase;->isRegionalIndicatorSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 442
    add-int/lit8 v2, v2, 0x4

    goto :goto_26

    .line 444
    :cond_43
    if-le v2, p0, :cond_47

    .line 445
    move v0, v2

    goto :goto_55

    .line 446
    :cond_47
    add-int/lit8 v3, v0, -0x1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 448
    add-int/lit8 v0, v0, -0x1

    .line 452
    .end local v1    # "breakIterator":Ljava/text/BreakIterator;
    .end local v2    # "breakPos":I
    :cond_55
    :goto_55
    return v0
.end method

.method public static blacklist isEmailAddress(Ljava/lang/String;)Z
    .registers 4
    .param p0, "messageHeader"    # Ljava/lang/String;

    .line 381
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 382
    const/4 v0, 0x0

    return v0

    .line 385
    :cond_8
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "s":Ljava/lang/String;
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 387
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private static blacklist isRegionalIndicatorSymbol(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 457
    const v0, 0x1f1e6

    if-gt v0, p0, :cond_c

    const v0, 0x1f1ff

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method protected greylist-max-o extractEmailAddressFromMessageBody()V
    .registers 4

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    const-string v1, "( /)|( )"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    if-ge v1, v2, :cond_d

    return-void

    .line 412
    :cond_d
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    .line 413
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    .line 414
    invoke-static {v1}, Lcom/android/internal/telephony/SmsMessageBase;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    .line 415
    return-void
.end method

.method public greylist getDisplayMessageBody()Ljava/lang/String;
    .registers 2

    .line 186
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    if-eqz v0, :cond_7

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    return-object v0

    .line 189
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getDisplayOriginatingAddress()Ljava/lang/String;
    .registers 2

    .line 159
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    if-eqz v0, :cond_7

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    return-object v0

    .line 162
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getEmailBody()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getEmailFrom()Ljava/lang/String;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEncodingType()I
    .registers 2

    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getIndexOnIcc()I
    .registers 2

    .line 354
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    return v0
.end method

.method public greylist getMessageBody()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public abstract greylist-max-o getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
.end method

.method public greylist getOriginatingAddress()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_6

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getPdu()[B
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    return-object v0
.end method

.method public abstract greylist-max-p getProtocolIdentifier()I
.end method

.method public greylist getPseudoSubject()Ljava/lang/String;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPseudoSubject:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public blacklist getRecipientAddress()Ljava/lang/String;
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_6

    .line 510
    const/4 v0, 0x0

    return-object v0

    .line 513
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getServiceCenterAddress()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScAddress:Ljava/lang/String;

    return-object v0
.end method

.method public abstract greylist-max-p getStatus()I
.end method

.method public greylist-max-o getStatusOnIcc()I
    .registers 2

    .line 345
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    return v0
.end method

.method public greylist getTimestampMillis()J
    .registers 3

    .line 207
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScTimeMillis:J

    return-wide v0
.end method

.method public greylist getUserData()[B
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    return-object v0
.end method

.method public greylist getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method public abstract greylist-max-o isCphsMwiMessage()Z
.end method

.method public greylist-max-o isEmail()Z
    .registers 2

    .line 217
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    return v0
.end method

.method public abstract greylist-max-o isMWIClearMessage()Z
.end method

.method public abstract greylist-max-o isMWISetMessage()Z
.end method

.method public abstract greylist-max-o isMwiDontStore()Z
.end method

.method public abstract greylist-max-p isReplace()Z
.end method

.method public abstract greylist-max-p isReplyPathPresent()Z
.end method

.method public abstract greylist isStatusReportMessage()Z
.end method

.method protected greylist-max-o parseMessageBody()V
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->couldBeEmailGateway()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 361
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->extractEmailAddressFromMessageBody()V

    .line 363
    :cond_d
    return-void
.end method
