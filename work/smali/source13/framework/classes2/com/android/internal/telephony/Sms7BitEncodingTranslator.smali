.class public Lcom/android/internal/telephony/Sms7BitEncodingTranslator;
.super Ljava/lang/Object;
.source "Sms7BitEncodingTranslator.java"


# static fields
.field private static final greylist-max-r DBG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "Sms7BitEncodingTranslator"

.field private static final blacklist XML_CHARACTOR_TAG:Ljava/lang/String; = "Character"

.field private static final blacklist XML_FROM_TAG:Ljava/lang/String; = "from"

.field private static final blacklist XML_START_TAG:Ljava/lang/String; = "SmsEnforce7BitTranslationTable"

.field private static final blacklist XML_TO_TAG:Ljava/lang/String; = "to"

.field private static final blacklist XML_TRANSLATION_TYPE_TAG:Ljava/lang/String; = "TranslationType"

.field private static blacklist mIs7BitTranslationTableLoaded:Z

.field private static blacklist mTranslationTable:Landroid/util/SparseIntArray;

.field private static greylist-max-r mTranslationTableCDMA:Landroid/util/SparseIntArray;

.field private static greylist-max-r mTranslationTableCommon:Landroid/util/SparseIntArray;

.field private static greylist-max-r mTranslationTableGSM:Landroid/util/SparseIntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    .line 37
    sput-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    .line 39
    sput-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    .line 41
    sput-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist ensure7BitTranslationTableLoaded()V
    .registers 2

    .line 156
    const-class v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;

    monitor-enter v0

    .line 157
    :try_start_3
    sget-boolean v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    if-nez v1, :cond_22

    .line 158
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    .line 159
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    .line 160
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    .line 161
    invoke-static {}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->load7BitTranslationTableFromXml()V

    .line 162
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    .line 164
    :cond_22
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private static blacklist load7BitTranslationTableFromXml()V
    .registers 9

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 175
    .local v1, "r":Landroid/content/res/Resources;
    const-string v2, "Sms7BitEncodingTranslator"

    if-nez v0, :cond_19

    .line 176
    sget-boolean v3, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v3, :cond_12

    const-string v3, "load7BitTranslationTableFromXml: open normal file"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_12
    const v3, 0x1170014

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 181
    :cond_19
    :try_start_19
    const-string v3, "SmsEnforce7BitTranslationTable"

    invoke-static {v0, v3}, Lcom/android/internal/telephony/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 183
    :goto_1e
    invoke-static {v0}, Lcom/android/internal/telephony/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 184
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "tag":Ljava/lang/String;
    sget-boolean v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v4, :cond_3f

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_3f
    const-string v5, "TranslationType"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_a4

    .line 189
    const-string v5, "Type"

    invoke-interface {v0, v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "type":Ljava/lang/String;
    if-eqz v4, :cond_66

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_66
    const-string v4, "common"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 194
    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    sput-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    goto :goto_a3

    .line 195
    :cond_73
    const-string v4, "gsm"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 196
    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    sput-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    goto :goto_a3

    .line 197
    :cond_80
    const-string v4, "cdma"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 198
    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    sput-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    goto :goto_a3

    .line 200
    :cond_8d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error Parsing 7BitTranslationTable: found incorrect type"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v5    # "type":Ljava/lang/String;
    :goto_a3
    goto :goto_fe

    :cond_a4
    const-string v5, "Character"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    sget-object v5, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    if-eqz v5, :cond_100

    .line 203
    const-string v5, "from"

    const/4 v7, -0x1

    invoke-interface {v0, v6, v5, v7}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 205
    .local v5, "from":I
    const-string v8, "to"

    invoke-interface {v0, v6, v8, v7}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 207
    .local v6, "to":I
    if-eq v5, v7, :cond_f9

    if-eq v6, v7, :cond_f9

    .line 208
    if-eqz v4, :cond_f3

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading mapping "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 210
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " -> "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 211
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_f3
    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_fe

    .line 215
    :cond_f9
    const-string v4, "Invalid translation table file format"

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "from":I
    .end local v6    # "to":I
    :goto_fe
    goto/16 :goto_1e

    .line 221
    :cond_100
    if-eqz v4, :cond_107

    const-string v3, "load7BitTranslationTableFromXml: parsing successful, file loaded"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_107} :catch_10e
    .catchall {:try_start_19 .. :try_end_107} :catchall_10c

    .line 225
    :cond_107
    instance-of v2, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_11c

    .line 226
    goto :goto_119

    .line 225
    :catchall_10c
    move-exception v2

    goto :goto_11d

    .line 222
    :catch_10e
    move-exception v3

    .line 223
    .local v3, "e":Ljava/lang/Exception;
    :try_start_10f
    const-string v4, "Got exception while loading 7BitTranslationTable file."

    invoke-static {v2, v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_114
    .catchall {:try_start_10f .. :try_end_114} :catchall_10c

    .line 225
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    instance-of v2, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_11c

    .line 226
    :goto_119
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 229
    :cond_11c
    return-void

    .line 225
    :goto_11d
    instance-of v3, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v3, :cond_124

    .line 226
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 228
    :cond_124
    throw v2
.end method

.method private static blacklist noTranslationNeeded(CZ)Z
    .registers 4
    .param p0, "c"    # C
    .param p1, "isCdmaFormat"    # Z

    .line 147
    if-eqz p1, :cond_15

    .line 148
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->isGsmSeptets(C)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0

    .line 151
    :cond_15
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->isGsmSeptets(C)Z

    move-result v0

    return v0
.end method

.method public static blacklist translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .registers 6
    .param p0, "message"    # Ljava/lang/CharSequence;
    .param p1, "isCdmaFormat"    # Z

    .line 59
    const/4 v0, 0x0

    if-nez p0, :cond_b

    .line 60
    const-string v1, "Sms7BitEncodingTranslator"

    const-string v2, "Null message can not be translated"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-object v0

    .line 64
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 65
    .local v1, "size":I
    if-gtz v1, :cond_14

    .line 66
    const-string v0, ""

    return-object v0

    .line 69
    :cond_14
    invoke-static {}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->ensure7BitTranslationTableLoaded()V

    .line 71
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_35

    :cond_21
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_2b

    .line 72
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_35

    :cond_2b
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_4c

    .line 73
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_4c

    .line 74
    :cond_35
    new-array v0, v1, [C

    .line 75
    .local v0, "output":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    if-ge v2, v1, :cond_47

    .line 76
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translateIfNeeded(CZ)C

    move-result v3

    aput-char v3, v0, v2

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 79
    .end local v2    # "i":I
    :cond_47
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 82
    .end local v0    # "output":[C
    :cond_4c
    return-object v0
.end method

.method private static blacklist translateIfNeeded(CZ)C
    .registers 7
    .param p0, "c"    # C
    .param p1, "isCdmaFormat"    # Z

    .line 97
    invoke-static {p0, p1}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->noTranslationNeeded(CZ)Z

    move-result v0

    const-string v1, "Sms7BitEncodingTranslator"

    if-eqz v0, :cond_27

    .line 98
    sget-boolean v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v0, :cond_26

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No translation needed for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_26
    return p0

    .line 111
    :cond_27
    const/4 v0, -0x1

    .line 113
    .local v0, "translation":I
    invoke-static {}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->ensure7BitTranslationTableLoaded()V

    .line 115
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    if-eqz v2, :cond_34

    .line 116
    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 119
    :cond_34
    if-ne v0, v3, :cond_49

    .line 120
    if-eqz p1, :cond_41

    .line 121
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_49

    .line 122
    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_49

    .line 125
    :cond_41
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_49

    .line 126
    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 131
    :cond_49
    :goto_49
    if-eq v0, v3, :cond_8c

    .line 132
    sget-boolean v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v2, :cond_8a

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") translated to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_8a
    int-to-char v1, v0

    return v1

    .line 138
    :cond_8c
    sget-boolean v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v2, :cond_b0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No translation found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! Replacing for empty space"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_b0
    const/16 v1, 0x20

    return v1
.end method
