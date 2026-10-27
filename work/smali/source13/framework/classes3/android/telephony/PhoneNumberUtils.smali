.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;,
        Landroid/telephony/PhoneNumberUtils$BcdExtendType;
    }
.end annotation


# static fields
.field private static final greylist-max-o BCD_CALLED_PARTY_EXTENDED:Ljava/lang/String; = "*#abc"

.field private static final greylist-max-o BCD_EF_ADN_EXTENDED:Ljava/lang/String; = "*#,N;"

.field public static final whitelist BCD_EXTENDED_TYPE_CALLED_PARTY:I = 0x2

.field public static final whitelist BCD_EXTENDED_TYPE_EF_ADN:I = 0x1

.field private static final greylist-max-o CCC_LENGTH:I

.field private static final greylist-max-o CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final greylist-max-o CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final greylist-max-o COUNTRY_CALLING_CALL:[Z

.field private static final greylist-max-o DBG:Z = false

.field public static final whitelist FORMAT_JAPAN:I = 0x2

.field public static final whitelist FORMAT_NANP:I = 0x1

.field public static final whitelist FORMAT_UNKNOWN:I = 0x0

.field private static final greylist-max-o GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o JAPAN_ISO_COUNTRY_CODE:Ljava/lang/String; = "JP"

.field private static final greylist-max-o KEYPAD_MAP:Landroid/util/SparseIntArray;

.field private static final greylist-max-o KOREA_ISO_COUNTRY_CODE:Ljava/lang/String; = "KR"

.field static final greylist-max-o LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field private static final greylist-max-o NANP_COUNTRIES:[Ljava/lang/String;

.field private static final greylist-max-o NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final greylist-max-o NANP_LENGTH:I = 0xa

.field private static final greylist-max-o NANP_STATE_DASH:I = 0x4

.field private static final greylist-max-o NANP_STATE_DIGIT:I = 0x1

.field private static final greylist-max-o NANP_STATE_ONE:I = 0x3

.field private static final greylist-max-o NANP_STATE_PLUS:I = 0x2

.field public static final whitelist PAUSE:C = ','

.field private static final greylist-max-o PLUS_SIGN_CHAR:C = '+'

.field private static final greylist-max-o PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final whitelist TOA_International:I = 0x91

.field public static final whitelist TOA_Unknown:I = 0x81

.field public static final whitelist WAIT:C = ';'

.field public static final whitelist WILD:C = 'N'

.field private static greylist-max-o sConvertToEmergencyMap:[Ljava/lang/String;

.field private static blacklist sMinMatch:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 25

    .line 123
    nop

    .line 124
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 175
    const/4 v0, 0x0

    sput v0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    .line 1254
    const-string v1, "US"

    const-string v2, "CA"

    const-string v3, "AS"

    const-string v4, "AI"

    const-string v5, "AG"

    const-string v6, "BS"

    const-string v7, "BB"

    const-string v8, "BM"

    const-string v9, "VG"

    const-string v10, "KY"

    const-string v11, "DM"

    const-string v12, "DO"

    const-string v13, "GD"

    const-string v14, "GU"

    const-string v15, "JM"

    const-string v16, "PR"

    const-string v17, "MS"

    const-string v18, "MP"

    const-string v19, "KN"

    const-string v20, "LC"

    const-string v21, "VC"

    const-string v22, "TT"

    const-string v23, "TC"

    const-string v24, "VI"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 2346
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 2348
    const/16 v1, 0x61

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2349
    const/16 v1, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2351
    const/16 v1, 0x64

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x65

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x66

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2352
    const/16 v3, 0x44

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x45

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x46

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2354
    const/16 v2, 0x67

    const/16 v3, 0x34

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x68

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x69

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2355
    const/16 v2, 0x47

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x48

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x49

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2357
    const/16 v2, 0x6a

    const/16 v3, 0x35

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x6b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x6c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2358
    const/16 v2, 0x4a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x4b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2360
    const/16 v2, 0x6d

    const/16 v3, 0x36

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x6e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x6f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2361
    const/16 v2, 0x4d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x4e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x4f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2363
    const/16 v2, 0x70

    const/16 v3, 0x37

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x71

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x72

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x73

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2364
    const/16 v2, 0x50

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x51

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x52

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x53

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2366
    const/16 v2, 0x74

    const/16 v3, 0x38

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x75

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x76

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2367
    const/16 v2, 0x54

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x55

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x56

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2369
    const/16 v2, 0x77

    const/16 v3, 0x39

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x79

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x7a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2370
    const/16 v2, 0x57

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x58

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x59

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x5a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3016
    new-array v0, v1, [Z

    fill-array-data v0, :array_16c

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 3028
    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    .line 3212
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    return-void

    nop

    :array_16c
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist addTtsSpan(Landroid/text/Spannable;II)V
    .registers 5
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "endExclusive"    # I

    .line 2574
    invoke-interface {p0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2578
    return-void
.end method

.method private static greylist-max-o appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    .line 2876
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_16

    .line 2877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2878
    .local v1, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2879
    .end local v1    # "ret":Ljava/lang/StringBuilder;
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2880
    .local v0, "retStr":Ljava/lang/String;
    goto :goto_1f

    .line 2883
    .end local v0    # "retStr":Ljava/lang/String;
    :cond_16
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2884
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2886
    .local v0, "retStr":Ljava/lang/String;
    :goto_1f
    return-object v0
.end method

.method public static whitelist areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p0, "number1"    # Ljava/lang/String;
    .param p1, "number2"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .line 3299
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 3302
    .local v0, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 3304
    const/4 v1, 0x0

    :try_start_9
    invoke-virtual {v0, p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 3305
    .local v2, "n1":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3
    :try_end_11
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_9 .. :try_end_11} :catch_40

    .line 3308
    .local v3, "n2":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    nop

    .line 3310
    invoke-virtual {v0, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v4

    .line 3311
    .local v4, "matchType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3f

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v4, v5, :cond_20

    goto :goto_3f

    .line 3314
    :cond_20
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v4, v5, :cond_3e

    .line 3315
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v7

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-nez v5, :cond_3c

    .line 3316
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v7

    if-ne v5, v7, :cond_3c

    move v1, v6

    goto :goto_3d

    :cond_3c
    nop

    .line 3315
    :goto_3d
    return v1

    .line 3318
    :cond_3e
    return v1

    .line 3313
    :cond_3f
    :goto_3f
    return v6

    .line 3306
    .end local v2    # "n1":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "n2":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v4    # "matchType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :catch_40
    move-exception v2

    .line 3307
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    return v1
.end method

.method private static greylist-max-o bcdToChar(BI)C
    .registers 5
    .param p0, "b"    # B
    .param p1, "bcdExtType"    # I

    .line 1076
    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    .line 1077
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    return v0

    .line 1080
    :cond_8
    const/4 v0, 0x0

    .line 1081
    .local v0, "extended":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_f

    .line 1082
    const-string v0, "*#,N;"

    goto :goto_14

    .line 1083
    :cond_f
    const/4 v1, 0x2

    if-ne v1, p1, :cond_14

    .line 1084
    const-string v0, "*#abc"

    .line 1086
    :cond_14
    :goto_14
    if-eqz v0, :cond_26

    add-int/lit8 v1, p0, -0xa

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1f

    goto :goto_26

    .line 1090
    :cond_1f
    add-int/lit8 v1, p0, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1

    .line 1087
    :cond_26
    :goto_26
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1057
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist calledPartyBCDFragmentToString([BIII)Ljava/lang/String;
    .registers 6
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "bcdExtType"    # I

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1067
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BIII)V

    .line 1068
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist calledPartyBCDToString([BII)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 889
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist calledPartyBCDToString([BIII)Ljava/lang/String;
    .registers 16
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "bcdExtType"    # I

    .line 910
    const/4 v0, 0x0

    .line 911
    .local v0, "prependPlus":Z
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 913
    .local v1, "ret":Ljava/lang/StringBuilder;
    const-string v2, ""

    const/4 v4, 0x2

    if-ge p2, v4, :cond_10

    .line 914
    return-object v2

    .line 918
    :cond_10
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_19

    .line 919
    const/4 v0, 0x1

    .line 922
    :cond_19
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p2, -0x1

    invoke-static {v1, p0, v5, v6, p3}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BIII)V

    .line 925
    if-eqz v0, :cond_29

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_29

    .line 927
    return-object v2

    .line 930
    :cond_29
    if-eqz v0, :cond_e5

    .line 956
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 957
    .local v5, "retString":Ljava/lang/String;
    const-string v6, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 958
    .local v6, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 959
    .local v7, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const/4 v9, 0x4

    const-string v10, "+"

    const/4 v11, 0x3

    if-eqz v8, :cond_a1

    .line 960
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x5

    if-eqz v2, :cond_74

    .line 964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 965
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e5

    .line 974
    :cond_74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 975
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e5

    .line 983
    :cond_a1
    const-string v2, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 984
    .end local v6    # "p":Ljava/util/regex/Pattern;
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 985
    .end local v7    # "m":Ljava/util/regex/Matcher;
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 990
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v7

    .line 991
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e5

    .line 998
    :cond_d7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 999
    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    .end local v2    # "p":Ljava/util/regex/Pattern;
    .end local v5    # "retString":Ljava/lang/String;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    :cond_e5
    :goto_e5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2409
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 2410
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2411
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2415
    const-string/jumbo v0, "gsm.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/telephony/TelephonyBaseUtilsStub;->getCdmaTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2416
    .local v0, "currIso":Ljava/lang/String;
    const-string/jumbo v2, "gsm.sim.operator.iso-country"

    invoke-static {v2, v1}, Landroid/telephony/TelephonyBaseUtilsStub;->getCdmaTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2418
    .local v1, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 2419
    nop

    .line 2420
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    .line 2421
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    .line 2419
    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2425
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    :cond_41
    return-object p0
.end method

.method public static greylist-max-o cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .registers 11
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I

    .line 2478
    move-object v0, p0

    .line 2480
    .local v0, "retStr":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, p2, :cond_8

    if-ne p1, v1, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    .line 2483
    .local v2, "useNanp":Z
    :goto_9
    if-eqz p0, :cond_6a

    .line 2484
    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6a

    .line 2487
    const/4 v3, 0x0

    .line 2488
    .local v3, "postDialStr":Ljava/lang/String;
    move-object v4, p0

    .line 2491
    .local v4, "tempDialStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2500
    :cond_17
    if-eqz v2, :cond_1e

    .line 2501
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "networkDialStr":Ljava/lang/String;
    goto :goto_22

    .line 2503
    .end local v5    # "networkDialStr":Ljava/lang/String;
    :cond_1e
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2507
    .restart local v5    # "networkDialStr":Ljava/lang/String;
    :goto_22
    invoke-static {v5, v2}, Landroid/telephony/PhoneNumberUtils;->processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 2510
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_64

    .line 2511
    if-nez v0, :cond_30

    .line 2512
    move-object v0, v5

    goto :goto_34

    .line 2514
    :cond_30
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2523
    :goto_34
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2524
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 2525
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v6

    .line 2528
    .local v6, "dialableIndex":I
    if-lt v6, v1, :cond_4d

    .line 2529
    invoke-static {v6, v0, v3}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2532
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_57

    .line 2537
    :cond_4d
    if-gez v6, :cond_51

    .line 2538
    const-string v3, ""

    .line 2540
    :cond_51
    const-string/jumbo v7, "wrong postDialStr="

    invoke-static {v7, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    .end local v5    # "networkDialStr":Ljava/lang/String;
    .end local v6    # "dialableIndex":I
    :cond_57
    :goto_57
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6a

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_6a

    .line 2520
    .restart local v5    # "networkDialStr":Ljava/lang/String;
    :cond_64
    const-string v1, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    return-object p0

    .line 2546
    .end local v3    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    .end local v5    # "networkDialStr":Ljava/lang/String;
    :cond_6a
    :goto_6a
    return-object v0
.end method

.method public static greylist-max-o cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2437
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2438
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2439
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2440
    .local v0, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 2441
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    .line 2442
    .local v1, "format":I
    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2446
    .end local v0    # "defaultIso":Ljava/lang/String;
    .end local v1    # "format":I
    :cond_2e
    return-object p0
.end method

.method private static greylist-max-o charToBCD(CI)I
    .registers 6
    .param p0, "c"    # C
    .param p1, "bcdExtType"    # I

    .line 1094
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 1095
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 1098
    :cond_b
    const/4 v0, 0x0

    .line 1099
    .local v0, "extended":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_12

    .line 1100
    const-string v0, "*#,N;"

    goto :goto_17

    .line 1101
    :cond_12
    const/4 v1, 0x2

    if-ne v1, p1, :cond_17

    .line 1102
    const-string v0, "*#abc"

    .line 1104
    :cond_17
    :goto_17
    if-eqz v0, :cond_27

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_27

    .line 1107
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    return v1

    .line 1105
    :cond_27
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid char for BCD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "forwardIndex"    # I
    .param p2, "backwardIndex"    # I

    .line 3179
    const/4 v0, 0x0

    .line 3180
    .local v0, "trunk_prefix_was_read":Z
    :goto_1
    if-lt p2, p1, :cond_21

    .line 3181
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_13

    .line 3182
    if-eqz v0, :cond_11

    .line 3185
    return v2

    .line 3188
    :cond_11
    const/4 v0, 0x1

    goto :goto_1e

    .line 3190
    :cond_13
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3192
    return v2

    .line 3194
    :cond_1e
    :goto_1e
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 3197
    :cond_21
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 502
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 504
    .local v0, "useStrict":Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static whitelist compare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 491
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    .line 512
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_b
    return v0
.end method

.method public static greylist compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "numNonDialableCharsInA":I
    const/4 v1, 0x0

    .line 536
    .local v1, "numNonDialableCharsInB":I
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v2

    .line 538
    .local v2, "minMatch":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_a8

    if-nez p1, :cond_e

    goto/16 :goto_a8

    .line 540
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1c

    goto/16 :goto_a7

    .line 544
    :cond_1c
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 545
    .local v5, "ia":I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v6

    .line 546
    .local v6, "ib":I
    const/4 v7, 0x0

    .line 548
    .local v7, "matched":I
    :goto_25
    if-ltz v5, :cond_5a

    if-ltz v6, :cond_5a

    .line 550
    const/4 v8, 0x0

    .line 552
    .local v8, "skipCmp":Z
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 554
    .local v9, "ca":C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_39

    .line 555
    add-int/lit8 v5, v5, -0x1

    .line 556
    const/4 v8, 0x1

    .line 557
    add-int/lit8 v0, v0, 0x1

    .line 560
    :cond_39
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 562
    .local v10, "cb":C
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v11

    if-nez v11, :cond_48

    .line 563
    add-int/lit8 v6, v6, -0x1

    .line 564
    const/4 v8, 0x1

    .line 565
    add-int/lit8 v1, v1, 0x1

    .line 568
    :cond_48
    if-nez v8, :cond_59

    .line 569
    if-eq v10, v9, :cond_53

    const/16 v11, 0x4e

    if-eq v9, v11, :cond_53

    if-eq v10, v11, :cond_53

    .line 570
    goto :goto_5a

    .line 572
    :cond_53
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, 0x1

    .line 574
    .end local v8    # "skipCmp":Z
    .end local v9    # "ca":C
    .end local v10    # "cb":C
    :cond_59
    goto :goto_25

    .line 576
    :cond_5a
    :goto_5a
    if-ge v7, v2, :cond_6c

    .line 577
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v0

    .line 578
    .local v8, "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v1

    .line 583
    .local v9, "effectiveBLen":I
    if-ne v8, v9, :cond_6b

    if-ne v8, v7, :cond_6b

    .line 584
    return v4

    .line 587
    :cond_6b
    return v3

    .line 591
    .end local v8    # "effectiveALen":I
    .end local v9    # "effectiveBLen":I
    :cond_6c
    if-lt v7, v2, :cond_73

    if-ltz v5, :cond_72

    if-gez v6, :cond_73

    .line 592
    :cond_72
    return v4

    .line 604
    :cond_73
    add-int/lit8 v8, v5, 0x1

    invoke-static {p0, v8}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_84

    add-int/lit8 v8, v6, 0x1

    .line 605
    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 607
    return v4

    .line 610
    :cond_84
    add-int/lit8 v8, v5, 0x1

    invoke-static {p0, v8}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_95

    add-int/lit8 v8, v6, 0x1

    .line 611
    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 613
    return v4

    .line 616
    :cond_95
    add-int/lit8 v8, v6, 0x1

    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_a6

    add-int/lit8 v8, v5, 0x1

    .line 617
    invoke-static {p0, v8}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 619
    return v4

    .line 622
    :cond_a6
    return v3

    .line 541
    .end local v5    # "ia":I
    .end local v6    # "ib":I
    .end local v7    # "matched":I
    :cond_a7
    :goto_a7
    return v3

    .line 538
    :cond_a8
    :goto_a8
    if-ne p0, p1, :cond_ab

    move v3, v4

    :cond_ab
    return v3
.end method

.method public static greylist compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 631
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 21
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    .line 640
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_102

    if-nez v1, :cond_f

    move v2, v3

    goto/16 :goto_103

    .line 642
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1c

    .line 643
    return v4

    .line 646
    :cond_1c
    const/4 v5, 0x0

    .line 647
    .local v5, "forwardIndexA":I
    const/4 v6, 0x0

    .line 649
    .local v6, "forwardIndexB":I
    nop

    .line 650
    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 651
    .local v7, "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    nop

    .line 652
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v8

    .line 653
    .local v8, "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v9, 0x0

    .line 654
    .local v9, "bothHasCountryCallingCode":Z
    const/4 v10, 0x1

    .line 655
    .local v10, "okToIgnorePrefix":Z
    const/4 v11, 0x0

    .line 656
    .local v11, "trunkPrefixIsOmittedA":Z
    const/4 v12, 0x0

    .line 657
    .local v12, "trunkPrefixIsOmittedB":Z
    if-eqz v7, :cond_3e

    if-eqz v8, :cond_3e

    .line 658
    iget v13, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    iget v14, v8, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    if-eq v13, v14, :cond_37

    .line 660
    return v4

    .line 664
    :cond_37
    const/4 v10, 0x0

    .line 665
    const/4 v9, 0x1

    .line 666
    iget v5, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 667
    iget v6, v8, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_5e

    .line 668
    :cond_3e
    if-nez v7, :cond_44

    if-nez v8, :cond_44

    .line 671
    const/4 v10, 0x0

    goto :goto_5e

    .line 673
    :cond_44
    if-eqz v7, :cond_49

    .line 674
    iget v5, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_51

    .line 678
    :cond_49
    invoke-static {v0, v4}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v13

    .line 679
    .local v13, "tmp":I
    if-ltz v13, :cond_51

    .line 680
    move v5, v13

    .line 681
    const/4 v11, 0x1

    .line 684
    .end local v13    # "tmp":I
    :cond_51
    :goto_51
    if-eqz v8, :cond_56

    .line 685
    iget v6, v8, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_5e

    .line 687
    :cond_56
    invoke-static {v1, v4}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v13

    .line 688
    .restart local v13    # "tmp":I
    if-ltz v13, :cond_5e

    .line 689
    move v6, v13

    .line 690
    const/4 v12, 0x1

    .line 695
    .end local v13    # "tmp":I
    :cond_5e
    :goto_5e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v3

    .line 696
    .local v13, "backwardIndexA":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v3

    .line 697
    .local v14, "backwardIndexB":I
    :goto_68
    if-lt v13, v5, :cond_95

    if-lt v14, v6, :cond_95

    .line 698
    const/4 v15, 0x0

    .line 699
    .local v15, "skip_compare":Z
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 700
    .local v3, "chA":C
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 701
    .local v4, "chB":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v17

    if-eqz v17, :cond_7e

    .line 702
    add-int/lit8 v13, v13, -0x1

    .line 703
    const/4 v15, 0x1

    .line 705
    :cond_7e
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v17

    if-eqz v17, :cond_87

    .line 706
    add-int/lit8 v14, v14, -0x1

    .line 707
    const/4 v15, 0x1

    .line 710
    :cond_87
    if-nez v15, :cond_92

    .line 711
    if-eq v3, v4, :cond_8e

    .line 712
    const/16 v16, 0x0

    return v16

    .line 714
    :cond_8e
    add-int/lit8 v13, v13, -0x1

    .line 715
    add-int/lit8 v14, v14, -0x1

    .line 717
    .end local v3    # "chA":C
    .end local v4    # "chB":C
    .end local v15    # "skip_compare":Z
    :cond_92
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_68

    .line 719
    :cond_95
    if-eqz v10, :cond_bf

    .line 720
    if-eqz v11, :cond_9b

    if-le v5, v13, :cond_a1

    .line 721
    :cond_9b
    invoke-static {v0, v5, v13}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 722
    :cond_a1
    if-eqz v2, :cond_a9

    .line 732
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 734
    :cond_a9
    const/4 v3, 0x0

    return v3

    .line 737
    :cond_ab
    if-eqz v12, :cond_af

    if-le v6, v14, :cond_b5

    .line 740
    :cond_af
    invoke-static {v1, v6, v14}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_100

    .line 741
    :cond_b5
    if-eqz v2, :cond_bd

    .line 742
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 744
    :cond_bd
    const/4 v3, 0x0

    return v3

    .line 757
    :cond_bf
    xor-int/lit8 v3, v9, 0x1

    .line 758
    .local v3, "maybeNamp":Z
    :goto_c1
    if-lt v13, v5, :cond_e1

    .line 759
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 760
    .local v4, "chA":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v15

    if-eqz v15, :cond_db

    .line 761
    if-eqz v3, :cond_d9

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v15

    const/4 v2, 0x1

    if-ne v15, v2, :cond_d9

    .line 762
    const/4 v2, 0x0

    move v3, v2

    .end local v3    # "maybeNamp":Z
    .local v2, "maybeNamp":Z
    goto :goto_db

    .line 764
    .end local v2    # "maybeNamp":Z
    .restart local v3    # "maybeNamp":Z
    :cond_d9
    const/4 v2, 0x0

    return v2

    .line 767
    :cond_db
    :goto_db
    nop

    .end local v4    # "chA":C
    add-int/lit8 v13, v13, -0x1

    .line 768
    move/from16 v2, p2

    goto :goto_c1

    .line 769
    :cond_e1
    :goto_e1
    if-lt v14, v6, :cond_100

    .line 770
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 771
    .local v2, "chB":C
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-eqz v4, :cond_fb

    .line 772
    if-eqz v3, :cond_f9

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    const/4 v15, 0x1

    if-ne v4, v15, :cond_f9

    .line 773
    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_fc

    .line 775
    :cond_f9
    const/4 v4, 0x0

    return v4

    .line 771
    :cond_fb
    const/4 v4, 0x0

    .line 778
    :goto_fc
    nop

    .end local v2    # "chB":C
    add-int/lit8 v14, v14, -0x1

    .line 779
    goto :goto_e1

    .line 782
    .end local v3    # "maybeNamp":Z
    :cond_100
    const/4 v2, 0x1

    return v2

    .line 640
    .end local v5    # "forwardIndexA":I
    .end local v6    # "forwardIndexB":I
    .end local v7    # "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .end local v8    # "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .end local v9    # "bothHasCountryCallingCode":Z
    .end local v10    # "okToIgnorePrefix":Z
    .end local v11    # "trunkPrefixIsOmittedA":Z
    .end local v12    # "trunkPrefixIsOmittedB":Z
    .end local v13    # "backwardIndexA":I
    .end local v14    # "backwardIndexB":I
    :cond_102
    move v2, v3

    .line 641
    :goto_103
    if-ne v0, v1, :cond_107

    move v3, v2

    goto :goto_108

    :cond_107
    move v3, v4

    :goto_108
    return v3
.end method

.method public static greylist-max-o convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 384
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Ljava/lang/String;

    .line 2323
    if-nez p0, :cond_3

    .line 2324
    return-object p0

    .line 2326
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2327
    .local v0, "len":I
    if-nez v0, :cond_a

    .line 2328
    return-object p0

    .line 2331
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2333
    .local v1, "out":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_1f

    .line 2334
    aget-char v3, v1, v2

    .line 2336
    .local v3, "c":C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v1, v2

    .line 2333
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2339
    .end local v2    # "i":I
    :cond_1f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static greylist convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 395
    if-nez p0, :cond_4

    .line 396
    const/4 v0, 0x0

    return-object v0

    .line 398
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 399
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 401
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_2b

    .line 402
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 404
    .local v3, "c":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 405
    const/16 v3, 0x2c

    goto :goto_25

    .line 406
    :cond_1d
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 407
    const/16 v3, 0x3b

    .line 409
    :cond_25
    :goto_25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 411
    .end local v2    # "i":I
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o convertSipUriToTelUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .param p0, "source"    # Landroid/net/Uri;

    .line 2808
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 2810
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "sip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2812
    return-object p0

    .line 2815
    :cond_e
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 2816
    .local v1, "number":Ljava/lang/String;
    const-string v2, "[@;:]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2818
    .local v2, "numberParts":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_1c

    .line 2820
    return-object p0

    .line 2822
    :cond_1c
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 2824
    const/4 v3, 0x0

    const-string/jumbo v4, "tel"

    invoke-static {v4, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o convertToEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 3225
    if-eqz p0, :cond_84

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_84

    .line 3229
    :cond_a
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3232
    .local v0, "normalizedNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3233
    return-object p1

    .line 3236
    :cond_15
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    if-nez v1, :cond_26

    .line 3237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    .line 3242
    :cond_26
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    if-eqz v1, :cond_83

    array-length v2, v1

    if-nez v2, :cond_2e

    goto :goto_83

    .line 3246
    :cond_2e
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_31
    if-ge v4, v2, :cond_82

    aget-object v5, v1, v4

    .line 3248
    .local v5, "convertMap":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3249
    .local v6, "entry":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 3250
    .local v7, "filterNumbers":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 3251
    .local v8, "convertedNumber":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_44

    .line 3252
    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3254
    :cond_44
    if-eqz v6, :cond_5d

    array-length v9, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5d

    .line 3255
    const/4 v9, 0x1

    aget-object v8, v6, v9

    .line 3256
    aget-object v9, v6, v3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5d

    .line 3257
    aget-object v9, v6, v3

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3261
    :cond_5d
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7f

    if-eqz v7, :cond_7f

    array-length v9, v7

    if-nez v9, :cond_69

    .line 3263
    goto :goto_7f

    .line 3266
    :cond_69
    array-length v9, v7

    move v10, v3

    :goto_6b
    if-ge v10, v9, :cond_7f

    aget-object v11, v7, v10

    .line 3269
    .local v11, "filterNumber":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7c

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7c

    .line 3272
    return-object v8

    .line 3266
    .end local v11    # "filterNumber":Ljava/lang/String;
    :cond_7c
    add-int/lit8 v10, v10, 0x1

    goto :goto_6b

    .line 3246
    .end local v5    # "convertMap":Ljava/lang/String;
    .end local v6    # "entry":[Ljava/lang/String;
    .end local v7    # "filterNumbers":[Ljava/lang/String;
    .end local v8    # "convertedNumber":Ljava/lang/String;
    :cond_7f
    :goto_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 3276
    :cond_82
    return-object p1

    .line 3243
    :cond_83
    :goto_83
    return-object p1

    .line 3226
    .end local v0    # "normalizedNumber":Ljava/lang/String;
    :cond_84
    :goto_84
    return-object p1
.end method

.method public static whitelist createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;
    .registers 6
    .param p0, "phoneNumberString"    # Ljava/lang/String;

    .line 2620
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2621
    return-object v0

    .line 2625
    :cond_4
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 2626
    .local v1, "phoneNumberUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v2, 0x0

    .line 2631
    .local v2, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_9
    invoke-virtual {v1, p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0
    :try_end_d
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_9 .. :try_end_d} :catch_f

    move-object v2, v0

    .line 2633
    goto :goto_10

    .line 2632
    :catch_f
    move-exception v0

    .line 2636
    :goto_10
    new-instance v0, Landroid/text/style/TtsSpan$TelephoneBuilder;

    invoke-direct {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>()V

    .line 2637
    .local v0, "builder":Landroid/text/style/TtsSpan$TelephoneBuilder;
    if-nez v2, :cond_1f

    .line 2640
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    goto :goto_3b

    .line 2642
    :cond_1f
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2643
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setCountryCode(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 2645
    :cond_30
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 2647
    :goto_3b
    invoke-virtual {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    .line 2557
    if-nez p0, :cond_4

    .line 2558
    const/4 v0, 0x0

    return-object v0

    .line 2560
    :cond_4
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 2561
    .local v0, "spannable":Landroid/text/Spannable;
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    .line 2562
    return-object v0
.end method

.method public static whitelist extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 281
    if-nez p0, :cond_4

    .line 282
    const/4 v0, 0x0

    return-object v0

    .line 285
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 286
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 288
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_57

    .line 289
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 291
    .local v3, "c":C
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 292
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_21

    .line 293
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 294
    :cond_21
    const/16 v5, 0x2b

    if-ne v3, v5, :cond_43

    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, "prefix":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3f

    const-string v6, "*31#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    const-string v6, "#31#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 298
    :cond_3f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_42
    goto :goto_54

    :cond_43
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 301
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 302
    :cond_4d
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 303
    goto :goto_57

    .line 288
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_54
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 307
    .end local v2    # "i":I
    :cond_57
    :goto_57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 321
    if-nez p0, :cond_4

    .line 322
    const/4 v0, 0x0

    return-object v0

    .line 325
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 326
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 327
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 329
    .local v2, "haveSeenPlus":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v0, :cond_31

    .line 330
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 331
    .local v4, "c":C
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1d

    .line 332
    if-eqz v2, :cond_1c

    .line 333
    goto :goto_2e

    .line 335
    :cond_1c
    const/4 v2, 0x1

    .line 337
    :cond_1d
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 338
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 339
    :cond_27
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 340
    goto :goto_31

    .line 329
    .end local v4    # "c":C
    :cond_2e
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 344
    .end local v3    # "i":I
    :cond_31
    :goto_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 464
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 467
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    .line 471
    .local v1, "trimIndex":I
    add-int/lit8 v2, v1, 0x1

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 472
    .local v3, "s":I
    :goto_13
    if-ge v2, v3, :cond_25

    .line 474
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 475
    .local v4, "c":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 476
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    .end local v4    # "c":C
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 480
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .registers 4
    .param p0, "postDialStr"    # Ljava/lang/String;

    .line 2860
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 2861
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2862
    .local v1, "c":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2863
    return v0

    .line 2860
    .end local v1    # "c":C
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2866
    .end local v0    # "index":I
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist formatJapaneseNumber(Landroid/text/Editable;)V
    .registers 1
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1515
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1516
    return-void
.end method

.method public static whitelist formatNanpNumber(Landroid/text/Editable;)V
    .registers 12
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1399
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1400
    .local v0, "length":I
    const-string v1, "+1-nnn-nnn-nnnn"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_d

    .line 1402
    return-void

    .line 1403
    :cond_d
    const/4 v1, 0x5

    if-gt v0, v1, :cond_11

    .line 1405
    return-void

    .line 1408
    :cond_11
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1411
    .local v2, "saved":Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1412
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1417
    const/4 v3, 0x3

    new-array v4, v3, [I

    .line 1418
    .local v4, "dashPositions":[I
    const/4 v5, 0x0

    .line 1420
    .local v5, "numDashes":I
    const/4 v6, 0x1

    .line 1421
    .local v6, "state":I
    const/4 v7, 0x0

    .line 1422
    .local v7, "numDigits":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_24
    if-ge v8, v0, :cond_61

    .line 1423
    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    .line 1424
    .local v9, "c":C
    const/4 v10, 0x2

    packed-switch v9, :pswitch_data_90

    :pswitch_2e
    goto :goto_5d

    .line 1426
    :pswitch_2f
    if-eqz v7, :cond_33

    if-ne v6, v10, :cond_35

    .line 1427
    :cond_33
    const/4 v6, 0x3

    .line 1428
    goto :goto_5a

    .line 1440
    :cond_35
    :pswitch_35
    if-ne v6, v10, :cond_3b

    .line 1442
    invoke-interface {p0, v1, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1443
    return-void

    .line 1444
    :cond_3b
    if-ne v6, v3, :cond_43

    .line 1446
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "numDashes":I
    .local v10, "numDashes":I
    aput v8, v4, v5

    move v5, v10

    goto :goto_50

    .line 1447
    .end local v10    # "numDashes":I
    .restart local v5    # "numDashes":I
    :cond_43
    const/4 v10, 0x4

    if-eq v6, v10, :cond_50

    if-eq v7, v3, :cond_4b

    const/4 v10, 0x6

    if-ne v7, v10, :cond_50

    .line 1449
    :cond_4b
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v10    # "numDashes":I
    aput v8, v4, v5

    move v5, v10

    .line 1451
    .end local v10    # "numDashes":I
    .restart local v5    # "numDashes":I
    :cond_50
    :goto_50
    const/4 v6, 0x1

    .line 1452
    add-int/lit8 v7, v7, 0x1

    .line 1453
    goto :goto_5a

    .line 1456
    :pswitch_54
    const/4 v6, 0x4

    .line 1457
    goto :goto_5a

    .line 1460
    :pswitch_56
    if-nez v8, :cond_5d

    .line 1462
    const/4 v6, 0x2

    .line 1463
    nop

    .line 1422
    .end local v9    # "c":C
    :goto_5a
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    .line 1468
    .restart local v9    # "c":C
    :cond_5d
    :goto_5d
    invoke-interface {p0, v1, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1469
    return-void

    .line 1473
    .end local v8    # "i":I
    .end local v9    # "c":C
    :cond_61
    const/4 v1, 0x7

    if-ne v7, v1, :cond_66

    .line 1475
    add-int/lit8 v5, v5, -0x1

    .line 1479
    :cond_66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_67
    if-ge v1, v5, :cond_77

    .line 1480
    aget v3, v4, v1

    .line 1481
    .local v3, "pos":I
    add-int v8, v3, v1

    add-int v9, v3, v1

    const-string v10, "-"

    invoke-interface {p0, v8, v9, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1479
    .end local v3    # "pos":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 1485
    .end local v1    # "i":I
    :cond_77
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1486
    .local v1, "len":I
    :goto_7b
    if-lez v1, :cond_8f

    .line 1487
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v8, 0x2d

    if-ne v3, v8, :cond_8f

    .line 1488
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1489
    add-int/lit8 v1, v1, -0x1

    goto :goto_7b

    .line 1494
    :cond_8f
    return-void

    :pswitch_data_90
    .packed-switch 0x2b
        :pswitch_56
        :pswitch_2e
        :pswitch_54
        :pswitch_2e
        :pswitch_2e
        :pswitch_35
        :pswitch_2f
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method public static whitelist formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "source"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1297
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1298
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1299
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1317
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1318
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1319
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1627
    const-string v0, "JP"

    const-string v1, "KR"

    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    const-string v2, "*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_70

    .line 1631
    :cond_15
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1632
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v3, 0x0

    .line 1634
    .local v3, "result":Ljava/lang/String;
    :try_start_1a
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v4

    .line 1636
    .local v4, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1637
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v5

    invoke-virtual {v2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v1

    if-ne v5, v1, :cond_3e

    .line 1638
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    sget-object v5, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v1, v5, :cond_3e

    .line 1645
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v4, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .end local v3    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    goto :goto_63

    .line 1646
    .end local v0    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_3e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1647
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {v2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_5e

    .line 1648
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v0, v1, :cond_5e

    .line 1654
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v4, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .end local v3    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_63

    .line 1656
    .end local v0    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_5e
    invoke-virtual {v2, v4, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_62
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_1a .. :try_end_62} :catch_66
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_62} :catch_64

    move-object v3, v0

    .line 1661
    .end local v4    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_63
    goto :goto_6f

    :catch_64
    move-exception v0

    goto :goto_63

    .line 1658
    :catch_66
    move-exception v0

    .line 1659
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const-string v1, "PhoneNumberUtils"

    const-string v4, "formatNumber exception: "

    invoke-static {v1, v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    goto :goto_63

    .line 1663
    :goto_6f
    return-object v3

    .line 1628
    .end local v2    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .end local v3    # "result":Ljava/lang/String;
    :cond_70
    :goto_70
    return-object p0
.end method

.method public static whitelist formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .line 1686
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1687
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 1688
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1689
    return-object p0

    .line 1687
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1692
    .end local v1    # "i":I
    :cond_15
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 1694
    .local v1, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4d

    const/4 v2, 0x0

    .line 1695
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_4d

    .line 1699
    :try_start_2b
    const-string v2, "ZZ"

    invoke-virtual {v1, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1700
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1701
    .local v3, "regionCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 1703
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4
    :try_end_48
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_2b .. :try_end_48} :catch_4c

    if-gtz v4, :cond_4b

    .line 1704
    move-object p2, v3

    .line 1707
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_4b
    goto :goto_4d

    .line 1706
    :catch_4c
    move-exception v2

    .line 1709
    :cond_4d
    :goto_4d
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1710
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_55

    move-object v3, v2

    goto :goto_56

    :cond_55
    move-object v3, p0

    :goto_56
    return-object v3
.end method

.method public static whitelist formatNumber(Landroid/text/Editable;I)V
    .registers 8
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1350
    move v0, p1

    .line 1352
    .local v0, "formatType":I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_34

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_34

    .line 1353
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1c

    .line 1354
    const/4 v0, 0x1

    goto :goto_34

    .line 1355
    :cond_1c
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_33

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v3, 0x38

    if-ne v1, v3, :cond_33

    .line 1356
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_33

    .line 1357
    const/4 v0, 0x2

    goto :goto_34

    .line 1359
    :cond_33
    const/4 v0, 0x0

    .line 1363
    :cond_34
    :goto_34
    packed-switch v0, :pswitch_data_44

    .line 1374
    return-void

    .line 1368
    :pswitch_38
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    .line 1369
    return-void

    .line 1365
    :pswitch_3c
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    .line 1366
    return-void

    .line 1371
    :pswitch_40
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1372
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3c
        :pswitch_38
    .end packed-switch
.end method

.method private static greylist-max-o formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 6
    .param p0, "rawPhoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "formatIdentifier"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1572
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 1574
    .local v0, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_4
    invoke-virtual {v0, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 1575
    .local v1, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1576
    invoke-virtual {v0, v1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_4 .. :try_end_12} :catch_14

    return-object v2

    .line 1575
    .end local v1    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_13
    goto :goto_15

    .line 1578
    :catch_14
    move-exception v1

    :goto_15
    nop

    .line 1580
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1542
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist formatNumberToRFC3966(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1553
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getCurrentIdp(Z)Ljava/lang/String;
    .registers 4
    .param p0, "useNanp"    # Z

    .line 2666
    const/4 v0, 0x0

    .line 2667
    .local v0, "ps":Ljava/lang/String;
    if-eqz p0, :cond_6

    .line 2668
    const-string v0, "011"

    goto :goto_13

    .line 2671
    :cond_6
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_idp_string()Ljava/util/Optional;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 2673
    :goto_13
    return-object v0
.end method

.method private static greylist-max-o getDefaultVoiceSubId()I
    .registers 1

    .line 3204
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static whitelist getFormatTypeForLocale(Ljava/util/Locale;)I
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1333
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1335
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static greylist-max-o getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .registers 4
    .param p0, "country"    # Ljava/lang/String;

    .line 2686
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v0, v0

    .line 2687
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_15

    .line 2688
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    .line 2689
    const/4 v2, 0x1

    return v2

    .line 2687
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2692
    .end local v1    # "i":I
    :cond_15
    const-string/jumbo v1, "jp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_20

    .line 2693
    const/4 v1, 0x2

    return v1

    .line 2695
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist getMinMatch()I
    .registers 2

    .line 178
    sget v0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    if-nez v0, :cond_11

    .line 179
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    .line 182
    :cond_11
    sget v0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    return v0
.end method

.method public static blacklist getMinMatchForTest()I
    .registers 1

    .line 191
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v0

    return v0
.end method

.method public static whitelist getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .registers 15
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 221
    .local v7, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    if-nez v7, :cond_9

    .line 222
    return-object v1

    .line 225
    :cond_9
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, "scheme":Ljava/lang/String;
    if-nez v8, :cond_10

    .line 227
    return-object v1

    .line 230
    :cond_10
    const-string/jumbo v2, "tel"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a

    const-string/jumbo v2, "sip"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto/16 :goto_8a

    .line 234
    :cond_24
    if-nez p1, :cond_27

    .line 235
    return-object v1

    .line 238
    :cond_27
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 242
    .local v1, "phoneColumn":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    .line 243
    .local v10, "authority":Ljava/lang/String;
    const-string v2, "contacts"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 244
    const-string/jumbo v1, "number"

    move-object v11, v1

    goto :goto_4a

    .line 245
    :cond_3d
    const-string v2, "com.android.contacts"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 246
    const-string v1, "data1"

    move-object v11, v1

    goto :goto_4a

    .line 245
    :cond_49
    move-object v11, v1

    .line 249
    .end local v1    # "phoneColumn":Ljava/lang/String;
    .local v11, "phoneColumn":Ljava/lang/String;
    :goto_4a
    const/4 v12, 0x0

    .line 251
    .local v12, "c":Landroid/database/Cursor;
    :try_start_4b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v12, v1

    .line 253
    if-eqz v12, :cond_6f

    .line 254
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 255
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_6e
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_6e} :catch_77
    .catchall {:try_start_4b .. :try_end_6e} :catchall_75

    move-object v0, v1

    .line 261
    :cond_6f
    if-eqz v12, :cond_83

    .line 262
    :goto_71
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_83

    .line 261
    :catchall_75
    move-exception v1

    goto :goto_84

    .line 258
    :catch_77
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_78
    const-string v2, "PhoneNumberUtils"

    const-string v3, "Error getting phone number."

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_75

    .line 261
    nop

    .end local v1    # "e":Ljava/lang/RuntimeException;
    if-eqz v12, :cond_83

    .line 262
    goto :goto_71

    .line 266
    :cond_83
    :goto_83
    return-object v0

    .line 261
    :goto_84
    if-eqz v12, :cond_89

    .line 262
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_89
    throw v1

    .line 231
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "authority":Ljava/lang/String;
    .end local v11    # "phoneColumn":Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    :cond_8a
    :goto_8a
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 809
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "np":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 813
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2773
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2774
    .local v0, "delimiterIndex":I
    if-gez v0, :cond_e

    .line 2775
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2777
    :cond_e
    if-gez v0, :cond_37

    .line 2778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2779
    const-string v2, "PhoneNumberUtils"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2778
    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2782
    :cond_37
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o indexOfLastNetworkChar(Ljava/lang/String;)I
    .registers 6
    .param p0, "a"    # Ljava/lang/String;

    .line 440
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 442
    .local v0, "origLength":I
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 443
    .local v1, "pIndex":I
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 445
    .local v2, "wIndex":I
    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v3

    .line 447
    .local v3, "trimIndex":I
    if-gez v3, :cond_19

    .line 448
    add-int/lit8 v4, v0, -0x1

    return v4

    .line 450
    :cond_19
    add-int/lit8 v4, v3, -0x1

    return v4
.end method

.method private static greylist-max-o internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BIII)V
    .registers 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "bcdExtType"    # I

    .line 1011
    move v0, p2

    .local v0, "i":I
    :goto_1
    add-int v1, p3, p2

    if-ge v0, v1, :cond_31

    .line 1015
    aget-byte v1, p1, v0

    const/16 v2, 0xf

    and-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-static {v1, p4}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(BI)C

    move-result v1

    .line 1017
    .local v1, "c":C
    if-nez v1, :cond_12

    .line 1018
    return-void

    .line 1020
    :cond_12
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1029
    aget-byte v3, p1, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/2addr v3, v2

    int-to-byte v3, v3

    .line 1031
    .local v3, "b":B
    if-ne v3, v2, :cond_24

    add-int/lit8 v2, v0, 0x1

    add-int v4, p3, p2

    if-ne v2, v4, :cond_24

    .line 1033
    goto :goto_31

    .line 1036
    :cond_24
    invoke-static {v3, p4}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(BI)C

    move-result v1

    .line 1037
    if-nez v1, :cond_2b

    .line 1038
    return-void

    .line 1041
    :cond_2b
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1011
    .end local v1    # "c":C
    .end local v3    # "b":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1044
    .end local v0    # "i":I
    :cond_31
    :goto_31
    return-void
.end method

.method private static greylist-max-o internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p0, "np"    # Ljava/lang/String;
    .param p1, "numDigits"    # I

    .line 822
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 824
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 825
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 827
    .local v1, "length":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    move v3, v1

    .line 828
    .local v3, "s":I
    :goto_10
    if-ltz v2, :cond_20

    sub-int v4, v3, v2

    if-gt v4, p1, :cond_20

    .line 830
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 832
    .local v4, "c":C
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 828
    .end local v4    # "c":C
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 835
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final whitelist is12Key(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 135
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_13

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_13

    const/16 v0, 0x23

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static greylist-max-o isCountryCallingCode(I)Z
    .registers 2
    .param p0, "countryCallingCodeCandidate"    # I

    .line 3034
    if-lez p0, :cond_e

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_e

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static final whitelist isDialable(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 141
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_1b

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private static greylist-max-o isDialable(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .line 1134
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "count":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1135
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1136
    const/4 v2, 0x0

    return v2

    .line 1134
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1139
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist isEmergencyNumber(ILjava/lang/String;)Z
    .registers 3
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1798
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1944
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isEmergencyNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1776
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1925
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 7
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;
    .param p3, "useExactMatch"    # Z

    .line 2053
    if-eqz p3, :cond_b

    .line 2054
    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2056
    :cond_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isPotentialEmergencyNumber(Ljava/lang/String;)Z

    move-result v0
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_13} :catch_14

    return v0

    .line 2058
    :catch_14
    move-exception v0

    .line 2059
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEmergencyNumberInternal: RuntimeException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneNumberUtils"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o isEmergencyNumberInternal(ILjava/lang/String;Z)Z
    .registers 4
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .line 1906
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .line 2028
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isEmergencyNumberInternal(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .line 1881
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isGlobalPhoneNumber(Ljava/lang/String;)Z
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 1125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1126
    const/4 v0, 0x0

    return v0

    .line 1129
    :cond_8
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1130
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static whitelist isISODigit(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 129
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o isInternationalNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1594
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1595
    return v1

    .line 1599
    :cond_8
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2f

    .line 1603
    :cond_19
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 1605
    .local v0, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_1d
    invoke-virtual {v0, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1606
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v4
    :try_end_29
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_1d .. :try_end_29} :catch_2d

    if-eq v3, v4, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    return v1

    .line 1607
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_2d
    move-exception v2

    .line 1608
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    return v1

    .line 1600
    .end local v0    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .end local v2    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_2f
    :goto_2f
    return v1
.end method

.method public static greylist isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2097
    const/4 v0, 0x1

    invoke-static {p1, p2, p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2077
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "useExactMatch"    # Z

    .line 2213
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useExactMatch"    # Z

    .line 2189
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist isNanp(Ljava/lang/String;)Z
    .registers 6
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2705
    const/4 v0, 0x0

    .line 2706
    .local v0, "retVal":Z
    if-eqz p0, :cond_35

    .line 2707
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3b

    .line 2708
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x3

    .line 2709
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2710
    const/4 v0, 0x1

    .line 2711
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_23
    if-ge v1, v2, :cond_34

    .line 2712
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2713
    .local v3, "c":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-nez v4, :cond_31

    .line 2714
    const/4 v0, 0x0

    .line 2715
    goto :goto_34

    .line 2711
    .end local v3    # "c":C
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .end local v1    # "i":I
    :cond_34
    :goto_34
    goto :goto_3b

    .line 2721
    :cond_35
    const-string/jumbo v1, "isNanp: null dialStr passed in"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    :cond_3b
    :goto_3b
    return v0
.end method

.method public static final whitelist isNonSeparator(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 153
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_23

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_23

    const/16 v0, 0x23

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_23

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_23

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method private static greylist-max-o isNonSeparator(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .line 1143
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "count":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1144
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1145
    const/4 v2, 0x0

    return v2

    .line 1143
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1148
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o isOneNanp(Ljava/lang/String;)Z
    .registers 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2730
    const/4 v0, 0x0

    .line 2731
    .local v0, "retVal":Z
    if-eqz p0, :cond_19

    .line 2732
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2733
    .local v1, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_18

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2734
    const/4 v0, 0x1

    .line 2736
    .end local v1    # "newDialStr":Ljava/lang/String;
    :cond_18
    goto :goto_1f

    .line 2737
    :cond_19
    const-string/jumbo v1, "isOneNanp: null dialStr passed in"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    :goto_1f
    return v0
.end method

.method private static greylist-max-o isPause(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 167
    const/16 v0, 0x70

    if-eq p0, v0, :cond_b

    const/16 v0, 0x50

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static greylist-max-r isPotentialEmergencyNumber(ILjava/lang/String;)Z
    .registers 3
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1858
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2006
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1826
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1975
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2163
    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2131
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final whitelist isReallyDialable(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 147
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_17

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_17

    const/16 v0, 0x23

    if-eq p0, v0, :cond_17

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method private static greylist-max-o isSeparator(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 205
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x61

    if-gt v0, p0, :cond_e

    const/16 v0, 0x7a

    if-le p0, v0, :cond_18

    :cond_e
    const/16 v0, 0x41

    if-gt v0, p0, :cond_16

    const/16 v0, 0x5a

    if-le p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public static final whitelist isStartsPostDial(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 162
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_b

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static greylist-max-o isToneWait(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 172
    const/16 v0, 0x77

    if-eq p0, v0, :cond_b

    const/16 v0, 0x57

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static greylist-max-o isTwoToNine(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 2677
    const/16 v0, 0x32

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    .line 2678
    const/4 v0, 0x1

    return v0

    .line 2680
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isUriNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2756
    if-eqz p0, :cond_14

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static greylist-max-o isVoiceMailNumber(ILjava/lang/String;)Z
    .registers 3
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 2243
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2265
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 2266
    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .local v1, "tm":Landroid/telephony/TelephonyManager;
    goto :goto_c

    .line 2269
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_8
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2272
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    :goto_c
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 2273
    .local v2, "vmNumber":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v3
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_14} :catch_51

    move-object v1, v3

    .line 2279
    .local v1, "mdn":Ljava/lang/String;
    nop

    .line 2282
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2283
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2285
    return v0

    .line 2289
    :cond_21
    const/4 v3, 0x0

    .line 2290
    .local v3, "compareWithMdn":Z
    if-eqz p0, :cond_3c

    .line 2291
    nop

    .line 2292
    const-string v4, "carrier_config"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 2293
    .local v4, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v4, :cond_3c

    .line 2294
    invoke-virtual {v4, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 2295
    .local v5, "b":Landroid/os/PersistableBundle;
    if-eqz v5, :cond_3c

    .line 2296
    const-string/jumbo v6, "mdn_is_additional_voicemail_number_bool"

    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2303
    .end local v4    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v5    # "b":Landroid/os/PersistableBundle;
    :cond_3c
    if-eqz v3, :cond_4c

    .line 2305
    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4a

    invoke-static {p2, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    :cond_4a
    const/4 v0, 0x1

    :cond_4b
    return v0

    .line 2308
    :cond_4c
    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2276
    .end local v1    # "mdn":Ljava/lang/String;
    .end local v2    # "vmNumber":Ljava/lang/String;
    .end local v3    # "compareWithMdn":Z
    :catch_51
    move-exception v1

    .line 2278
    .local v1, "ex":Ljava/lang/SecurityException;
    return v0
.end method

.method public static whitelist isVoiceMailNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .line 2227
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isWellFormedSmsAddress(Ljava/lang/String;)Z
    .registers 3
    .param p0, "address"    # Ljava/lang/String;

    .line 1116
    nop

    .line 1117
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, "networkPortion":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1121
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 1119
    :goto_1c
    return v1
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 429
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void
.end method

.method private static greylist-max-o matchIntlPrefix(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 2907
    const/4 v0, 0x0

    .line 2908
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x0

    if-ge v1, p1, :cond_45

    .line 2909
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2911
    .local v3, "c":C
    const/16 v4, 0x31

    const/16 v5, 0x30

    packed-switch v0, :pswitch_data_50

    .line 2930
    :pswitch_10
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_42

    return v2

    .line 2925
    :pswitch_17
    if-ne v3, v4, :cond_1b

    const/4 v0, 0x5

    goto :goto_42

    .line 2926
    :cond_1b
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_42

    return v2

    .line 2919
    :pswitch_22
    if-ne v3, v5, :cond_26

    const/4 v0, 0x3

    goto :goto_42

    .line 2920
    :cond_26
    if-ne v3, v4, :cond_2a

    const/4 v0, 0x4

    goto :goto_42

    .line 2921
    :cond_2a
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_42

    return v2

    .line 2913
    :pswitch_31
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_37

    const/4 v0, 0x1

    goto :goto_42

    .line 2914
    :cond_37
    if-ne v3, v5, :cond_3b

    const/4 v0, 0x2

    goto :goto_42

    .line 2915
    :cond_3b
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_42

    return v2

    .line 2908
    .end local v3    # "c":C
    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2936
    .end local v1    # "i":I
    :cond_45
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4e

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4e

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4f

    :cond_4e
    move v2, v1

    :cond_4f
    return v2

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_31
        :pswitch_10
        :pswitch_22
        :pswitch_10
        :pswitch_17
    .end packed-switch
.end method

.method private static greylist-max-o matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 2946
    const/4 v0, 0x0

    .line 2947
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x0

    if-ge v1, p1, :cond_64

    .line 2948
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2950
    .local v3, "c":C
    const/16 v4, 0x31

    const/16 v5, 0x30

    packed-switch v0, :pswitch_data_70

    .line 2982
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 2977
    :pswitch_17
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_20

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 2978
    :cond_20
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 2964
    :pswitch_27
    if-ne v3, v4, :cond_2b

    const/4 v0, 0x5

    goto :goto_61

    .line 2965
    :cond_2b
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 2958
    :pswitch_32
    if-ne v3, v5, :cond_36

    const/4 v0, 0x3

    goto :goto_61

    .line 2959
    :cond_36
    if-ne v3, v4, :cond_3a

    const/4 v0, 0x4

    goto :goto_61

    .line 2960
    :cond_3a
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 2971
    :pswitch_41
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_49

    const/4 v0, 0x6

    goto :goto_61

    .line 2972
    :cond_49
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 2952
    :pswitch_50
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_56

    const/4 v0, 0x1

    goto :goto_61

    .line 2953
    :cond_56
    if-ne v3, v5, :cond_5a

    const/4 v0, 0x2

    goto :goto_61

    .line 2954
    :cond_5a
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 2947
    .end local v3    # "c":C
    :cond_61
    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2986
    .end local v1    # "i":I
    :cond_64
    const/4 v1, 0x6

    if-eq v0, v1, :cond_6e

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6e

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6f

    :cond_6e
    const/4 v2, 0x1

    :cond_6f
    return v2

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_50
        :pswitch_41
        :pswitch_32
        :pswitch_41
        :pswitch_27
        :pswitch_41
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method private static greylist-max-o matchTrunkPrefix(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 2994
    const/4 v0, 0x0

    .line 2996
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_1b

    .line 2997
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2999
    .local v2, "c":C
    const/16 v3, 0x30

    if-ne v2, v3, :cond_10

    if-nez v0, :cond_10

    .line 3000
    const/4 v0, 0x1

    goto :goto_18

    .line 3001
    :cond_10
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3002
    const/4 v3, 0x0

    return v3

    .line 2996
    .end local v2    # "c":C
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3006
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method private static greylist-max-o minPositive(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 417
    if-ltz p0, :cond_a

    if-ltz p1, :cond_a

    .line 418
    if-ge p0, p1, :cond_8

    move v0, p0

    goto :goto_9

    :cond_8
    move v0, p1

    :goto_9
    return v0

    .line 419
    :cond_a
    if-ltz p0, :cond_d

    .line 420
    return p0

    .line 421
    :cond_d
    if-ltz p1, :cond_10

    .line 422
    return p1

    .line 424
    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 1157
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B

    move-result-object v1

    return-object v1
.end method

.method public static whitelist networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 1167
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1168
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B

    move-result-object v1

    return-object v1
.end method

.method public static whitelist normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 1722
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1723
    const-string v0, ""

    return-object v0

    .line 1726
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1727
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1728
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_53

    .line 1729
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1732
    .local v3, "c":C
    invoke-static {v0, v3, v2}, Landroid/telephony/TelephonyBaseUtilsStub;->appendNonSeparator(Ljava/lang/StringBuilder;CI)V

    .line 1733
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 1734
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_29

    .line 1735
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 1736
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_37

    const/16 v5, 0x2b

    if-ne v3, v5, :cond_37

    .line 1737
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 1738
    :cond_37
    const/16 v5, 0x61

    if-lt v3, v5, :cond_3f

    const/16 v5, 0x7a

    if-le v3, v5, :cond_47

    :cond_3f
    const/16 v5, 0x41

    if-lt v3, v5, :cond_50

    const/16 v5, 0x5a

    if-gt v3, v5, :cond_50

    .line 1739
    :cond_47
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1728
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_50
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1742
    .end local v2    # "i":I
    :cond_53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist numberToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 2
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1186
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist numberToCalledPartyBCD(Ljava/lang/String;I)[B
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "bcdExtType"    # I

    .line 1201
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B
    .registers 20
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z
    .param p2, "bcdExtType"    # I

    .line 1210
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1211
    .local v1, "numberLenReal":I
    move v2, v1

    .line 1212
    .local v2, "numberLenEffective":I
    const/16 v3, 0x2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v4, v6, :cond_13

    move v4, v7

    goto :goto_14

    :cond_13
    const/4 v4, 0x0

    .line 1213
    .local v4, "hasPlus":Z
    :goto_14
    if-eqz v4, :cond_18

    add-int/lit8 v2, v2, -0x1

    .line 1215
    :cond_18
    if-nez v2, :cond_1c

    const/4 v3, 0x0

    return-object v3

    .line 1217
    :cond_1c
    add-int/lit8 v6, v2, 0x1

    div-int/lit8 v6, v6, 0x2

    .line 1218
    .local v6, "resultLen":I
    const/4 v8, 0x1

    .line 1219
    .local v8, "extraBytes":I
    if-eqz p1, :cond_25

    add-int/lit8 v8, v8, 0x1

    .line 1220
    :cond_25
    add-int/2addr v6, v8

    .line 1222
    new-array v9, v6, [B

    .line 1224
    .local v9, "result":[B
    const/4 v10, 0x0

    .line 1225
    .local v10, "digitCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2a
    if-ge v11, v1, :cond_57

    .line 1226
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 1227
    .local v12, "c":C
    if-ne v12, v3, :cond_35

    move/from16 v3, p2

    goto :goto_52

    .line 1228
    :cond_35
    and-int/lit8 v13, v10, 0x1

    if-ne v13, v7, :cond_3b

    const/4 v13, 0x4

    goto :goto_3c

    :cond_3b
    const/4 v13, 0x0

    .line 1229
    .local v13, "shift":I
    :goto_3c
    shr-int/lit8 v14, v10, 0x1

    add-int/2addr v14, v8

    aget-byte v15, v9, v14

    .line 1230
    move/from16 v3, p2

    invoke-static {v12, v3}, Landroid/telephony/PhoneNumberUtils;->charToBCD(CI)I

    move-result v16

    and-int/lit8 v16, v16, 0xf

    shl-int v5, v16, v13

    int-to-byte v5, v5

    or-int/2addr v5, v15

    int-to-byte v5, v5

    aput-byte v5, v9, v14

    .line 1231
    add-int/lit8 v10, v10, 0x1

    .line 1225
    .end local v12    # "c":C
    .end local v13    # "shift":I
    :goto_52
    add-int/lit8 v11, v11, 0x1

    const/16 v3, 0x2b

    goto :goto_2a

    :cond_57
    move/from16 v3, p2

    .line 1235
    .end local v11    # "i":I
    and-int/lit8 v5, v10, 0x1

    if-ne v5, v7, :cond_67

    shr-int/lit8 v5, v10, 0x1

    add-int/2addr v5, v8

    aget-byte v7, v9, v5

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v9, v5

    .line 1237
    :cond_67
    const/4 v5, 0x0

    .line 1238
    .local v5, "offset":I
    if-eqz p1, :cond_72

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "offset":I
    .local v7, "offset":I
    add-int/lit8 v11, v6, -0x1

    int-to-byte v11, v11

    aput-byte v11, v9, v5

    move v5, v7

    .line 1239
    .end local v7    # "offset":I
    .restart local v5    # "offset":I
    :cond_72
    if-eqz v4, :cond_77

    const/16 v7, 0x91

    goto :goto_79

    :cond_77
    const/16 v7, 0x81

    :goto_79
    int-to-byte v7, v7

    aput-byte v7, v9, v5

    .line 1241
    return-object v9
.end method

.method private static greylist-max-o processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "useNanp"    # Z

    .line 2834
    move-object v0, p0

    .line 2840
    .local v0, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_2b

    const/4 v1, 0x0

    .line 2841
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2b

    .line 2842
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2b

    .line 2843
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2845
    .local v1, "newStr":Ljava/lang/String;
    if-eqz p1, :cond_21

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2847
    move-object v0, v1

    goto :goto_2b

    .line 2850
    :cond_21
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[+]"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2854
    .end local v1    # "newStr":Ljava/lang/String;
    :cond_2b
    :goto_2b
    return-object v0
.end method

.method private static greylist-max-o removeDashes(Landroid/text/Editable;)V
    .registers 4
    .param p0, "text"    # Landroid/text/Editable;

    .line 1524
    const/4 v0, 0x0

    .line 1525
    .local v0, "p":I
    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1526
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_15

    .line 1527
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 1529
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1532
    :cond_18
    return-void
.end method

.method public static whitelist replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "number"    # Ljava/lang/String;

    .line 1752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1753
    .local v0, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_26

    aget-char v4, v1, v3

    .line 1754
    .local v4, "c":C
    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 1755
    .local v5, "digit":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_20

    .line 1756
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 1758
    :cond_20
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1753
    .end local v4    # "c":C
    .end local v5    # "digit":I
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1761
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist setMinMatchForTest(I)V
    .registers 1
    .param p0, "minMatch"    # I

    .line 200
    sput p0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    .line 201
    return-void
.end method

.method private static greylist-max-o splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 2653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2654
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, " "

    if-ge v1, v2, :cond_2c

    .line 2655
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2656
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    goto :goto_26

    .line 2657
    :cond_25
    nop

    .line 2655
    :goto_26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2654
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2662
    .end local v1    # "i":I
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " +"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "TOA"    # I

    .line 846
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 848
    :cond_4
    const/16 v0, 0x91

    if-ne p1, v0, :cond_2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2b

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 852
    :cond_2b
    return-object p0
.end method

.method public static whitelist stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 353
    if-nez p0, :cond_4

    .line 354
    const/4 v0, 0x0

    return-object v0

    .line 356
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 357
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 359
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_2d

    .line 360
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 362
    .local v3, "c":C
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 363
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_21

    .line 364
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 365
    :cond_21
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 366
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 370
    .end local v2    # "i":I
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 796
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "np":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist toaFromString(Ljava/lang/String;)I
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 862
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_14

    .line 863
    const/16 v0, 0x91

    return v0

    .line 866
    :cond_14
    const/16 v0, 0x81

    return v0
.end method

.method private static greylist-max-o tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .registers 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "acceptThailandCase"    # Z

    .line 3073
    const/4 v0, 0x0

    .line 3074
    .local v0, "state":I
    const/4 v1, 0x0

    .line 3075
    .local v1, "ccc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3076
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    const/4 v4, 0x0

    if-ge v3, v2, :cond_9e

    .line 3077
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3078
    .local v5, "ch":C
    const/16 v6, 0x36

    const/16 v7, 0x30

    const/16 v8, 0x31

    packed-switch v0, :pswitch_data_a0

    .line 3143
    return-object v4

    .line 3137
    :pswitch_18
    if-ne v5, v6, :cond_24

    .line 3138
    new-instance v4, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v6, 0x42

    add-int/lit8 v7, v3, 0x1

    invoke-direct {v4, v6, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    return-object v4

    .line 3140
    :cond_24
    return-object v4

    .line 3131
    :pswitch_25
    if-ne v5, v6, :cond_2b

    const/16 v0, 0x9

    goto/16 :goto_9a

    .line 3132
    :cond_2b
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 3133
    return-object v4

    .line 3102
    :pswitch_32
    if-ne v5, v8, :cond_37

    const/4 v0, 0x5

    goto/16 :goto_9a

    .line 3103
    :cond_37
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 3104
    return-object v4

    .line 3094
    :pswitch_3e
    if-ne v5, v7, :cond_42

    const/4 v0, 0x3

    goto :goto_9a

    .line 3095
    :cond_42
    if-ne v5, v8, :cond_46

    const/4 v0, 0x4

    goto :goto_9a

    .line 3096
    :cond_46
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 3097
    return-object v4

    .line 3114
    :pswitch_4d
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v6

    .line 3115
    .local v6, "ret":I
    if-lez v6, :cond_79

    .line 3116
    mul-int/lit8 v4, v1, 0xa

    add-int v1, v4, v6

    .line 3117
    const/16 v4, 0x64

    if-ge v1, v4, :cond_71

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v4

    if-eqz v4, :cond_62

    goto :goto_71

    .line 3120
    :cond_62
    const/4 v4, 0x1

    if-eq v0, v4, :cond_6f

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6f

    const/4 v4, 0x5

    if-ne v0, v4, :cond_6c

    goto :goto_6f

    .line 3123
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    .line 3121
    :cond_6f
    :goto_6f
    const/4 v0, 0x6

    goto :goto_80

    .line 3118
    :cond_71
    :goto_71
    new-instance v4, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v3, 0x1

    invoke-direct {v4, v1, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    return-object v4

    .line 3125
    :cond_79
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 3126
    return-object v4

    .line 3129
    .end local v6    # "ret":I
    :cond_80
    :goto_80
    goto :goto_9a

    .line 3080
    :pswitch_81
    const/16 v6, 0x2b

    if-ne v5, v6, :cond_87

    const/4 v0, 0x1

    goto :goto_9a

    .line 3081
    :cond_87
    if-ne v5, v7, :cond_8b

    const/4 v0, 0x2

    goto :goto_9a

    .line 3082
    :cond_8b
    if-ne v5, v8, :cond_93

    .line 3083
    if-eqz p1, :cond_92

    .line 3084
    const/16 v0, 0x8

    goto :goto_9a

    .line 3086
    :cond_92
    return-object v4

    .line 3088
    :cond_93
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 3089
    return-object v4

    .line 3076
    .end local v5    # "ch":C
    :cond_9a
    :goto_9a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 3147
    .end local v3    # "i":I
    :cond_9e
    return-object v4

    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_81
        :pswitch_4d
        :pswitch_3e
        :pswitch_4d
        :pswitch_32
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_25
        :pswitch_18
    .end packed-switch
.end method

.method private static greylist-max-o tryGetISODigit(C)I
    .registers 2
    .param p0, "ch"    # C

    .line 3044
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 3045
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 3047
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method private static greylist-max-o tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentIndex"    # I

    .line 3160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3161
    .local v0, "length":I
    move v1, p1

    .local v1, "i":I
    :goto_5
    const/4 v2, -0x1

    if-ge v1, v0, :cond_1f

    .line 3162
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3163
    .local v3, "ch":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_15

    .line 3164
    add-int/lit8 v2, v1, 0x1

    return v2

    .line 3165
    :cond_15
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 3166
    return v2

    .line 3161
    .end local v3    # "ch":C
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3169
    .end local v1    # "i":I
    :cond_1f
    return v2
.end method

.method public static greylist ttsSpanAsPhoneNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2593
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    .registers 3
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2610
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    .line 2611
    return-void
.end method
