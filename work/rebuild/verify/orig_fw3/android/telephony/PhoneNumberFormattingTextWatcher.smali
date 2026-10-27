.class public Landroid/telephony/PhoneNumberFormattingTextWatcher;
.super Ljava/lang/Object;
.source "PhoneNumberFormattingTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private greylist-max-r mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

.field private greylist-max-o mSelfChange:Z

.field private greylist-max-o mStopFormatting:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 78
    if-eqz p1, :cond_13

    .line 79
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    .line 80
    return-void

    .line 78
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private greylist-max-o getFormattedNumber(CZ)Ljava/lang/String;
    .registers 3

    .line 171
    if-eqz p2, :cond_9

    iget-object p2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {p2, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitAndRememberPosition(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 172
    :cond_9
    iget-object p2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {p2, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object p1

    .line 171
    :goto_f
    return-object p1
.end method

.method private greylist-max-o hasSeparator(Ljava/lang/CharSequence;II)Z
    .registers 6

    .line 181
    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_14

    .line 182
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 183
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v1

    if-nez v1, :cond_11

    .line 184
    const/4 p1, 0x1

    return p1

    .line 181
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 12

    .line 145
    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .line 146
    nop

    .line 147
    iget-object v1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 148
    nop

    .line 149
    nop

    .line 150
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 151
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_13
    if-ge v4, v1, :cond_2d

    .line 152
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 153
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 154
    if-eqz v5, :cond_26

    .line 155
    invoke-direct {p0, v5, v6}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v2

    .line 156
    move v6, v3

    .line 158
    :cond_26
    move v5, v7

    .line 160
    :cond_27
    if-ne v4, p2, :cond_2a

    .line 161
    move v6, v0

    .line 151
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 164
    :cond_2d
    if-eqz v5, :cond_33

    .line 165
    invoke-direct {p0, v5, v6}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v2

    .line 167
    :cond_33
    return-object v2
.end method

.method private greylist-max-o stopFormatting()V
    .registers 2

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    .line 177
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 178
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist afterTextChanged(Landroid/text/Editable;)V
    .registers 11

    monitor-enter p0

    .line 107
    :try_start_1
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 109
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    iput-boolean v1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_6b

    .line 110
    monitor-exit p0

    return-void

    .line 112
    :cond_13
    :try_start_13
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_6b

    if-eqz v0, :cond_19

    .line 114
    monitor-exit p0

    return-void

    .line 116
    :cond_19
    :try_start_19
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v6

    .line 117
    if-eqz v6, :cond_49

    .line 118
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getRememberedPosition()I

    move-result v0

    .line 119
    iput-boolean v1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 120
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-interface/range {v3 .. v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 123
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 124
    invoke-static {v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 126
    :cond_46
    iput-boolean v2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    goto :goto_4a

    .line 117
    :cond_49
    move-object v3, p1

    .line 130
    :goto_4a
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result p1

    const-class v0, Landroid/text/style/TtsSpan;

    invoke-interface {v3, v2, p1, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/TtsSpan;

    .line 131
    array-length v0, p1

    move v1, v2

    :goto_58
    if-ge v1, v0, :cond_62

    aget-object v4, p1, v1

    .line 132
    invoke-interface {v3, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 135
    :cond_62
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-static {v3, v2, p1}, Landroid/telephony/PhoneNumberUtils;->ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    :try_end_69
    .catchall {:try_start_19 .. :try_end_69} :catchall_6b

    .line 136
    monitor-exit p0

    return-void

    .line 106
    :catchall_6b
    move-exception v0

    move-object p1, v0

    :try_start_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6b

    throw p1
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 85
    iget-boolean p4, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez p4, :cond_15

    iget-boolean p4, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz p4, :cond_9

    goto :goto_15

    .line 89
    :cond_9
    if-lez p3, :cond_14

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 90
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    .line 92
    :cond_14
    return-void

    .line 86
    :cond_15
    :goto_15
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 96
    iget-boolean p3, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez p3, :cond_15

    iget-boolean p3, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz p3, :cond_9

    goto :goto_15

    .line 100
    :cond_9
    if-lez p4, :cond_14

    invoke-direct {p0, p1, p2, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 101
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    .line 103
    :cond_14
    return-void

    .line 97
    :cond_15
    :goto_15
    return-void
.end method
