.class public Lmiui/util/RecordingNameUtils;
.super Ljava/lang/Object;
.source "RecordingNameUtils.java"


# static fields
.field private static final blacklist MAX_FILE_NAME_LENGTH:I = 0x32

.field private static final blacklist sDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/RecordingNameUtils;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 25
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 26
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist generatFMRecordName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fmTitle"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "fileNameBuilder":Ljava/lang/StringBuilder;
    nop

    .line 93
    const v1, 0x110f01ed

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 96
    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/util/RecordingNameUtils;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist generateCallRecordName(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p2, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 37
    .local p0, "callerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "callerNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x32

    .line 38
    .local v0, "remainLength":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lmiui/util/RecordingNameUtils;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "pendingInfo":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v3, "callerBuilder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4d

    .line 43
    if-lez v4, :cond_3c

    move-object v5, v2

    goto :goto_3e

    :cond_3c
    const-string v5, ""

    :goto_3e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 47
    .end local v4    # "i":I
    :cond_4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int v4, v0, v4

    .line 48
    .local v4, "nameLength":I
    const/4 v5, 0x0

    .line 50
    .local v5, "lastPos":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_55
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    if-ge v6, v7, :cond_cb

    const/4 v7, 0x2

    if-le v4, v7, :cond_cb

    .line 51
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 52
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, v4, -0x2

    if-le v9, v10, :cond_73

    .line 53
    add-int/lit8 v9, v4, -0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 55
    :cond_73
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 56
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v3, v2, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    .line 57
    .end local v5    # "lastPos":I
    .local v8, "lastPos":I
    move v5, v8

    goto :goto_c8

    .line 59
    .end local v8    # "lastPos":I
    .restart local v5    # "lastPos":I
    :cond_83
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v3, v2, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 61
    if-gez v5, :cond_a5

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 64
    :cond_a5
    const/16 v8, 0x29

    invoke-virtual {v3, v5, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 66
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x28

    if-ne v8, v9, :cond_bf

    .line 67
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 68
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_c3

    .line 70
    :cond_bf
    add-int/lit8 v5, v5, 0x2

    .line 71
    add-int/lit8 v4, v4, -0x2

    .line 73
    :goto_c3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v4, v8

    .line 50
    .end local v7    # "name":Ljava/lang/String;
    :goto_c8
    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    .line 76
    .end local v6    # "i":I
    :cond_cb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_d3

    move v2, v0

    goto :goto_d7

    :cond_d3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 77
    .local v2, "callerLen":I
    :goto_d7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v6, "fileNameBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v8, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2c

    const/16 v9, 0x70

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    const-string v8, "+"

    const-string v9, "00"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2a

    const/16 v9, 0x73

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static blacklist getCallRecordingCallerNumbers(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 176
    invoke-static {p1}, Lmiui/util/RecordingNameUtils;->getRecordingFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "title":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 178
    invoke-static {p0, v0}, Lmiui/util/RecordingNameUtils;->getPhoneNumbers(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 180
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getCallRecordingTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 158
    invoke-static {p1}, Lmiui/util/RecordingNameUtils;->getRecordingFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "title":Ljava/lang/String;
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 160
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_21

    if-eqz v0, :cond_21

    .line 161
    invoke-static {p0, v0}, Lmiui/util/RecordingNameUtils;->getCallers(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "callers":Ljava/lang/String;
    if-nez v2, :cond_1f

    move-object v3, v0

    goto :goto_20

    :cond_1f
    move-object v3, v2

    :goto_20
    return-object v3

    .line 164
    .end local v2    # "callers":Ljava/lang/String;
    :cond_21
    return-object v0
.end method

.method private static blacklist getCallerString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, "caller":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_61

    const-string v1, ""

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_61

    .line 221
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 222
    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 221
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 224
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_25

    .line 225
    return-object p1

    .line 228
    :cond_25
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 229
    .local v2, "nameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v3, "display_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 230
    .local v3, "nameIndex":I
    const/4 v4, 0x1

    .line 231
    .local v4, "first":Z
    :goto_31
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 232
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5c

    .line 234
    if-nez v4, :cond_55

    .line 235
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    const v7, 0x110f008e

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    :cond_55
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const/4 v4, 0x0

    .line 241
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v5    # "name":Ljava/lang/String;
    :cond_5c
    goto :goto_31

    .line 244
    :cond_5d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6b

    .line 219
    .end local v1    # "c":Landroid/database/Cursor;
    .end local v2    # "nameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "nameIndex":I
    .end local v4    # "first":Z
    :cond_61
    :goto_61
    const v1, 0x110f03cb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :goto_6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_73

    move-object v1, p1

    goto :goto_77

    :cond_73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "ret":Ljava/lang/String;
    :goto_77
    return-object v1
.end method

.method private static blacklist getCallers(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .line 185
    invoke-static {p0, p1}, Lmiui/util/RecordingNameUtils;->getPhoneNumbers(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "numbers":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_9

    .line 187
    const/4 v1, 0x0

    return-object v1

    .line 190
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v0

    if-ge v2, v3, :cond_28

    .line 192
    aget-object v3, v0, v2

    invoke-static {p0, v3}, Lmiui/util/RecordingNameUtils;->getCallerString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_25

    .line 194
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 198
    .end local v2    # "i":I
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getFMRecordingTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 145
    invoke-static {p0}, Lmiui/util/RecordingNameUtils;->getRecordingFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .line 103
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 104
    .local v0, "index":I
    const/4 v1, 0x0

    .line 105
    .local v1, "name":Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_11

    .line 106
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    .line 108
    :cond_11
    move-object v1, p0

    .line 110
    :goto_12
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 111
    if-eq v0, v2, :cond_1f

    .line 112
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 114
    :cond_1f
    return-object v1
.end method

.method private static blacklist getPhoneNumbers(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .line 202
    const/16 v0, 0x70

    const/16 v1, 0x2c

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x73

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "numbers":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v2, v0

    if-ge v1, v2, :cond_3b

    .line 205
    aget-object v2, v0, v1

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 206
    .local v2, "indexOfBeginParenthesis":I
    aget-object v3, v0, v1

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 207
    .local v3, "indexOfEndParenthesis":I
    if-lez v2, :cond_38

    if-le v3, v2, :cond_38

    .line 208
    aget-object v4, v0, v1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 204
    .end local v2    # "indexOfBeginParenthesis":I
    .end local v3    # "indexOfEndParenthesis":I
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 212
    .end local v1    # "i":I
    :cond_3b
    return-object v0
.end method

.method public static blacklist getRecordingCreationTime(Landroid/content/Context;Ljava/lang/String;)J
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 259
    const-wide/16 v0, 0x0

    .line 260
    .local v0, "result":J
    invoke-static {p1}, Lmiui/util/RecordingNameUtils;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 261
    const/16 v2, 0x5f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 262
    .local v2, "startIndex":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    .line 263
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 266
    :cond_15
    :try_start_15
    sget-object v3, Lmiui/util/RecordingNameUtils;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 267
    .local v3, "date":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_21

    move-wide v0, v4

    .line 269
    .end local v3    # "date":Ljava/util/Date;
    goto :goto_22

    .line 268
    :catch_21
    move-exception v3

    .line 270
    :goto_22
    return-wide v0
.end method

.method public static blacklist getRecordingFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 124
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 125
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_31

    .line 126
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 128
    const/16 v2, 0x5f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 129
    .local v2, "endpos":I
    if-le v2, v0, :cond_2a

    .line 130
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 132
    :cond_2a
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 135
    .end local v2    # "endpos":I
    :cond_31
    return-object p0
.end method
