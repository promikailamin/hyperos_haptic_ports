.class final Landroid/media/TtmlUtils;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# static fields
.field public static final blacklist ATTR_BEGIN:Ljava/lang/String; = "begin"

.field public static final blacklist ATTR_DURATION:Ljava/lang/String; = "dur"

.field public static final blacklist ATTR_END:Ljava/lang/String; = "end"

.field private static final blacklist CLOCK_TIME:Ljava/util/regex/Pattern;

.field public static final blacklist INVALID_TIMESTAMP:J = 0x7fffffffffffffffL

.field private static final blacklist OFFSET_TIME:Ljava/util/regex/Pattern;

.field public static final blacklist PCDATA:Ljava/lang/String; = "#pcdata"

.field public static final blacklist TAG_BODY:Ljava/lang/String; = "body"

.field public static final blacklist TAG_BR:Ljava/lang/String; = "br"

.field public static final blacklist TAG_DIV:Ljava/lang/String; = "div"

.field public static final blacklist TAG_HEAD:Ljava/lang/String; = "head"

.field public static final blacklist TAG_LAYOUT:Ljava/lang/String; = "layout"

.field public static final blacklist TAG_METADATA:Ljava/lang/String; = "metadata"

.field public static final blacklist TAG_P:Ljava/lang/String; = "p"

.field public static final blacklist TAG_REGION:Ljava/lang/String; = "region"

.field public static final blacklist TAG_SMPTE_DATA:Ljava/lang/String; = "smpte:data"

.field public static final blacklist TAG_SMPTE_IMAGE:Ljava/lang/String; = "smpte:image"

.field public static final blacklist TAG_SMPTE_INFORMATION:Ljava/lang/String; = "smpte:information"

.field public static final blacklist TAG_SPAN:Ljava/lang/String; = "span"

.field public static final blacklist TAG_STYLE:Ljava/lang/String; = "style"

.field public static final blacklist TAG_STYLING:Ljava/lang/String; = "styling"

.field public static final blacklist TAG_TT:Ljava/lang/String; = "tt"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 106
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/TtmlUtils;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 110
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/TtmlUtils;->OFFSET_TIME:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method public static blacklist applyDefaultSpacePolicy(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 181
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/media/TtmlUtils;->applySpacePolicy(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist applySpacePolicy(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .line 196
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 199
    const-string v0, " *\n *"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 201
    const-string v0, " "

    if-eqz p1, :cond_17

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    .line 202
    :cond_17
    nop

    .line 204
    :goto_18
    const-string p1, "[ \t\\x0B\u000c\r]+"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 205
    return-object p0
.end method

.method public static blacklist extractText(Landroid/media/TtmlNode;JJ)Ljava/lang/String;
    .registers 12

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v6}, Landroid/media/TtmlUtils;->extractText(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;Z)V

    .line 218
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n$"

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist extractText(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;Z)V
    .registers 19

    .line 223
    move-object/from16 v5, p5

    iget-object v0, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v1, "#pcdata"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p6, :cond_14

    .line 224
    iget-object p0, p0, Landroid/media/TtmlNode;->mText:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 225
    :cond_14
    iget-object v0, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v1, "br"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "\n"

    if-eqz v0, :cond_26

    if-eqz p6, :cond_26

    .line 226
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 227
    :cond_26
    iget-object v0, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v1, "metadata"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_71

    .line 229
    :cond_31
    invoke-virtual/range {p0 .. p4}, Landroid/media/TtmlNode;->isActive(JJ)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 230
    iget-object v0, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 231
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    .line 232
    const/4 v10, 0x0

    move v11, v10

    :goto_45
    iget-object v0, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_66

    .line 233
    iget-object v0, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/TtmlNode;

    if-nez v8, :cond_5c

    if-eqz p6, :cond_5a

    goto :goto_5c

    :cond_5a
    move v6, v10

    goto :goto_5e

    :cond_5c
    :goto_5c
    const/4 v1, 0x1

    move v6, v1

    :goto_5e
    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v6}, Landroid/media/TtmlUtils;->extractText(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;Z)V

    .line 232
    add-int/lit8 v11, v11, 0x1

    goto :goto_45

    .line 235
    :cond_66
    if-eqz v8, :cond_71

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eq v9, p0, :cond_71

    .line 236
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_71
    :goto_71
    return-void
.end method

.method public static blacklist extractTtmlFragment(Landroid/media/TtmlNode;JJ)Ljava/lang/String;
    .registers 11

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Landroid/media/TtmlUtils;->extractTtmlFragment(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;)V

    .line 251
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist extractTtmlFragment(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;)V
    .registers 15

    .line 256
    iget-object v0, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v1, "#pcdata"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 257
    iget-object p0, p0, Landroid/media/TtmlNode;->mText:Ljava/lang/String;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 258
    :cond_10
    iget-object v0, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v1, "br"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 259
    const-string p0, "<br/>"

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 260
    :cond_20
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/TtmlNode;->isActive(JJ)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 261
    const-string v0, "<"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v0, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-object v0, p0, Landroid/media/TtmlNode;->mAttributes:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v0, ">"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const/4 v1, 0x0

    :goto_3b
    iget-object v2, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_55

    .line 266
    iget-object v2, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/media/TtmlNode;

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Landroid/media/TtmlUtils;->extractTtmlFragment(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;)V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 268
    :cond_55
    move-object v8, p5

    const-string p1, "</"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object p0, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_63
    :goto_63
    return-void
.end method

.method public static blacklist parseTimeExpression(Ljava/lang/String;III)J
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 132
    sget-object v1, Landroid/media/TtmlUtils;->CLOCK_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-wide v3, 0x408f400000000000L    # 1000.0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_72

    .line 134
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 135
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0xe10

    mul-long/2addr v6, v8

    long-to-double v6, v6

    .line 136
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    long-to-double v8, v8

    add-double/2addr v6, v8

    .line 138
    const/4 p0, 0x3

    invoke-virtual {v1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 139
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-double v8, v8

    add-double/2addr v6, v8

    .line 140
    const/4 p0, 0x4

    invoke-virtual {v1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 141
    const-wide/16 v8, 0x0

    if-eqz p0, :cond_45

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_46

    :cond_45
    move-wide v10, v8

    :goto_46
    add-double/2addr v6, v10

    .line 142
    const/4 p0, 0x5

    invoke-virtual {v1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 143
    if-eqz p0, :cond_56

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-double v10, v10

    int-to-double v12, p1

    div-double/2addr v10, v12

    goto :goto_57

    :cond_56
    move-wide v10, v8

    :goto_57
    add-double/2addr v6, v10

    .line 144
    const/4 p0, 0x6

    invoke-virtual {v1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 145
    if-eqz p0, :cond_6d

    .line 146
    nop

    .line 145
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-double v1, v1

    move/from16 p0, p2

    int-to-double v8, p0

    div-double/2addr v1, v8

    int-to-double v8, p1

    div-double v8, v1, v8

    goto :goto_6e

    .line 147
    :cond_6d
    nop

    :goto_6e
    add-double/2addr v6, v8

    .line 148
    mul-double/2addr v6, v3

    double-to-long v0, v6

    return-wide v0

    .line 150
    :cond_72
    sget-object v1, Landroid/media/TtmlUtils;->OFFSET_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 152
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 153
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 154
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 155
    const-string v1, "h"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 156
    const-wide v0, 0x41ead27480000000L    # 3.6E9

    mul-double/2addr v6, v0

    goto :goto_da

    .line 157
    :cond_99
    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 158
    const-wide v0, 0x418c9c3800000000L    # 6.0E7

    mul-double/2addr v6, v0

    goto :goto_da

    .line 159
    :cond_a8
    const-string v1, "s"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide v8, 0x412e848000000000L    # 1000000.0

    if-eqz v1, :cond_b7

    .line 160
    mul-double/2addr v6, v8

    goto :goto_da

    .line 161
    :cond_b7
    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 162
    mul-double/2addr v6, v3

    goto :goto_da

    .line 163
    :cond_c1
    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 164
    int-to-double v0, p1

    div-double/2addr v6, v0

    mul-double/2addr v6, v8

    goto :goto_da

    .line 165
    :cond_cd
    const-string v0, "t"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_da

    .line 166
    move/from16 p0, p3

    int-to-double v0, p0

    div-double/2addr v6, v0

    mul-double/2addr v6, v8

    .line 168
    :cond_da
    :goto_da
    double-to-long v0, v6

    return-wide v0

    .line 170
    :cond_dc
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed time expression : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
